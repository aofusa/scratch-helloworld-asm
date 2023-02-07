.globl _start
_start:
    /* $の後が数字なら数字、文字なら変数。%はレジスタ */
    mov $1,%rax   /* write システムコール番号 */
    mov $1,%rdi   /* 書き込み先 - 標準出力 */
    mov $msg,%rsi /* 書き込むメッセージ */
    mov $13,%rdx  /* メッセージの長さ */
    syscall       /* システムコール実行 割り込み実行 */

    mov $60,%rax /* システムコール終了番号 */
    mov $0,%rdi  /* 終了状態 */
    syscall      /* システムコール終了 割り込み実行 */

.data
    msg: .asciz "Hello,World\n"
