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
;          key      +shift      [];'#/=  [];'#/=    [];'#/=  [];'#/= (caps)
; Dead a  [];'#/=  [];'#/=  ->  äãáâàạ   åā ǎăȧą    ÄÃÁÂÀẠ   ÅĀ ǍĂȦĄ
; Dead e  [];'#/=  [];'#/=  ->  ëẽéêèẹȩ   ē ěĕėę    ËẼÉÊÈẸȨ   Ē ĚĔĖĘ
; Dead i  [];'#/=  [];'#/=  ->  ïĩíîìị    ī ǐĭıį    ÏĨÍÎÌỊ    Ī ǏĬİĮ
; Dead o  [];'#/=  [];'#/=  ->  öõóôòọ    ō ǒŏȯơ    ÖÕÓÔÒỌ    Ō ǑŎȮƠ
; Dead u  [];'#/=  [];'#/=  ->  üũúûùụ   ůūűǔŭ ų    ÜŨÚÛÙỤ   ŮŪŰǓŬ Ų
;
; Dead SP [];'#/=  [];'#/=  ->  "~'^`    °¯˝ˇ˘˙˛
; Dead w  [];'#/=  [];'#/=  ->  ẅ ẃŵẁẉ   ẘ    ẇ     Ẅ ẂŴẀẈ        Ẇ
; Dead r  [];'#/=  [];'#/=  ->    ŕ  ṛŗ     ř ṙ       Ŕ  ṚŖ     Ř Ṙ
; Dead t  [];'#/=  [];'#/=  ->  ẗ    ṭţ     ť            ṬŢ     Ť
; Dead y  [];'#/=  [];'#/=  ->  ÿỹýŷỳỵ   ẙȳ   ỷ     ŸỸÝŶỲỴ    Ȳ   Ỷ
; Dead s  [];'#/=  [];'#/=  ->    śŝ ṣş      š        ŚŜ ṢŞ      Š
; Dead d  [];'#/=  [];'#/=  ->        ḑ     ď ḋ           Ḑ     Ď Ḋ
; Dead g  [];'#/=  [];'#/=  ->    ǵĝ  ģ    ḡǧğġ       ǴĜ  Ģ    ḠǦĞĠ
; Dead h  [];'#/=  [];'#/=  ->  ḧ  ĥ ḥḩ     ȟ       Ḧ  Ĥ ḤḨ     Ȟ
; Dead k  [];'#/=  [];'#/=  ->    ḱ  ḳķ     ǩ         Ḱ  ḲĶ     Ǩ
; Dead l  [];'#/=  [];'#/=  ->    ĺ  ḷļ     ľ         Ĺ  ḶĻ     Ľ
; Dead x  [];'#/=  [];'#/=  ->  ẍ                   Ẍ
; Dead c  [];'#/=  [];'#/=  ->    ćĉ  ç     č         ĆĈ  Ç     Č
; Dead v  [];'#/=  [];'#/=  ->   ṽǘ ǜṿ    ǖ ǚṽ       ṼǗ ǛṾ    Ǖ ǙṼ
; Dead n  [];'#/=  [];'#/=  ->   ñń ǹṇņ     ňñ       ÑŃ ǸṆŅ     ŇÑ

; [
<^>![::
nlb_deadkeys := { a: "{U+00E4}", e: "{U+00EB}", i: "{U+00EF}", o: "{U+00F6}", u: "{U+00FC}"
                ," ":"{U+0022}", w: "{U+1E85}", t: "{U+1E97}", y: "{U+00FF}", h: "{U+1E27}", x: "{U+1E8D}"
                ,CA: "{U+00C4}",CE: "{U+00CB}",CI: "{U+00CF}",CO: "{U+00D6}",CU: "{U+00DC}"
                               ,CW: "{U+1E84}",               CY: "{U+0178}",CH: "{U+1E26}",CX: "{U+1E8C}" }
Input, key, L1, {delete}{esc}{home}{end}{backspace}
If Asc(key) >= 65 && Asc(key) <= 90
{
  key := "C" key
}
Send, % nlb_deadkeys[key]
return

; ]
<^>!]::
nrb_deadkeys := { a: "{U+00E3}", e: "{U+1EBD}", i: "{U+0129}", o: "{U+00F5}", u: "{U+0169}"
                ," ":"{U+007E}", y: "{U+1EF9}", v: "{U+1E7D}", n: "{U+00F1}"
                ,CA: "{U+00C3}",CE: "{U+1EBC}",CI: "{U+0128}",CO: "{U+00D5}",CU: "{U+0168}"
                               ,CY: "{U+1EF8}",CV: "{U+1E7C}",CN: "{U+00D1}" }
Input, key, L1, {delete}{esc}{home}{end}{backspace}
If Asc(key) >= 65 && Asc(key) <= 90
{
  key := "C" key
}
Send, % nrb_deadkeys[key]
return

; ;
<^>!;::
nsc_deadkeys := { a: "{U+00E1}", e: "{U+00E9}", i: "{U+00ED}", o: "{U+00F3}", u: "{U+00FA}"
                ," ":"{U+0027}", w: "{U+1E83}", r: "{U+0155}", y: "{U+00FD}", s: "{U+015B}", g: "{U+01F5}"
                , k: "{U+1E31}", l: "{U+013A}", c: "{U+0107}", u: "{U+01D8}", n: "{U+0144}"
                ,CA: "{U+00C1}",CE: "{U+00C9}",CI: "{U+00CD}",CO: "{U+00D3}",CU: "{U+00DA}"
                               ,CW: "{U+1E82}",CR: "{U+0154}",CY: "{U+00DD}",CS: "{U+015A}",CG: "{U+01F4}"
                ,CK: "{U+1E30}",CL: "{U+0139}",CC: "{U+0106}",CU: "{U+01D7}",CN: "{U+0143}" }
Input, key, L1, {delete}{esc}{home}{end}{backspace}
If Asc(key) >= 65 && Asc(key) <= 90
{
  key := "C" key
}
Send, % nsc_deadkeys[key]
return

; '
<^>!'::
nap_deadkeys := { a: "{U+00E2}", e: "{U+00EA}", i: "{U+00EE}", o: "{U+00F4}", u: "{U+00FB}"
                ," ":"{U+005E}", w: "{U+0175}", y: "{U+0177}", s: "{U+015D}", g: "{U+011D}"
                , h: "{U+0125}", c: "{U+0109}"
                ,CA: "{U+00C2}",CE: "{U+00CA}",CI: "{U+00CE}",CO: "{U+00D4}",CU: "{U+00DB}"
                               ,CW: "{U+0174}",CY: "{U+0176}",CS: "{U+015C}",CG: "{U+011C}"
                ,CH: "{U+0124}",CC: "{U+0108}" }
Input, key, L1, {delete}{esc}{home}{end}{backspace}
If Asc(key) >= 65 && Asc(key) <= 90
{
  key := "C" key
}
Send, % nap_deadkeys[key]
return

; #
<^>!#::
nha_deadkeys := { a: "{U+00E0}", e: "{U+00E8}", i: "{U+00EC}", o: "{U+00F2}", u: "{U+00F9}"
                ," ":"{U+0060}", w: "{U+1E81}", y: "{U+1EF3}", v: "{U+01DC}", n: "{U+01F9}"
                ,CA: "{U+00C0}",CE: "{U+00C8}",CI: "{U+00CC}",CO: "{U+00D2}",CU: "{U+00D9}"
                               ,CW: "{U+1E80}",CY: "{U+1EF2}",CV: "{U+01DB}",CN: "{U+01F8}" }
Input, key, L1, {delete}{esc}{home}{end}{backspace}
If Asc(key) >= 65 && Asc(key) <= 90
{
  key := "C" key
}
Send, % nha_deadkeys[key]
return

; /
<^>!/::
nsl_deadkeys := { a: "{U+1EA1}", e: "{U+1EB9}", i: "{U+1ECB}", o: "{U+1ECD}", u: "{U+1EE5}"
                , w: "{U+1E89}", r: "{U+1E5B}", t: "{U+1E6D}", y: "{U+1EF5}", s: "{U+1E63}"
                , h: "{U+1E25}", k: "{U+1E33}", l: "{U+1E37}", v: "{U+1E7F}", n: "{U+1E47}"
                ,CA: "{U+1EA0}",CE: "{U+1EB8}",CI: "{U+1ECA}",CO: "{U+1ECC}",CU: "{U+1EE4}"
                ,CW: "{U+1E88}",CR: "{U+1E5A}",CT: "{U+1E6C}",CY: "{U+1EF4}",CS: "{U+1E62}"
                ,CH: "{U+1E24}",CK: "{U+1E32}",CL: "{U+1E36}",CV: "{U+1E7E}",CN: "{U+1E46}" }
; no-shift-slash then space has more
nslsp_deadkeys := { "-": "{U+2A2A}", "=": "{U+2A66}"
                    , w: "{U+1E89}", e: "{U+1EB9}", r: "{U+1E5B}", t: "{U+1E6D}"
                    , y: "{U+1EF5}", u: "{U+1EE5}", i: "{U+1ECB}", o: "{U+1ECD}"
                    , a: "{U+1EA1}", s: "{U+1E63}", d: "{U+1E0D}", h: "{U+1E25}"
                    , k: "{U+1E33}", l: "{U+1E37}"
                    , z: "{U+1E93}", v: "{U+1E7F}", b: "{U+1E05}", n: "{U+1E47}", m: "{U+1E43}"
                    ,CW: "{U+1E88}",CE: "{U+1EB8}",CR: "{U+1E5A}",CT: "{U+1E6C}"
                    ,CY: "{U+1EF4}",CU: "{U+1EE4}",CI: "{U+1ECA}",CO: "{U+1ECC}"
                    ,CA: "{U+1EA0}",CS: "{U+1E62}",CD: "{U+1E0C}",CH: "{U+1E24}"
                    ,CK: "{U+1E32}",CL: "{U+1E36}"
                    ,CZ: "{U+1E92}",CV: "{U+1E7E}",CB: "{U+1E04}",CN: "{U+1E46}",CM: "{U+1E42}" }
Input, key, L1, {delete}{esc}{home}{end}{backspace}
If Asc(key) >= 65 && Asc(key) <= 90
{
  key := "C" key
}
If Asc(key) = 32
{
    Input, key, L1, {delete}{esc}{home}{end}{backspace}
    If Asc(key) >= 65 && Asc(key) <= 90
    {
      key := "C" key
    }
    Send, % nslsp_deadkeys[key]
} Else {
    Send, % nsl_deadkeys[key]
}
return

; =
<^>!=::
neq_deadkeys := { e: "{U+0229}", r: "{U+0157}", t: "{U+0163}", s: "{U+015F}", d: "{U+1E11}"
                , g: "{U+0123}", h: "{U+1E29}", k: "{U+0137}", l: "{U+013C}", c: "{U+00E7}", n: "{U+0146}"
                ,CE: "{U+0228}",CR: "{U+0156}",CT: "{U+0162}",CS: "{U+015E}",CD: "{U+1E10}"
                ,CG: "{U+0122}",CH: "{U+1E28}",CK: "{U+0136}",CL: "{U+013B}",CC: "{U+00C7}",CN: "{U+0145}" }
Input, key, L1, {delete}{esc}{home}{end}{backspace}
If Asc(key) >= 65 && Asc(key) <= 90
{
  key := "C" key
}
Send, % neq_deadkeys[key]
return


; shift [
<^>!+[::
slb_deadkeys := { a: "{U+00E5}",                                              u: "{U+016E}"
                ," ":"{U+00B0}", w: "{U+1E98}", y: "{U+1E99}"
                ,CA: "{U+00C5}",                                             CU: "{U+016F}" }
Input, key, L1, {delete}{esc}{home}{end}{backspace}
If Asc(key) >= 65 && Asc(key) <= 90
{
  key := "C" key
}
Send, % slb_deadkeys[key]
return

; shift ]
<^>!+]::
srb_deadkeys := { a: "{U+0101}", e: "{U+0113}", i: "{U+012B}", o: "{U+014D}", u: "{U+016B}"
                ," ":"{U+00AF}", y: "{U+0233}", u: "{U+01D6}"
                ,CA: "{U+0100}",CE: "{U+0112}",CI: "{U+012A}",CO: "{U+014C}",CU: "{U+016A}"
                               ,CY: "{U+0232}",CU: "{U+01D5}" }
Input, key, L1, {delete}{esc}{home}{end}{backspace}
If Asc(key) >= 65 && Asc(key) <= 90
{
  key := "C" key
}
Send, % srb_deadkeys[key]
return

; shift ;
<^>!+;::
ssc_deadkeys := { u: "{U+0171}"," ":"{U+02DD}", g: "{U+1E21}"
                ,CU: "{U+0170}"               ,CG: "{U+1E20}" }
Input, key, L1, {delete}{esc}{home}{end}{backspace}
If Asc(key) >= 65 && Asc(key) <= 90
{
  key := "C" key
}
Send, % ssc_deadkeys[key]
return

; shift '
<^>!+'::
sap_deadkeys := { a: "{U+01CE}", e: "{U+011B}", i: "{U+01D0}", o: "{U+01D2}", u: "{U+01D4}"
                ," ":"{U+02C7}", r: "{U+0159}", t: "{U+0165}", d: "{U+010F}"
                , g: "{U+01E7}", h: "{U+021F}", k: "{U+01E9}", l: "{U+013E}", c: "{U+010D}"
                , v: "{U+01DA}", n: "{U+0148}"
                ,CA: "{U+01CD}",CE: "{U+011A}",CI: "{U+01CF}",CO: "{U+01D1}",CU: "{U+01D3}"
                               ,CR: "{U+0158}",CT: "{U+0164}",CD: "{U+010E}"
                ,CG: "{U+01E6}",CH: "{U+021E}",CK: "{U+01E8}",CL: "{U+013D}",CC: "{U+010C}"
                ,CV: "{U+01D9}",CN: "{U+0147}" }
Input, key, L1, {delete}{esc}{home}{end}{backspace}
If Asc(key) >= 65 && Asc(key) <= 90
{
  key := "C" key
}
Send, % sap_deadkeys[key]
return

; shift #
<^>!+#::
sha_deadkeys := { a: "{U+0103}", e: "{U+0115}", i: "{U+012D}", o: "{U+014F}", u: "{U+016D}"
                ," ":"{U+02D8}", s: "{U+0161}", g: "{U+011F}", v: "{U+1E7D}", n: "{U+00F1}"
                ,CA: "{U+0102}",CE: "{U+0114}",CI: "{U+012C}",CO: "{U+014E}",CU: "{U+016C}"
                               ,CS: "{U+0160}",CG: "{U+011E}",CV: "{U+1E7C}",CN: "{U+00D1}" }
Input, key, L1, {delete}{esc}{home}{end}{backspace}
If Asc(key) >= 65 && Asc(key) <= 90
{
  key := "C" key
}
Send, % sha_deadkeys[key]
return

; shift /
<^>!+/::
ssl_deadkeys := { a: "{U+0227}", e: "{U+0117}", i: "{U+0131}", o: "{U+022F}"
                ," ":"{U+02D9}", w: "{U+1E87}", r: "{U+1E59}", y: "{U+1EF7}", d: "{U+1E0B}", g: "{U+0121}"
                ,CA: "{U+0226}",CE: "{U+0116}",CI: "{U+0130}",CO: "{U+022E}"
                               ,CW: "{U+1E86}",CR: "{U+1E58}",CY: "{U+1EF6}",CD: "{U+1E0A}",CG: "{U+0120" }
Input, key, L1, {delete}{esc}{home}{end}{backspace}
If Asc(key) >= 65 && Asc(key) <= 90
{
  key := "C" key
}
Send, % ssl_deadkeys[key]
return

; shift =
<^>!+=::
seq_deadkeys := { a: "{U+0105}", e: "{U+0119}", i: "{U+012F}", o: "{U+01A1}", u: "{U+0173}"
                ," ":"{U+02DB}"
                ,CA: "{U+0104}",CE: "{U+0118}",CI: "{U+012E}",CO: "{U+01A0}",CU: "{U+0172}" }
Input, key, L1, {delete}{esc}{home}{end}{backspace}
If Asc(key) >= 65 && Asc(key) <= 90
{
  key := "C" key
}
Send, % seq_deadkeys[key]
return
