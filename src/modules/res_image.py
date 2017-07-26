#!/usr/bin/env python2

"""
Image module for resource obfuscation
"""
import os
import time

from random import randint
from PIL import Image

IMAGE_LIST = ['png', 'PNG', 'jpg', 'jpeg', 'JPG','JPEG', 'swf', 'SWF', \
  'GIF', 'gif', 'BMP', 'bmp']

def load_filelist_from_extension_arr(dirname, image_list):
    """
    Get all files end with extension in an apk project directory
    """

    extension_path = []

    for root, dirs, files in os.walk(dirname):
        for filename in files:
            for extension in image_list:
                if filename.endswith(extension):
                    extension_path.append(root + "/" + filename)
                    continue
    return extension_path

def modify_one_pixel(pix):
    """Slightly alter pix in a safe way."""

    if pix == 0:
        pix += 1
    else:
        pix -= 1
    return pix

def modify_png(png_filename):
    "Modify and overwrite a png file."

    try:
        "Modify and overwrite a png file."
        img = Image.open(png_filename)
        pix = (0, 0, 0, 255)        
        
        timeout = time.time() + 5
        while (pix == (0, 0, 0, 255) or pix == (255, 0, 0, 0) or pix == (0, 0, 0, 0)):            
            x, y = randint(0, img.size[0] - 1), randint(0, img.size[1] - 1)
            pix = img.getpixel((x, y))  # this can be int or tuple of int

            if time.time() > timeout:
                break

        if type(pix) is int:
            pix = modify_one_pixel(pix)
        else:
            pix = list(pix)
            l = randint(0, len(pix) - 1)
            pix[l] = modify_one_pixel(pix[l])
            pix = tuple(pix)

        img.putpixel((x, y), pix)
        img.save(png_filename)

    except:
        pass

def modify_jpg(filename):
    "Modify jpg by modifying one random pixel"

    try:        
        img = Image.open(filename)
        x, y = randint(0, img.size[0] - 1), randint(0, img.size[1] - 1)        
        pix = img.getpixel((x, y))        

        if type(pix) is int:
            pix = modify_one_pixel(pix)
        else:
            pix = list(pix)
            l = randint(0, len(pix) - 1)

            pix[l] = modify_one_pixel(pix[l])            
            pix = tuple(pix)            

        img.putpixel((x, y), pix)
        img.save(filename)

    except:
        print "error"
        pass


def modify_bmp(filename):
    "Modify bmp by modifying one random pixel"

    try:        
        img = Image.open(filename)
        x, y = randint(0, img.size[0] - 1), randint(0, img.size[1] - 1)        
        pix = img.getpixel((x, y))        

        if type(pix) is int:
            pix = modify_one_pixel(pix)
        else:
            pix = list(pix)
            l = randint(0, len(pix) - 1)

            pix[l] = modify_one_pixel(pix[l])            
            pix = tuple(pix)            

        img.putpixel((x, y), pix)
        img.save(filename)

    except:
        print "error"
        pass

def modify_gif(filename):
    "Modify gif by adding one byte at the end"

    f = open(filename, 'a')
    f.write("\x00")
    f.close()


# TODO. check whether flash is working after 1 byte addition
def modify_swf(filename):
    "Modify swf by adding one byte at the end"

    f = open(filename, 'a')
    f.write("\x00")
    f.close()
    
