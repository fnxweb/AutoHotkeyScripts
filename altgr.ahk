; Define funky AltGr mappings to do the same as the default Linux mappings.

; And support <Shift+Ctrl+U> via a dialogue
; Comment in http://www.johndcook.com/blog/2008/08/17/three-ways-to-enter-unicode-characters-in-windows/
+^u::
InputBox, codepoint, Unicode code point, U+
if not ErrorLevel
Send {U+%codepoint%}
return


;; AltGr chars (by row then row+shift)
; - row 1
<^>!1::Send,    {U+00B9} ; ¹
<^>!2::Send,    {U+00B2} ; ²
<^>!3::Send,    {U+00B3} ; ³
<^>!4::Send,    {U+20AC} ; €
<^>!5::Send,    {U+00BD} ; ½
<^>!6::Send,    {U+00BE} ; ¾
<^>!7::Send,    {U+007B} ; {
<^>!8::Send,    {U+005B} ; [
<^>!9::Send,    {U+005D} ; ]
<^>!0::Send,    {U+007D} ; }
<^>!-::Send,    {U+005C} ; \

<^>!+1::Send,   {U+00A1} ; ¡
<^>!+2::Send,   {U+215B} ; ⅛
<^>!+3::Send,   {U+00A3} ; £
<^>!+4::Send,   {U+00BC} ; ¼
<^>!+5::Send,   {U+215C} ; ⅜
<^>!+6::Send,   {U+215D} ; ⅝
<^>!+7::Send,   {U+215E} ; ⅞
<^>!+8::Send,   {U+2122} ; ™
<^>!+9::Send,   {U+00B1} ; ±
<^>!+0::Send,   {U+00B0} ; °
<^>!+-::Send,   {U+00BF} ; ¿

; - row 2
<^>!q::Send,    {U+0040} ; @
<^>!w::Send,    {U+0142} ; ł
<^>!e::Send,    {U+0065} ; e
<^>!r::Send,    {U+00B6} ; ¶
<^>!t::Send,    {U+0167} ; ŧ
<^>!y::Send,    {U+2190} ; ←
<^>!u::Send,    {U+2193} ; ↓
<^>!i::Send,    {U+2192} ; →
<^>!o::Send,    {U+00F8} ; ø
<^>!p::Send,    {U+00FE} ; þ

<^>!+q::Send,   {U+03A9} ; Ω
<^>!+w::Send,   {U+0141} ; Ł
<^>!+e::Send,   {U+0045} ; E
<^>!+r::Send,   {U+00AE} ; ®
<^>!+t::Send,   {U+0166} ; Ŧ
<^>!+y::Send,   {U+00A5} ; ¥
<^>!+u::Send,   {U+2191} ; ↑
<^>!+i::Send,   {U+0131} ; ı
<^>!+o::Send,   {U+00D8} ; Ø
<^>!+p::Send,   {U+00DE} ; Þ

; - row 3
<^>!a::Send,    {U+00E6} ; æ
<^>!s::Send,    {U+00DF} ; ß
<^>!d::Send,    {U+00F0} ; ð
<^>!f::Send,    {U+0111} ; đ
<^>!g::Send,    {U+014B} ; ŋ
<^>!h::Send,    {U+0127} ; ħ
<^>!j::Send,    {U+006A} ; j
<^>!k::Send,    {U+0138} ; ĸ
<^>!l::Send,    {U+0142} ; ł

<^>!+a::Send,   {U+00C6} ; Æ
<^>!+s::Send,   {U+00A7} ; §
<^>!+d::Send,   {U+00D0} ; Ð
<^>!+f::Send,   {U+00AA} ; ª
<^>!+g::Send,   {U+014A} ; Ŋ
<^>!+h::Send,   {U+0126} ; Ħ
<^>!+j::Send,   {U+004A} ; J
<^>!+k::Send,   {U+0026} ; &
<^>!+l::Send,   {U+0141} ; Ł

; - row 4
<^>!\::Send,    {U+007C} ; |
<^>!z::Send,    {U+00AB} ; «
<^>!x::Send,    {U+00BB} ; »
<^>!c::Send,    {U+00A2} ; ¢
<^>!v::Send,    {U+2013} ; –  n-dash  non-standard
<^>!b::Send,    {U+201C} ; “
<^>!n::Send,    {U+201D} ; ”
<^>!m::Send,    {U+00B5} ; µ
<^>!,::Send,    {U+203D} ; ‽  non-standard
<^>!.::Send,    {U+00B7} ; ·

<^>!+\::Send,   {U+00A6} ; ¦
<^>!+z::Send,   {U+003C} ; <
<^>!+x::Send,   {U+003E} ; >
<^>!+c::Send,   {U+00A9} ; ©
<^>!+v::Send,   {U+2014} ; —  m-dash  non-standard
<^>!+b::Send,   {U+2018} ; ‘
<^>!+n::Send,   {U+2019} ; ’
<^>!+m::Send,   {U+00BA} ; º
<^>!+,::Send,   {U+00D7} ; ×
<^>!+.::Send,   {U+00F7} ; ÷



;; Dead key (key sequence) mappings, e.g., <AltGr+;>e -> é
;          key      +shift      [];'#/=  [];'#/=
; Dead a  [];'#/=  [];'#/=  ->  äãáâàạ   åā ǎãȧą
; Dead e  [];'#/=  [];'#/=  ->  ëẽéêèẹȩ   ē ěĕėę
; Dead i  [];'#/=  [];'#/=  ->  ïĩíîìị    ī ǐĭıį
; Dead o  [];'#/=  [];'#/=  ->  öõóôòọ    ō ǒŏȯơ
; Dead u  [];'#/=  [];'#/=  ->  üũúûùụ   ůūűǔŭ ų
;
; Dead SP [];'#/=  [];'#/=  ->  "~'^`    °¯˝ˇ˘˙˛
; Dead w  [];'#/=  [];'#/=  ->  ẅ ẃŵẁẉ   ẘ    ẇ
; Dead r  [];'#/=  [];'#/=  ->    ŕ  ṛŗ     ř ṙ
; Dead t  [];'#/=  [];'#/=  ->  ẗ    ṭţ     ť
; Dead y  [];'#/=  [];'#/=  ->  ÿỹýŷỳỵ   ẙȳ   ỷ
; Dead s  [];'#/=  [];'#/=  ->    śŝ ṣş      š
; Dead d  [];'#/=  [];'#/=  ->        ḑ     ď ḋ
; Dead g  [];'#/=  [];'#/=  ->    ǵĝ  ģ    ḡǧğġ
; Dead h  [];'#/=  [];'#/=  ->  ḧ  ĥ ḥḩ     ȟ
; Dead k  [];'#/=  [];'#/=  ->    ḱ  ḳķ     ǩ
; Dead l  [];'#/=  [];'#/=  ->    ĺ  ḷļ     ľ
; Dead x  [];'#/=  [];'#/=  ->  ẍ
; Dead c  [];'#/=  [];'#/=  ->    ćĉ  ç     č
; Dead v  [];'#/=  [];'#/=  ->   ṽǘ ǜṿ    ǖ ǚṽ
; Dead n  [];'#/=  [];'#/=  ->   ñń ǹṇņ     ňñ

<^>![::
nlb_deadkeys := { a: "{U+00E4}", e: "{U+00EB}", i: "{U+00EF}", o: "{U+00F6}", u: "{U+00FC}"     ; [
                ," ":"{U+0022}", w: "{U+1E85}", t: "{U+1E97}", y: "{U+00FF}", h: "{U+1E27}", x: "{U+1E8D}" }
Input, key, L1, {delete}{esc}{home}{end}{backspace}
Send, % nlb_deadkeys[key]
return

<^>!]::
nrb_deadkeys := { a: "{U+00E3}", e: "{U+1EBD}", i: "{U+0129}", o: "{U+00F5}", u: "{U+0169}"     ; ]
                ," ":"{U+007E}", y: "{U+1EF9}", v: "{U+1E7D}", n: "{U+00F1}" }
Input, key, L1, {delete}{esc}{home}{end}{backspace}
Send, % nrb_deadkeys[key]
return

<^>!;::
nsc_deadkeys := { a: "{U+00E1}", e: "{U+00E9}", i: "{U+00ED}", o: "{U+00F3}", u: "{U+00FA}"     ; ;
                ," ":"{U+0027}", w: "{U+1E83}", r: "{U+0155}", y: "{U+00FD}", s: "{U+015B}", g: "{U+01F5}"
                , k: "{U+1E31}", l: "{U+013A}", c: "{U+0107}", u: "{U+01D8}", n: "{U+0144}" }
Input, key, L1, {delete}{esc}{home}{end}{backspace}
Send, % nsc_deadkeys[key]
return

<^>!'::
nap_deadkeys := { a: "{U+00E2}", e: "{U+00EA}", i: "{U+00EE}", o: "{U+00F4}", u: "{U+00FB}"     ; '
                ," ":"{U+005E}", w: "{U+0175}", y: "{U+0177}", s: "{U+015D}", g: "{U+011D}"
                , h: "{U+0125}", c: "{U+0109}" }
Input, key, L1, {delete}{esc}{home}{end}{backspace}
Send, % nap_deadkeys[key]
return

<^>!#::
nha_deadkeys := { a: "{U+00E0}", e: "{U+00E8}", i: "{U+00EC}", o: "{U+00F2}", u: "{U+00F9}"     ; #
                ," ":"{U+0060}", w: "{U+1E81}", y: "{U+1EF3}", v: "{U+01DC}", n: "{U+01F9}" }
Input, key, L1, {delete}{esc}{home}{end}{backspace}
Send, % nha_deadkeys[key]
return

<^>!/::
nsl_deadkeys := { a: "{U+1EA1}", e: "{U+1EB9}", i: "{U+1ECB}", o: "{U+1ECD}", u: "{U+1EE5}"     ; /
                , w: "{U+1E89}", r: "{U+1E5B}", t: "{U+1E6D}", y: "{U+1EF5}", s: "{U+1E63}"
                , h: "{U+1E25}", k: "{U+1E33}", l: "{U+1E37}", v: "{U+1E7F}", n: "{U+1E47}" }
; no-shift-slash then space has more
nslsp_deadkeys := { "-": "{U+2A2A}", "=": "{U+2A66}"
                    , w: "{U+1E89}", e: "{U+1EB9}", r: "{U+1E5B}", r: "{U+1E6D}"
                    , y: "{U+1EF5}", u: "{U+1EE5}", i: "{U+1ECB}", o: "{U+1ECD}"
                    , a: "{U+1EA1}", s: "{U+1E63}", d: "{U+1E0D}", h: "{U+1E25}"
                    , k: "{U+1E33}", l: "{U+1E37}"
                    , z: "{U+1E93}", v: "{U+1E7F}", b: "{U+1E05}", n: "{U+1E47}", m: "{U+1E43}" }
Input, key, L1, {delete}{esc}{home}{end}{backspace}
If Asc(key) = 32
{
    Input, key, L1, {delete}{esc}{home}{end}{backspace}
    Send, % nslsp_deadkeys[key]
} Else {
    Send, % nsl_deadkeys[key]
}
return

<^>!=::
neq_deadkeys := { e: "{U+0229}", r: "{U+0157}", t: "{U+0163}", s: "{U+015F}", d: "{U+1E11}"     ; =
                , g: "{U+0122}", h: "{U+1E29}", k: "{U+0137}", l: "{U+013C}", c: "{U+00E7}", n: "{U+0146}" }
Input, key, L1, {delete}{esc}{home}{end}{backspace}
Send, % neq_deadkeys[key]
return


<^>!+[::
slb_deadkeys := { a: "{U+00E5}",                                              u: "{U+016F}"     ; S+[
                ," ":"{U+00B0}", w: "{U+1E98}", y: "{U+1E99}" }
Input, key, L1, {delete}{esc}{home}{end}{backspace}
Send, % slb_deadkeys[key]
return

<^>!+]::
srb_deadkeys := { a: "{U+0101}", e: "{U+0065}", i: "{U+012B}", o: "{U+014D}", u: "{U+016B}"     ; S+]
                ," ":"{U+00AF}", y: "{U+0233}", u: "{U+01D6" }
Input, key, L1, {delete}{esc}{home}{end}{backspace}
Send, % srb_deadkeys[key]
return

<^>!+;::
ssc_deadkeys := { u: "{U+0171}"," ":"{U+02DD}", g: "{U+1E21}" }                                 ; S+;
Input, key, L1, {delete}{esc}{home}{end}{backspace}
Send, % ssc_deadkeys[key]
return

<^>!+'::
sap_deadkeys := { a: "{U+01CE}", e: "{U+011B}", i: "{U+01D0}", o: "{U+01D2}", u: "{U+01D4}"     ; S+'
                ," ":"{U+02C7}", r: "{U+0159}", t: "{U+0165}", d: "{U+010F}"
                , g: "{U+01E7}", h: "{U+021F}", k: "{U+01E9}", l: "{U+013E}" , c: "{U+010D}"
                , v: "{U+01DA}", n: "{U+0148}" }
Input, key, L1, {delete}{esc}{home}{end}{backspace}
Send, % sap_deadkeys[key]
return

<^>!+#::
sha_deadkeys := { a: "{U+0103}", e: "{U+0115}", i: "{U+012D}", o: "{U+014F}", u: "{U+016D}"     ; S+#
                ," ":"{U+02D8}", s: "{U+0161}", g: "{U+011F}", v: "{U+1E7D}", n: "{U+00F1}" }
Input, key, L1, {delete}{esc}{home}{end}{backspace}
Send, % sha_deadkeys[key]
return

<^>!+/::
ssl_deadkeys := { a: "{U+0227}", e: "{U+0117}", i: "{U+0131}", o: "{U+022F}"                    ; S+/
                ," ":"{U+02D9}", w: "{U+1E87}", r: "{U+1E59}", y: "{U+1EF7}", d: "{U+1E0B}", g: "{U+0121" }
Input, key, L1, {delete}{esc}{home}{end}{backspace}
Send, % ssl_deadkeys[key]
return

<^>!+=::
seq_deadkeys := { a: "{U+0105}", e: "{U+0119}", i: "{U+012F}", o: "{U+01A1}", u: "{U+0173"      ; S+=
                ," ":"{U+02DB}" }
Input, key, L1, {delete}{esc}{home}{end}{backspace}
Send, % seq_deadkeys[key]
return
