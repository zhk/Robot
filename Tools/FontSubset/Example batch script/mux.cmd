@echo off
ssatextrip chs.ass i,style,=,default | SubsetFont E:\FZShaoEr-M11S.ttf FZShaoEr-M11S-subset.ttf - -r | SSARepFont -f chs.ass::chs.n.ass
if exist cht.ass ssatextrip cht.ass i,style,=,default | SubsetFont E:\FZShaoEr-M11T.ttf FZShaoEr-M11T-subset.ttf - -r | SSARepFont -f cht.ass::cht.n.ass 
if not exist cht.ass ssatextrip chs.ass i,style,=,default | SubsetFont E:\FZShaoEr-M11T.ttf FZShaoEr-M11T-subset.ttf - -r
D:\!VideoProcessing\mkvtoolnix\mkvmerge @mux.txt
pause