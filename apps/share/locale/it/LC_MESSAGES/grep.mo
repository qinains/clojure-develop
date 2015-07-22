��    t      �  �   \      �	  �   �	  �   �
  0  l  �  �     m  /  �  %  �  ~  �  Q  W  g  �  k    G  }  %   �     �  0   �     0     M  ,   i  ,   �  ,   �  '   �  -         F  (   g  (   �     �     �     �     �     �       Q   (     z  ?   �     �     �          $  $   <     a     s  <   �  <   �               &     /  5   N  1   �  :   �     �       #        :     U  3   l     �     �  &   �     �     �     	          -  (   :     c  �   x     V  ;   m  3   �  /   �  +      '   9   #   a      �      �      �      �   q   �      E!  4   b!     �!  "   �!  )   �!  Z   "  F   ^"      �"     �"     �"     �"     #     '#     ?#     _#     r#  $   �#     �#     �#     �#     �#  >   �#     1$  M   J$  P   �$  ,   �$     %     #%     0%     =%     Q%     i%     �%     �%     �%     �%  �  �%  �   Y'  �   >(  7  1)    i*     x,    �,  .  �-  y  �.  �  W0    �1  �  s3  w  E5  8   �6     �6  2   7  /   ?7     o7  +   �7  ,   �7  +   �7  +   8  /   @8  !   p8  ,   �8  ,   �8  $   �8  $   9     69     89     ;9     L9  U   l9     �9  N   �9  #   -:  $   Q:  "   v:     �:  *   �:     �:     �:  :   ;  :   V;     �;     �;     �;  '   �;  A   �;  1   0<  H   b<     �<     �<  (   �<  "   	=     ,=  6   I=     �=     �=  .   �=     �=     �=     >     >     ;>  '   S>     {>    �>     �?  7   �?  0   �?  ,   "@  (   O@  $   x@      �@     �@     �@     �@     A  u   A     |A  D   �A  '   �A  "   B  )   (B  b   RB  O   �B  &   C  +   ,C     XC  ,   gC     �C     �C  1   �C     D     "D  ;   <D     xD      �D     �D     �D  D   �D     E  Y   <E  S   �E  %   �E     F     !F     2F     CF      WF      xF     �F     �F     �F     �F     h       N   $          p   ]   &   S   I               n          V   R   B   f   %       "   j               6   *       Q   >   G   #   C                .   `          1   m             o   s           :          E   ,      g       b       3   	      F   -       
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
 ambiguous argument %s for %s character class syntax is [[:space:]], not [:space:] conflicting matchers specified exceeded PCRE's backtracking limit in GREP_COLORS="%s", the "%s" capacity %s in GREP_COLORS="%s", the "%s" capacity is boolean and cannot take a value ("=%s"); skipped in GREP_COLORS="%s", the "%s" capacity needs a value ("=..."); skipped input file %s is also the output input is too large to count internal error invalid %s%s argument `%s' invalid argument %s for %s invalid character class invalid context length argument invalid matcher %s invalid max count invalid suffix in %s%s argument `%s' lseek failed malformed repeat count memory exhausted no syntax specified others, see <http://git.sv.gnu.org/cgit/grep.git/tree/AUTHORS> recursive directory loop stopped processing of ill-formed GREP_COLORS="%s" at remaining substring "%s" support for the -P option is not compiled into this --disable-perl-regexp binary the -P option only supports a single pattern unbalanced ( unbalanced ) unbalanced [ unfinished \ escape unfinished repeat count unknown binary-files type unknown devices method warning: %s: %s write error writing output Project-Id-Version: grep-2.9.79-pre1
Report-Msgid-Bugs-To: bug-grep@gnu.org
POT-Creation-Date: 2011-11-16 14:03+0100
PO-Revision-Date: 2011-11-14 22:32+0100
Last-Translator: Milo Casagrande <milo@casagrande.name>
Language-Team: Italian <tp@lists.linux.it>
Language: it
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8-bit
Plural-Forms: nplurals=2; plural=(n != 1);
 
Controllo del contesto:
  -B, --before-context=NUM  Stampa NUM righe di contesto precedente
  -A, --after-context=NUM   Stampa NUM righe di contesto seguente
  -C, --context=NUM         Stampa NUM righe di contesto dell'output
 
Licenza GPLv3+: GNU GPL versione 3 o successiva <http://gnu.org/licenses/gpl.html>.
Questo programma è software libero: siete liberi di modificarlo e ridistribuirlo.
Non c'è ALCUNA GARANZIA, per quanto consentito dalle vigenti normative.

 
Varie:
  -s, --no-messages         Elimina i messaggi di errore
  -v, --invert-match        Seleziona le righe che non corrispondono
  -V, --version             Stampa la versione ed esce
      --help                Visualizza questo aiuto ed esce
      --mmap                Ignorata per retro compatibilità
 
Controllo dell'output:
  -m, --max-count=NUM       Si ferma dopo NUM corrispondenze
  -b, --byte-offset         Stampa l'offset del byte con le righe di output
  -n, --line-number         Stampa il numero della riga con le righe di output
      --line-buffered       Fa il flush dell'output con ogni riga
  -H, --with-filename       Stampa il nome del file per ogni corrispondenza
  -h, --no-filename         Elimina il nome del file dall'output
      --label=ETICH         Usa ETICH come nome del file per lo standard input
 
Segnalare i bug a: %s
       --include=MODELLO     Esamina i file corrispondenti al MODELLO
      --exclude=MODELLO     Salta i file corrispondenti al MODELLO
      --exclude-from=FILE   Salta i file corrispondenti ai modelli nel FILE
      --exclude-dir=MODELLO Salta le directory corrispondenti al MODELLO
   -E, --extended-regexp     MODELLO è un'espressione regolare estesa
  -F, --fixed-strings       MODELLO è un insieme di stringhe letterali separate da newline
  -G, --basic-regexp        MODELLO è un'espressione regolare semplice
  -P, --perl-regexp         MODELLO è un'espressione regolare Perl
   -I                        Equivale a --binary-files=without-match
  -d, --directories=AZIONE  Come gestire le directory: AZIONE è \"read\", \"recurse\"
                            o \"skip\"
  -D, --devices=AZIONE      Come gestire device, FIFO e socket: AZIONE è \"read\"
                            o \"skip\"
  -R, -r, --recursive       Equivale a --directories=recurse
   -L, --files-without-match Stampa solo i nomi dei FILE senza corrispondenze
  -l, --files-with-matches  Stampa solo i nomi dei FILE contenenti corrispondenze
  -c, --count               Stampa solo il conteggio delle righe occorrenti in ogni
                            FILE
  -T, --initial-tab         Allinea le tabulazioni (se necessario)
  -Z, --null                Stampa il byte 0 dopo ogni nome di FILE
   -NUM                      Come --context=NUM
      --color[=QUANDO]
      --colour[=QUANDO]     Usa i colori per distinguere le stringhe corrispondenti.
                            QUANDO può essere "always", "never" o "auto".
  -U, --binary              Non rimuove i caratteri CR all'EOL (MSDOS)
  -u, --unix-byte-offsets   Segnala gli offset come se non ci fossero CR (MSDOS)

   -e, --regexp=MODELLO      Usa MODELLO per la corrispondenza
  -f, --file=FILE           Ottiene il MODELLO dal FILE
  -i, --ignore-case         Ignora la distinzione tra maiuscole e minuscole
  -w, --word-regexp         Forza MODELLO a corrispondere solo a parole intere
  -x, --line-regexp         Forza MODELLO a corrispondere solo a righe intere
  -z, --null-data           Una riga di dati termina con il byte 0 invece che
                            newline
   -o, --only-matching       Mostra solo la parte della riga corrispondente al
                            MODELLO
  -q, --quiet, --silent     Elimina tutto l'output normale
      --binary-files=TIPO   Suppone che i file binari siano del TIPO \"binary\",
                            \"text\" oppure \"without-match\"
  -a, --text                Equivale a --binary-files=text
 %s può usare solamente la sintassi di corrispondenza %s Sito web di %s: <%s>
 Sito web di %s: <http://www.gnu.org/software/%s/>
 l'argomento "%3$s" di %1$s%2$s è troppo grande %s: opzione non valida -- "%c"
 %s: l'opzione "%c%s" non accetta argomenti
 %s: l'opzione "%s" è ambigua. Possibilità: %s: l'opzione "--%s" non accetta argomenti
 %s: l'opzione "--%s" richiede un argomento
 %s: l'opzione "-W %s" non accetta un argomento
 %s: l'opzione "-W %s" è ambigua
 %s: l'opzione "-W %s" richiede un argomento
 %s: l'opzione richiede un argomento -- "%c"
 %s: opzione "%c%s" non riconosciuta
 %s: opzione "--%s" non riconosciuta
 " © (standard input) Il file binario %s corrisponde
 Esempio: %s -i "ciao mondo" menu.h main.c

Selezione e interpretazione delle regexp:
 Sito web di GNU grep: <%s>
 Pagina di aiuto per l'utilizzo di software GNU: <http://www.gnu.org/gethelp/>
 Riferimento all'indietro non valido Nome classe del carattere non valido Carattere di collazione non valido Contenuto di \{\} non valido Espressione regolare precedente non valida Limite massimo non valido Espressione regolare non valida L'invocazione come "egrep" è deprecata, usare "grep -E".
 L'invocazione come "fgrep" è deprecata, usare "grep -F".
 Memoria esaurita Mike Haertel Nessuna corrispondenza Nessuna espressione regolare precedente MODELLO è un insieme di stringhe letterali separate da newline.
 MODELLO è un'espressione regolare estesa (ERE).
 MODELLO è, in modo predefinito, un'espressione regolare di base (BRE).
 Pacchetto creato da %s
 Pacchetto creato da %s (%s)
 Fine prematura dell'espressione regolare Espressione regolare troppo grande Segnalare i bug di %s a: %s
 Cerca il MODELLO in ogni FILE o nello standard input.
 Successo Backslash finale Usare "%s --help" per ulteriori informazioni.
 Errore di sistema sconosciuto ( o \( senza corrispondenza ) o \) senza corrispondenza [ o [^ senza corrispondenza \{ senza corrispondenza Uso: %s [OPZIONE]... MODELLO [FILE]...
 Gli argomenti validi sono: Se non c'è alcun FILE o il FILE è -, legge lo standard input. Se sono stati
specificati meno di due FILE presume -h. Esce con lo stato 0 se è stata
selezionata almeno una riga, 1 altrimenti. Se si verifica un errore e l'opzione
-q non è stata usata, lo stato è 2.
 Scritto da %s e %s.
 Scritto da %s, %s, %s,
%s, %s, %s, %s,
%s, %s e altri.
 Scritto da %s, %s, %s,
%s, %s, %s, %s,
%s e %s.
 Scritto da %s, %s, %s,
%s, %s, %s, %s
e %s.
 Scritto da %s, %s, %s,
%s, %s, %s e %s.
 Scritto da %s, %s, %s,
%s, %s e %s.
 Scritto da %s, %s, %s,
%s e %s.
 Scritto da %s, %s, %s
e %s.
 Scritto da %s, %s e %s.
 Scritto da %s.
 " "egrep" significa "grep -E", "fgrep" significa "grep -F".
L'invocazione diretta come "egrep" o "fgrep" è deprecata.
 argomento %s ambiguo per %s La sintassi per la classe di caratteri è [[:space:]], non [:space:] specificate corrispondenze in conflitto Limite di backtrack PCRE raggiunto In GREP_COLORS="%s", la capacità "%s" %s In GREP_COLORS="%s", la capacità "%s" è booleana e non può accettare un valore ("=%s"); saltato In GREP_COLORS="%s", la capacità "%s" necessita di un valore ("=..."); saltato il file di input %s è anche l'output l'input è troppo grande per essere contato errore interno l'argomento "%3$s" di %1$s%2$s non è valido argomento %s per %s non valido Classe del carattere non valido argomento della lunghezza del contesto non valido corrispondenza %s non valida numero massimo non valido il suffisso nell'argomento "%3$s" di %1$s%2$s non è valido lseek non riuscita conteggio ripetizioni malformato memoria esaurita Nessuna sintassi specificata altri, consultare <http://git.sv.gnu.org/cgit/grep.git/tree/AUTHORS> ciclo ricorsivo di directory Elaborazione dei GREP_COLORS="%s" mal formati nelle sotto stringhe "%s" rimanenti fermata Il supporto all'opzione -P non è compilato in questo binario --disable-perl-regexp L'opzione -P supporta un solo modello ( non bilanciata ) non bilanciata [ non bilanciata Escape \ incompleto conteggio ripetizioni incompleto tipo di file binario sconosciuto metodo per i device sconosciuto attenzione: %s: %s errore di scrittura scrittura dell'output 