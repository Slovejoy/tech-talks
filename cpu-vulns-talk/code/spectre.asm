/* let a0->array1, 
   a1->array2,
   a2->array1_size,
   a3->x */
    sll  a3, a3, 12         /* x * 4096 */
    bge  a3, a2, fail       /* if x < array1.size */
    
 load_array:
    add  a0, a0, a3         /* Load from array1 */
    lw   t0, 0x0(a0)        
    add  a1, a1, t0         /* Load from array2 */
    lw   a0, 0x0(a1)        /* a0 is speculatively stored!! */
  
 fail:
    ret