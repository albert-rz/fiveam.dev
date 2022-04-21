# ---
# layout: post
# title:  "Bla bla This is just a demo - 2022-04-20"
# tags: [ Python ]
# featured_image_thumbnail: /assets/images/posts/2018/12_thumbnail.jpg
# featured_image: /assets/images/posts/2018/12.jpg
# featured: true
# hidden: false
# jupyter:
#   jupytext:
#     formats: py:percent
#     text_representation:
#       extension: .py
#       format_name: percent
#       format_version: '1.3'
#       jupytext_version: 1.13.7
#   kernelspec:
#     display_name: Python 3 (ipykernel)
#     language: python
#     name: python3
# ---

# %% [markdown]
# # Title
#
# Bla bla bla
#
# | Column A | Column B |
# |----------|----------|
# | Text A   | Text B   |

# %%
from collections import namedtuple

Point = namedtuple("Point", ["x", "y"])
point = Point(1, 2)

print(point)
