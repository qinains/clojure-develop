��    t      �  �   \      �	  �   �	  �   �
  0  l  �  �     m  /  �  %  �  ~  �  Q  W  g  �  k    G  }  %   �     �  0   �     0     M  ,   i  ,   �  ,   �  '   �  -         F  (   g  (   �     �     �     �     �     �       Q   (     z  ?   �     �     �          $  $   <     a     s  <   �  <   �               &     /  5   N  1   �  :   �     �       #        :     U  3   l     �     �  &   �     �     �     	          -  (   :     c  �   x     V  ;   m  3   �  /   �  +      '   9   #   a      �      �      �      �   q   �      E!  4   b!     �!  "   �!  )   �!  Z   "  F   ^"      �"     �"     �"     �"     #     '#     ?#     _#     r#  $   �#     �#     �#     �#     �#  >   �#     1$  M   J$  P   �$  ,   �$     %     #%     0%     =%     Q%     i%     �%     �%     �%     �%    �%  �   E'  �   (  C  �(  �  6*  -    ,  /  N,  )  ~-    �.  o  �0  �  82  �  �3  X  �5  *   �6     &7  2   <7      o7     �7  +   �7  2   �7  +   8  "   78  ,   Z8  '   �8  #   �8  #   �8     �8     9     79     99     =9  !   T9  \   v9     �9  B   �9     3:     G:  -   d:     �:  ,   �:     �:     �:  @   ;  @   P;     �;     �;  
   �;  (   �;  ?   �;  8   )<  B   b<     �<     �<  *   �<     �<  /   =  =   K=     �=     �=  3   �=     �=     �=     >     (>     @>  ,   Q>     ~>  �   �>     p?  <   �?  4   �?  0   �?  ,   ,@  (   Y@  $   �@      �@     �@     �@     �@  k   �@     iA  5   �A     �A  )   �A  +   �A  j   +B  O   �B  5   �B  1   C     NC     aC     }C     �C  )   �C     �C  &   �C  *   D     JD  1   WD     �D     �D  @   �D  -   �D  ]   'E  K   �E  7   �E     	F     F     %F     3F  .   NF     }F  )   �F     �F     �F     �F     h       N   $          p   ]   &   S   I               n          V   R   B   f   %       "   j               6   *       Q   >   G   #   C                .   `          1   m             o   s           :          E   ,      g       b       3   	      F   -       
   c          a       @   2      '   4   M                   e          Y   ?   d              O   =   ^   r   H   t            i       (          7   K       L      +   J   k   A   \       /   5       [           ;       T          U   P   !   X         Z   D   9           0   W   q          l       _   )       <   8            
Context control:
  -B, --before-context=NUM  print NUM lines of leading context
  -A, --after-context=NUM   print NUM lines of trailing context
  -C, --context=NUM         print NUM lines of output context
 
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

 
Miscellaneous:
  -s, --no-messages         suppress error messages
  -v, --invert-match        select non-matching lines
  -V, --version             print version information and exit
      --help                display this help and exit
      --mmap                ignored for backwards compatibility
 
Output control:
  -m, --max-count=NUM       stop after NUM matches
  -b, --byte-offset         print the byte offset with output lines
  -n, --line-number         print line number with output lines
      --line-buffered       flush output on every line
  -H, --with-filename       print the file name for each match
  -h, --no-filename         suppress the file name prefix on output
      --label=LABEL         use LABEL as the standard input file name prefix
 
Report bugs to: %s
       --include=FILE_PATTERN  search only files that match FILE_PATTERN
      --exclude=FILE_PATTERN  skip files and directories matching FILE_PATTERN
      --exclude-from=FILE   skip files matching any file pattern from FILE
      --exclude-dir=PATTERN  directories that match PATTERN will be skipped.
   -E, --extended-regexp     PATTERN is an extended regular expression (ERE)
  -F, --fixed-strings       PATTERN is a set of newline-separated fixed strings
  -G, --basic-regexp        PATTERN is a basic regular expression (BRE)
  -P, --perl-regexp         PATTERN is a Perl regular expression
   -I                        equivalent to --binary-files=without-match
  -d, --directories=ACTION  how to handle directories;
                            ACTION is `read', `recurse', or `skip'
  -D, --devices=ACTION      how to handle devices, FIFOs and sockets;
                            ACTION is `read' or `skip'
  -R, -r, --recursive       equivalent to --directories=recurse
   -L, --files-without-match  print only names of FILEs containing no match
  -l, --files-with-matches  print only names of FILEs containing matches
  -c, --count               print only a count of matching lines per FILE
  -T, --initial-tab         make tabs line up (if needed)
  -Z, --null                print 0 byte after FILE name
   -NUM                      same as --context=NUM
      --color[=WHEN],
      --colour[=WHEN]       use markers to highlight the matching strings;
                            WHEN is `always', `never', or `auto'
  -U, --binary              do not strip CR characters at EOL (MSDOS)
  -u, --unix-byte-offsets   report offsets as if CRs were not there (MSDOS)

   -e, --regexp=PATTERN      use PATTERN for matching
  -f, --file=FILE           obtain PATTERN from FILE
  -i, --ignore-case         ignore case distinctions
  -w, --word-regexp         force PATTERN to match only whole words
  -x, --line-regexp         force PATTERN to match only whole lines
  -z, --null-data           a data line ends in 0 byte, not newline
   -o, --only-matching       show only the part of a line matching PATTERN
  -q, --quiet, --silent     suppress all normal output
      --binary-files=TYPE   assume that binary files are TYPE;
                            TYPE is `binary', `text', or `without-match'
  -a, --text                equivalent to --binary-files=text
 %s can only use the %s pattern syntax %s home page: <%s>
 %s home page: <http://www.gnu.org/software/%s/>
 %s%s argument `%s' too large %s: invalid option -- '%c'
 %s: option '%c%s' doesn't allow an argument
 %s: option '%s' is ambiguous; possibilities: %s: option '--%s' doesn't allow an argument
 %s: option '--%s' requires an argument
 %s: option '-W %s' doesn't allow an argument
 %s: option '-W %s' is ambiguous
 %s: option '-W %s' requires an argument
 %s: option requires an argument -- '%c'
 %s: unrecognized option '%c%s'
 %s: unrecognized option '--%s'
 ' (C) (standard input) Binary file %s matches
 Example: %s -i 'hello world' menu.h main.c

Regexp selection and interpretation:
 GNU Grep home page: <%s>
 General help using GNU software: <http://www.gnu.org/gethelp/>
 Invalid back reference Invalid character class name Invalid collation character Invalid content of \{\} Invalid preceding regular expression Invalid range end Invalid regular expression Invocation as `egrep' is deprecated; use `grep -E' instead.
 Invocation as `fgrep' is deprecated; use `grep -F' instead.
 Memory exhausted Mike Haertel No match No previous regular expression PATTERN is a set of newline-separated fixed strings.
 PATTERN is an extended regular expression (ERE).
 PATTERN is, by default, a basic regular expression (BRE).
 Packaged by %s
 Packaged by %s (%s)
 Premature end of regular expression Regular expression too big Report %s bugs to: %s
 Search for PATTERN in each FILE or standard input.
 Success Trailing backslash Try `%s --help' for more information.
 Unknown system error Unmatched ( or \( Unmatched ) or \) Unmatched [ or [^ Unmatched \{ Usage: %s [OPTION]... PATTERN [FILE]...
 Valid arguments are: With no FILE, or when FILE is -, read standard input.  If less than two FILEs
are given, assume -h.  Exit status is 0 if any line was selected, 1 otherwise;
if any error occurs and -q was not given, the exit status is 2.
 Written by %s and %s.
 Written by %s, %s, %s,
%s, %s, %s, %s,
%s, %s, and others.
 Written by %s, %s, %s,
%s, %s, %s, %s,
%s, and %s.
 Written by %s, %s, %s,
%s, %s, %s, %s,
and %s.
 Written by %s, %s, %s,
%s, %s, %s, and %s.
 Written by %s, %s, %s,
%s, %s, and %s.
 Written by %s, %s, %s,
%s, and %s.
 Written by %s, %s, %s,
and %s.
 Written by %s, %s, and %s.
 Written by %s.
 ` `egrep' means `grep -E'.  `fgrep' means `grep -F'.
Direct invocation as either `egrep' or `fgrep' is deprecated.
 ambiguous argument %s for %s character class syntax is [[:space:]], not [:space:] conflicting matchers specified exceeded PCRE's backtracking limit in GREP_COLORS="%s", the "%s" capacity %s in GREP_COLORS="%s", the "%s" capacity is boolean and cannot take a value ("=%s"); skipped in GREP_COLORS="%s", the "%s" capacity needs a value ("=..."); skipped input file %s is also the output input is too large to count internal error invalid %s%s argument `%s' invalid argument %s for %s invalid character class invalid context length argument invalid matcher %s invalid max count invalid suffix in %s%s argument `%s' lseek failed malformed repeat count memory exhausted no syntax specified others, see <http://git.sv.gnu.org/cgit/grep.git/tree/AUTHORS> recursive directory loop stopped processing of ill-formed GREP_COLORS="%s" at remaining substring "%s" support for the -P option is not compiled into this --disable-perl-regexp binary the -P option only supports a single pattern unbalanced ( unbalanced ) unbalanced [ unfinished \ escape unfinished repeat count unknown binary-files type unknown devices method warning: %s: %s write error writing output Project-Id-Version: GNU grep 2.9.79-pre1
Report-Msgid-Bugs-To: bug-grep@gnu.org
POT-Creation-Date: 2011-11-16 14:03+0100
PO-Revision-Date: 2011-11-14 22:00+0200
Last-Translator: Rafał Maszkowski <rzm@icm.edu.pl>
Language-Team: Polish <translation-team-pl@lists.sourceforge.net>
Language: pl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8-bit
 
Sterowanie kontekstem:
  -B, --before-context=ILE  wypisanie ILU linii kontekstu przed
  -A, --after-context=ILE   wypisanie ILU linii kontekstu po
  -C, --context=ILE         wypisanie ILU linii kontekstu
 
Licencja GPLv3+: GNU GPL wersja 3 albo późniejsza http://gnu.org/licenses/gpl.html
To jest wolne oprogramowanie: możesz je modyfikować i rozpowszechniać.
Autorzy NIE DAJĄ GWARANCJI w granicach dozwolonych prawem.
 
Różne:
  -s, --no-messages         bez komunikatów o błędach
  -v, --invert-match        wybierz linie nie pasujące
  -V, --version             wypisz informację o wersji i zakończ
      --help                wyświetl tę informację i zakończ
      --mmap                jeżeli możliwe mapuj pliki w pamięci
 
Sterowanie danymi wyjściowymi:
  -m, --max-count=ILE       zatrzymanie po ILU dopasowaniach
  -b, --byte-offset         wypisanie pozycji bajtów w wyniku
  -n, --line-number         wypisanie numerów linii w wyniku
      --line-buffered       opróżnienie bufora po każdej linii
  -H, --with-filename       wypisanie nazwy pliku dla każdej linii
  -h, --no-filename         bez nazwy pliku w liniach wyjściowych
      --label=ETYKIETA      w wyniku ETYKIETA zastępuje nazwe pliku
 
Raporty o błędach należy wysyłać do %s
       --include=WZORZEC     przeszukiwane będą pliki pasujące do WZORCA
      --exclude=WZORZEC     pliki pasujące do WZORCA będą pominięte
      --exclude-from=PLIK   pominięcie plików pasujących do WZORCÓW w PLIKU
      --exclude-dir=WZORZEC  katalogi pasujące do WZORCA będą pominięte
   -E, --extended-regexp     WZORZEC jest rozszerzonym wyr. regularnym (ERE)
  -F, --fixed-strings       WZORZEC napisy oddzielone przez zn. nowej linii
  -G, --basic-regexp        WZORZEC jest podstawowym wyr. regularnym (BRE)
  -P, --perl-regexp         WZORZEC jest wyrażeniem regularnym perla
   -I                        równoważne --binary-files=without-match
  -d, --directories=DZIAŁANIE  jak się obchodzić z katalogami,
                            DZIAŁANIE to `read' (czytanie), `recurse'
                            (przeglądanie rekurencujne) albo 'skip'
                            (pominięcie).
  -D, --devices=DZIAŁANIE   jak odwoływać się do urządzeń, FIFO i gniazd,
                            DZIAŁANIE to 'read' (czytaj) albo 'skip' (pomiń)
  -R, -r, --recursive       równoważne --directories=recurse .
   -L, --files-without-match  wypisanie tylko nazw PLIKÓW bez trafień
  -l, --files-with-matches  wypisanie tylko nazw PLIKÓW z trafieniami
  -c, --count               wypisanie tylko liczby pasujących linii w PLIKACH
  -T, --initial-tab         wyrównanie linii przez TAB (jeżeli potrzebne)
  -Z, --null                wypisanie bajtu 0 po każdej nazwie PLIKU
   -ILE                      to samo co --context=ILE
      --color[=KIEDY],
      --colour[=KIEDY]      oznaczanie pasujących znaków,
                            KIEDY to `always' (zawsze), `never' (nigdy)
                            albo `auto' (automatycznie).
  -U, --binary              bez usuwania znaków nowej linii na końcu
  -u, --unix-byte-offsets   podawanie pozycji tak jakby nie było CRów (MSDOS)

   -e, --regexp=WZORZEC      użycie WZORCA jako wyrażenia regularnego
  -f, --file=PLIK           użycie wzorców z PLIKU
  -i, --ignore-case         zignorowanie rożnic między małymi i wlk. lit.
  -w, --word-regexp         dopasowanie WZORCA tylko do pełnych słów
  -x, --line-regexp         dopasowanie WZORCA tylko do całych linii
  -z, --null-data           linie są zakończone bajtem 0, nie znakiem
                            nowej linii
   -o, --only-matching       pokazanie tylko kawałka, który pasuje do WZORCA
  -q, --quiet, --silent     wyłączenie wypisywanie wyniku
      --binary-files=TYP    założenie, że pliki binarne są typu TYP
                            TYP to 'binary', 'text' lub 'without-match'.
  -a, --text                równoważne --binary-files=text
 %s może użyć tylko składni wzorców %s Strona domowa %s: %s
 Strona domowa %s: http://www.gnu.org/software/%s/
 argument %s%s `%s' jest za duży %s: błędna opcja -- '%c'
 %s: opcja '%c%s' nie może mieć argumentu
 %s: opcja '%s' jest niejednoznaczna; możliwości: %s: opcja '--%s' nie może mieć argumentu
 %s: opcja '--%s' wymaga argumentu
 %s: opcja '-W %s' nie może mieć argumentu
 %s: opcja '-W %s' jest niejednoznaczna
 %s: opcja '-W %s' wymaga argumentu
 %s: opcja wymaga argumentu -- '%c'
 %s: nierozpoznana opcja '%c%s'
 %s: nierozpoznana opcja '--%s'
 " (C) (standardowe wejście) Plik binarny %s pasuje do wzorca
 Przykład: %s -i 'hello world' menu.h main.c

Wybór i interpretacja wyrażeń regularnych:
 Strona domowa Grepa GNU: %s
 Pomoc w używaniu oprogramowania GNU: http://www.gnu.org/gethelp/
 Błędne odwołanie Błędna nazwa klasy znaków Znak błędny dla bieżącego uporządkowania Błędna zawartość \{\} Błędne poprzedzające wyrażenie regularne Błędny koniec zakresu Błędne wyrażenie regularne Wywołanie jako `egrep' jest przestarzałe, używał `grep -E'.
 Wywołanie jako `fgrep' jest przestarzałe, używał `grep -F'.
 Pamięć wyczerpana Mike'a Haertela Nie pasuje Brak poprzedniego wyrażenia regularnego WZORZEC jest zbiorem łańcuchów znaków w kolejnych liniach.
 WZORZEC jest rozszerzonym wyrażeniem regularnym (ERE).
 WZORZEC domyślnie jest podstawowym wyrażeniem regularnym (BRE).
 Spakowane przez %s
 Spakowane przez %s (%s)
 Przedwczesny koniec wyrażenia regularnego Za duże wyrażenie regularne Raporty o błędach %s należy wysyłać do %s
 Szukanie WZORCA w każdym PLIKU lub na standardowym wejściu
 Udane Końcowy ukośnik odwrotny Napisz `%s --help' żeby dowiedzieć się więcej.
 Nieznany błąd systemowy Nie pasujący ( albo \( Nie pasujący ) albo \) Nie pasujący [ albo [^ Nie pasujący \{ Składnia: %s [OPCJA]... WZORZEC [PLIK] ...
 Prawidłowe agrumenty to: Bez podanie PLIKU albo gdy PLIK to -, czytane jest standardowe wejście.
Jeżeli podano mniej niż dwa PLIKI, zakłada -h. Zakończenie z kodem 0
jeżeli WZORZEC pasuje, z 1, jeżeli nie, z 2, jeżeli są problemy.
 Napisany przez %s i %s.
 Napisany przez %s, %s, %s,
%s, %s, %s, %s,
%s, %s i innych.
 Napisany przez %s, %s, %s,
%s, %s, %s, %s,
%s i %s.
 Napisany przez %s, %s, %s,
%s, %s, %s, %s
i %s.
 Napisany przez %s, %s, %s,
%s, %s, %s i %s.
 Napisany przez %s, %s, %s,
%s, %s i %s.
 Napisany przez %s, %s, %s,
%s i %s.
 Napisany przez %s, %s, %s
i %s.
 Napisany przez %s, %s i %s.
 Napisany przez %s.
 „ `egrep' oznacza `grep -E'. `fgrep' oznacza `grep -F'.
Używanie nazw `egrep' i `fgrep' jest przestarzałe.
 dwuznaczny argument %s dla %s składnia klasy znaków to [[:space:]], nie [:space:] podane sprzeczne wzorce przekroczony limit analizy wstecznej PCRE w GREP_COLORS="%s", własność "%s" to %s. w GREP_COLORS="%s", własność "%s" jest binarna i nie może mieć podanej wartości ("=%s"); pominięta. w GREP_COLORS="%s", własność "%s" musi mieć wartość ("=..."); pominięta. plik wejściowy %s jest również plikiem wyjściowym danych wejściowych jest zbyt dużo do policzenia błąd wewnętrzny błędny argument %s%s `%s' błędny argument %s dla %s błędna nazwa klasy znaków błędny argument długości kontekstowej błędna dopasowanie %s błędna maksymalna liczba powtórzeń błędny przyrostek w argumencie %s%s `%s' błąd lseek źle sformatowana specyfikacja liczby powtórzeń pamięć wyczerpana brak specyfikacji składni innych, zobacz: http://git.sv.gnu.org/cgit/grep.git/tree/AUTHORS nieskończona pętla przeglądania katalogów zaprzestano przetwarzanie źle sformatowanych GREP_COLORS="%s" na pozostałych znakach: "%s". program skompilowany bez opcji -P poprzez włączenie --disable-perl-regexp opcja -P może być użyta tylko do pojedynczego wzorca ( nie do pary ) nie do pary [ nie do pary niedokończona sekwencja \ niedokończona specyfikacja liczby powtórzeń nieznany typ pliku binarnego nieznany sposób przeglądania urządzeń uwaga: %s: %s błąd zapisu zapisuję wyniki 