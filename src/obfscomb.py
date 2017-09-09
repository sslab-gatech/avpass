import unittest
import conf

J = lambda x: ''.join(x)
P = lambda x: 2**x


def replace(astr, idx, letter):
    """
    replace astr character in idx position with letter.
    """
    return astr[:idx]+letter+astr[idx+1:]


def common(src, tgt):
    """
    get common part of two strings. (must be of same length!)
    """
    assert len(src) == len(tgt)
    x = len(src)
    while src[:x] != tgt[:x]:
        x -= 1
    return src[:x]

def compare(src, tgt):
    """
    compare two combination strings and generate the path
    from src to tgt combination
    """
    src = common(src, tgt)
    x = len(src)
    new_src = src+('_'*(len(tgt)-x))
    comb = [new_src]  #in our case, common will already be present..
    for x in xrange(x, len(tgt)):
        if new_src[x]!=tgt[x]:
            new_src = replace(new_src, x, tgt[x])
            comb.append(new_src)
    return comb


class ObfuscationError(Exception):
    pass


class ObfC:
    STRING = conf.STRING
    VARIABLE = conf.VARIABLE
    PCM = conf.PCM
    API_REFLECTION = conf.API_REFLECTION
    BENIGN_CLASS = conf.BENIGN_CLASS
    BYTECODE = conf.BYTECODE
    RESOURCE_IMAGE = conf.RESOURCE_IMAGE
    RESOURCE_XML = conf.RESOURCE_XML
    API_INTER = conf.API_INTER
    BEN_PERMISSION = conf.BEN_PERMISSION
    RM_PERMISSION = conf.RM_PERMISSION

    Table = {
        'A': API_REFLECTION,
        'V': VARIABLE,
        'S': STRING,
        'K': PCM,
        'E': BENIGN_CLASS,
        'R': RESOURCE_IMAGE + RESOURCE_XML,
        'P': RM_PERMISSION,

        'B': BYTECODE,
        'I': RESOURCE_IMAGE,
        'X': RESOURCE_XML,
        'N': API_INTER,

        '_': None,
    }

    @classmethod
    def char2obf(cls, char):
        """
        :rtype: obfuscation related to char code
        """
        return cls.Table[char]

    @classmethod
    def obf2char(cls, obfuscation):
        """
        :param obfuscation: an obfuscation
        :return: the char related to it
        """
        for char, obf in cls.Table.items():
            if obf == obfuscation:
                return char
        raise ObfuscationError()

    @classmethod
    def chars2obfs(cls, chars):
        """
        :param chars: 'SP'
        :return: [STRING, PCM,..]
        """
        return [cls.char2obf(c) for c in chars if c != "_"]

    @classmethod
    def obfs2chars(cls, obf_list):
        """
        :param obf_list: a list of obfuscations [STRING, PCM,...]
        :return: 'SP...'
        """
        return J(cls.obf2char(ob) for ob in obf_list)

    @staticmethod
    def generate(obf_chars):
        """
        Generate all combinations of letters in src. total: 2**len(src)
        :param obf_chars: all allowed chars in combination
        :return: yields every combination
        """
        L=len(obf_chars)-1
        def decode(x):
            return J(C if P(L-i) & x == P(L-i) else '_'
                     for i, C in enumerate(obf_chars))
        n = len(obf_chars)
        MAX = P(n)
        for x in xrange(MAX, 0, -1):
            yield decode(x)

    @staticmethod
    def gen_all_instructions(TARGET):
        already = set()
        prev = None
        for combination in ObfC.generate(TARGET):
            # we want to generate x
            if combination in already:
                continue
            if not prev is None:
                #calculate intermediate combinations
                steps = compare(prev, combination)
                for step in steps[:-1]:
                    yield step, step in already, step!=steps[:-1]
                    already.add(step)

            yield combination, False, False
            already.add(combination)

            prev = combination


class TestCombinationGeneration(unittest.TestCase):
    def test_all_combination_happen(self):
        """test all combinations happen"""
        MAX = 'ABCDEFGH'
        for l in xrange(1, len(MAX)+1):
            CUR = MAX[:l]
            got = set()
            for combination, restore, _ in ObfC.gen_all_instructions(CUR):
                if not restore:
                    got.add(combination)
            self.assertEqual(len(got), 2**l)

    def test_calculations_as_combinations(self):
        """test there is no more calculations than obfuscations"""
        MAX = 'ABCDEFGH'
        for l in xrange(1, len(MAX)+1):
            CUR = MAX[:l]
            calcs = 0
            prev = None
            for combination, restore, _ in ObfC.gen_all_instructions(CUR):
                if not restore:
                    if prev is None:
                        calcs += 1
                    else:
                        calcs2todo = set(combination+'_')-set(prev+'_')
                        calcs += len(calcs2todo)
                        self.assertEqual(len(calcs2todo), 1)
                prev = combination

            self.assertEqual(calcs, 2**l)

    def test_no_2_restore_consecutive(self):
        """test there is no two restore are consecutive"""
        MAX = 'ABCDEFGH'
        for l in xrange(1, len(MAX)+1):
            CUR = MAX[:l]
            prev = None
            for _, restore, _ in ObfC.gen_all_instructions(CUR):
                if restore:
                    self.assertNotEqual(restore, prev)
                prev = restore


if __name__ == "__main__":
    import sys
    sys.argv.append("-v")
    unittest.main()