#lang racket
(require threading)

(define ciphertext "hzsrnqc klyy wqc flo mflwf ol zqdn nsoznj wskn lj xzsrbjnf, wzsxz gqv zqhhnf ol ozn glco zlfnco hnlhrn; nsoznj jnrqosdnc lj fnqj kjsnfbc, wzsxz sc xnjoqsfrv gljn efeceqr. zn rsdnb qrlfn sf zsc zlecn sf cqdsrrn jlw, wzsoznj flfn hnfnojqonb. q csfyrn blgncosx cekksxnb ol cnjdn zsg. zn pjnqmkqconb qfb bsfnb qo ozn xrep, qo zlejc gqozngqosxqrrv ksanb, sf ozn cqgn jllg, qo ozn cqgn oqprn, fndnj oqmsfy zsc gnqrc wsoz loznj gngpnjc, gexz rncc pjsfysfy q yenco wsoz zsg; qfb wnfo zlgn qo naqxorv gsbfsyzo, lfrv ol jnosjn qo lfxn ol pnb. zn fndnj ecnb ozn xlcv xzqgpnjc wzsxz ozn jnkljg hjldsbnc klj soc kqdlejnb gngpnjc. zn hqccnb onf zlejc leo lk ozn ownfov-klej sf cqdsrrn jlw, nsoznj sf crnnhsfy lj gqmsfy zsc olsrno.")

(~> ciphertext
    string->list
    (group-by (lambda (x) x) _ char=?)
    (map (lambda (x) (cons (first x) (length x))) _)
    (sort _ #:key cdr >))

(define C2 "SIDKHKDM AF HCRKIABIE SHIMC KD LFEAILA")

(define key2 "The snow lay thick on the steps and the snowflakes driven by the wind
looked black in the headlights of the cars")

(define offset
(~> key2
    string-upcase
    (string-replace _ " " "")
    string->list
    (map char->integer _)
    (map (λ (x) (- x 65)) _)))

(define C2-2
(~> C2
    (string-replace _ " " "")
    string->list
    (map char->integer _)
    (map (λ (x) (- x 65)) _)))