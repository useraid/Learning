from multiprocessing.connection import wait
import cv2 as cv
img = cv.imread('opencv/photos/cat.jpg')
cv.imshow('Cat', img)
cv.waitKey(0)