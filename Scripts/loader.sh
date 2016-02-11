#!/bin/bash

sqlldr meta/meta ISA-Tab.ctl
sqlldr meta/meta Keyword.ctl
sqlldr meta/meta Study.ctl
sqlldr meta/meta Protocol.ctl
sqlldr meta/meta Tag.ctl
sqlldr meta/meta has_tag.ctl
sqlldr meta/meta has_keyword.ctl