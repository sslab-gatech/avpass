import os
import setuptools

# To prevent importing about and thereby breaking the coverage info we use this
# exec hack
about = {}
with open('python_utils/__about__.py') as fp:
    exec(fp.read(), about)


if os.path.isfile('README.rst'):
    long_description = open('README.rst').read()
else:
    long_description = 'See http://pypi.python.org/pypi/python-utils/'


if __name__ == '__main__':
    setuptools.setup(
        name=about['__package_name__'],
        version=about['__version__'],
        author=about['__author__'],
        author_email=about['__author_email__'],
        description=about['__description__'],
        url=about['__url__'],
        license='BSD',
        packages=setuptools.find_packages(),
        long_description=long_description,
        install_requires=['six'],
        tests_require=['pytest'],
        setup_requires=['pytest-runner'],
        classifiers=['License :: OSI Approved :: BSD License'],
    )

