#!/bin/sh
#! grep '^[0-9][0-9][0-9][0-9][0-9][0-9][0-9]|A' POP_PLACES_20111204.txt > A.txt
cat POP_PLACES_20150401.txt | cut -d '|' -f 1 --complement > POP_PLACES_by_city.txt
export LC_ALL=POSIX 
grep --ignore-case '^a' POP_PLACES_by_city.txt > A_unsorted.txt
sort --ignore-case --field-separator='|' --key=1,1 A_unsorted.txt > A.txt
grep --ignore-case '^b' POP_PLACES_by_city.txt > B_unsorted.txt
sort --ignore-case --field-separator='|' --key=1,1 B_unsorted.txt > B.txt
grep --ignore-case '^c' POP_PLACES_by_city.txt > C_unsorted.txt
sort --ignore-case --field-separator='|' --key=1,1 C_unsorted.txt > C.txt
grep --ignore-case '^d' POP_PLACES_by_city.txt > D_unsorted.txt
sort --ignore-case --field-separator='|' --key=1,1 D_unsorted.txt > D.txt
grep --ignore-case '^e' POP_PLACES_by_city.txt > E_unsorted.txt
sort --ignore-case --field-separator='|' --key=1,1 E_unsorted.txt > E.txt
grep --ignore-case '^f' POP_PLACES_by_city.txt > F_unsorted.txt
sort --ignore-case --field-separator='|' --key=1,1 F_unsorted.txt > F.txt
grep --ignore-case '^g' POP_PLACES_by_city.txt > G_unsorted.txt
sort --ignore-case --field-separator='|' --key=1,1 G_unsorted.txt > G.txt
grep --ignore-case '^h' POP_PLACES_by_city.txt > H_unsorted.txt
sort --ignore-case --field-separator='|' --key=1,1 H_unsorted.txt > H.txt
grep --ignore-case '^i' POP_PLACES_by_city.txt > I_unsorted.txt
sort --ignore-case --field-separator='|' --key=1,1 I_unsorted.txt > I.txt
grep --ignore-case '^j' POP_PLACES_by_city.txt > J_unsorted.txt
sort --ignore-case --field-separator='|' --key=1,1 J_unsorted.txt > J.txt
grep --ignore-case '^k' POP_PLACES_by_city.txt > K_unsorted.txt
sort --ignore-case --field-separator='|' --key=1,1 K_unsorted.txt > K.txt
grep --ignore-case '^l' POP_PLACES_by_city.txt > L_unsorted.txt
sort --ignore-case --field-separator='|' --key=1,1 L_unsorted.txt > L.txt
grep --ignore-case '^m' POP_PLACES_by_city.txt > M_unsorted.txt
sort --ignore-case --field-separator='|' --key=1,1 M_unsorted.txt > M.txt
grep --ignore-case '^n' POP_PLACES_by_city.txt > N_unsorted.txt
sort --ignore-case --field-separator='|' --key=1,1 N_unsorted.txt > N.txt
grep --ignore-case '^o' POP_PLACES_by_city.txt > O_unsorted.txt
sort --ignore-case --field-separator='|' --key=1,1 O_unsorted.txt > O.txt
grep --ignore-case '^p' POP_PLACES_by_city.txt > P_unsorted.txt
sort --ignore-case --field-separator='|' --key=1,1 P_unsorted.txt > P.txt
grep --ignore-case '^q' POP_PLACES_by_city.txt > Q_unsorted.txt
sort --ignore-case --field-separator='|' --key=1,1 Q_unsorted.txt > Q.txt
grep --ignore-case '^r' POP_PLACES_by_city.txt > R_unsorted.txt
sort --ignore-case --field-separator='|' --key=1,1 R_unsorted.txt > R.txt
grep --ignore-case '^s' POP_PLACES_by_city.txt > S_unsorted.txt
sort --ignore-case --field-separator='|' --key=1,1 S_unsorted.txt > S.txt
grep --ignore-case '^t' POP_PLACES_by_city.txt > T_unsorted.txt
sort --ignore-case --field-separator='|' --key=1,1 T_unsorted.txt > T.txt
grep --ignore-case '^u' POP_PLACES_by_city.txt > U_unsorted.txt
sort --ignore-case --field-separator='|' --key=1,1 U_unsorted.txt > U.txt
grep --ignore-case '^v' POP_PLACES_by_city.txt > V_unsorted.txt
sort --ignore-case --field-separator='|' --key=1,1 V_unsorted.txt > V.txt
grep --ignore-case '^w' POP_PLACES_by_city.txt > W_unsorted.txt
sort --ignore-case --field-separator='|' --key=1,1 W_unsorted.txt > W.txt
grep --ignore-case '^x' POP_PLACES_by_city.txt > X_unsorted.txt
sort --ignore-case --field-separator='|' --key=1,1 X_unsorted.txt > X.txt
grep --ignore-case '^y' POP_PLACES_by_city.txt > Y_unsorted.txt
sort --ignore-case --field-separator='|' --key=1,1 Y_unsorted.txt > Y.txt
grep --ignore-case '^z' POP_PLACES_by_city.txt > Z_unsorted.txt
sort --ignore-case --field-separator='|' --key=1,1 Z_unsorted.txt > Z.txt
export LC_ALL=en_US.UTF-8
