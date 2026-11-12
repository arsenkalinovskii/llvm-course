
begin: 
    MOV I1 SP
    GROW 262144

    MOV I2 SP
    GROW 262144 
    FMOV F8 0.0
    FMOV F9 1.0
    FMOV F10 2.0
    FMOV F11 4.0
    FMOV F12 0.1
    FMOV F13 3.0 
    FMOV F5 0.5
    FMOV F6 0.0 
    FMOV F7 0.05 
    IMOVI I3 0
    FMOV F0 0.0

    IMOVI I6 256
    IMOVI I7 256

init_x:
    IMOVI I4 0

init_y:
    WCELL I1 I3 I4
    WCELL I2 I3 I4

    IADDI I4 I4 1
    ILEI I5 I4 512
    IBNONZERO init_y I5
branch_0:

    IADDI I3 I3 1
    ILEI I5 I3 512
    IBNONZERO init_x I5 
branch_1:

main_loop: 
    IMOVI I3 1

inner_x:
    IMOVI I4 1

inner_y:
    INNER_GRID I3 I4

    IADDI I4 I4 1
    ILEI I5 I4 511
    IBNONZERO inner_y I5
branch_2:

    IADDI I3 I3 1
    ILEI I5 I3 511
    IBNONZERO inner_x I5 
branch_3:

    FADD F14 F5 F9 
    IMOVI I3 0
    IMOVI I4 1

left_edge_y: 
    RCELL I1 I3 I4
    FADD F1 F0 F8

    RCELL I2 I3 I4
    FMUL F2 F1 F10
    FSUB F2 F2 F0 
    IADDI I10 I3 1
    RCELL I1 I10 I4
    FMUL F3 F0 F14 
    IADDI I11 I4 1
    RCELL I1 I3 I11
    FADD F3 F3 F0 
    ISUBI I12 I4 1
    RCELL I1 I3 I12
    FADD F3 F3 F0 
    FMUL F4 F1 F11
    FSUB F3 F3 F4 
    FMUL F3 F3 F12
    FADD F0 F2 F3

    WCELL I2 I3 I4

    IADDI I4 I4 1
    ILEI I5 I4 511
    IBNONZERO left_edge_y I5 
branch_4:

    IMOVI I3 511
    IMOVI I4 1

right_edge_y: 
    RCELL I1 I3 I4
    FADD F1 F0 F8

    RCELL I2 I3 I4
    FMUL F2 F1 F10
    FSUB F2 F2 F0 
    ISUBI I10 I3 1
    RCELL I1 I10 I4
    FMUL F3 F0 F14 
    IADDI I11 I4 1
    RCELL I1 I3 I11
    FADD F3 F3 F0 
    ISUBI I12 I4 1
    RCELL I1 I3 I12
    FADD F3 F3 F0 
    FMUL F4 F1 F11
    FSUB F3 F3 F4 
    FMUL F3 F3 F12
    FADD F0 F2 F3

    WCELL I2 I3 I4

    IADDI I4 I4 1
    ILEI I5 I4 511
    IBNONZERO right_edge_y I5 
branch_5:

    IMOVI I3 1
    IMOVI I4 0

top_edge_x: 
    RCELL I1 I3 I4
    FADD F1 F0 F8

    RCELL I2 I3 I4
    FMUL F2 F1 F10
    FSUB F2 F2 F0 
    IADDI I10 I3 1
    RCELL I1 I10 I4
    FADD F3 F0 F8 
    ISUBI I11 I3 1
    RCELL I1 I11 I4
    FADD F3 F3 F0 
    IADDI I12 I4 1
    RCELL I1 I3 I12
    FMUL F4 F0 F14
    FADD F3 F3 F4 
    FMUL F4 F1 F11
    FSUB F3 F3 F4 
    FMUL F3 F3 F12
    FADD F0 F2 F3

    WCELL I2 I3 I4

    IADDI I3 I3 1
    ILEI I5 I3 511
    IBNONZERO top_edge_x I5 
branch_6:

    IMOVI I3 1
    IMOVI I4 511

bottom_edge_x: 
    RCELL I1 I3 I4
    FADD F1 F0 F8

    RCELL I2 I3 I4
    FMUL F2 F1 F10
    FSUB F2 F2 F0 
    IADDI I10 I3 1
    RCELL I1 I10 I4
    FADD F3 F0 F8 
    ISUBI I11 I3 1
    RCELL I1 I11 I4
    FADD F3 F3 F0 
    ISUBI I12 I4 1
    RCELL I1 I3 I12
    FMUL F4 F0 F14
    FADD F3 F3 F4 
    FMUL F4 F1 F11
    FSUB F3 F3 F4 
    FMUL F3 F3 F12
    FADD F0 F2 F3

    WCELL I2 I3 I4

    IADDI I3 I3 1
    ILEI I5 I3 511
    IBNONZERO bottom_edge_x I5 
branch_7:

    IMOVI I3 0
    IMOVI I4 0 
    RCELL I1 I3 I4
    FADD F1 F0 F8

    RCELL I2 I3 I4
    FMUL F2 F1 F10
    FSUB F2 F2 F0 
    IADDI I12 I4 1
    RCELL I1 I3 I12
    FADD F3 F0 F8 
    IADDI I10 I3 1
    RCELL I1 I10 I4
    FADD F3 F3 F0 
    FMUL F3 F3 F14 
    FMUL F4 F1 F11
    FSUB F3 F3 F4

    FMUL F3 F3 F12
    FADD F0 F2 F3

    WCELL I2 I3 I4 
    IMOVI I3 511
    IMOVI I4 0

    RCELL I1 I3 I4
    FADD F1 F0 F8

    RCELL I2 I3 I4
    FMUL F2 F1 F10
    FSUB F2 F2 F0 
    IADDI I12 I4 1
    RCELL I1 I3 I12
    FADD F3 F0 F8 
    ISUBI I10 I3 1
    RCELL I1 I10 I4
    FADD F3 F3 F0

    FMUL F3 F3 F14

    FMUL F4 F1 F11
    FSUB F3 F3 F4

    FMUL F3 F3 F12
    FADD F0 F2 F3

    WCELL I2 I3 I4 
    IMOVI I3 0
    IMOVI I4 511

    RCELL I1 I3 I4
    FADD F1 F0 F8

    RCELL I2 I3 I4
    FMUL F2 F1 F10
    FSUB F2 F2 F0 
    ISUBI I12 I4 1
    RCELL I1 I3 I12
    FADD F3 F0 F8 
    IADDI I10 I3 1
    RCELL I1 I10 I4
    FADD F3 F3 F0

    FMUL F3 F3 F14

    FMUL F4 F1 F11
    FSUB F3 F3 F4

    FMUL F3 F3 F12
    FADD F0 F2 F3

    WCELL I2 I3 I4 
    IMOVI I3 511
    IMOVI I4 511

    RCELL I1 I3 I4
    FADD F1 F0 F8

    RCELL I2 I3 I4
    FMUL F2 F1 F10
    FSUB F2 F2 F0 
    ISUBI I12 I4 1
    RCELL I1 I3 I12
    FADD F3 F0 F8 
    ISUBI I10 I3 1
    RCELL I1 I10 I4
    FADD F3 F3 F0

    FMUL F3 F3 F14

    FMUL F4 F1 F11
    FSUB F3 F3 F4

    FMUL F3 F3 F12
    FADD F0 F2 F3

    WCELL I2 I3 I4 
    FSIN F4 F6
    FMUL F4 F4 F13

    RCELL I2 I6 I7
    FADD F0 F0 F4

    WCELL I2 I6 I7 
    FMOV F14 10.0
    FMOV F15 20.0

    IMOVI I3 0

render_x:
    IMOVI I4 0

render_y: 
    RCELL I1 I3 I4 
    FSAT F0 
    FTONE I8 F0 
    PUTPIXEL I8 I3 I4

    IADDI I4 I4 1
    ILEI I5 I4 512
    IBNONZERO render_y I5
branch_8:

    IADDI I3 I3 1
    ILEI I5 I3 512
    IBNONZERO render_x I5
branch_9:

    FLUSH 
    HAS_CLICK I8
    IBNONZERO click_read I8
branch_10:
    B click_end
branch_11:

click_read:

    GET_CLICK I6 I7 
    IMOVI I8 0
    IMOVI I9 512 
    IGEQ I10 I6 I8
    ILE I11 I6 I9
    IAND I10 I10 I11 
    IGEQ I11 I7 I8
    ILE I12 I7 I9
    IAND I11 I11 I12 
    IAND I10 I10 I11

    IBNONZERO click_valid I10
branch_12:
    LOOP click_end
branch_13:

click_valid: 

click_end: 
scroll_loop:

    HAS_SCROLL I8

    IBNONZERO scroll_read I8
branch_14:
    LOOP scroll_end
branch_15:

scroll_read:

    GET_SCROLL I9 
    IMULI I9 I9 5 
    INT2FLOAT F0 I9

    FMOV F1 100.0
    FDIV F0 F0 F1 
    FADD F5 F5 F0 
    FBGE scroll_clamp_high F5 F9 
branch_20:
    FBLE scroll_clamp_low F5 F8
branch_21:
    LOOP scroll_loop
branch_16:


scroll_clamp_high:

    FMOV F5 1.0
    LOOP scroll_loop
branch_17:


scroll_clamp_low:

    FMOV F5 0.0
    LOOP scroll_loop
branch_18:


scroll_end: 
    IXCHG I1 I2 
    FADD F6 F6 F7

    LOOP main_loop
branch_19:
    EXIT