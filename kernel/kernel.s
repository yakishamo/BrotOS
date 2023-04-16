
kernel.elf:     file format elf64-x86-64


Disassembly of section .text:

0000000000104500 <_Z4stopv>:
  104500:	55                   	push   rbp
  104501:	48 89 e5             	mov    rbp,rsp
  104504:	e9 00 00 00 00       	jmp    104509 <_Z4stopv+0x9>
  104509:	f4                   	hlt
  10450a:	e9 fa ff ff ff       	jmp    104509 <_Z4stopv+0x9>
  10450f:	90                   	nop

0000000000104510 <entry_point>:
  104510:	55                   	push   rbp
  104511:	48 89 e5             	mov    rbp,rsp
  104514:	48 83 ec 10          	sub    rsp,0x10
  104518:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  10451c:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
  104520:	48 8d 35 19 00 00 00 	lea    rsi,[rip+0x19]        # 104540 <kernel_main>
  104527:	48 8d 15 e2 2a 01 00 	lea    rdx,[rip+0x12ae2]        # 117010 <kernel_main_stack>
  10452e:	e8 bc 97 00 00       	call   10dcef <call_kernel_main>
  104533:	48 83 c4 10          	add    rsp,0x10
  104537:	5d                   	pop    rbp
  104538:	c3                   	ret
  104539:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000104540 <kernel_main>:
  104540:	55                   	push   rbp
  104541:	48 89 e5             	mov    rbp,rsp
  104544:	48 81 ec 50 04 00 00 	sub    rsp,0x450
  10454b:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  10454f:	e8 6c e7 00 00       	call   112cc0 <_Z22SetupIdentityPageTablev>
  104554:	e8 07 e9 00 00       	call   112e60 <_Z17InitializeKeycodev>
  104559:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
  10455d:	e8 4e 03 00 00       	call   1048b0 <_Z15InitializeFrameP10bootinfo_t>
  104562:	48 8d 05 c7 2e 51 00 	lea    rax,[rip+0x512ec7]        # 617430 <vinfo>
  104569:	48 89 85 b8 fb ff ff 	mov    QWORD PTR [rbp-0x448],rax
  104570:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  104573:	e8 f8 00 01 00       	call   114670 <_Z20InitializeBackBufferP12video_info_t>
  104578:	48 8b 85 b8 fb ff ff 	mov    rax,QWORD PTR [rbp-0x448]
  10457f:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  104582:	8b 49 10             	mov    ecx,DWORD PTR [rcx+0x10]
  104585:	89 4d f4             	mov    DWORD PTR [rbp-0xc],ecx
  104588:	48 8b 00             	mov    rax,QWORD PTR [rax]
  10458b:	8b 40 14             	mov    eax,DWORD PTR [rax+0x14]
  10458e:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
  104591:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  104595:	48 8b 48 28          	mov    rcx,QWORD PTR [rax+0x28]
  104599:	48 8d 05 00 86 51 00 	lea    rax,[rip+0x518600]        # 61cba0 <mmap>
  1045a0:	48 89 08             	mov    QWORD PTR [rax],rcx
  1045a3:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [rbp-0x18],0x0
  1045aa:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
  1045b1:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  1045b4:	89 45 e0             	mov    DWORD PTR [rbp-0x20],eax
  1045b7:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  1045ba:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
  1045bd:	c6 45 d8 00          	mov    BYTE PTR [rbp-0x28],0x0
  1045c1:	c6 45 d9 00          	mov    BYTE PTR [rbp-0x27],0x0
  1045c5:	c6 45 da 00          	mov    BYTE PTR [rbp-0x26],0x0
  1045c9:	48 8b 7d e8          	mov    rdi,QWORD PTR [rbp-0x18]
  1045cd:	48 8b 75 e0          	mov    rsi,QWORD PTR [rbp-0x20]
  1045d1:	8a 45 da             	mov    al,BYTE PTR [rbp-0x26]
  1045d4:	88 45 d6             	mov    BYTE PTR [rbp-0x2a],al
  1045d7:	66 8b 45 d8          	mov    ax,WORD PTR [rbp-0x28]
  1045db:	66 89 45 d4          	mov    WORD PTR [rbp-0x2c],ax
  1045df:	0f b6 45 d6          	movzx  eax,BYTE PTR [rbp-0x2a]
  1045e3:	c1 e0 10             	shl    eax,0x10
  1045e6:	0f b7 55 d4          	movzx  edx,WORD PTR [rbp-0x2c]
  1045ea:	09 c2                	or     edx,eax
  1045ec:	e8 7f 07 00 00       	call   104d70 <_Z11WriteSquare6VectorS_5Color>
  1045f1:	66 c7 45 d2 08 00    	mov    WORD PTR [rbp-0x2e],0x8
  1045f7:	66 c7 45 d0 10 00    	mov    WORD PTR [rbp-0x30],0x10
  1045fd:	bf 08 00 00 00       	mov    edi,0x8
  104602:	be 10 00 00 00       	mov    esi,0x10
  104607:	e8 c4 a6 00 00       	call   10ecd0 <_Z17InitializeSegmenttt>
  10460c:	e8 3f dd 00 00       	call   112350 <_Z19InitializeInterruptv>
  104611:	e8 7a dc 00 00       	call   112290 <_Z13InitializePICv>
  104616:	48 8d 3d f3 2d 11 00 	lea    rdi,[rip+0x112df3]        # 217410 <memory_manager_buf>
  10461d:	e8 be f7 00 00       	call   113de0 <_ZN19BitmapMemoryManagerC1Ev>
  104622:	48 8d 05 e7 2d 11 00 	lea    rax,[rip+0x112de7]        # 217410 <memory_manager_buf>
  104629:	48 89 05 f0 2d 51 00 	mov    QWORD PTR [rip+0x512df0],rax        # 617420 <memory_manager>
  104630:	48 8b 3d e9 2d 51 00 	mov    rdi,QWORD PTR [rip+0x512de9]        # 617420 <memory_manager>
  104637:	48 8d 05 62 85 51 00 	lea    rax,[rip+0x518562]        # 61cba0 <mmap>
  10463e:	48 8b 30             	mov    rsi,QWORD PTR [rax]
  104641:	e8 0a fc 00 00       	call   114250 <_Z23InitializeMemoryManagerP19BitmapMemoryManagerP9MemoryMap>
  104646:	48 8b 35 d3 2d 51 00 	mov    rsi,QWORD PTR [rip+0x512dd3]        # 617420 <memory_manager>
  10464d:	48 8d 7d b8          	lea    rdi,[rbp-0x48]
  104651:	e8 6a fd 00 00       	call   1143c0 <_Z14InitializeHeapR19BitmapMemoryManager>
  104656:	48 8d 7d b8          	lea    rdi,[rbp-0x48]
  10465a:	48 83 c7 08          	add    rdi,0x8
  10465e:	e8 bd 01 00 00       	call   104820 <_ZNK5ErrorcvbEv>
  104663:	a8 01                	test   al,0x1
  104665:	0f 85 05 00 00 00    	jne    104670 <kernel_main+0x130>
  10466b:	e9 31 00 00 00       	jmp    1046a1 <kernel_main+0x161>
  104670:	48 8d 3d 4c c0 ff ff 	lea    rdi,[rip+0xffffffffffffc04c]        # 1006c3 <_svfprintf_r.blanks-0x41d>
  104677:	b0 00                	mov    al,0x0
  104679:	e8 42 0e 00 00       	call   1054c0 <Printf>
  10467e:	48 8d 7d b8          	lea    rdi,[rbp-0x48]
  104682:	48 83 c7 08          	add    rdi,0x8
  104686:	e8 b5 01 00 00       	call   104840 <_ZNK5Error4NameEv>
  10468b:	48 89 c6             	mov    rsi,rax
  10468e:	48 8d 3d d1 bf ff ff 	lea    rdi,[rip+0xffffffffffffbfd1]        # 100666 <_svfprintf_r.blanks-0x47a>
  104695:	b0 00                	mov    al,0x0
  104697:	e8 24 0e 00 00       	call   1054c0 <Printf>
  10469c:	e8 5f fe ff ff       	call   104500 <_Z4stopv>
  1046a1:	e8 4a ff 00 00       	call   1145f0 <_Z20InitializeLAPICTimerv>
  1046a6:	c7 85 c4 fb ff ff 00 	mov    DWORD PTR [rbp-0x43c],0x0
  1046ad:	00 00 00 
  1046b0:	48 8d 3d ce bc ff ff 	lea    rdi,[rip+0xffffffffffffbcce]        # 100385 <_svfprintf_r.blanks-0x75b>
  1046b7:	b0 00                	mov    al,0x0
  1046b9:	e8 02 0e 00 00       	call   1054c0 <Printf>
  1046be:	48 8d 3d e7 bd ff ff 	lea    rdi,[rip+0xffffffffffffbde7]        # 1004ac <_svfprintf_r.blanks-0x634>
  1046c5:	48 8d 35 74 fe ff ff 	lea    rsi,[rip+0xfffffffffffffe74]        # 104540 <kernel_main>
  1046cc:	b0 00                	mov    al,0x0
  1046ce:	e8 ed 0d 00 00       	call   1054c0 <Printf>
  1046d3:	48 8d 3d 00 be ff ff 	lea    rdi,[rip+0xffffffffffffbe00]        # 1004da <_svfprintf_r.blanks-0x606>
  1046da:	48 8d 35 2f 29 01 00 	lea    rsi,[rip+0x1292f]        # 117010 <kernel_main_stack>
  1046e1:	b0 00                	mov    al,0x0
  1046e3:	e8 d8 0d 00 00       	call   1054c0 <Printf>
  1046e8:	48 8d 3d a1 c0 ff ff 	lea    rdi,[rip+0xffffffffffffc0a1]        # 100790 <_svfprintf_r.blanks-0x350>
  1046ef:	b0 00                	mov    al,0x0
  1046f1:	e8 ca 0d 00 00       	call   1054c0 <Printf>
  1046f6:	48 8d bd d0 fb ff ff 	lea    rdi,[rbp-0x430]
  1046fd:	e8 1e eb 00 00       	call   113220 <_Z9GetStringPc>
  104702:	48 8d bd d0 fb ff ff 	lea    rdi,[rbp-0x430]
  104709:	e8 d2 eb 00 00       	call   1132e0 <_Z8tokenizePc>
  10470e:	48 89 85 c8 fb ff ff 	mov    QWORD PTR [rbp-0x438],rax
  104715:	48 8b bd c8 fb ff ff 	mov    rdi,QWORD PTR [rbp-0x438]
  10471c:	e8 bf f0 00 00       	call   1137e0 <_Z7commandPPc>
  104721:	48 8b bd c8 fb ff ff 	mov    rdi,QWORD PTR [rbp-0x438]
  104728:	e8 33 ee 00 00       	call   113560 <_Z10free_tokenPPc>
  10472d:	e9 b6 ff ff ff       	jmp    1046e8 <kernel_main+0x1a8>
  104732:	cc                   	int3
  104733:	cc                   	int3
  104734:	cc                   	int3
  104735:	cc                   	int3
  104736:	cc                   	int3
  104737:	cc                   	int3
  104738:	cc                   	int3
  104739:	cc                   	int3
  10473a:	cc                   	int3
  10473b:	cc                   	int3
  10473c:	cc                   	int3
  10473d:	cc                   	int3
  10473e:	cc                   	int3
  10473f:	cc                   	int3

0000000000104740 <__cxx_global_var_init>:
  104740:	55                   	push   rbp
  104741:	48 89 e5             	mov    rbp,rsp
  104744:	e8 47 00 00 00       	call   104790 <_ZNSt3__114numeric_limitsImE3maxEv>
  104749:	48 89 c6             	mov    rsi,rax
  10474c:	48 8d 3d ad 28 01 00 	lea    rdi,[rip+0x128ad]        # 117000 <_ZL10kNullFrame>
  104753:	e8 48 00 00 00       	call   1047a0 <_ZN7FrameIDC2Em>
  104758:	5d                   	pop    rbp
  104759:	c3                   	ret
  10475a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000104760 <__cxx_global_var_init.1>:
  104760:	55                   	push   rbp
  104761:	48 89 e5             	mov    rbp,rsp
  104764:	48 8d 3d a5 28 11 00 	lea    rdi,[rip+0x1128a5]        # 217010 <Input_Buffer>
  10476b:	e8 60 00 00 00       	call   1047d0 <_ZN11InputBufferC2Ev>
  104770:	5d                   	pop    rbp
  104771:	c3                   	ret
  104772:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  104779:	1f 84 00 00 00 00 00 

0000000000104780 <_GLOBAL__sub_I_kernel.cpp>:
  104780:	55                   	push   rbp
  104781:	48 89 e5             	mov    rbp,rsp
  104784:	e8 b7 ff ff ff       	call   104740 <__cxx_global_var_init>
  104789:	e8 d2 ff ff ff       	call   104760 <__cxx_global_var_init.1>
  10478e:	5d                   	pop    rbp
  10478f:	c3                   	ret

0000000000104790 <_ZNSt3__114numeric_limitsImE3maxEv>:
  104790:	55                   	push   rbp
  104791:	48 89 e5             	mov    rbp,rsp
  104794:	e8 d7 00 00 00       	call   104870 <_ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxEv>
  104799:	5d                   	pop    rbp
  10479a:	c3                   	ret
  10479b:	cc                   	int3
  10479c:	cc                   	int3
  10479d:	cc                   	int3
  10479e:	cc                   	int3
  10479f:	cc                   	int3

00000000001047a0 <_ZN7FrameIDC2Em>:
  1047a0:	55                   	push   rbp
  1047a1:	48 89 e5             	mov    rbp,rsp
  1047a4:	48 83 ec 10          	sub    rsp,0x10
  1047a8:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  1047ac:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  1047b0:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  1047b4:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  1047b8:	48 89 08             	mov    QWORD PTR [rax],rcx
  1047bb:	48 83 c4 10          	add    rsp,0x10
  1047bf:	5d                   	pop    rbp
  1047c0:	c3                   	ret
  1047c1:	cc                   	int3
  1047c2:	cc                   	int3
  1047c3:	cc                   	int3
  1047c4:	cc                   	int3
  1047c5:	cc                   	int3
  1047c6:	cc                   	int3
  1047c7:	cc                   	int3
  1047c8:	cc                   	int3
  1047c9:	cc                   	int3
  1047ca:	cc                   	int3
  1047cb:	cc                   	int3
  1047cc:	cc                   	int3
  1047cd:	cc                   	int3
  1047ce:	cc                   	int3
  1047cf:	cc                   	int3

00000000001047d0 <_ZN11InputBufferC2Ev>:
  1047d0:	55                   	push   rbp
  1047d1:	48 89 e5             	mov    rbp,rsp
  1047d4:	50                   	push   rax
  1047d5:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  1047d9:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  1047dd:	c7 80 ec 03 00 00 00 	mov    DWORD PTR [rax+0x3ec],0x0
  1047e4:	00 00 00 
  1047e7:	c7 80 f0 03 00 00 00 	mov    DWORD PTR [rax+0x3f0],0x0
  1047ee:	00 00 00 
  1047f1:	c7 80 f4 03 00 00 00 	mov    DWORD PTR [rax+0x3f4],0x0
  1047f8:	00 00 00 
  1047fb:	c7 80 f8 03 00 00 00 	mov    DWORD PTR [rax+0x3f8],0x0
  104802:	00 00 00 
  104805:	c7 80 fc 03 00 00 00 	mov    DWORD PTR [rax+0x3fc],0x0
  10480c:	00 00 00 
  10480f:	c6 80 e8 03 00 00 00 	mov    BYTE PTR [rax+0x3e8],0x0
  104816:	48 83 c4 08          	add    rsp,0x8
  10481a:	5d                   	pop    rbp
  10481b:	c3                   	ret
  10481c:	cc                   	int3
  10481d:	cc                   	int3
  10481e:	cc                   	int3
  10481f:	cc                   	int3

0000000000104820 <_ZNK5ErrorcvbEv>:
  104820:	55                   	push   rbp
  104821:	48 89 e5             	mov    rbp,rsp
  104824:	50                   	push   rax
  104825:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  104829:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10482d:	83 38 00             	cmp    DWORD PTR [rax],0x0
  104830:	0f 95 c0             	setne  al
  104833:	24 01                	and    al,0x1
  104835:	0f b6 c0             	movzx  eax,al
  104838:	48 83 c4 08          	add    rsp,0x8
  10483c:	5d                   	pop    rbp
  10483d:	c3                   	ret
  10483e:	cc                   	int3
  10483f:	cc                   	int3

0000000000104840 <_ZNK5Error4NameEv>:
  104840:	55                   	push   rbp
  104841:	48 89 e5             	mov    rbp,rsp
  104844:	48 83 ec 10          	sub    rsp,0x10
  104848:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  10484c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  104850:	8b 00                	mov    eax,DWORD PTR [rax]
  104852:	89 c6                	mov    esi,eax
  104854:	48 8d 3d 75 13 01 00 	lea    rdi,[rip+0x11375]        # 115bd0 <_ZN5Error11code_names_E>
  10485b:	e8 20 00 00 00       	call   104880 <_ZNKSt3__15arrayIPKcLm20EEixEm>
  104860:	48 8b 00             	mov    rax,QWORD PTR [rax]
  104863:	48 83 c4 10          	add    rsp,0x10
  104867:	5d                   	pop    rbp
  104868:	c3                   	ret
  104869:	cc                   	int3
  10486a:	cc                   	int3
  10486b:	cc                   	int3
  10486c:	cc                   	int3
  10486d:	cc                   	int3
  10486e:	cc                   	int3
  10486f:	cc                   	int3

0000000000104870 <_ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxEv>:
  104870:	55                   	push   rbp
  104871:	48 89 e5             	mov    rbp,rsp
  104874:	48 c7 c0 ff ff ff ff 	mov    rax,0xffffffffffffffff
  10487b:	5d                   	pop    rbp
  10487c:	c3                   	ret
  10487d:	cc                   	int3
  10487e:	cc                   	int3
  10487f:	cc                   	int3

0000000000104880 <_ZNKSt3__15arrayIPKcLm20EEixEm>:
  104880:	55                   	push   rbp
  104881:	48 89 e5             	mov    rbp,rsp
  104884:	48 83 ec 10          	sub    rsp,0x10
  104888:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  10488c:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  104890:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  104894:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  104898:	48 c1 e1 03          	shl    rcx,0x3
  10489c:	48 01 c8             	add    rax,rcx
  10489f:	48 83 c4 10          	add    rsp,0x10
  1048a3:	5d                   	pop    rbp
  1048a4:	c3                   	ret
  1048a5:	cc                   	int3
  1048a6:	cc                   	int3
  1048a7:	cc                   	int3
  1048a8:	cc                   	int3
  1048a9:	cc                   	int3
  1048aa:	cc                   	int3
  1048ab:	cc                   	int3
  1048ac:	cc                   	int3
  1048ad:	cc                   	int3
  1048ae:	cc                   	int3
  1048af:	cc                   	int3

00000000001048b0 <_Z15InitializeFrameP10bootinfo_t>:
  1048b0:	55                   	push   rbp
  1048b1:	48 89 e5             	mov    rbp,rsp
  1048b4:	48 83 ec 10          	sub    rsp,0x10
  1048b8:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  1048bc:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  1048c0:	48 89 05 69 2b 51 00 	mov    QWORD PTR [rip+0x512b69],rax        # 617430 <vinfo>
  1048c7:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  1048cb:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
  1048cf:	48 89 05 62 2b 51 00 	mov    QWORD PTR [rip+0x512b62],rax        # 617438 <ascii_font>
  1048d6:	48 8b 05 53 2b 51 00 	mov    rax,QWORD PTR [rip+0x512b53]        # 617430 <vinfo>
  1048dd:	8b 40 14             	mov    eax,DWORD PTR [rax+0x14]
  1048e0:	b9 11 00 00 00       	mov    ecx,0x11
  1048e5:	31 d2                	xor    edx,edx
  1048e7:	f7 f1                	div    ecx
  1048e9:	89 05 59 2b 51 00    	mov    DWORD PTR [rip+0x512b59],eax        # 617448 <max_line>
  1048ef:	48 8b 05 3a 2b 51 00 	mov    rax,QWORD PTR [rip+0x512b3a]        # 617430 <vinfo>
  1048f6:	83 78 1c 00          	cmp    DWORD PTR [rax+0x1c],0x0
  1048fa:	0f 85 13 00 00 00    	jne    104913 <_Z15InitializeFrameP10bootinfo_t+0x63>
  104900:	48 8d 05 89 00 00 00 	lea    rax,[rip+0x89]        # 104990 <_Z13WritePixelRGB5Colorii>
  104907:	48 89 05 62 79 51 00 	mov    QWORD PTR [rip+0x517962],rax        # 61c270 <WritePixel>
  10490e:	e9 6c 00 00 00       	jmp    10497f <_Z15InitializeFrameP10bootinfo_t+0xcf>
  104913:	48 8b 05 16 2b 51 00 	mov    rax,QWORD PTR [rip+0x512b16]        # 617430 <vinfo>
  10491a:	83 78 1c 01          	cmp    DWORD PTR [rax+0x1c],0x1
  10491e:	0f 85 13 00 00 00    	jne    104937 <_Z15InitializeFrameP10bootinfo_t+0x87>
  104924:	48 8d 05 e5 00 00 00 	lea    rax,[rip+0xe5]        # 104a10 <_Z13WritePixelBGR5Colorii>
  10492b:	48 89 05 3e 79 51 00 	mov    QWORD PTR [rip+0x51793e],rax        # 61c270 <WritePixel>
  104932:	e9 43 00 00 00       	jmp    10497a <_Z15InitializeFrameP10bootinfo_t+0xca>
  104937:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
  10493e:	81 7d f4 00 00 92 01 	cmp    DWORD PTR [rbp-0xc],0x1920000
  104945:	0f 8d 24 00 00 00    	jge    10496f <_Z15InitializeFrameP10bootinfo_t+0xbf>
  10494b:	48 8b 05 de 2a 51 00 	mov    rax,QWORD PTR [rip+0x512ade]        # 617430 <vinfo>
  104952:	48 8b 00             	mov    rax,QWORD PTR [rax]
  104955:	48 63 4d f4          	movsxd rcx,DWORD PTR [rbp-0xc]
  104959:	48 c7 04 c8 ff 00 00 	mov    QWORD PTR [rax+rcx*8],0xff
  104960:	00 
  104961:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  104964:	83 c0 01             	add    eax,0x1
  104967:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
  10496a:	e9 cf ff ff ff       	jmp    10493e <_Z15InitializeFrameP10bootinfo_t+0x8e>
  10496f:	e9 00 00 00 00       	jmp    104974 <_Z15InitializeFrameP10bootinfo_t+0xc4>
  104974:	f4                   	hlt
  104975:	e9 fa ff ff ff       	jmp    104974 <_Z15InitializeFrameP10bootinfo_t+0xc4>
  10497a:	e9 00 00 00 00       	jmp    10497f <_Z15InitializeFrameP10bootinfo_t+0xcf>
  10497f:	48 83 c4 10          	add    rsp,0x10
  104983:	5d                   	pop    rbp
  104984:	c3                   	ret
  104985:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  10498c:	00 00 00 00 

0000000000104990 <_Z13WritePixelRGB5Colorii>:
  104990:	55                   	push   rbp
  104991:	48 89 e5             	mov    rbp,rsp
  104994:	48 83 ec 20          	sub    rsp,0x20
  104998:	66 89 f8             	mov    ax,di
  10499b:	66 89 45 f4          	mov    WORD PTR [rbp-0xc],ax
  10499f:	c1 ef 10             	shr    edi,0x10
  1049a2:	40 88 f8             	mov    al,dil
  1049a5:	88 45 f6             	mov    BYTE PTR [rbp-0xa],al
  1049a8:	66 8b 45 f4          	mov    ax,WORD PTR [rbp-0xc]
  1049ac:	66 89 45 f8          	mov    WORD PTR [rbp-0x8],ax
  1049b0:	8a 45 f6             	mov    al,BYTE PTR [rbp-0xa]
  1049b3:	88 45 fa             	mov    BYTE PTR [rbp-0x6],al
  1049b6:	89 75 f0             	mov    DWORD PTR [rbp-0x10],esi
  1049b9:	89 55 ec             	mov    DWORD PTR [rbp-0x14],edx
  1049bc:	48 8b 05 6d 2a 51 00 	mov    rax,QWORD PTR [rip+0x512a6d]        # 617430 <vinfo>
  1049c3:	8b 40 10             	mov    eax,DWORD PTR [rax+0x10]
  1049c6:	0f af 45 ec          	imul   eax,DWORD PTR [rbp-0x14]
  1049ca:	03 45 f0             	add    eax,DWORD PTR [rbp-0x10]
  1049cd:	89 45 e8             	mov    DWORD PTR [rbp-0x18],eax
  1049d0:	48 8b 05 59 2a 51 00 	mov    rax,QWORD PTR [rip+0x512a59]        # 617430 <vinfo>
  1049d7:	48 8b 00             	mov    rax,QWORD PTR [rax]
  1049da:	8b 4d e8             	mov    ecx,DWORD PTR [rbp-0x18]
  1049dd:	c1 e1 02             	shl    ecx,0x2
  1049e0:	48 63 c9             	movsxd rcx,ecx
  1049e3:	48 01 c8             	add    rax,rcx
  1049e6:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  1049ea:	8a 4d f8             	mov    cl,BYTE PTR [rbp-0x8]
  1049ed:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  1049f1:	88 08                	mov    BYTE PTR [rax],cl
  1049f3:	8a 4d f9             	mov    cl,BYTE PTR [rbp-0x7]
  1049f6:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  1049fa:	88 48 01             	mov    BYTE PTR [rax+0x1],cl
  1049fd:	8a 4d fa             	mov    cl,BYTE PTR [rbp-0x6]
  104a00:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  104a04:	88 48 02             	mov    BYTE PTR [rax+0x2],cl
  104a07:	31 c0                	xor    eax,eax
  104a09:	48 83 c4 20          	add    rsp,0x20
  104a0d:	5d                   	pop    rbp
  104a0e:	c3                   	ret
  104a0f:	90                   	nop

0000000000104a10 <_Z13WritePixelBGR5Colorii>:
  104a10:	55                   	push   rbp
  104a11:	48 89 e5             	mov    rbp,rsp
  104a14:	48 83 ec 20          	sub    rsp,0x20
  104a18:	66 89 f8             	mov    ax,di
  104a1b:	66 89 45 f4          	mov    WORD PTR [rbp-0xc],ax
  104a1f:	c1 ef 10             	shr    edi,0x10
  104a22:	40 88 f8             	mov    al,dil
  104a25:	88 45 f6             	mov    BYTE PTR [rbp-0xa],al
  104a28:	66 8b 45 f4          	mov    ax,WORD PTR [rbp-0xc]
  104a2c:	66 89 45 f8          	mov    WORD PTR [rbp-0x8],ax
  104a30:	8a 45 f6             	mov    al,BYTE PTR [rbp-0xa]
  104a33:	88 45 fa             	mov    BYTE PTR [rbp-0x6],al
  104a36:	89 75 f0             	mov    DWORD PTR [rbp-0x10],esi
  104a39:	89 55 ec             	mov    DWORD PTR [rbp-0x14],edx
  104a3c:	48 8b 05 ed 29 51 00 	mov    rax,QWORD PTR [rip+0x5129ed]        # 617430 <vinfo>
  104a43:	8b 40 10             	mov    eax,DWORD PTR [rax+0x10]
  104a46:	0f af 45 ec          	imul   eax,DWORD PTR [rbp-0x14]
  104a4a:	03 45 f0             	add    eax,DWORD PTR [rbp-0x10]
  104a4d:	89 45 e8             	mov    DWORD PTR [rbp-0x18],eax
  104a50:	48 8b 05 d9 29 51 00 	mov    rax,QWORD PTR [rip+0x5129d9]        # 617430 <vinfo>
  104a57:	48 8b 00             	mov    rax,QWORD PTR [rax]
  104a5a:	8b 4d e8             	mov    ecx,DWORD PTR [rbp-0x18]
  104a5d:	c1 e1 02             	shl    ecx,0x2
  104a60:	48 63 c9             	movsxd rcx,ecx
  104a63:	48 01 c8             	add    rax,rcx
  104a66:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  104a6a:	8a 4d fa             	mov    cl,BYTE PTR [rbp-0x6]
  104a6d:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  104a71:	88 08                	mov    BYTE PTR [rax],cl
  104a73:	8a 4d f9             	mov    cl,BYTE PTR [rbp-0x7]
  104a76:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  104a7a:	88 48 01             	mov    BYTE PTR [rax+0x1],cl
  104a7d:	8a 4d f8             	mov    cl,BYTE PTR [rbp-0x8]
  104a80:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  104a84:	88 48 02             	mov    BYTE PTR [rax+0x2],cl
  104a87:	31 c0                	xor    eax,eax
  104a89:	48 83 c4 20          	add    rsp,0x20
  104a8d:	5d                   	pop    rbp
  104a8e:	c3                   	ret
  104a8f:	90                   	nop

0000000000104a90 <_Z11HashtoColorh>:
  104a90:	55                   	push   rbp
  104a91:	48 89 e5             	mov    rbp,rsp
  104a94:	48 83 ec 10          	sub    rsp,0x10
  104a98:	40 88 f8             	mov    al,dil
  104a9b:	88 45 f7             	mov    BYTE PTR [rbp-0x9],al
  104a9e:	c6 45 f8 00          	mov    BYTE PTR [rbp-0x8],0x0
  104aa2:	c6 45 f9 00          	mov    BYTE PTR [rbp-0x7],0x0
  104aa6:	8a 45 f7             	mov    al,BYTE PTR [rbp-0x9]
  104aa9:	88 45 fa             	mov    BYTE PTR [rbp-0x6],al
  104aac:	8a 45 fa             	mov    al,BYTE PTR [rbp-0x6]
  104aaf:	88 45 f2             	mov    BYTE PTR [rbp-0xe],al
  104ab2:	66 8b 45 f8          	mov    ax,WORD PTR [rbp-0x8]
  104ab6:	66 89 45 f0          	mov    WORD PTR [rbp-0x10],ax
  104aba:	0f b6 4d f2          	movzx  ecx,BYTE PTR [rbp-0xe]
  104abe:	c1 e1 10             	shl    ecx,0x10
  104ac1:	0f b7 45 f0          	movzx  eax,WORD PTR [rbp-0x10]
  104ac5:	09 c8                	or     eax,ecx
  104ac7:	48 83 c4 10          	add    rsp,0x10
  104acb:	5d                   	pop    rbp
  104acc:	c3                   	ret
  104acd:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000104ad0 <_Z8HSVtoRGBi>:
  104ad0:	55                   	push   rbp
  104ad1:	48 89 e5             	mov    rbp,rsp
  104ad4:	48 83 ec 40          	sub    rsp,0x40
  104ad8:	89 7d f4             	mov    DWORD PTR [rbp-0xc],edi
  104adb:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  104ade:	b9 00 06 00 00       	mov    ecx,0x600
  104ae3:	99                   	cdq
  104ae4:	f7 f9                	idiv   ecx
  104ae6:	89 55 f4             	mov    DWORD PTR [rbp-0xc],edx
  104ae9:	81 7d f4 00 01 00 00 	cmp    DWORD PTR [rbp-0xc],0x100
  104af0:	0f 8d 21 00 00 00    	jge    104b17 <_Z8HSVtoRGBi+0x47>
  104af6:	c6 45 f0 ff          	mov    BYTE PTR [rbp-0x10],0xff
  104afa:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  104afd:	88 45 f1             	mov    BYTE PTR [rbp-0xf],al
  104b00:	c6 45 f2 00          	mov    BYTE PTR [rbp-0xe],0x0
  104b04:	66 8b 45 f0          	mov    ax,WORD PTR [rbp-0x10]
  104b08:	66 89 45 f8          	mov    WORD PTR [rbp-0x8],ax
  104b0c:	8a 45 f2             	mov    al,BYTE PTR [rbp-0xe]
  104b0f:	88 45 fa             	mov    BYTE PTR [rbp-0x6],al
  104b12:	e9 29 01 00 00       	jmp    104c40 <_Z8HSVtoRGBi+0x170>
  104b17:	81 7d f4 00 02 00 00 	cmp    DWORD PTR [rbp-0xc],0x200
  104b1e:	0f 8d 30 00 00 00    	jge    104b54 <_Z8HSVtoRGBi+0x84>
  104b24:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  104b27:	b9 00 01 00 00       	mov    ecx,0x100
  104b2c:	99                   	cdq
  104b2d:	f7 f9                	idiv   ecx
  104b2f:	b8 ff 00 00 00       	mov    eax,0xff
  104b34:	29 d0                	sub    eax,edx
  104b36:	88 45 e8             	mov    BYTE PTR [rbp-0x18],al
  104b39:	c6 45 e9 ff          	mov    BYTE PTR [rbp-0x17],0xff
  104b3d:	c6 45 ea 00          	mov    BYTE PTR [rbp-0x16],0x0
  104b41:	66 8b 45 e8          	mov    ax,WORD PTR [rbp-0x18]
  104b45:	66 89 45 f8          	mov    WORD PTR [rbp-0x8],ax
  104b49:	8a 45 ea             	mov    al,BYTE PTR [rbp-0x16]
  104b4c:	88 45 fa             	mov    BYTE PTR [rbp-0x6],al
  104b4f:	e9 e7 00 00 00       	jmp    104c3b <_Z8HSVtoRGBi+0x16b>
  104b54:	81 7d f4 00 03 00 00 	cmp    DWORD PTR [rbp-0xc],0x300
  104b5b:	0f 8d 2b 00 00 00    	jge    104b8c <_Z8HSVtoRGBi+0xbc>
  104b61:	c6 45 e0 00          	mov    BYTE PTR [rbp-0x20],0x0
  104b65:	c6 45 e1 ff          	mov    BYTE PTR [rbp-0x1f],0xff
  104b69:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  104b6c:	b9 00 01 00 00       	mov    ecx,0x100
  104b71:	99                   	cdq
  104b72:	f7 f9                	idiv   ecx
  104b74:	88 d0                	mov    al,dl
  104b76:	88 45 e2             	mov    BYTE PTR [rbp-0x1e],al
  104b79:	66 8b 45 e0          	mov    ax,WORD PTR [rbp-0x20]
  104b7d:	66 89 45 f8          	mov    WORD PTR [rbp-0x8],ax
  104b81:	8a 45 e2             	mov    al,BYTE PTR [rbp-0x1e]
  104b84:	88 45 fa             	mov    BYTE PTR [rbp-0x6],al
  104b87:	e9 aa 00 00 00       	jmp    104c36 <_Z8HSVtoRGBi+0x166>
  104b8c:	81 7d f4 00 04 00 00 	cmp    DWORD PTR [rbp-0xc],0x400
  104b93:	0f 8d 30 00 00 00    	jge    104bc9 <_Z8HSVtoRGBi+0xf9>
  104b99:	c6 45 d8 00          	mov    BYTE PTR [rbp-0x28],0x0
  104b9d:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  104ba0:	b9 00 01 00 00       	mov    ecx,0x100
  104ba5:	99                   	cdq
  104ba6:	f7 f9                	idiv   ecx
  104ba8:	b8 ff 00 00 00       	mov    eax,0xff
  104bad:	29 d0                	sub    eax,edx
  104baf:	88 45 d9             	mov    BYTE PTR [rbp-0x27],al
  104bb2:	c6 45 da ff          	mov    BYTE PTR [rbp-0x26],0xff
  104bb6:	66 8b 45 d8          	mov    ax,WORD PTR [rbp-0x28]
  104bba:	66 89 45 f8          	mov    WORD PTR [rbp-0x8],ax
  104bbe:	8a 45 da             	mov    al,BYTE PTR [rbp-0x26]
  104bc1:	88 45 fa             	mov    BYTE PTR [rbp-0x6],al
  104bc4:	e9 68 00 00 00       	jmp    104c31 <_Z8HSVtoRGBi+0x161>
  104bc9:	81 7d f4 00 05 00 00 	cmp    DWORD PTR [rbp-0xc],0x500
  104bd0:	0f 8d 2b 00 00 00    	jge    104c01 <_Z8HSVtoRGBi+0x131>
  104bd6:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  104bd9:	b9 00 01 00 00       	mov    ecx,0x100
  104bde:	99                   	cdq
  104bdf:	f7 f9                	idiv   ecx
  104be1:	88 d0                	mov    al,dl
  104be3:	88 45 d0             	mov    BYTE PTR [rbp-0x30],al
  104be6:	c6 45 d1 00          	mov    BYTE PTR [rbp-0x2f],0x0
  104bea:	c6 45 d2 ff          	mov    BYTE PTR [rbp-0x2e],0xff
  104bee:	66 8b 45 d0          	mov    ax,WORD PTR [rbp-0x30]
  104bf2:	66 89 45 f8          	mov    WORD PTR [rbp-0x8],ax
  104bf6:	8a 45 d2             	mov    al,BYTE PTR [rbp-0x2e]
  104bf9:	88 45 fa             	mov    BYTE PTR [rbp-0x6],al
  104bfc:	e9 2b 00 00 00       	jmp    104c2c <_Z8HSVtoRGBi+0x15c>
  104c01:	c6 45 c8 ff          	mov    BYTE PTR [rbp-0x38],0xff
  104c05:	c6 45 c9 00          	mov    BYTE PTR [rbp-0x37],0x0
  104c09:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  104c0c:	b9 00 01 00 00       	mov    ecx,0x100
  104c11:	99                   	cdq
  104c12:	f7 f9                	idiv   ecx
  104c14:	b8 ff 00 00 00       	mov    eax,0xff
  104c19:	29 d0                	sub    eax,edx
  104c1b:	88 45 ca             	mov    BYTE PTR [rbp-0x36],al
  104c1e:	66 8b 45 c8          	mov    ax,WORD PTR [rbp-0x38]
  104c22:	66 89 45 f8          	mov    WORD PTR [rbp-0x8],ax
  104c26:	8a 45 ca             	mov    al,BYTE PTR [rbp-0x36]
  104c29:	88 45 fa             	mov    BYTE PTR [rbp-0x6],al
  104c2c:	e9 00 00 00 00       	jmp    104c31 <_Z8HSVtoRGBi+0x161>
  104c31:	e9 00 00 00 00       	jmp    104c36 <_Z8HSVtoRGBi+0x166>
  104c36:	e9 00 00 00 00       	jmp    104c3b <_Z8HSVtoRGBi+0x16b>
  104c3b:	e9 00 00 00 00       	jmp    104c40 <_Z8HSVtoRGBi+0x170>
  104c40:	8a 45 fa             	mov    al,BYTE PTR [rbp-0x6]
  104c43:	88 45 c6             	mov    BYTE PTR [rbp-0x3a],al
  104c46:	66 8b 45 f8          	mov    ax,WORD PTR [rbp-0x8]
  104c4a:	66 89 45 c4          	mov    WORD PTR [rbp-0x3c],ax
  104c4e:	0f b6 4d c6          	movzx  ecx,BYTE PTR [rbp-0x3a]
  104c52:	c1 e1 10             	shl    ecx,0x10
  104c55:	0f b7 45 c4          	movzx  eax,WORD PTR [rbp-0x3c]
  104c59:	09 c8                	or     eax,ecx
  104c5b:	48 83 c4 40          	add    rsp,0x40
  104c5f:	5d                   	pop    rbp
  104c60:	c3                   	ret
  104c61:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  104c68:	0f 1f 84 00 00 00 00 
  104c6f:	00 

0000000000104c70 <_Z10WriteAsciic5Colorii>:
  104c70:	55                   	push   rbp
  104c71:	48 89 e5             	mov    rbp,rsp
  104c74:	48 83 ec 30          	sub    rsp,0x30
  104c78:	40 88 f8             	mov    al,dil
  104c7b:	66 89 f7             	mov    di,si
  104c7e:	66 89 7d f4          	mov    WORD PTR [rbp-0xc],di
  104c82:	c1 ee 10             	shr    esi,0x10
  104c85:	40 88 75 f6          	mov    BYTE PTR [rbp-0xa],sil
  104c89:	66 8b 75 f4          	mov    si,WORD PTR [rbp-0xc]
  104c8d:	66 89 75 f8          	mov    WORD PTR [rbp-0x8],si
  104c91:	40 8a 75 f6          	mov    sil,BYTE PTR [rbp-0xa]
  104c95:	40 88 75 fa          	mov    BYTE PTR [rbp-0x6],sil
  104c99:	88 45 f3             	mov    BYTE PTR [rbp-0xd],al
  104c9c:	89 55 ec             	mov    DWORD PTR [rbp-0x14],edx
  104c9f:	89 4d e8             	mov    DWORD PTR [rbp-0x18],ecx
  104ca2:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [rbp-0x1c],0x0
  104ca9:	83 7d e4 10          	cmp    DWORD PTR [rbp-0x1c],0x10
  104cad:	0f 8d ad 00 00 00    	jge    104d60 <_Z10WriteAsciic5Colorii+0xf0>
  104cb3:	c7 45 e0 00 00 00 00 	mov    DWORD PTR [rbp-0x20],0x0
  104cba:	83 7d e0 08          	cmp    DWORD PTR [rbp-0x20],0x8
  104cbe:	0f 8d 89 00 00 00    	jge    104d4d <_Z10WriteAsciic5Colorii+0xdd>
  104cc4:	48 8b 05 6d 27 51 00 	mov    rax,QWORD PTR [rip+0x51276d]        # 617438 <ascii_font>
  104ccb:	48 0f be 4d f3       	movsx  rcx,BYTE PTR [rbp-0xd]
  104cd0:	48 c1 e1 04          	shl    rcx,0x4
  104cd4:	48 01 c8             	add    rax,rcx
  104cd7:	48 63 4d e4          	movsxd rcx,DWORD PTR [rbp-0x1c]
  104cdb:	0f be 04 08          	movsx  eax,BYTE PTR [rax+rcx*1]
  104cdf:	b9 07 00 00 00       	mov    ecx,0x7
  104ce4:	2b 4d e0             	sub    ecx,DWORD PTR [rbp-0x20]
  104ce7:	d3 f8                	sar    eax,cl
  104ce9:	83 e0 01             	and    eax,0x1
  104cec:	83 f8 00             	cmp    eax,0x0
  104cef:	0f 84 45 00 00 00    	je     104d3a <_Z10WriteAsciic5Colorii+0xca>
  104cf5:	48 8d 05 14 b3 55 00 	lea    rax,[rip+0x55b314]        # 660010 <BB_WritePixel>
  104cfc:	48 8b 00             	mov    rax,QWORD PTR [rax]
  104cff:	8a 4d fa             	mov    cl,BYTE PTR [rbp-0x6]
  104d02:	88 4d da             	mov    BYTE PTR [rbp-0x26],cl
  104d05:	66 8b 4d f8          	mov    cx,WORD PTR [rbp-0x8]
  104d09:	66 89 4d d8          	mov    WORD PTR [rbp-0x28],cx
  104d0d:	8b 75 ec             	mov    esi,DWORD PTR [rbp-0x14]
  104d10:	8b 4d e0             	mov    ecx,DWORD PTR [rbp-0x20]
  104d13:	01 ce                	add    esi,ecx
  104d15:	8b 55 e8             	mov    edx,DWORD PTR [rbp-0x18]
  104d18:	8b 4d e4             	mov    ecx,DWORD PTR [rbp-0x1c]
  104d1b:	01 ca                	add    edx,ecx
  104d1d:	8a 4d da             	mov    cl,BYTE PTR [rbp-0x26]
  104d20:	88 4d d6             	mov    BYTE PTR [rbp-0x2a],cl
  104d23:	66 8b 4d d8          	mov    cx,WORD PTR [rbp-0x28]
  104d27:	66 89 4d d4          	mov    WORD PTR [rbp-0x2c],cx
  104d2b:	0f b6 4d d6          	movzx  ecx,BYTE PTR [rbp-0x2a]
  104d2f:	c1 e1 10             	shl    ecx,0x10
  104d32:	0f b7 7d d4          	movzx  edi,WORD PTR [rbp-0x2c]
  104d36:	09 cf                	or     edi,ecx
  104d38:	ff d0                	call   rax
  104d3a:	e9 00 00 00 00       	jmp    104d3f <_Z10WriteAsciic5Colorii+0xcf>
  104d3f:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
  104d42:	83 c0 01             	add    eax,0x1
  104d45:	89 45 e0             	mov    DWORD PTR [rbp-0x20],eax
  104d48:	e9 6d ff ff ff       	jmp    104cba <_Z10WriteAsciic5Colorii+0x4a>
  104d4d:	e9 00 00 00 00       	jmp    104d52 <_Z10WriteAsciic5Colorii+0xe2>
  104d52:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  104d55:	83 c0 01             	add    eax,0x1
  104d58:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
  104d5b:	e9 49 ff ff ff       	jmp    104ca9 <_Z10WriteAsciic5Colorii+0x39>
  104d60:	e8 db fa 00 00       	call   114840 <_Z10SwapBufferv>
  104d65:	31 c0                	xor    eax,eax
  104d67:	48 83 c4 30          	add    rsp,0x30
  104d6b:	5d                   	pop    rbp
  104d6c:	c3                   	ret
  104d6d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000104d70 <_Z11WriteSquare6VectorS_5Color>:
  104d70:	55                   	push   rbp
  104d71:	48 89 e5             	mov    rbp,rsp
  104d74:	48 83 ec 50          	sub    rsp,0x50
  104d78:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  104d7c:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  104d80:	89 d0                	mov    eax,edx
  104d82:	c1 e8 10             	shr    eax,0x10
  104d85:	88 45 e6             	mov    BYTE PTR [rbp-0x1a],al
  104d88:	66 89 d0             	mov    ax,dx
  104d8b:	66 89 45 e4          	mov    WORD PTR [rbp-0x1c],ax
  104d8f:	66 8b 45 e4          	mov    ax,WORD PTR [rbp-0x1c]
  104d93:	66 89 45 e8          	mov    WORD PTR [rbp-0x18],ax
  104d97:	8a 45 e6             	mov    al,BYTE PTR [rbp-0x1a]
  104d9a:	88 45 ea             	mov    BYTE PTR [rbp-0x16],al
  104d9d:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  104da0:	3b 45 f0             	cmp    eax,DWORD PTR [rbp-0x10]
  104da3:	0f 8e 0b 00 00 00    	jle    104db4 <_Z11WriteSquare6VectorS_5Color+0x44>
  104da9:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  104dac:	89 45 d0             	mov    DWORD PTR [rbp-0x30],eax
  104daf:	e9 06 00 00 00       	jmp    104dba <_Z11WriteSquare6VectorS_5Color+0x4a>
  104db4:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  104db7:	89 45 d0             	mov    DWORD PTR [rbp-0x30],eax
  104dba:	8b 45 d0             	mov    eax,DWORD PTR [rbp-0x30]
  104dbd:	89 45 e0             	mov    DWORD PTR [rbp-0x20],eax
  104dc0:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
  104dc3:	89 45 cc             	mov    DWORD PTR [rbp-0x34],eax
  104dc6:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  104dc9:	3b 45 f0             	cmp    eax,DWORD PTR [rbp-0x10]
  104dcc:	0f 8d 0b 00 00 00    	jge    104ddd <_Z11WriteSquare6VectorS_5Color+0x6d>
  104dd2:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  104dd5:	89 45 c8             	mov    DWORD PTR [rbp-0x38],eax
  104dd8:	e9 06 00 00 00       	jmp    104de3 <_Z11WriteSquare6VectorS_5Color+0x73>
  104ddd:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  104de0:	89 45 c8             	mov    DWORD PTR [rbp-0x38],eax
  104de3:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
  104de6:	8b 4d c8             	mov    ecx,DWORD PTR [rbp-0x38]
  104de9:	39 c8                	cmp    eax,ecx
  104deb:	0f 8d b0 00 00 00    	jge    104ea1 <_Z11WriteSquare6VectorS_5Color+0x131>
  104df1:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  104df4:	3b 45 f4             	cmp    eax,DWORD PTR [rbp-0xc]
  104df7:	0f 8e 0b 00 00 00    	jle    104e08 <_Z11WriteSquare6VectorS_5Color+0x98>
  104dfd:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  104e00:	89 45 c4             	mov    DWORD PTR [rbp-0x3c],eax
  104e03:	e9 06 00 00 00       	jmp    104e0e <_Z11WriteSquare6VectorS_5Color+0x9e>
  104e08:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  104e0b:	89 45 c4             	mov    DWORD PTR [rbp-0x3c],eax
  104e0e:	8b 45 c4             	mov    eax,DWORD PTR [rbp-0x3c]
  104e11:	89 45 dc             	mov    DWORD PTR [rbp-0x24],eax
  104e14:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
  104e17:	89 45 c0             	mov    DWORD PTR [rbp-0x40],eax
  104e1a:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  104e1d:	3b 45 f4             	cmp    eax,DWORD PTR [rbp-0xc]
  104e20:	0f 8d 0b 00 00 00    	jge    104e31 <_Z11WriteSquare6VectorS_5Color+0xc1>
  104e26:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  104e29:	89 45 bc             	mov    DWORD PTR [rbp-0x44],eax
  104e2c:	e9 06 00 00 00       	jmp    104e37 <_Z11WriteSquare6VectorS_5Color+0xc7>
  104e31:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  104e34:	89 45 bc             	mov    DWORD PTR [rbp-0x44],eax
  104e37:	8b 45 c0             	mov    eax,DWORD PTR [rbp-0x40]
  104e3a:	8b 4d bc             	mov    ecx,DWORD PTR [rbp-0x44]
  104e3d:	39 c8                	cmp    eax,ecx
  104e3f:	0f 8d 49 00 00 00    	jge    104e8e <_Z11WriteSquare6VectorS_5Color+0x11e>
  104e45:	48 8d 05 c4 b1 55 00 	lea    rax,[rip+0x55b1c4]        # 660010 <BB_WritePixel>
  104e4c:	48 8b 00             	mov    rax,QWORD PTR [rax]
  104e4f:	8a 4d ea             	mov    cl,BYTE PTR [rbp-0x16]
  104e52:	88 4d da             	mov    BYTE PTR [rbp-0x26],cl
  104e55:	66 8b 4d e8          	mov    cx,WORD PTR [rbp-0x18]
  104e59:	66 89 4d d8          	mov    WORD PTR [rbp-0x28],cx
  104e5d:	8b 75 e0             	mov    esi,DWORD PTR [rbp-0x20]
  104e60:	8b 55 dc             	mov    edx,DWORD PTR [rbp-0x24]
  104e63:	8a 4d da             	mov    cl,BYTE PTR [rbp-0x26]
  104e66:	88 4d d6             	mov    BYTE PTR [rbp-0x2a],cl
  104e69:	66 8b 4d d8          	mov    cx,WORD PTR [rbp-0x28]
  104e6d:	66 89 4d d4          	mov    WORD PTR [rbp-0x2c],cx
  104e71:	0f b6 4d d6          	movzx  ecx,BYTE PTR [rbp-0x2a]
  104e75:	c1 e1 10             	shl    ecx,0x10
  104e78:	0f b7 7d d4          	movzx  edi,WORD PTR [rbp-0x2c]
  104e7c:	09 cf                	or     edi,ecx
  104e7e:	ff d0                	call   rax
  104e80:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
  104e83:	83 c0 01             	add    eax,0x1
  104e86:	89 45 dc             	mov    DWORD PTR [rbp-0x24],eax
  104e89:	e9 86 ff ff ff       	jmp    104e14 <_Z11WriteSquare6VectorS_5Color+0xa4>
  104e8e:	e9 00 00 00 00       	jmp    104e93 <_Z11WriteSquare6VectorS_5Color+0x123>
  104e93:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
  104e96:	83 c0 01             	add    eax,0x1
  104e99:	89 45 e0             	mov    DWORD PTR [rbp-0x20],eax
  104e9c:	e9 1f ff ff ff       	jmp    104dc0 <_Z11WriteSquare6VectorS_5Color+0x50>
  104ea1:	e8 9a f9 00 00       	call   114840 <_Z10SwapBufferv>
  104ea6:	31 c0                	xor    eax,eax
  104ea8:	48 83 c4 50          	add    rsp,0x50
  104eac:	5d                   	pop    rbp
  104ead:	c3                   	ret
  104eae:	66 90                	xchg   ax,ax

0000000000104eb0 <_Z9PrintLinePKc6Vector5Color>:
  104eb0:	55                   	push   rbp
  104eb1:	48 89 e5             	mov    rbp,rsp
  104eb4:	48 83 ec 40          	sub    rsp,0x40
  104eb8:	48 89 75 f8          	mov    QWORD PTR [rbp-0x8],rsi
  104ebc:	66 89 d0             	mov    ax,dx
  104ebf:	66 89 45 ec          	mov    WORD PTR [rbp-0x14],ax
  104ec3:	c1 ea 10             	shr    edx,0x10
  104ec6:	88 d0                	mov    al,dl
  104ec8:	88 45 ee             	mov    BYTE PTR [rbp-0x12],al
  104ecb:	66 8b 45 ec          	mov    ax,WORD PTR [rbp-0x14]
  104ecf:	66 89 45 f0          	mov    WORD PTR [rbp-0x10],ax
  104ed3:	8a 45 ee             	mov    al,BYTE PTR [rbp-0x12]
  104ed6:	88 45 f2             	mov    BYTE PTR [rbp-0xe],al
  104ed9:	48 89 7d e0          	mov    QWORD PTR [rbp-0x20],rdi
  104edd:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  104ee1:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
  104ee5:	c7 45 d4 00 00 00 00 	mov    DWORD PTR [rbp-0x2c],0x0
  104eec:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  104ef0:	48 63 4d d4          	movsxd rcx,DWORD PTR [rbp-0x2c]
  104ef4:	0f be 04 08          	movsx  eax,BYTE PTR [rax+rcx*1]
  104ef8:	83 f8 00             	cmp    eax,0x0
  104efb:	0f 84 c1 00 00 00    	je     104fc2 <_Z9PrintLinePKc6Vector5Color+0x112>
  104f01:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  104f05:	48 63 4d d4          	movsxd rcx,DWORD PTR [rbp-0x2c]
  104f09:	0f be 04 08          	movsx  eax,BYTE PTR [rax+rcx*1]
  104f0d:	83 f8 0a             	cmp    eax,0xa
  104f10:	0f 84 9e 00 00 00    	je     104fb4 <_Z9PrintLinePKc6Vector5Color+0x104>
  104f16:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  104f1a:	48 63 4d d4          	movsxd rcx,DWORD PTR [rbp-0x2c]
  104f1e:	0f be 3c 08          	movsx  edi,BYTE PTR [rax+rcx*1]
  104f22:	c6 45 d0 64          	mov    BYTE PTR [rbp-0x30],0x64
  104f26:	c6 45 d1 64          	mov    BYTE PTR [rbp-0x2f],0x64
  104f2a:	c6 45 d2 64          	mov    BYTE PTR [rbp-0x2e],0x64
  104f2e:	8b 4d d4             	mov    ecx,DWORD PTR [rbp-0x2c]
  104f31:	89 c8                	mov    eax,ecx
  104f33:	8d 34 c0             	lea    esi,[rax+rax*8]
  104f36:	8b 55 f8             	mov    edx,DWORD PTR [rbp-0x8]
  104f39:	8b 4d fc             	mov    ecx,DWORD PTR [rbp-0x4]
  104f3c:	89 d0                	mov    eax,edx
  104f3e:	89 f2                	mov    edx,esi
  104f40:	8d 54 10 01          	lea    edx,[rax+rdx*1+0x1]
  104f44:	ff c1                	inc    ecx
  104f46:	8a 45 d2             	mov    al,BYTE PTR [rbp-0x2e]
  104f49:	88 45 ce             	mov    BYTE PTR [rbp-0x32],al
  104f4c:	66 8b 45 d0          	mov    ax,WORD PTR [rbp-0x30]
  104f50:	66 89 45 cc          	mov    WORD PTR [rbp-0x34],ax
  104f54:	0f b6 45 ce          	movzx  eax,BYTE PTR [rbp-0x32]
  104f58:	c1 e0 10             	shl    eax,0x10
  104f5b:	0f b7 75 cc          	movzx  esi,WORD PTR [rbp-0x34]
  104f5f:	09 c6                	or     esi,eax
  104f61:	e8 4a fa 00 00       	call   1149b0 <_Z13BB_WriteAsciic5Colorii>
  104f66:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  104f6a:	48 63 4d d4          	movsxd rcx,DWORD PTR [rbp-0x2c]
  104f6e:	8a 04 08             	mov    al,BYTE PTR [rax+rcx*1]
  104f71:	8a 4d f2             	mov    cl,BYTE PTR [rbp-0xe]
  104f74:	88 4d ca             	mov    BYTE PTR [rbp-0x36],cl
  104f77:	66 8b 4d f0          	mov    cx,WORD PTR [rbp-0x10]
  104f7b:	66 89 4d c8          	mov    WORD PTR [rbp-0x38],cx
  104f7f:	8b 55 d4             	mov    edx,DWORD PTR [rbp-0x2c]
  104f82:	89 d1                	mov    ecx,edx
  104f84:	8d 34 c9             	lea    esi,[rcx+rcx*8]
  104f87:	8b 55 f8             	mov    edx,DWORD PTR [rbp-0x8]
  104f8a:	8b 4d fc             	mov    ecx,DWORD PTR [rbp-0x4]
  104f8d:	01 f2                	add    edx,esi
  104f8f:	40 8a 75 ca          	mov    sil,BYTE PTR [rbp-0x36]
  104f93:	40 88 75 c6          	mov    BYTE PTR [rbp-0x3a],sil
  104f97:	66 8b 75 c8          	mov    si,WORD PTR [rbp-0x38]
  104f9b:	66 89 75 c4          	mov    WORD PTR [rbp-0x3c],si
  104f9f:	0f b6 7d c6          	movzx  edi,BYTE PTR [rbp-0x3a]
  104fa3:	c1 e7 10             	shl    edi,0x10
  104fa6:	0f b7 75 c4          	movzx  esi,WORD PTR [rbp-0x3c]
  104faa:	09 fe                	or     esi,edi
  104fac:	0f be f8             	movsx  edi,al
  104faf:	e8 fc f9 00 00       	call   1149b0 <_Z13BB_WriteAsciic5Colorii>
  104fb4:	8b 45 d4             	mov    eax,DWORD PTR [rbp-0x2c]
  104fb7:	83 c0 01             	add    eax,0x1
  104fba:	89 45 d4             	mov    DWORD PTR [rbp-0x2c],eax
  104fbd:	e9 2a ff ff ff       	jmp    104eec <_Z9PrintLinePKc6Vector5Color+0x3c>
  104fc2:	e8 79 f8 00 00       	call   114840 <_Z10SwapBufferv>
  104fc7:	31 c0                	xor    eax,eax
  104fc9:	48 83 c4 40          	add    rsp,0x40
  104fcd:	5d                   	pop    rbp
  104fce:	c3                   	ret
  104fcf:	90                   	nop

0000000000104fd0 <_Z12RegisterLinePKc>:
  104fd0:	55                   	push   rbp
  104fd1:	48 89 e5             	mov    rbp,rsp
  104fd4:	48 83 ec 10          	sub    rsp,0x10
  104fd8:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  104fdc:	48 c7 45 f0 00 00 00 	mov    QWORD PTR [rbp-0x10],0x0
  104fe3:	00 
  104fe4:	48 63 05 59 24 51 00 	movsxd rax,DWORD PTR [rip+0x512459]        # 617444 <line_queue_end>
  104feb:	48 8d 3d 5e 24 51 00 	lea    rdi,[rip+0x51245e]        # 617450 <line_queue>
  104ff2:	48 6b c0 64          	imul   rax,rax,0x64
  104ff6:	48 01 c7             	add    rdi,rax
  104ff9:	48 8b 75 f8          	mov    rsi,QWORD PTR [rbp-0x8]
  104ffd:	e8 de 09 00 00       	call   1059e0 <strcpy>
  105002:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  105006:	8b 05 38 24 51 00    	mov    eax,DWORD PTR [rip+0x512438]        # 617444 <line_queue_end>
  10500c:	83 c0 01             	add    eax,0x1
  10500f:	99                   	cdq
  105010:	f7 3d 32 24 51 00    	idiv   DWORD PTR [rip+0x512432]        # 617448 <max_line>
  105016:	89 15 28 24 51 00    	mov    DWORD PTR [rip+0x512428],edx        # 617444 <line_queue_end>
  10501c:	8b 05 22 24 51 00    	mov    eax,DWORD PTR [rip+0x512422]        # 617444 <line_queue_end>
  105022:	3b 05 18 24 51 00    	cmp    eax,DWORD PTR [rip+0x512418]        # 617440 <line_queue_head>
  105028:	0f 85 16 00 00 00    	jne    105044 <_Z12RegisterLinePKc+0x74>
  10502e:	8b 05 0c 24 51 00    	mov    eax,DWORD PTR [rip+0x51240c]        # 617440 <line_queue_head>
  105034:	83 c0 01             	add    eax,0x1
  105037:	99                   	cdq
  105038:	f7 3d 0a 24 51 00    	idiv   DWORD PTR [rip+0x51240a]        # 617448 <max_line>
  10503e:	89 15 fc 23 51 00    	mov    DWORD PTR [rip+0x5123fc],edx        # 617440 <line_queue_head>
  105044:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  105048:	48 83 c4 10          	add    rsp,0x10
  10504c:	5d                   	pop    rbp
  10504d:	c3                   	ret
  10504e:	66 90                	xchg   ax,ax

0000000000105050 <Print>:
  105050:	55                   	push   rbp
  105051:	48 89 e5             	mov    rbp,rsp
  105054:	48 81 ec e0 00 00 00 	sub    rsp,0xe0
  10505b:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  10505f:	48 8b 75 f0          	mov    rsi,QWORD PTR [rbp-0x10]
  105063:	48 8d 3d 16 72 51 00 	lea    rdi,[rip+0x517216]        # 61c280 <_ZZ5PrintE4line>
  10506a:	e8 01 0a 00 00       	call   105a70 <strcat>
  10506f:	8b 05 1b 0c 01 00    	mov    eax,DWORD PTR [rip+0x10c1b]        # 115c90 <line_len_max>
  105075:	ff c0                	inc    eax
  105077:	48 89 e1             	mov    rcx,rsp
  10507a:	48 89 4d e8          	mov    QWORD PTR [rbp-0x18],rcx
  10507e:	48 89 c2             	mov    rdx,rax
  105081:	48 83 c2 0f          	add    rdx,0xf
  105085:	48 83 e2 f0          	and    rdx,0xfffffffffffffff0
  105089:	48 89 e1             	mov    rcx,rsp
  10508c:	48 29 d1             	sub    rcx,rdx
  10508f:	48 89 8d 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],rcx
  105096:	48 89 cc             	mov    rsp,rcx
  105099:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  10509d:	48 8d 3d dc 71 51 00 	lea    rdi,[rip+0x5171dc]        # 61c280 <_ZZ5PrintE4line>
  1050a4:	e8 37 0a 00 00       	call   105ae0 <strlen>
  1050a9:	48 63 0d e0 0b 01 00 	movsxd rcx,DWORD PTR [rip+0x10be0]        # 115c90 <line_len_max>
  1050b0:	48 39 c8             	cmp    rax,rcx
  1050b3:	0f 86 61 00 00 00    	jbe    10511a <Print+0xca>
  1050b9:	48 8b bd 28 ff ff ff 	mov    rdi,QWORD PTR [rbp-0xd8]
  1050c0:	48 63 05 c9 0b 01 00 	movsxd rax,DWORD PTR [rip+0x10bc9]        # 115c90 <line_len_max>
  1050c7:	48 8d 35 b2 71 51 00 	lea    rsi,[rip+0x5171b2]        # 61c280 <_ZZ5PrintE4line>
  1050ce:	48 01 c6             	add    rsi,rax
  1050d1:	e8 0a 09 00 00       	call   1059e0 <strcpy>
  1050d6:	48 63 0d b3 0b 01 00 	movsxd rcx,DWORD PTR [rip+0x10bb3]        # 115c90 <line_len_max>
  1050dd:	48 8d 05 9c 71 51 00 	lea    rax,[rip+0x51719c]        # 61c280 <_ZZ5PrintE4line>
  1050e4:	c6 04 08 00          	mov    BYTE PTR [rax+rcx*1],0x0
  1050e8:	48 8d 3d 91 71 51 00 	lea    rdi,[rip+0x517191]        # 61c280 <_ZZ5PrintE4line>
  1050ef:	e8 dc fe ff ff       	call   104fd0 <_Z12RegisterLinePKc>
  1050f4:	48 8b bd 28 ff ff ff 	mov    rdi,QWORD PTR [rbp-0xd8]
  1050fb:	c6 05 7e 71 51 00 00 	mov    BYTE PTR [rip+0x51717e],0x0        # 61c280 <_ZZ5PrintE4line>
  105102:	e8 49 ff ff ff       	call   105050 <Print>
  105107:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  10510e:	c7 45 dc 01 00 00 00 	mov    DWORD PTR [rbp-0x24],0x1
  105115:	e9 8c 03 00 00       	jmp    1054a6 <Print+0x456>
  10511a:	48 8d 3d 5f 71 51 00 	lea    rdi,[rip+0x51715f]        # 61c280 <_ZZ5PrintE4line>
  105121:	e8 ba 09 00 00       	call   105ae0 <strlen>
  105126:	48 89 85 20 ff ff ff 	mov    QWORD PTR [rbp-0xe0],rax
  10512d:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  105131:	e8 aa 09 00 00       	call   105ae0 <strlen>
  105136:	48 89 c1             	mov    rcx,rax
  105139:	48 8b 85 20 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe0]
  105140:	48 29 c8             	sub    rax,rcx
  105143:	48 83 f8 00          	cmp    rax,0x0
  105147:	0f 84 f7 00 00 00    	je     105244 <Print+0x1f4>
  10514d:	c7 45 d0 00 00 00 00 	mov    DWORD PTR [rbp-0x30],0x0
  105154:	8b 05 1e 71 51 00    	mov    eax,DWORD PTR [rip+0x51711e]        # 61c278 <_ZZ5PrintE1y>
  10515a:	89 45 d4             	mov    DWORD PTR [rbp-0x2c],eax
  10515d:	8b 0d 2d 0b 01 00    	mov    ecx,DWORD PTR [rip+0x10b2d]        # 115c90 <line_len_max>
  105163:	89 c8                	mov    eax,ecx
  105165:	8d 04 c0             	lea    eax,[rax+rax*8]
  105168:	89 45 c8             	mov    DWORD PTR [rbp-0x38],eax
  10516b:	8b 05 07 71 51 00    	mov    eax,DWORD PTR [rip+0x517107]        # 61c278 <_ZZ5PrintE1y>
  105171:	83 c0 11             	add    eax,0x11
  105174:	89 45 cc             	mov    DWORD PTR [rbp-0x34],eax
  105177:	c6 45 c0 00          	mov    BYTE PTR [rbp-0x40],0x0
  10517b:	c6 45 c1 00          	mov    BYTE PTR [rbp-0x3f],0x0
  10517f:	c6 45 c2 00          	mov    BYTE PTR [rbp-0x3e],0x0
  105183:	48 8b 7d d0          	mov    rdi,QWORD PTR [rbp-0x30]
  105187:	48 8b 75 c8          	mov    rsi,QWORD PTR [rbp-0x38]
  10518b:	8a 45 c2             	mov    al,BYTE PTR [rbp-0x3e]
  10518e:	88 45 be             	mov    BYTE PTR [rbp-0x42],al
  105191:	66 8b 45 c0          	mov    ax,WORD PTR [rbp-0x40]
  105195:	66 89 45 bc          	mov    WORD PTR [rbp-0x44],ax
  105199:	0f b6 45 be          	movzx  eax,BYTE PTR [rbp-0x42]
  10519d:	c1 e0 10             	shl    eax,0x10
  1051a0:	0f b7 55 bc          	movzx  edx,WORD PTR [rbp-0x44]
  1051a4:	09 c2                	or     edx,eax
  1051a6:	e8 c5 f6 00 00       	call   114870 <_Z14BB_WriteSquare6VectorS_5Color>
  1051ab:	c7 45 b0 00 00 00 00 	mov    DWORD PTR [rbp-0x50],0x0
  1051b2:	8b 05 c0 70 51 00    	mov    eax,DWORD PTR [rip+0x5170c0]        # 61c278 <_ZZ5PrintE1y>
  1051b8:	89 45 b4             	mov    DWORD PTR [rbp-0x4c],eax
  1051bb:	c6 45 a8 ff          	mov    BYTE PTR [rbp-0x58],0xff
  1051bf:	c6 45 a9 ff          	mov    BYTE PTR [rbp-0x57],0xff
  1051c3:	c6 45 aa ff          	mov    BYTE PTR [rbp-0x56],0xff
  1051c7:	48 8b 75 b0          	mov    rsi,QWORD PTR [rbp-0x50]
  1051cb:	8a 45 aa             	mov    al,BYTE PTR [rbp-0x56]
  1051ce:	88 45 a6             	mov    BYTE PTR [rbp-0x5a],al
  1051d1:	66 8b 45 a8          	mov    ax,WORD PTR [rbp-0x58]
  1051d5:	66 89 45 a4          	mov    WORD PTR [rbp-0x5c],ax
  1051d9:	0f b6 45 a6          	movzx  eax,BYTE PTR [rbp-0x5a]
  1051dd:	c1 e0 10             	shl    eax,0x10
  1051e0:	0f b7 55 a4          	movzx  edx,WORD PTR [rbp-0x5c]
  1051e4:	09 c2                	or     edx,eax
  1051e6:	48 8d 3d 93 70 51 00 	lea    rdi,[rip+0x517093]        # 61c280 <_ZZ5PrintE4line>
  1051ed:	e8 be f8 00 00       	call   114ab0 <_Z12BB_PrintLinePKc6Vector5Color>
  1051f2:	e8 49 f6 00 00       	call   114840 <_Z10SwapBufferv>
  1051f7:	48 8d 3d 82 70 51 00 	lea    rdi,[rip+0x517082]        # 61c280 <_ZZ5PrintE4line>
  1051fe:	e8 dd 08 00 00       	call   105ae0 <strlen>
  105203:	48 89 c1             	mov    rcx,rax
  105206:	48 83 e9 01          	sub    rcx,0x1
  10520a:	48 8d 05 6f 70 51 00 	lea    rax,[rip+0x51706f]        # 61c280 <_ZZ5PrintE4line>
  105211:	0f be 04 08          	movsx  eax,BYTE PTR [rax+rcx*1]
  105215:	83 f8 0a             	cmp    eax,0xa
  105218:	0f 85 13 00 00 00    	jne    105231 <Print+0x1e1>
  10521e:	48 8d 3d 5b 70 51 00 	lea    rdi,[rip+0x51705b]        # 61c280 <_ZZ5PrintE4line>
  105225:	e8 a6 fd ff ff       	call   104fd0 <_Z12RegisterLinePKc>
  10522a:	c6 05 4f 70 51 00 00 	mov    BYTE PTR [rip+0x51704f],0x0        # 61c280 <_ZZ5PrintE4line>
  105231:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  105238:	c7 45 dc 01 00 00 00 	mov    DWORD PTR [rbp-0x24],0x1
  10523f:	e9 62 02 00 00       	jmp    1054a6 <Print+0x456>
  105244:	c7 05 2a 70 51 00 00 	mov    DWORD PTR [rip+0x51702a],0x0        # 61c278 <_ZZ5PrintE1y>
  10524b:	00 00 00 
  10524e:	8b 05 ec 21 51 00    	mov    eax,DWORD PTR [rip+0x5121ec]        # 617440 <line_queue_head>
  105254:	89 45 a0             	mov    DWORD PTR [rbp-0x60],eax
  105257:	8b 45 a0             	mov    eax,DWORD PTR [rbp-0x60]
  10525a:	3b 05 e4 21 51 00    	cmp    eax,DWORD PTR [rip+0x5121e4]        # 617444 <line_queue_end>
  105260:	0f 84 fd 00 00 00    	je     105363 <Print+0x313>
  105266:	c7 45 98 00 00 00 00 	mov    DWORD PTR [rbp-0x68],0x0
  10526d:	8b 05 05 70 51 00    	mov    eax,DWORD PTR [rip+0x517005]        # 61c278 <_ZZ5PrintE1y>
  105273:	89 45 9c             	mov    DWORD PTR [rbp-0x64],eax
  105276:	8b 0d 14 0a 01 00    	mov    ecx,DWORD PTR [rip+0x10a14]        # 115c90 <line_len_max>
  10527c:	89 c8                	mov    eax,ecx
  10527e:	8d 04 c0             	lea    eax,[rax+rax*8]
  105281:	89 45 90             	mov    DWORD PTR [rbp-0x70],eax
  105284:	8b 05 ee 6f 51 00    	mov    eax,DWORD PTR [rip+0x516fee]        # 61c278 <_ZZ5PrintE1y>
  10528a:	83 c0 11             	add    eax,0x11
  10528d:	89 45 94             	mov    DWORD PTR [rbp-0x6c],eax
  105290:	c6 45 88 00          	mov    BYTE PTR [rbp-0x78],0x0
  105294:	c6 45 89 00          	mov    BYTE PTR [rbp-0x77],0x0
  105298:	c6 45 8a 00          	mov    BYTE PTR [rbp-0x76],0x0
  10529c:	48 8b 7d 98          	mov    rdi,QWORD PTR [rbp-0x68]
  1052a0:	48 8b 75 90          	mov    rsi,QWORD PTR [rbp-0x70]
  1052a4:	8a 45 8a             	mov    al,BYTE PTR [rbp-0x76]
  1052a7:	88 45 86             	mov    BYTE PTR [rbp-0x7a],al
  1052aa:	66 8b 45 88          	mov    ax,WORD PTR [rbp-0x78]
  1052ae:	66 89 45 84          	mov    WORD PTR [rbp-0x7c],ax
  1052b2:	0f b6 45 86          	movzx  eax,BYTE PTR [rbp-0x7a]
  1052b6:	c1 e0 10             	shl    eax,0x10
  1052b9:	0f b7 55 84          	movzx  edx,WORD PTR [rbp-0x7c]
  1052bd:	09 c2                	or     edx,eax
  1052bf:	e8 ac f5 00 00       	call   114870 <_Z14BB_WriteSquare6VectorS_5Color>
  1052c4:	48 63 45 a0          	movsxd rax,DWORD PTR [rbp-0x60]
  1052c8:	48 6b c0 64          	imul   rax,rax,0x64
  1052cc:	48 8d 3d 7d 21 51 00 	lea    rdi,[rip+0x51217d]        # 617450 <line_queue>
  1052d3:	48 01 c7             	add    rdi,rax
  1052d6:	c7 85 78 ff ff ff 00 	mov    DWORD PTR [rbp-0x88],0x0
  1052dd:	00 00 00 
  1052e0:	8b 05 92 6f 51 00    	mov    eax,DWORD PTR [rip+0x516f92]        # 61c278 <_ZZ5PrintE1y>
  1052e6:	89 85 7c ff ff ff    	mov    DWORD PTR [rbp-0x84],eax
  1052ec:	c6 85 70 ff ff ff ff 	mov    BYTE PTR [rbp-0x90],0xff
  1052f3:	c6 85 71 ff ff ff ff 	mov    BYTE PTR [rbp-0x8f],0xff
  1052fa:	c6 85 72 ff ff ff ff 	mov    BYTE PTR [rbp-0x8e],0xff
  105301:	48 8b b5 78 ff ff ff 	mov    rsi,QWORD PTR [rbp-0x88]
  105308:	8a 85 72 ff ff ff    	mov    al,BYTE PTR [rbp-0x8e]
  10530e:	88 85 6e ff ff ff    	mov    BYTE PTR [rbp-0x92],al
  105314:	66 8b 85 70 ff ff ff 	mov    ax,WORD PTR [rbp-0x90]
  10531b:	66 89 85 6c ff ff ff 	mov    WORD PTR [rbp-0x94],ax
  105322:	0f b6 85 6e ff ff ff 	movzx  eax,BYTE PTR [rbp-0x92]
  105329:	c1 e0 10             	shl    eax,0x10
  10532c:	0f b7 95 6c ff ff ff 	movzx  edx,WORD PTR [rbp-0x94]
  105333:	09 c2                	or     edx,eax
  105335:	e8 76 f7 00 00       	call   114ab0 <_Z12BB_PrintLinePKc6Vector5Color>
  10533a:	e8 01 f5 00 00       	call   114840 <_Z10SwapBufferv>
  10533f:	8b 05 33 6f 51 00    	mov    eax,DWORD PTR [rip+0x516f33]        # 61c278 <_ZZ5PrintE1y>
  105345:	83 c0 11             	add    eax,0x11
  105348:	89 05 2a 6f 51 00    	mov    DWORD PTR [rip+0x516f2a],eax        # 61c278 <_ZZ5PrintE1y>
  10534e:	8b 45 a0             	mov    eax,DWORD PTR [rbp-0x60]
  105351:	83 c0 01             	add    eax,0x1
  105354:	99                   	cdq
  105355:	f7 3d ed 20 51 00    	idiv   DWORD PTR [rip+0x5120ed]        # 617448 <max_line>
  10535b:	89 55 a0             	mov    DWORD PTR [rbp-0x60],edx
  10535e:	e9 f4 fe ff ff       	jmp    105257 <Print+0x207>
  105363:	c7 85 60 ff ff ff 00 	mov    DWORD PTR [rbp-0xa0],0x0
  10536a:	00 00 00 
  10536d:	8b 05 05 6f 51 00    	mov    eax,DWORD PTR [rip+0x516f05]        # 61c278 <_ZZ5PrintE1y>
  105373:	89 85 64 ff ff ff    	mov    DWORD PTR [rbp-0x9c],eax
  105379:	8b 0d 11 09 01 00    	mov    ecx,DWORD PTR [rip+0x10911]        # 115c90 <line_len_max>
  10537f:	89 c8                	mov    eax,ecx
  105381:	8d 04 c0             	lea    eax,[rax+rax*8]
  105384:	89 85 58 ff ff ff    	mov    DWORD PTR [rbp-0xa8],eax
  10538a:	8b 05 e8 6e 51 00    	mov    eax,DWORD PTR [rip+0x516ee8]        # 61c278 <_ZZ5PrintE1y>
  105390:	83 c0 11             	add    eax,0x11
  105393:	89 85 5c ff ff ff    	mov    DWORD PTR [rbp-0xa4],eax
  105399:	c6 85 50 ff ff ff 00 	mov    BYTE PTR [rbp-0xb0],0x0
  1053a0:	c6 85 51 ff ff ff 00 	mov    BYTE PTR [rbp-0xaf],0x0
  1053a7:	c6 85 52 ff ff ff 00 	mov    BYTE PTR [rbp-0xae],0x0
  1053ae:	48 8b bd 60 ff ff ff 	mov    rdi,QWORD PTR [rbp-0xa0]
  1053b5:	48 8b b5 58 ff ff ff 	mov    rsi,QWORD PTR [rbp-0xa8]
  1053bc:	8a 85 52 ff ff ff    	mov    al,BYTE PTR [rbp-0xae]
  1053c2:	88 85 4e ff ff ff    	mov    BYTE PTR [rbp-0xb2],al
  1053c8:	66 8b 85 50 ff ff ff 	mov    ax,WORD PTR [rbp-0xb0]
  1053cf:	66 89 85 4c ff ff ff 	mov    WORD PTR [rbp-0xb4],ax
  1053d6:	0f b6 85 4e ff ff ff 	movzx  eax,BYTE PTR [rbp-0xb2]
  1053dd:	c1 e0 10             	shl    eax,0x10
  1053e0:	0f b7 95 4c ff ff ff 	movzx  edx,WORD PTR [rbp-0xb4]
  1053e7:	09 c2                	or     edx,eax
  1053e9:	e8 82 f4 00 00       	call   114870 <_Z14BB_WriteSquare6VectorS_5Color>
  1053ee:	c7 85 40 ff ff ff 00 	mov    DWORD PTR [rbp-0xc0],0x0
  1053f5:	00 00 00 
  1053f8:	8b 05 7a 6e 51 00    	mov    eax,DWORD PTR [rip+0x516e7a]        # 61c278 <_ZZ5PrintE1y>
  1053fe:	89 85 44 ff ff ff    	mov    DWORD PTR [rbp-0xbc],eax
  105404:	c6 85 38 ff ff ff ff 	mov    BYTE PTR [rbp-0xc8],0xff
  10540b:	c6 85 39 ff ff ff ff 	mov    BYTE PTR [rbp-0xc7],0xff
  105412:	c6 85 3a ff ff ff ff 	mov    BYTE PTR [rbp-0xc6],0xff
  105419:	48 8b b5 40 ff ff ff 	mov    rsi,QWORD PTR [rbp-0xc0]
  105420:	8a 85 3a ff ff ff    	mov    al,BYTE PTR [rbp-0xc6]
  105426:	88 85 36 ff ff ff    	mov    BYTE PTR [rbp-0xca],al
  10542c:	66 8b 85 38 ff ff ff 	mov    ax,WORD PTR [rbp-0xc8]
  105433:	66 89 85 34 ff ff ff 	mov    WORD PTR [rbp-0xcc],ax
  10543a:	0f b6 85 36 ff ff ff 	movzx  eax,BYTE PTR [rbp-0xca]
  105441:	c1 e0 10             	shl    eax,0x10
  105444:	0f b7 95 34 ff ff ff 	movzx  edx,WORD PTR [rbp-0xcc]
  10544b:	09 c2                	or     edx,eax
  10544d:	48 8d 3d 2c 6e 51 00 	lea    rdi,[rip+0x516e2c]        # 61c280 <_ZZ5PrintE4line>
  105454:	e8 57 f6 00 00       	call   114ab0 <_Z12BB_PrintLinePKc6Vector5Color>
  105459:	e8 e2 f3 00 00       	call   114840 <_Z10SwapBufferv>
  10545e:	48 8d 3d 1b 6e 51 00 	lea    rdi,[rip+0x516e1b]        # 61c280 <_ZZ5PrintE4line>
  105465:	e8 76 06 00 00       	call   105ae0 <strlen>
  10546a:	48 89 c1             	mov    rcx,rax
  10546d:	48 83 e9 01          	sub    rcx,0x1
  105471:	48 8d 05 08 6e 51 00 	lea    rax,[rip+0x516e08]        # 61c280 <_ZZ5PrintE4line>
  105478:	0f be 04 08          	movsx  eax,BYTE PTR [rax+rcx*1]
  10547c:	83 f8 0a             	cmp    eax,0xa
  10547f:	0f 85 13 00 00 00    	jne    105498 <Print+0x448>
  105485:	48 8d 3d f4 6d 51 00 	lea    rdi,[rip+0x516df4]        # 61c280 <_ZZ5PrintE4line>
  10548c:	e8 3f fb ff ff       	call   104fd0 <_Z12RegisterLinePKc>
  105491:	c6 05 e8 6d 51 00 00 	mov    BYTE PTR [rip+0x516de8],0x0        # 61c280 <_ZZ5PrintE4line>
  105498:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  10549f:	c7 45 dc 01 00 00 00 	mov    DWORD PTR [rbp-0x24],0x1
  1054a6:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  1054aa:	48 89 c4             	mov    rsp,rax
  1054ad:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  1054b0:	48 89 ec             	mov    rsp,rbp
  1054b3:	5d                   	pop    rbp
  1054b4:	c3                   	ret
  1054b5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  1054bc:	00 00 00 00 

00000000001054c0 <Printf>:
  1054c0:	55                   	push   rbp
  1054c1:	48 89 e5             	mov    rbp,rsp
  1054c4:	48 81 ec e0 00 00 00 	sub    rsp,0xe0
  1054cb:	84 c0                	test   al,al
  1054cd:	0f 84 26 00 00 00    	je     1054f9 <Printf+0x39>
  1054d3:	0f 29 85 60 ff ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm0
  1054da:	0f 29 8d 70 ff ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm1
  1054e1:	0f 29 55 80          	movaps XMMWORD PTR [rbp-0x80],xmm2
  1054e5:	0f 29 5d 90          	movaps XMMWORD PTR [rbp-0x70],xmm3
  1054e9:	0f 29 65 a0          	movaps XMMWORD PTR [rbp-0x60],xmm4
  1054ed:	0f 29 6d b0          	movaps XMMWORD PTR [rbp-0x50],xmm5
  1054f1:	0f 29 75 c0          	movaps XMMWORD PTR [rbp-0x40],xmm6
  1054f5:	0f 29 7d d0          	movaps XMMWORD PTR [rbp-0x30],xmm7
  1054f9:	4c 89 8d 58 ff ff ff 	mov    QWORD PTR [rbp-0xa8],r9
  105500:	4c 89 85 50 ff ff ff 	mov    QWORD PTR [rbp-0xb0],r8
  105507:	48 89 8d 48 ff ff ff 	mov    QWORD PTR [rbp-0xb8],rcx
  10550e:	48 89 95 40 ff ff ff 	mov    QWORD PTR [rbp-0xc0],rdx
  105515:	48 89 b5 38 ff ff ff 	mov    QWORD PTR [rbp-0xc8],rsi
  10551c:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  105520:	48 8d 85 30 ff ff ff 	lea    rax,[rbp-0xd0]
  105527:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  10552b:	48 8d 45 10          	lea    rax,[rbp+0x10]
  10552f:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  105533:	c7 45 e4 30 00 00 00 	mov    DWORD PTR [rbp-0x1c],0x30
  10553a:	c7 45 e0 08 00 00 00 	mov    DWORD PTR [rbp-0x20],0x8
  105541:	48 8b 75 f8          	mov    rsi,QWORD PTR [rbp-0x8]
  105545:	48 8d 3d 24 71 51 00 	lea    rdi,[rip+0x517124]        # 61c670 <_ZZ6PrintfE14str_for_Printf>
  10554c:	48 89 bd 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],rdi
  105553:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
  105557:	e8 64 06 00 00       	call   105bc0 <vsprintf>
  10555c:	48 8b bd 28 ff ff ff 	mov    rdi,QWORD PTR [rbp-0xd8]
  105563:	e8 e8 fa ff ff       	call   105050 <Print>
  105568:	31 c0                	xor    eax,eax
  10556a:	48 81 c4 e0 00 00 00 	add    rsp,0xe0
  105571:	5d                   	pop    rbp
  105572:	c3                   	ret
  105573:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10557a:	84 00 00 00 00 00 

0000000000105580 <_Z6dPrintPci>:
  105580:	55                   	push   rbp
  105581:	48 89 e5             	mov    rbp,rsp
  105584:	48 83 ec 30          	sub    rsp,0x30
  105588:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  10558c:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi
  10558f:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
  105593:	e8 48 05 00 00       	call   105ae0 <strlen>
  105598:	48 89 c1             	mov    rcx,rax
  10559b:	48 89 c8             	mov    rax,rcx
  10559e:	48 83 c0 32          	add    rax,0x32
  1055a2:	48 89 e2             	mov    rdx,rsp
  1055a5:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
  1055a9:	48 83 c1 41          	add    rcx,0x41
  1055ad:	48 83 e1 f0          	and    rcx,0xfffffffffffffff0
  1055b1:	48 89 e7             	mov    rdi,rsp
  1055b4:	48 29 cf             	sub    rdi,rcx
  1055b7:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
  1055bb:	48 89 fc             	mov    rsp,rdi
  1055be:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  1055c2:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  1055c6:	8b 4d f4             	mov    ecx,DWORD PTR [rbp-0xc]
  1055c9:	48 8d 35 87 ae ff ff 	lea    rsi,[rip+0xffffffffffffae87]        # 100457 <_svfprintf_r.blanks-0x689>
  1055d0:	b0 00                	mov    al,0x0
  1055d2:	e8 19 86 00 00       	call   10dbf0 <sprintf>
  1055d7:	48 8b 7d d8          	mov    rdi,QWORD PTR [rbp-0x28]
  1055db:	e8 70 fa ff ff       	call   105050 <Print>
  1055e0:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  1055e4:	48 89 c4             	mov    rsp,rax
  1055e7:	48 89 ec             	mov    rsp,rbp
  1055ea:	5d                   	pop    rbp
  1055eb:	c3                   	ret
  1055ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000001055f0 <_Z7udPrintPcj>:
  1055f0:	55                   	push   rbp
  1055f1:	48 89 e5             	mov    rbp,rsp
  1055f4:	48 83 ec 30          	sub    rsp,0x30
  1055f8:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  1055fc:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi
  1055ff:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
  105603:	e8 d8 04 00 00       	call   105ae0 <strlen>
  105608:	48 89 c1             	mov    rcx,rax
  10560b:	48 89 c8             	mov    rax,rcx
  10560e:	48 83 c0 32          	add    rax,0x32
  105612:	48 89 e2             	mov    rdx,rsp
  105615:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
  105619:	48 83 c1 41          	add    rcx,0x41
  10561d:	48 83 e1 f0          	and    rcx,0xfffffffffffffff0
  105621:	48 89 e7             	mov    rdi,rsp
  105624:	48 29 cf             	sub    rdi,rcx
  105627:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
  10562b:	48 89 fc             	mov    rsp,rdi
  10562e:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  105632:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  105636:	8b 4d f4             	mov    ecx,DWORD PTR [rbp-0xc]
  105639:	48 8d 35 17 ae ff ff 	lea    rsi,[rip+0xffffffffffffae17]        # 100457 <_svfprintf_r.blanks-0x689>
  105640:	b0 00                	mov    al,0x0
  105642:	e8 a9 85 00 00       	call   10dbf0 <sprintf>
  105647:	48 8b 7d d8          	mov    rdi,QWORD PTR [rbp-0x28]
  10564b:	e8 00 fa ff ff       	call   105050 <Print>
  105650:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  105654:	48 89 c4             	mov    rsp,rax
  105657:	48 89 ec             	mov    rsp,rbp
  10565a:	5d                   	pop    rbp
  10565b:	c3                   	ret
  10565c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000105660 <_Z8uxdPrintPcj>:
  105660:	55                   	push   rbp
  105661:	48 89 e5             	mov    rbp,rsp
  105664:	48 83 ec 30          	sub    rsp,0x30
  105668:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  10566c:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi
  10566f:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
  105673:	e8 68 04 00 00       	call   105ae0 <strlen>
  105678:	48 89 c1             	mov    rcx,rax
  10567b:	48 89 c8             	mov    rax,rcx
  10567e:	48 83 c0 32          	add    rax,0x32
  105682:	48 89 e2             	mov    rdx,rsp
  105685:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
  105689:	48 83 c1 41          	add    rcx,0x41
  10568d:	48 83 e1 f0          	and    rcx,0xfffffffffffffff0
  105691:	48 89 e7             	mov    rdi,rsp
  105694:	48 29 cf             	sub    rdi,rcx
  105697:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
  10569b:	48 89 fc             	mov    rsp,rdi
  10569e:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  1056a2:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  1056a6:	8b 4d f4             	mov    ecx,DWORD PTR [rbp-0xc]
  1056a9:	48 8d 35 fc ac ff ff 	lea    rsi,[rip+0xffffffffffffacfc]        # 1003ac <_svfprintf_r.blanks-0x734>
  1056b0:	b0 00                	mov    al,0x0
  1056b2:	e8 39 85 00 00       	call   10dbf0 <sprintf>
  1056b7:	48 8b 7d d8          	mov    rdi,QWORD PTR [rbp-0x28]
  1056bb:	e8 90 f9 ff ff       	call   105050 <Print>
  1056c0:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  1056c4:	48 89 c4             	mov    rsp,rax
  1056c7:	48 89 ec             	mov    rsp,rbp
  1056ca:	5d                   	pop    rbp
  1056cb:	c3                   	ret
  1056cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000001056d0 <_Z15WriteMandelbroti>:
  1056d0:	55                   	push   rbp
  1056d1:	48 89 e5             	mov    rbp,rsp
  1056d4:	48 83 ec 20          	sub    rsp,0x20
  1056d8:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  1056db:	c6 45 fb 00          	mov    BYTE PTR [rbp-0x5],0x0
  1056df:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
  1056e6:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  1056e9:	48 8b 0d 40 1d 51 00 	mov    rcx,QWORD PTR [rip+0x511d40]        # 617430 <vinfo>
  1056f0:	3b 41 14             	cmp    eax,DWORD PTR [rcx+0x14]
  1056f3:	0f 83 96 00 00 00    	jae    10578f <_Z15WriteMandelbroti+0xbf>
  1056f9:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [rbp-0x10],0x0
  105700:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  105703:	48 8b 0d 26 1d 51 00 	mov    rcx,QWORD PTR [rip+0x511d26]        # 617430 <vinfo>
  10570a:	3b 41 10             	cmp    eax,DWORD PTR [rcx+0x10]
  10570d:	0f 83 69 00 00 00    	jae    10577c <_Z15WriteMandelbroti+0xac>
  105713:	8b 7d f0             	mov    edi,DWORD PTR [rbp-0x10]
  105716:	8b 75 f4             	mov    esi,DWORD PTR [rbp-0xc]
  105719:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
  10571c:	e8 0f 01 00 00       	call   105830 <_Z14CalcMandelbrotiii>
  105721:	88 45 fb             	mov    BYTE PTR [rbp-0x5],al
  105724:	48 8d 05 e5 a8 55 00 	lea    rax,[rip+0x55a8e5]        # 660010 <BB_WritePixel>
  10572b:	48 8b 00             	mov    rax,QWORD PTR [rax]
  10572e:	8a 4d fb             	mov    cl,BYTE PTR [rbp-0x5]
  105731:	c0 e1 02             	shl    cl,0x2
  105734:	88 4d e8             	mov    BYTE PTR [rbp-0x18],cl
  105737:	c6 45 e9 00          	mov    BYTE PTR [rbp-0x17],0x0
  10573b:	c6 45 ea 00          	mov    BYTE PTR [rbp-0x16],0x0
  10573f:	48 8b 0d ea 1c 51 00 	mov    rcx,QWORD PTR [rip+0x511cea]        # 617430 <vinfo>
  105746:	8b 71 10             	mov    esi,DWORD PTR [rcx+0x10]
  105749:	8b 4d f0             	mov    ecx,DWORD PTR [rbp-0x10]
  10574c:	29 ce                	sub    esi,ecx
  10574e:	8b 55 f4             	mov    edx,DWORD PTR [rbp-0xc]
  105751:	8a 4d ea             	mov    cl,BYTE PTR [rbp-0x16]
  105754:	88 4d e6             	mov    BYTE PTR [rbp-0x1a],cl
  105757:	66 8b 4d e8          	mov    cx,WORD PTR [rbp-0x18]
  10575b:	66 89 4d e4          	mov    WORD PTR [rbp-0x1c],cx
  10575f:	0f b6 4d e6          	movzx  ecx,BYTE PTR [rbp-0x1a]
  105763:	c1 e1 10             	shl    ecx,0x10
  105766:	0f b7 7d e4          	movzx  edi,WORD PTR [rbp-0x1c]
  10576a:	09 cf                	or     edi,ecx
  10576c:	ff d0                	call   rax
  10576e:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  105771:	83 c0 01             	add    eax,0x1
  105774:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
  105777:	e9 84 ff ff ff       	jmp    105700 <_Z15WriteMandelbroti+0x30>
  10577c:	e9 00 00 00 00       	jmp    105781 <_Z15WriteMandelbroti+0xb1>
  105781:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  105784:	83 c0 01             	add    eax,0x1
  105787:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
  10578a:	e9 57 ff ff ff       	jmp    1056e6 <_Z15WriteMandelbroti+0x16>
  10578f:	e8 ac f0 00 00       	call   114840 <_Z10SwapBufferv>
  105794:	48 83 c4 20          	add    rsp,0x20
  105798:	5d                   	pop    rbp
  105799:	c3                   	ret
  10579a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000001057a0 <_Z5clearv>:
  1057a0:	55                   	push   rbp
  1057a1:	48 89 e5             	mov    rbp,rsp
  1057a4:	48 83 ec 20          	sub    rsp,0x20
  1057a8:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
  1057af:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  1057b6:	48 8b 05 73 1c 51 00 	mov    rax,QWORD PTR [rip+0x511c73]        # 617430 <vinfo>
  1057bd:	8b 40 10             	mov    eax,DWORD PTR [rax+0x10]
  1057c0:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
  1057c3:	48 8b 05 66 1c 51 00 	mov    rax,QWORD PTR [rip+0x511c66]        # 617430 <vinfo>
  1057ca:	8b 40 14             	mov    eax,DWORD PTR [rax+0x14]
  1057cd:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
  1057d0:	c6 45 e8 00          	mov    BYTE PTR [rbp-0x18],0x0
  1057d4:	c6 45 e9 00          	mov    BYTE PTR [rbp-0x17],0x0
  1057d8:	c6 45 ea 00          	mov    BYTE PTR [rbp-0x16],0x0
  1057dc:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
  1057e0:	48 8b 75 f0          	mov    rsi,QWORD PTR [rbp-0x10]
  1057e4:	8a 45 ea             	mov    al,BYTE PTR [rbp-0x16]
  1057e7:	88 45 e6             	mov    BYTE PTR [rbp-0x1a],al
  1057ea:	66 8b 45 e8          	mov    ax,WORD PTR [rbp-0x18]
  1057ee:	66 89 45 e4          	mov    WORD PTR [rbp-0x1c],ax
  1057f2:	0f b6 45 e6          	movzx  eax,BYTE PTR [rbp-0x1a]
  1057f6:	c1 e0 10             	shl    eax,0x10
  1057f9:	0f b7 55 e4          	movzx  edx,WORD PTR [rbp-0x1c]
  1057fd:	09 c2                	or     edx,eax
  1057ff:	e8 6c f0 00 00       	call   114870 <_Z14BB_WriteSquare6VectorS_5Color>
  105804:	c7 05 32 1c 51 00 00 	mov    DWORD PTR [rip+0x511c32],0x0        # 617440 <line_queue_head>
  10580b:	00 00 00 
  10580e:	c7 05 2c 1c 51 00 00 	mov    DWORD PTR [rip+0x511c2c],0x0        # 617444 <line_queue_end>
  105815:	00 00 00 
  105818:	e8 23 f0 00 00       	call   114840 <_Z10SwapBufferv>
  10581d:	48 83 c4 20          	add    rsp,0x20
  105821:	5d                   	pop    rbp
  105822:	c3                   	ret
  105823:	cc                   	int3
  105824:	cc                   	int3
  105825:	cc                   	int3
  105826:	cc                   	int3
  105827:	cc                   	int3
  105828:	cc                   	int3
  105829:	cc                   	int3
  10582a:	cc                   	int3
  10582b:	cc                   	int3
  10582c:	cc                   	int3
  10582d:	cc                   	int3
  10582e:	cc                   	int3
  10582f:	cc                   	int3

0000000000105830 <_Z14CalcMandelbrotiii>:
  105830:	55                   	push   rbp
  105831:	48 89 e5             	mov    rbp,rsp
  105834:	48 83 ec 50          	sub    rsp,0x50
  105838:	89 7d f8             	mov    DWORD PTR [rbp-0x8],edi
  10583b:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi
  10583e:	89 55 f0             	mov    DWORD PTR [rbp-0x10],edx
  105841:	48 8b 05 e8 1b 51 00 	mov    rax,QWORD PTR [rip+0x511be8]        # 617430 <vinfo>
  105848:	8b 40 10             	mov    eax,DWORD PTR [rax+0x10]
  10584b:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
  10584e:	48 8b 05 db 1b 51 00 	mov    rax,QWORD PTR [rip+0x511bdb]        # 617430 <vinfo>
  105855:	8b 40 14             	mov    eax,DWORD PTR [rax+0x14]
  105858:	89 45 e8             	mov    DWORD PTR [rbp-0x18],eax
  10585b:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  10585e:	3b 45 e8             	cmp    eax,DWORD PTR [rbp-0x18]
  105861:	0f 8e 0b 00 00 00    	jle    105872 <_Z14CalcMandelbrotiii+0x42>
  105867:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
  10586a:	89 45 b4             	mov    DWORD PTR [rbp-0x4c],eax
  10586d:	e9 06 00 00 00       	jmp    105878 <_Z14CalcMandelbrotiii+0x48>
  105872:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  105875:	89 45 b4             	mov    DWORD PTR [rbp-0x4c],eax
  105878:	8b 45 b4             	mov    eax,DWORD PTR [rbp-0x4c]
  10587b:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
  10587e:	0f 57 c0             	xorps  xmm0,xmm0
  105881:	f2 0f 11 45 d0       	movsd  QWORD PTR [rbp-0x30],xmm0
  105886:	0f 57 c0             	xorps  xmm0,xmm0
  105889:	f2 0f 11 45 d8       	movsd  QWORD PTR [rbp-0x28],xmm0
  10588e:	f2 0f 2a 4d f8       	cvtsi2sd xmm1,DWORD PTR [rbp-0x8]
  105893:	f2 0f 2a 45 ec       	cvtsi2sd xmm0,DWORD PTR [rbp-0x14]
  105898:	f2 0f 10 15 c0 af ff 	movsd  xmm2,QWORD PTR [rip+0xffffffffffffafc0]        # 100860 <_svfprintf_r.blanks-0x280>
  10589f:	ff 
  1058a0:	f2 0f 5e c2          	divsd  xmm0,xmm2
  1058a4:	f2 0f 5c c8          	subsd  xmm1,xmm0
  1058a8:	f2 0f 2a 45 e4       	cvtsi2sd xmm0,DWORD PTR [rbp-0x1c]
  1058ad:	f2 0f 5e c8          	divsd  xmm1,xmm0
  1058b1:	f2 0f 10 05 c7 af ff 	movsd  xmm0,QWORD PTR [rip+0xffffffffffffafc7]        # 100880 <_svfprintf_r.blanks-0x260>
  1058b8:	ff 
  1058b9:	f2 0f 5e c8          	divsd  xmm1,xmm0
  1058bd:	f2 0f 10 05 93 af ff 	movsd  xmm0,QWORD PTR [rip+0xffffffffffffaf93]        # 100858 <_svfprintf_r.blanks-0x288>
  1058c4:	ff 
  1058c5:	f2 0f 58 c1          	addsd  xmm0,xmm1
  1058c9:	f2 0f 11 45 c0       	movsd  QWORD PTR [rbp-0x40],xmm0
  1058ce:	f2 0f 2a 4d f4       	cvtsi2sd xmm1,DWORD PTR [rbp-0xc]
  1058d3:	f2 0f 2a 45 e8       	cvtsi2sd xmm0,DWORD PTR [rbp-0x18]
  1058d8:	f2 0f 10 15 80 af ff 	movsd  xmm2,QWORD PTR [rip+0xffffffffffffaf80]        # 100860 <_svfprintf_r.blanks-0x280>
  1058df:	ff 
  1058e0:	f2 0f 5e c2          	divsd  xmm0,xmm2
  1058e4:	f2 0f 5c c8          	subsd  xmm1,xmm0
  1058e8:	f2 0f 2a 45 e4       	cvtsi2sd xmm0,DWORD PTR [rbp-0x1c]
  1058ed:	f2 0f 5e c8          	divsd  xmm1,xmm0
  1058f1:	f2 0f 10 05 87 af ff 	movsd  xmm0,QWORD PTR [rip+0xffffffffffffaf87]        # 100880 <_svfprintf_r.blanks-0x260>
  1058f8:	ff 
  1058f9:	f2 0f 5e c8          	divsd  xmm1,xmm0
  1058fd:	0f 57 c0             	xorps  xmm0,xmm0
  105900:	f2 0f 58 c1          	addsd  xmm0,xmm1
  105904:	f2 0f 11 45 b8       	movsd  QWORD PTR [rbp-0x48],xmm0
  105909:	c7 45 e0 00 00 00 00 	mov    DWORD PTR [rbp-0x20],0x0
  105910:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
  105913:	3b 45 f0             	cmp    eax,DWORD PTR [rbp-0x10]
  105916:	0f 8f b2 00 00 00    	jg     1059ce <_Z14CalcMandelbrotiii+0x19e>
  10591c:	f2 0f 10 45 d8       	movsd  xmm0,QWORD PTR [rbp-0x28]
  105921:	f2 0f 10 55 d8       	movsd  xmm2,QWORD PTR [rbp-0x28]
  105926:	f2 0f 10 4d d0       	movsd  xmm1,QWORD PTR [rbp-0x30]
  10592b:	f2 0f 59 4d d0       	mulsd  xmm1,QWORD PTR [rbp-0x30]
  105930:	f2 0f 59 c2          	mulsd  xmm0,xmm2
  105934:	f2 0f 58 c1          	addsd  xmm0,xmm1
  105938:	f2 0f 10 0d 28 af ff 	movsd  xmm1,QWORD PTR [rip+0xffffffffffffaf28]        # 100868 <_svfprintf_r.blanks-0x278>
  10593f:	ff 
  105940:	66 0f 2e c1          	ucomisd xmm0,xmm1
  105944:	0f 86 0b 00 00 00    	jbe    105955 <_Z14CalcMandelbrotiii+0x125>
  10594a:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
  10594d:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  105950:	e9 7f 00 00 00       	jmp    1059d4 <_Z14CalcMandelbrotiii+0x1a4>
  105955:	f2 0f 10 45 d8       	movsd  xmm0,QWORD PTR [rbp-0x28]
  10595a:	f2 0f 10 55 d8       	movsd  xmm2,QWORD PTR [rbp-0x28]
  10595f:	f2 0f 10 4d d0       	movsd  xmm1,QWORD PTR [rbp-0x30]
  105964:	f2 0f 59 4d d0       	mulsd  xmm1,QWORD PTR [rbp-0x30]
  105969:	66 48 0f 7e c8       	movq   rax,xmm1
  10596e:	48 b9 00 00 00 00 00 	movabs rcx,0x8000000000000000
  105975:	00 00 80 
  105978:	48 31 c8             	xor    rax,rcx
  10597b:	66 48 0f 6e c8       	movq   xmm1,rax
  105980:	f2 0f 59 c2          	mulsd  xmm0,xmm2
  105984:	f2 0f 58 c1          	addsd  xmm0,xmm1
  105988:	f2 0f 58 45 c0       	addsd  xmm0,QWORD PTR [rbp-0x40]
  10598d:	f2 0f 11 45 c8       	movsd  QWORD PTR [rbp-0x38],xmm0
  105992:	f2 0f 10 05 c6 ae ff 	movsd  xmm0,QWORD PTR [rip+0xffffffffffffaec6]        # 100860 <_svfprintf_r.blanks-0x280>
  105999:	ff 
  10599a:	f2 0f 59 45 d8       	mulsd  xmm0,QWORD PTR [rbp-0x28]
  10599f:	f2 0f 10 55 d0       	movsd  xmm2,QWORD PTR [rbp-0x30]
  1059a4:	f2 0f 10 4d b8       	movsd  xmm1,QWORD PTR [rbp-0x48]
  1059a9:	f2 0f 59 c2          	mulsd  xmm0,xmm2
  1059ad:	f2 0f 58 c1          	addsd  xmm0,xmm1
  1059b1:	f2 0f 11 45 d0       	movsd  QWORD PTR [rbp-0x30],xmm0
  1059b6:	f2 0f 10 45 c8       	movsd  xmm0,QWORD PTR [rbp-0x38]
  1059bb:	f2 0f 11 45 d8       	movsd  QWORD PTR [rbp-0x28],xmm0
  1059c0:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
  1059c3:	83 c0 01             	add    eax,0x1
  1059c6:	89 45 e0             	mov    DWORD PTR [rbp-0x20],eax
  1059c9:	e9 42 ff ff ff       	jmp    105910 <_Z14CalcMandelbrotiii+0xe0>
  1059ce:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
  1059d1:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  1059d4:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  1059d7:	48 83 c4 50          	add    rsp,0x50
  1059db:	5d                   	pop    rbp
  1059dc:	c3                   	ret
  1059dd:	cc                   	int3
  1059de:	cc                   	int3
  1059df:	cc                   	int3

00000000001059e0 <strcpy>:
  1059e0:	48 89 f8             	mov    rax,rdi
  1059e3:	89 f1                	mov    ecx,esi
  1059e5:	09 c1                	or     ecx,eax
  1059e7:	f6 c1 07             	test   cl,0x7
  1059ea:	75 29                	jne    105a15 <strcpy+0x35>
  1059ec:	49 b8 ff fe fe fe fe 	movabs r8,0xfefefefefefefeff
  1059f3:	fe fe fe 
  1059f6:	49 b9 80 80 80 80 80 	movabs r9,0x8080808080808080
  1059fd:	80 80 80 
  105a00:	48 8b 16             	mov    rdx,QWORD PTR [rsi]
  105a03:	48 89 d1             	mov    rcx,rdx
  105a06:	48 f7 d1             	not    rcx
  105a09:	4a 8d 3c 02          	lea    rdi,[rdx+r8*1]
  105a0d:	48 21 cf             	and    rdi,rcx
  105a10:	4c 85 cf             	test   rdi,r9
  105a13:	74 1a                	je     105a2f <strcpy+0x4f>
  105a15:	48 89 c7             	mov    rdi,rax
  105a18:	31 d2                	xor    edx,edx
  105a1a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  105a20:	0f b6 0c 16          	movzx  ecx,BYTE PTR [rsi+rdx*1]
  105a24:	88 0c 17             	mov    BYTE PTR [rdi+rdx*1],cl
  105a27:	48 ff c2             	inc    rdx
  105a2a:	84 c9                	test   cl,cl
  105a2c:	75 f2                	jne    105a20 <strcpy+0x40>
  105a2e:	c3                   	ret
  105a2f:	48 89 c7             	mov    rdi,rax
  105a32:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  105a39:	1f 84 00 00 00 00 00 
  105a40:	48 89 17             	mov    QWORD PTR [rdi],rdx
  105a43:	48 83 c7 08          	add    rdi,0x8
  105a47:	48 8b 56 08          	mov    rdx,QWORD PTR [rsi+0x8]
  105a4b:	48 83 c6 08          	add    rsi,0x8
  105a4f:	48 89 d1             	mov    rcx,rdx
  105a52:	48 f7 d1             	not    rcx
  105a55:	4e 8d 14 02          	lea    r10,[rdx+r8*1]
  105a59:	4c 21 c9             	and    rcx,r9
  105a5c:	4c 85 d1             	test   rcx,r10
  105a5f:	74 df                	je     105a40 <strcpy+0x60>
  105a61:	eb b5                	jmp    105a18 <strcpy+0x38>
  105a63:	cc                   	int3
  105a64:	cc                   	int3
  105a65:	cc                   	int3
  105a66:	cc                   	int3
  105a67:	cc                   	int3
  105a68:	cc                   	int3
  105a69:	cc                   	int3
  105a6a:	cc                   	int3
  105a6b:	cc                   	int3
  105a6c:	cc                   	int3
  105a6d:	cc                   	int3
  105a6e:	cc                   	int3
  105a6f:	cc                   	int3

0000000000105a70 <strcat>:
  105a70:	41 56                	push   r14
  105a72:	53                   	push   rbx
  105a73:	50                   	push   rax
  105a74:	49 89 fe             	mov    r14,rdi
  105a77:	41 f6 c6 07          	test   r14b,0x7
  105a7b:	75 3c                	jne    105ab9 <strcat+0x49>
  105a7d:	48 b8 80 80 80 80 80 	movabs rax,0x8080808080808080
  105a84:	80 80 80 
  105a87:	49 8d 7e f8          	lea    rdi,[r14-0x8]
  105a8b:	48 b9 ff fe fe fe fe 	movabs rcx,0xfefefefefefefeff
  105a92:	fe fe fe 
  105a95:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  105a9c:	00 00 00 00 
  105aa0:	48 8b 5f 08          	mov    rbx,QWORD PTR [rdi+0x8]
  105aa4:	48 83 c7 08          	add    rdi,0x8
  105aa8:	48 89 da             	mov    rdx,rbx
  105aab:	48 f7 d2             	not    rdx
  105aae:	48 21 c2             	and    rdx,rax
  105ab1:	48 01 cb             	add    rbx,rcx
  105ab4:	48 85 da             	test   rdx,rbx
  105ab7:	74 e7                	je     105aa0 <strcat+0x30>
  105ab9:	48 ff cf             	dec    rdi
  105abc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  105ac0:	80 7f 01 00          	cmp    BYTE PTR [rdi+0x1],0x0
  105ac4:	48 8d 7f 01          	lea    rdi,[rdi+0x1]
  105ac8:	75 f6                	jne    105ac0 <strcat+0x50>
  105aca:	e8 11 ff ff ff       	call   1059e0 <strcpy>
  105acf:	4c 89 f0             	mov    rax,r14
  105ad2:	48 83 c4 08          	add    rsp,0x8
  105ad6:	5b                   	pop    rbx
  105ad7:	41 5e                	pop    r14
  105ad9:	c3                   	ret
  105ada:	cc                   	int3
  105adb:	cc                   	int3
  105adc:	cc                   	int3
  105add:	cc                   	int3
  105ade:	cc                   	int3
  105adf:	cc                   	int3

0000000000105ae0 <strlen>:
  105ae0:	48 89 f8             	mov    rax,rdi
  105ae3:	40 f6 c7 07          	test   dil,0x7
  105ae7:	74 77                	je     105b60 <strlen+0x80>
  105ae9:	80 3f 00             	cmp    BYTE PTR [rdi],0x0
  105aec:	48 89 f8             	mov    rax,rdi
  105aef:	0f 84 b8 00 00 00    	je     105bad <strlen+0xcd>
  105af5:	48 8d 47 01          	lea    rax,[rdi+0x1]
  105af9:	a8 07                	test   al,0x7
  105afb:	74 63                	je     105b60 <strlen+0x80>
  105afd:	80 38 00             	cmp    BYTE PTR [rax],0x0
  105b00:	0f 84 a7 00 00 00    	je     105bad <strlen+0xcd>
  105b06:	48 8d 47 02          	lea    rax,[rdi+0x2]
  105b0a:	a8 07                	test   al,0x7
  105b0c:	74 52                	je     105b60 <strlen+0x80>
  105b0e:	80 38 00             	cmp    BYTE PTR [rax],0x0
  105b11:	0f 84 96 00 00 00    	je     105bad <strlen+0xcd>
  105b17:	48 8d 47 03          	lea    rax,[rdi+0x3]
  105b1b:	a8 07                	test   al,0x7
  105b1d:	74 41                	je     105b60 <strlen+0x80>
  105b1f:	80 38 00             	cmp    BYTE PTR [rax],0x0
  105b22:	0f 84 85 00 00 00    	je     105bad <strlen+0xcd>
  105b28:	48 8d 47 04          	lea    rax,[rdi+0x4]
  105b2c:	a8 07                	test   al,0x7
  105b2e:	74 30                	je     105b60 <strlen+0x80>
  105b30:	80 38 00             	cmp    BYTE PTR [rax],0x0
  105b33:	74 78                	je     105bad <strlen+0xcd>
  105b35:	48 8d 47 05          	lea    rax,[rdi+0x5]
  105b39:	a8 07                	test   al,0x7
  105b3b:	74 23                	je     105b60 <strlen+0x80>
  105b3d:	80 38 00             	cmp    BYTE PTR [rax],0x0
  105b40:	74 6b                	je     105bad <strlen+0xcd>
  105b42:	48 8d 47 06          	lea    rax,[rdi+0x6]
  105b46:	a8 07                	test   al,0x7
  105b48:	74 16                	je     105b60 <strlen+0x80>
  105b4a:	80 38 00             	cmp    BYTE PTR [rax],0x0
  105b4d:	74 5e                	je     105bad <strlen+0xcd>
  105b4f:	48 8d 47 07          	lea    rax,[rdi+0x7]
  105b53:	a8 07                	test   al,0x7
  105b55:	74 09                	je     105b60 <strlen+0x80>
  105b57:	80 38 00             	cmp    BYTE PTR [rax],0x0
  105b5a:	74 51                	je     105bad <strlen+0xcd>
  105b5c:	48 8d 47 08          	lea    rax,[rdi+0x8]
  105b60:	49 b8 80 80 80 80 80 	movabs r8,0x8080808080808080
  105b67:	80 80 80 
  105b6a:	48 83 c0 f7          	add    rax,0xfffffffffffffff7
  105b6e:	48 be ff fe fe fe fe 	movabs rsi,0xfefefefefefefeff
  105b75:	fe fe fe 
  105b78:	48 89 c1             	mov    rcx,rax
  105b7b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  105b80:	48 8b 51 09          	mov    rdx,QWORD PTR [rcx+0x9]
  105b84:	48 89 d0             	mov    rax,rdx
  105b87:	48 f7 d0             	not    rax
  105b8a:	4c 21 c0             	and    rax,r8
  105b8d:	48 01 f2             	add    rdx,rsi
  105b90:	48 83 c1 08          	add    rcx,0x8
  105b94:	48 85 d0             	test   rax,rdx
  105b97:	74 e7                	je     105b80 <strlen+0xa0>
  105b99:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  105ba0:	48 8d 41 01          	lea    rax,[rcx+0x1]
  105ba4:	80 79 01 00          	cmp    BYTE PTR [rcx+0x1],0x0
  105ba8:	48 89 c1             	mov    rcx,rax
  105bab:	75 f3                	jne    105ba0 <strlen+0xc0>
  105bad:	48 29 f8             	sub    rax,rdi
  105bb0:	c3                   	ret
  105bb1:	cc                   	int3
  105bb2:	cc                   	int3
  105bb3:	cc                   	int3
  105bb4:	cc                   	int3
  105bb5:	cc                   	int3
  105bb6:	cc                   	int3
  105bb7:	cc                   	int3
  105bb8:	cc                   	int3
  105bb9:	cc                   	int3
  105bba:	cc                   	int3
  105bbb:	cc                   	int3
  105bbc:	cc                   	int3
  105bbd:	cc                   	int3
  105bbe:	cc                   	int3
  105bbf:	cc                   	int3

0000000000105bc0 <vsprintf>:
  105bc0:	48 81 ec b8 00 00 00 	sub    rsp,0xb8
  105bc7:	48 89 d1             	mov    rcx,rdx
  105bca:	48 89 f2             	mov    rdx,rsi
  105bcd:	48 8d 05 c4 00 01 00 	lea    rax,[rip+0x100c4]        # 115c98 <_impure_ptr>
  105bd4:	48 8b 00             	mov    rax,QWORD PTR [rax]
  105bd7:	48 89 7c 24 08       	mov    QWORD PTR [rsp+0x8],rdi
  105bdc:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
  105be1:	48 be ff ff ff 7f 08 	movabs rsi,0xffff02087fffffff
  105be8:	02 ff ff 
  105beb:	48 89 74 24 14       	mov    QWORD PTR [rsp+0x14],rsi
  105bf0:	c7 44 24 28 ff ff ff 	mov    DWORD PTR [rsp+0x28],0x7fffffff
  105bf7:	7f 
  105bf8:	48 8d 74 24 08       	lea    rsi,[rsp+0x8]
  105bfd:	48 89 c7             	mov    rdi,rax
  105c00:	e8 6b 00 00 00       	call   105c70 <_svfprintf_r>
  105c05:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
  105c0a:	c6 01 00             	mov    BYTE PTR [rcx],0x0
  105c0d:	48 81 c4 b8 00 00 00 	add    rsp,0xb8
  105c14:	c3                   	ret
  105c15:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  105c1c:	00 00 00 00 

0000000000105c20 <_vsprintf_r>:
  105c20:	48 81 ec b8 00 00 00 	sub    rsp,0xb8
  105c27:	48 89 74 24 08       	mov    QWORD PTR [rsp+0x8],rsi
  105c2c:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
  105c31:	48 b8 ff ff ff 7f 08 	movabs rax,0xffff02087fffffff
  105c38:	02 ff ff 
  105c3b:	48 89 44 24 14       	mov    QWORD PTR [rsp+0x14],rax
  105c40:	c7 44 24 28 ff ff ff 	mov    DWORD PTR [rsp+0x28],0x7fffffff
  105c47:	7f 
  105c48:	48 8d 74 24 08       	lea    rsi,[rsp+0x8]
  105c4d:	e8 1e 00 00 00       	call   105c70 <_svfprintf_r>
  105c52:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
  105c57:	c6 01 00             	mov    BYTE PTR [rcx],0x0
  105c5a:	48 81 c4 b8 00 00 00 	add    rsp,0xb8
  105c61:	c3                   	ret
  105c62:	cc                   	int3
  105c63:	cc                   	int3
  105c64:	cc                   	int3
  105c65:	cc                   	int3
  105c66:	cc                   	int3
  105c67:	cc                   	int3
  105c68:	cc                   	int3
  105c69:	cc                   	int3
  105c6a:	cc                   	int3
  105c6b:	cc                   	int3
  105c6c:	cc                   	int3
  105c6d:	cc                   	int3
  105c6e:	cc                   	int3
  105c6f:	cc                   	int3

0000000000105c70 <_svfprintf_r>:
  105c70:	55                   	push   rbp
  105c71:	41 57                	push   r15
  105c73:	41 56                	push   r14
  105c75:	41 55                	push   r13
  105c77:	41 54                	push   r12
  105c79:	53                   	push   rbx
  105c7a:	48 81 ec a8 01 00 00 	sub    rsp,0x1a8
  105c81:	49 89 ce             	mov    r14,rcx
  105c84:	49 89 d4             	mov    r12,rdx
  105c87:	48 89 f3             	mov    rbx,rsi
  105c8a:	49 89 fd             	mov    r13,rdi
  105c8d:	e8 4e 21 00 00       	call   107de0 <_localeconv_r>
  105c92:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  105c95:	48 89 bc 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rdi
  105c9c:	00 
  105c9d:	e8 3e fe ff ff       	call   105ae0 <strlen>
  105ca2:	48 89 c5             	mov    rbp,rax
  105ca5:	f6 43 10 80          	test   BYTE PTR [rbx+0x10],0x80
  105ca9:	74 2b                	je     105cd6 <_svfprintf_r+0x66>
  105cab:	48 83 7b 18 00       	cmp    QWORD PTR [rbx+0x18],0x0
  105cb0:	75 24                	jne    105cd6 <_svfprintf_r+0x66>
  105cb2:	be 40 00 00 00       	mov    esi,0x40
  105cb7:	4c 89 ef             	mov    rdi,r13
  105cba:	e8 d1 23 00 00       	call   108090 <_malloc_r>
  105cbf:	48 89 03             	mov    QWORD PTR [rbx],rax
  105cc2:	48 89 43 18          	mov    QWORD PTR [rbx+0x18],rax
  105cc6:	48 85 c0             	test   rax,rax
  105cc9:	0f 84 d7 20 00 00    	je     107da6 <_svfprintf_r+0x2136>
  105ccf:	c7 43 20 40 00 00 00 	mov    DWORD PTR [rbx+0x20],0x40
  105cd6:	48 89 5c 24 28       	mov    QWORD PTR [rsp+0x28],rbx
  105cdb:	4c 8d bc 24 20 01 00 	lea    r15,[rsp+0x120]
  105ce2:	00 
  105ce3:	4c 89 7c 24 10       	mov    QWORD PTR [rsp+0x10],r15
  105ce8:	48 c7 44 24 20 00 00 	mov    QWORD PTR [rsp+0x20],0x0
  105cef:	00 00 
  105cf1:	c7 44 24 18 00 00 00 	mov    DWORD PTR [rsp+0x18],0x0
  105cf8:	00 
  105cf9:	4c 89 74 24 48       	mov    QWORD PTR [rsp+0x48],r14
  105cfe:	49 8d 46 08          	lea    rax,[r14+0x8]
  105d02:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  105d07:	48 89 e8             	mov    rax,rbp
  105d0a:	48 89 ac 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rbp
  105d11:	00 
  105d12:	8d 45 01             	lea    eax,[rbp+0x1]
  105d15:	89 84 24 c0 00 00 00 	mov    DWORD PTR [rsp+0xc0],eax
  105d1c:	66 0f 57 d2          	xorpd  xmm2,xmm2
  105d20:	31 c0                	xor    eax,eax
  105d22:	48 89 84 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rax
  105d29:	00 
  105d2a:	31 db                	xor    ebx,ebx
  105d2c:	31 c0                	xor    eax,eax
  105d2e:	48 89 84 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rax
  105d35:	00 
  105d36:	31 c0                	xor    eax,eax
  105d38:	48 89 84 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rax
  105d3f:	00 
  105d40:	4c 89 6c 24 38       	mov    QWORD PTR [rsp+0x38],r13
  105d45:	41 89 dd             	mov    r13d,ebx
  105d48:	4d 89 fe             	mov    r14,r15
  105d4b:	49 8d 6c 24 01       	lea    rbp,[r12+0x1]
  105d50:	31 db                	xor    ebx,ebx
  105d52:	31 c0                	xor    eax,eax
  105d54:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  105d5b:	00 00 00 00 00 
  105d60:	0f b6 4d ff          	movzx  ecx,BYTE PTR [rbp-0x1]
  105d64:	85 c9                	test   ecx,ecx
  105d66:	74 28                	je     105d90 <_svfprintf_r+0x120>
  105d68:	83 f9 25             	cmp    ecx,0x25
  105d6b:	74 23                	je     105d90 <_svfprintf_r+0x120>
  105d6d:	48 ff c5             	inc    rbp
  105d70:	48 b9 00 00 00 00 01 	movabs rcx,0x100000000
  105d77:	00 00 00 
  105d7a:	48 01 c8             	add    rax,rcx
  105d7d:	ff cb                	dec    ebx
  105d7f:	eb df                	jmp    105d60 <_svfprintf_r+0xf0>
  105d81:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  105d88:	0f 1f 84 00 00 00 00 
  105d8f:	00 
  105d90:	85 db                	test   ebx,ebx
  105d92:	74 67                	je     105dfb <_svfprintf_r+0x18b>
  105d94:	4d 89 26             	mov    QWORD PTR [r14],r12
  105d97:	48 c1 f8 20          	sar    rax,0x20
  105d9b:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  105d9f:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  105da4:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  105da8:	8d 48 01             	lea    ecx,[rax+0x1]
  105dab:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  105daf:	83 f8 07             	cmp    eax,0x7
  105db2:	7c 3c                	jl     105df0 <_svfprintf_r+0x180>
  105db4:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  105db9:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
  105dbe:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  105dc3:	66 0f 29 54 24 70    	movapd XMMWORD PTR [rsp+0x70],xmm2
  105dc9:	e8 d2 2f 00 00       	call   108da0 <__ssprint_r>
  105dce:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  105dd4:	4c 8d b4 24 20 01 00 	lea    r14,[rsp+0x120]
  105ddb:	00 
  105ddc:	85 c0                	test   eax,eax
  105dde:	74 14                	je     105df4 <_svfprintf_r+0x184>
  105de0:	e9 d0 1f 00 00       	jmp    107db5 <_svfprintf_r+0x2145>
  105de5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  105dec:	00 00 00 00 
  105df0:	49 83 c6 10          	add    r14,0x10
  105df4:	41 29 dd             	sub    r13d,ebx
  105df7:	0f b6 4d ff          	movzx  ecx,BYTE PTR [rbp-0x1]
  105dfb:	84 c9                	test   cl,cl
  105dfd:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  105e02:	0f 84 82 1f 00 00    	je     107d8a <_svfprintf_r+0x211a>
  105e08:	c6 44 24 0b 00       	mov    BYTE PTR [rsp+0xb],0x0
  105e0d:	41 bf ff ff ff ff    	mov    r15d,0xffffffff
  105e13:	31 c0                	xor    eax,eax
  105e15:	c7 44 24 04 00 00 00 	mov    DWORD PTR [rsp+0x4],0x0
  105e1c:	00 
  105e1d:	45 31 db             	xor    r11d,r11d
  105e20:	49 89 ec             	mov    r12,rbp
  105e23:	41 0f b6 0c 24       	movzx  ecx,BYTE PTR [r12]
  105e28:	49 ff c4             	inc    r12
  105e2b:	0f be e9             	movsx  ebp,cl
  105e2e:	4c 89 5c 24 30       	mov    QWORD PTR [rsp+0x30],r11
  105e33:	83 fd 78             	cmp    ebp,0x78
  105e36:	0f 87 89 05 00 00    	ja     1063c5 <_svfprintf_r+0x755>
  105e3c:	89 e9                	mov    ecx,ebp
  105e3e:	48 8d 15 ab aa ff ff 	lea    rdx,[rip+0xffffffffffffaaab]        # 1008f0 <_svfprintf_r.blanks-0x1f0>
  105e45:	48 63 0c 8a          	movsxd rcx,DWORD PTR [rdx+rcx*4]
  105e49:	48 01 d1             	add    rcx,rdx
  105e4c:	ff e1                	jmp    rcx
  105e4e:	41 0f be 2c 24       	movsx  ebp,BYTE PTR [r12]
  105e53:	49 ff c4             	inc    r12
  105e56:	83 fd 2a             	cmp    ebp,0x2a
  105e59:	0f 84 e2 00 00 00    	je     105f41 <_svfprintf_r+0x2d1>
  105e5f:	8d 55 d0             	lea    edx,[rbp-0x30]
  105e62:	31 c9                	xor    ecx,ecx
  105e64:	83 fa 09             	cmp    edx,0x9
  105e67:	77 1d                	ja     105e86 <_svfprintf_r+0x216>
  105e69:	31 c9                	xor    ecx,ecx
  105e6b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  105e70:	8d 0c 89             	lea    ecx,[rcx+rcx*4]
  105e73:	8d 0c 4a             	lea    ecx,[rdx+rcx*2]
  105e76:	41 0f be 2c 24       	movsx  ebp,BYTE PTR [r12]
  105e7b:	49 ff c4             	inc    r12
  105e7e:	8d 55 d0             	lea    edx,[rbp-0x30]
  105e81:	83 fa 0a             	cmp    edx,0xa
  105e84:	72 ea                	jb     105e70 <_svfprintf_r+0x200>
  105e86:	85 c9                	test   ecx,ecx
  105e88:	41 bf ff ff ff ff    	mov    r15d,0xffffffff
  105e8e:	44 0f 49 f9          	cmovns r15d,ecx
  105e92:	83 fd 78             	cmp    ebp,0x78
  105e95:	76 a5                	jbe    105e3c <_svfprintf_r+0x1cc>
  105e97:	e9 29 05 00 00       	jmp    1063c5 <_svfprintf_r+0x755>
  105e9c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  105ea0:	45 31 db             	xor    r11d,r11d
  105ea3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  105eaa:	84 00 00 00 00 00 
  105eb0:	43 8d 0c 9b          	lea    ecx,[r11+r11*4]
  105eb4:	44 8d 5c 4d d0       	lea    r11d,[rbp+rcx*2-0x30]
  105eb9:	41 0f b6 0c 24       	movzx  ecx,BYTE PTR [r12]
  105ebe:	49 ff c4             	inc    r12
  105ec1:	0f be e9             	movsx  ebp,cl
  105ec4:	8d 55 d0             	lea    edx,[rbp-0x30]
  105ec7:	83 fa 0a             	cmp    edx,0xa
  105eca:	72 e4                	jb     105eb0 <_svfprintf_r+0x240>
  105ecc:	e9 5a ff ff ff       	jmp    105e2b <_svfprintf_r+0x1bb>
  105ed1:	83 4c 24 04 10       	or     DWORD PTR [rsp+0x4],0x10
  105ed6:	e9 48 ff ff ff       	jmp    105e23 <_svfprintf_r+0x1b3>
  105edb:	84 c0                	test   al,al
  105edd:	0f 85 40 ff ff ff    	jne    105e23 <_svfprintf_r+0x1b3>
  105ee3:	c6 44 24 0b 20       	mov    BYTE PTR [rsp+0xb],0x20
  105ee8:	b0 20                	mov    al,0x20
  105eea:	e9 34 ff ff ff       	jmp    105e23 <_svfprintf_r+0x1b3>
  105eef:	83 4c 24 04 01       	or     DWORD PTR [rsp+0x4],0x1
  105ef4:	e9 2a ff ff ff       	jmp    105e23 <_svfprintf_r+0x1b3>
  105ef9:	48 8b 74 24 48       	mov    rsi,QWORD PTR [rsp+0x48]
  105efe:	8b 16                	mov    edx,DWORD PTR [rsi]
  105f00:	48 83 fa 28          	cmp    rdx,0x28
  105f04:	77 56                	ja     105f5c <_svfprintf_r+0x2ec>
  105f06:	48 89 d1             	mov    rcx,rdx
  105f09:	48 03 4e 10          	add    rcx,QWORD PTR [rsi+0x10]
  105f0d:	83 c2 08             	add    edx,0x8
  105f10:	89 16                	mov    DWORD PTR [rsi],edx
  105f12:	eb 57                	jmp    105f6b <_svfprintf_r+0x2fb>
  105f14:	c6 44 24 0b 2b       	mov    BYTE PTR [rsp+0xb],0x2b
  105f19:	b0 2b                	mov    al,0x2b
  105f1b:	e9 03 ff ff ff       	jmp    105e23 <_svfprintf_r+0x1b3>
  105f20:	81 4c 24 04 80 00 00 	or     DWORD PTR [rsp+0x4],0x80
  105f27:	00 
  105f28:	e9 f6 fe ff ff       	jmp    105e23 <_svfprintf_r+0x1b3>
  105f2d:	83 4c 24 04 08       	or     DWORD PTR [rsp+0x4],0x8
  105f32:	e9 ec fe ff ff       	jmp    105e23 <_svfprintf_r+0x1b3>
  105f37:	83 4c 24 04 40       	or     DWORD PTR [rsp+0x4],0x40
  105f3c:	e9 e2 fe ff ff       	jmp    105e23 <_svfprintf_r+0x1b3>
  105f41:	48 8b 74 24 48       	mov    rsi,QWORD PTR [rsp+0x48]
  105f46:	8b 16                	mov    edx,DWORD PTR [rsi]
  105f48:	48 83 fa 28          	cmp    rdx,0x28
  105f4c:	77 36                	ja     105f84 <_svfprintf_r+0x314>
  105f4e:	48 89 d1             	mov    rcx,rdx
  105f51:	48 03 4e 10          	add    rcx,QWORD PTR [rsi+0x10]
  105f55:	83 c2 08             	add    edx,0x8
  105f58:	89 16                	mov    DWORD PTR [rsi],edx
  105f5a:	eb 37                	jmp    105f93 <_svfprintf_r+0x323>
  105f5c:	48 8b 74 24 50       	mov    rsi,QWORD PTR [rsp+0x50]
  105f61:	48 8b 0e             	mov    rcx,QWORD PTR [rsi]
  105f64:	48 8d 51 08          	lea    rdx,[rcx+0x8]
  105f68:	48 89 16             	mov    QWORD PTR [rsi],rdx
  105f6b:	44 8b 19             	mov    r11d,DWORD PTR [rcx]
  105f6e:	45 85 db             	test   r11d,r11d
  105f71:	0f 89 ac fe ff ff    	jns    105e23 <_svfprintf_r+0x1b3>
  105f77:	41 f7 db             	neg    r11d
  105f7a:	83 4c 24 04 04       	or     DWORD PTR [rsp+0x4],0x4
  105f7f:	e9 9f fe ff ff       	jmp    105e23 <_svfprintf_r+0x1b3>
  105f84:	48 8b 74 24 50       	mov    rsi,QWORD PTR [rsp+0x50]
  105f89:	48 8b 0e             	mov    rcx,QWORD PTR [rsi]
  105f8c:	48 8d 51 08          	lea    rdx,[rcx+0x8]
  105f90:	48 89 16             	mov    QWORD PTR [rsi],rdx
  105f93:	8b 09                	mov    ecx,DWORD PTR [rcx]
  105f95:	85 c9                	test   ecx,ecx
  105f97:	41 bf ff ff ff ff    	mov    r15d,0xffffffff
  105f9d:	44 0f 49 f9          	cmovns r15d,ecx
  105fa1:	e9 7d fe ff ff       	jmp    105e23 <_svfprintf_r+0x1b3>
  105fa6:	8b 44 24 04          	mov    eax,DWORD PTR [rsp+0x4]
  105faa:	a8 10                	test   al,0x10
  105fac:	75 1f                	jne    105fcd <_svfprintf_r+0x35d>
  105fae:	a8 40                	test   al,0x40
  105fb0:	75 36                	jne    105fe8 <_svfprintf_r+0x378>
  105fb2:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  105fb7:	8b 0a                	mov    ecx,DWORD PTR [rdx]
  105fb9:	48 83 f9 28          	cmp    rcx,0x28
  105fbd:	77 61                	ja     106020 <_svfprintf_r+0x3b0>
  105fbf:	48 89 c8             	mov    rax,rcx
  105fc2:	48 03 42 10          	add    rax,QWORD PTR [rdx+0x10]
  105fc6:	83 c1 08             	add    ecx,0x8
  105fc9:	89 0a                	mov    DWORD PTR [rdx],ecx
  105fcb:	eb 62                	jmp    10602f <_svfprintf_r+0x3bf>
  105fcd:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  105fd2:	8b 0a                	mov    ecx,DWORD PTR [rdx]
  105fd4:	48 83 f9 28          	cmp    rcx,0x28
  105fd8:	77 29                	ja     106003 <_svfprintf_r+0x393>
  105fda:	48 89 c8             	mov    rax,rcx
  105fdd:	48 03 42 10          	add    rax,QWORD PTR [rdx+0x10]
  105fe1:	83 c1 08             	add    ecx,0x8
  105fe4:	89 0a                	mov    DWORD PTR [rdx],ecx
  105fe6:	eb 2a                	jmp    106012 <_svfprintf_r+0x3a2>
  105fe8:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  105fed:	8b 0a                	mov    ecx,DWORD PTR [rdx]
  105fef:	48 83 f9 28          	cmp    rcx,0x28
  105ff3:	77 45                	ja     10603a <_svfprintf_r+0x3ca>
  105ff5:	48 89 c8             	mov    rax,rcx
  105ff8:	48 03 42 10          	add    rax,QWORD PTR [rdx+0x10]
  105ffc:	83 c1 08             	add    ecx,0x8
  105fff:	89 0a                	mov    DWORD PTR [rdx],ecx
  106001:	eb 46                	jmp    106049 <_svfprintf_r+0x3d9>
  106003:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  106008:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  10600b:	48 8d 48 08          	lea    rcx,[rax+0x8]
  10600f:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  106012:	49 63 cd             	movsxd rcx,r13d
  106015:	48 8b 00             	mov    rax,QWORD PTR [rax]
  106018:	48 89 08             	mov    QWORD PTR [rax],rcx
  10601b:	e9 2b fd ff ff       	jmp    105d4b <_svfprintf_r+0xdb>
  106020:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  106025:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  106028:	48 8d 48 08          	lea    rcx,[rax+0x8]
  10602c:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  10602f:	48 8b 00             	mov    rax,QWORD PTR [rax]
  106032:	44 89 28             	mov    DWORD PTR [rax],r13d
  106035:	e9 11 fd ff ff       	jmp    105d4b <_svfprintf_r+0xdb>
  10603a:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  10603f:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  106042:	48 8d 48 08          	lea    rcx,[rax+0x8]
  106046:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  106049:	48 8b 00             	mov    rax,QWORD PTR [rax]
  10604c:	66 44 89 28          	mov    WORD PTR [rax],r13w
  106050:	e9 f6 fc ff ff       	jmp    105d4b <_svfprintf_r+0xdb>
  106055:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  10605c:	00 00 00 00 
  106060:	f6 44 24 04 08       	test   BYTE PTR [rsp+0x4],0x8
  106065:	75 20                	jne    106087 <_svfprintf_r+0x417>
  106067:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  10606c:	8b 4a 04             	mov    ecx,DWORD PTR [rdx+0x4]
  10606f:	48 81 f9 a0 00 00 00 	cmp    rcx,0xa0
  106076:	77 43                	ja     1060bb <_svfprintf_r+0x44b>
  106078:	48 89 c8             	mov    rax,rcx
  10607b:	48 03 42 10          	add    rax,QWORD PTR [rdx+0x10]
  10607f:	83 c1 10             	add    ecx,0x10
  106082:	89 4a 04             	mov    DWORD PTR [rdx+0x4],ecx
  106085:	eb 43                	jmp    1060ca <_svfprintf_r+0x45a>
  106087:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  10608c:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  10608f:	48 83 c0 0f          	add    rax,0xf
  106093:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
  106097:	48 8d 48 10          	lea    rcx,[rax+0x10]
  10609b:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  10609e:	db 28                	fld    TBYTE PTR [rax]
  1060a0:	dd 9c 24 10 01 00 00 	fstp   QWORD PTR [rsp+0x110]
  1060a7:	f2 0f 10 84 24 10 01 	movsd  xmm0,QWORD PTR [rsp+0x110]
  1060ae:	00 00 
  1060b0:	eb 1c                	jmp    1060ce <_svfprintf_r+0x45e>
  1060b2:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  1060b6:	e9 51 01 00 00       	jmp    10620c <_svfprintf_r+0x59c>
  1060bb:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  1060c0:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  1060c3:	48 8d 48 08          	lea    rcx,[rax+0x8]
  1060c7:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  1060ca:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  1060ce:	66 0f 29 44 24 70    	movapd XMMWORD PTR [rsp+0x70],xmm0
  1060d4:	e8 47 4d 00 00       	call   10ae20 <__fpclassifyd>
  1060d9:	83 f8 01             	cmp    eax,0x1
  1060dc:	44 89 6c 24 0c       	mov    DWORD PTR [rsp+0xc],r13d
  1060e1:	75 50                	jne    106133 <_svfprintf_r+0x4c3>
  1060e3:	66 0f 57 c0          	xorpd  xmm0,xmm0
  1060e7:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  1060ed:	66 0f 2e c2          	ucomisd xmm0,xmm2
  1060f1:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  1060f6:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  1060fa:	76 05                	jbe    106101 <_svfprintf_r+0x491>
  1060fc:	c6 44 24 0b 2d       	mov    BYTE PTR [rsp+0xb],0x2d
  106101:	83 fd 48             	cmp    ebp,0x48
  106104:	48 8d 05 e7 a6 ff ff 	lea    rax,[rip+0xffffffffffffa6e7]        # 1007f2 <_svfprintf_r.blanks-0x2ee>
  10610b:	4c 8d 2d 9f a2 ff ff 	lea    r13,[rip+0xffffffffffffa29f]        # 1003b1 <_svfprintf_r.blanks-0x72f>
  106112:	4c 0f 42 e8          	cmovb  r13,rax
  106116:	81 e1 7f ff ff ff    	and    ecx,0xffffff7f
  10611c:	ba 03 00 00 00       	mov    edx,0x3
  106121:	31 c0                	xor    eax,eax
  106123:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
  10612a:	00 
  10612b:	45 31 ff             	xor    r15d,r15d
  10612e:	e9 1d 0c 00 00       	jmp    106d50 <_svfprintf_r+0x10e0>
  106133:	66 0f 28 44 24 70    	movapd xmm0,XMMWORD PTR [rsp+0x70]
  106139:	e8 e2 4c 00 00       	call   10ae20 <__fpclassifyd>
  10613e:	85 c0                	test   eax,eax
  106140:	0f 84 0e 03 00 00    	je     106454 <_svfprintf_r+0x7e4>
  106146:	89 eb                	mov    ebx,ebp
  106148:	83 e3 df             	and    ebx,0xffffffdf
  10614b:	89 d8                	mov    eax,ebx
  10614d:	83 f0 47             	xor    eax,0x47
  106150:	44 09 f8             	or     eax,r15d
  106153:	b8 01 00 00 00       	mov    eax,0x1
  106158:	41 0f 45 c7          	cmovne eax,r15d
  10615c:	41 83 ff ff          	cmp    r15d,0xffffffff
  106160:	b9 06 00 00 00       	mov    ecx,0x6
  106165:	0f 45 c8             	cmovne ecx,eax
  106168:	66 0f 6f 4c 24 70    	movdqa xmm1,XMMWORD PTR [rsp+0x70]
  10616e:	66 48 0f 7e c8       	movq   rax,xmm1
  106173:	66 0f 6f c1          	movdqa xmm0,xmm1
  106177:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
  10617c:	48 85 c0             	test   rax,rax
  10617f:	79 0c                	jns    10618d <_svfprintf_r+0x51d>
  106181:	66 0f 6f 05 47 a7 ff 	movdqa xmm0,XMMWORD PTR [rip+0xffffffffffffa747]        # 1008d0 <_svfprintf_r.blanks-0x210>
  106188:	ff 
  106189:	66 0f ef c1          	pxor   xmm0,xmm1
  10618d:	31 f6                	xor    esi,esi
  10618f:	83 fb 46             	cmp    ebx,0x46
  106192:	40 0f 94 c6          	sete   sil
  106196:	31 d2                	xor    edx,edx
  106198:	83 fb 45             	cmp    ebx,0x45
  10619b:	0f 94 c2             	sete   dl
  10619e:	83 ce 02             	or     esi,0x2
  1061a1:	48 89 8c 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rcx
  1061a8:	00 
  1061a9:	01 ca                	add    edx,ecx
  1061ab:	48 8d 4c 24 44       	lea    rcx,[rsp+0x44]
  1061b0:	4c 8d 84 24 1c 01 00 	lea    r8,[rsp+0x11c]
  1061b7:	00 
  1061b8:	4c 8d 8c 24 98 00 00 	lea    r9,[rsp+0x98]
  1061bf:	00 
  1061c0:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  1061c5:	66 0f 7f 84 24 00 01 	movdqa XMMWORD PTR [rsp+0x100],xmm0
  1061cc:	00 00 
  1061ce:	41 89 d7             	mov    r15d,edx
  1061d1:	e8 aa 4c 00 00       	call   10ae80 <_dtoa_r>
  1061d6:	49 89 c5             	mov    r13,rax
  1061d9:	f6 44 24 04 01       	test   BYTE PTR [rsp+0x4],0x1
  1061de:	0f 85 b1 02 00 00    	jne    106495 <_svfprintf_r+0x825>
  1061e4:	83 fb 47             	cmp    ebx,0x47
  1061e7:	0f 85 a8 02 00 00    	jne    106495 <_svfprintf_r+0x825>
  1061ed:	4c 8b 94 24 98 00 00 	mov    r10,QWORD PTR [rsp+0x98]
  1061f4:	00 
  1061f5:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  1061fb:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  106200:	e9 18 08 00 00       	jmp    106a1d <_svfprintf_r+0xdad>
  106205:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  106209:	83 c9 10             	or     ecx,0x10
  10620c:	f6 c1 10             	test   cl,0x10
  10620f:	89 4c 24 04          	mov    DWORD PTR [rsp+0x4],ecx
  106213:	75 2f                	jne    106244 <_svfprintf_r+0x5d4>
  106215:	48 8b 44 24 48       	mov    rax,QWORD PTR [rsp+0x48]
  10621a:	8b 00                	mov    eax,DWORD PTR [rax]
  10621c:	f6 c1 40             	test   cl,0x40
  10621f:	0f 85 c2 02 00 00    	jne    1064e7 <_svfprintf_r+0x877>
  106225:	83 f8 28             	cmp    eax,0x28
  106228:	0f 87 88 04 00 00    	ja     1066b6 <_svfprintf_r+0xa46>
  10622e:	48 89 c1             	mov    rcx,rax
  106231:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  106236:	48 03 4a 10          	add    rcx,QWORD PTR [rdx+0x10]
  10623a:	83 c0 08             	add    eax,0x8
  10623d:	89 02                	mov    DWORD PTR [rdx],eax
  10623f:	e9 81 04 00 00       	jmp    1066c5 <_svfprintf_r+0xa55>
  106244:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  106249:	8b 02                	mov    eax,DWORD PTR [rdx]
  10624b:	48 83 f8 28          	cmp    rax,0x28
  10624f:	0f 87 b5 02 00 00    	ja     10650a <_svfprintf_r+0x89a>
  106255:	48 89 c1             	mov    rcx,rax
  106258:	48 03 4a 10          	add    rcx,QWORD PTR [rdx+0x10]
  10625c:	83 c0 08             	add    eax,0x8
  10625f:	89 02                	mov    DWORD PTR [rdx],eax
  106261:	48 8b 09             	mov    rcx,QWORD PTR [rcx]
  106264:	e9 74 04 00 00       	jmp    1066dd <_svfprintf_r+0xa6d>
  106269:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  10626d:	83 c9 10             	or     ecx,0x10
  106270:	eb 43                	jmp    1062b5 <_svfprintf_r+0x645>
  106272:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  106276:	83 c9 10             	or     ecx,0x10
  106279:	e9 c0 00 00 00       	jmp    10633e <_svfprintf_r+0x6ce>
  10627e:	48 8d 0d 5e a4 ff ff 	lea    rcx,[rip+0xffffffffffffa45e]        # 1006e3 <_svfprintf_r.blanks-0x3fd>
  106285:	e9 f7 00 00 00       	jmp    106381 <_svfprintf_r+0x711>
  10628a:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  10628f:	8b 0a                	mov    ecx,DWORD PTR [rdx]
  106291:	48 83 f9 28          	cmp    rcx,0x28
  106295:	44 89 6c 24 0c       	mov    DWORD PTR [rsp+0xc],r13d
  10629a:	0f 87 81 02 00 00    	ja     106521 <_svfprintf_r+0x8b1>
  1062a0:	48 89 c8             	mov    rax,rcx
  1062a3:	48 03 42 10          	add    rax,QWORD PTR [rdx+0x10]
  1062a7:	83 c1 08             	add    ecx,0x8
  1062aa:	89 0a                	mov    DWORD PTR [rdx],ecx
  1062ac:	e9 7f 02 00 00       	jmp    106530 <_svfprintf_r+0x8c0>
  1062b1:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  1062b5:	f6 c1 10             	test   cl,0x10
  1062b8:	89 4c 24 04          	mov    DWORD PTR [rsp+0x4],ecx
  1062bc:	0f 85 29 01 00 00    	jne    1063eb <_svfprintf_r+0x77b>
  1062c2:	48 8b 44 24 48       	mov    rax,QWORD PTR [rsp+0x48]
  1062c7:	8b 00                	mov    eax,DWORD PTR [rax]
  1062c9:	f6 c1 40             	test   cl,0x40
  1062cc:	0f 85 91 02 00 00    	jne    106563 <_svfprintf_r+0x8f3>
  1062d2:	83 f8 28             	cmp    eax,0x28
  1062d5:	0f 87 56 04 00 00    	ja     106731 <_svfprintf_r+0xac1>
  1062db:	48 89 c1             	mov    rcx,rax
  1062de:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  1062e3:	48 03 4a 10          	add    rcx,QWORD PTR [rdx+0x10]
  1062e7:	83 c0 08             	add    eax,0x8
  1062ea:	89 02                	mov    DWORD PTR [rdx],eax
  1062ec:	e9 4f 04 00 00       	jmp    106740 <_svfprintf_r+0xad0>
  1062f1:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  1062f6:	8b 0a                	mov    ecx,DWORD PTR [rdx]
  1062f8:	48 83 f9 28          	cmp    rcx,0x28
  1062fc:	0f 87 80 02 00 00    	ja     106582 <_svfprintf_r+0x912>
  106302:	48 89 c8             	mov    rax,rcx
  106305:	48 03 42 10          	add    rax,QWORD PTR [rdx+0x10]
  106309:	83 c1 08             	add    ecx,0x8
  10630c:	89 0a                	mov    DWORD PTR [rdx],ecx
  10630e:	e9 7e 02 00 00       	jmp    106591 <_svfprintf_r+0x921>
  106313:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  106318:	8b 0a                	mov    ecx,DWORD PTR [rdx]
  10631a:	48 83 f9 28          	cmp    rcx,0x28
  10631e:	44 89 6c 24 0c       	mov    DWORD PTR [rsp+0xc],r13d
  106323:	0f 87 92 02 00 00    	ja     1065bb <_svfprintf_r+0x94b>
  106329:	48 89 c8             	mov    rax,rcx
  10632c:	48 03 42 10          	add    rax,QWORD PTR [rdx+0x10]
  106330:	83 c1 08             	add    ecx,0x8
  106333:	89 0a                	mov    DWORD PTR [rdx],ecx
  106335:	e9 90 02 00 00       	jmp    1065ca <_svfprintf_r+0x95a>
  10633a:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  10633e:	f6 c1 10             	test   cl,0x10
  106341:	89 4c 24 04          	mov    DWORD PTR [rsp+0x4],ecx
  106345:	0f 85 c2 00 00 00    	jne    10640d <_svfprintf_r+0x79d>
  10634b:	48 8b 44 24 48       	mov    rax,QWORD PTR [rsp+0x48]
  106350:	8b 00                	mov    eax,DWORD PTR [rax]
  106352:	f6 c1 40             	test   cl,0x40
  106355:	0f 85 bb 02 00 00    	jne    106616 <_svfprintf_r+0x9a6>
  10635b:	83 f8 28             	cmp    eax,0x28
  10635e:	0f 87 e5 03 00 00    	ja     106749 <_svfprintf_r+0xad9>
  106364:	48 89 c1             	mov    rcx,rax
  106367:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  10636c:	48 03 4a 10          	add    rcx,QWORD PTR [rdx+0x10]
  106370:	83 c0 08             	add    eax,0x8
  106373:	89 02                	mov    DWORD PTR [rdx],eax
  106375:	e9 de 03 00 00       	jmp    106758 <_svfprintf_r+0xae8>
  10637a:	48 8d 0d cf 9f ff ff 	lea    rcx,[rip+0xffffffffffff9fcf]        # 100350 <_svfprintf_r.blanks-0x790>
  106381:	8b 54 24 04          	mov    edx,DWORD PTR [rsp+0x4]
  106385:	f6 c2 10             	test   dl,0x10
  106388:	48 89 8c 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rcx
  10638f:	00 
  106390:	0f 85 99 00 00 00    	jne    10642f <_svfprintf_r+0x7bf>
  106396:	48 8b 44 24 48       	mov    rax,QWORD PTR [rsp+0x48]
  10639b:	8b 00                	mov    eax,DWORD PTR [rax]
  10639d:	f6 c2 40             	test   dl,0x40
  1063a0:	0f 85 8f 02 00 00    	jne    106635 <_svfprintf_r+0x9c5>
  1063a6:	83 f8 28             	cmp    eax,0x28
  1063a9:	0f 87 af 03 00 00    	ja     10675e <_svfprintf_r+0xaee>
  1063af:	48 89 c1             	mov    rcx,rax
  1063b2:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  1063b7:	48 03 4a 10          	add    rcx,QWORD PTR [rdx+0x10]
  1063bb:	83 c0 08             	add    eax,0x8
  1063be:	89 02                	mov    DWORD PTR [rdx],eax
  1063c0:	e9 a8 03 00 00       	jmp    10676d <_svfprintf_r+0xafd>
  1063c5:	44 89 6c 24 0c       	mov    DWORD PTR [rsp+0xc],r13d
  1063ca:	40 88 ac 24 d0 00 00 	mov    BYTE PTR [rsp+0xd0],bpl
  1063d1:	00 
  1063d2:	c6 44 24 0b 00       	mov    BYTE PTR [rsp+0xb],0x0
  1063d7:	ba 01 00 00 00       	mov    edx,0x1
  1063dc:	31 c0                	xor    eax,eax
  1063de:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
  1063e5:	00 
  1063e6:	e9 68 01 00 00       	jmp    106553 <_svfprintf_r+0x8e3>
  1063eb:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  1063f0:	8b 0a                	mov    ecx,DWORD PTR [rdx]
  1063f2:	48 83 f9 28          	cmp    rcx,0x28
  1063f6:	0f 87 58 02 00 00    	ja     106654 <_svfprintf_r+0x9e4>
  1063fc:	48 89 c8             	mov    rax,rcx
  1063ff:	48 03 42 10          	add    rax,QWORD PTR [rdx+0x10]
  106403:	83 c1 08             	add    ecx,0x8
  106406:	89 0a                	mov    DWORD PTR [rdx],ecx
  106408:	e9 56 02 00 00       	jmp    106663 <_svfprintf_r+0x9f3>
  10640d:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  106412:	8b 0a                	mov    ecx,DWORD PTR [rdx]
  106414:	48 83 f9 28          	cmp    rcx,0x28
  106418:	0f 87 4f 02 00 00    	ja     10666d <_svfprintf_r+0x9fd>
  10641e:	48 89 c8             	mov    rax,rcx
  106421:	48 03 42 10          	add    rax,QWORD PTR [rdx+0x10]
  106425:	83 c1 08             	add    ecx,0x8
  106428:	89 0a                	mov    DWORD PTR [rdx],ecx
  10642a:	e9 4d 02 00 00       	jmp    10667c <_svfprintf_r+0xa0c>
  10642f:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  106434:	8b 02                	mov    eax,DWORD PTR [rdx]
  106436:	48 83 f8 28          	cmp    rax,0x28
  10643a:	0f 87 46 02 00 00    	ja     106686 <_svfprintf_r+0xa16>
  106440:	48 89 c1             	mov    rcx,rax
  106443:	48 03 4a 10          	add    rcx,QWORD PTR [rdx+0x10]
  106447:	83 c0 08             	add    eax,0x8
  10644a:	89 02                	mov    DWORD PTR [rdx],eax
  10644c:	48 8b 09             	mov    rcx,QWORD PTR [rcx]
  10644f:	e9 5b 03 00 00       	jmp    1067af <_svfprintf_r+0xb3f>
  106454:	83 fd 48             	cmp    ebp,0x48
  106457:	48 8d 05 78 a3 ff ff 	lea    rax,[rip+0xffffffffffffa378]        # 1007d6 <_svfprintf_r.blanks-0x30a>
  10645e:	4c 8d 2d e7 9e ff ff 	lea    r13,[rip+0xffffffffffff9ee7]        # 10034c <_svfprintf_r.blanks-0x794>
  106465:	4c 0f 42 e8          	cmovb  r13,rax
  106469:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  10646d:	81 e1 7f ff ff ff    	and    ecx,0xffffff7f
  106473:	ba 03 00 00 00       	mov    edx,0x3
  106478:	31 c0                	xor    eax,eax
  10647a:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
  106481:	00 
  106482:	45 31 ff             	xor    r15d,r15d
  106485:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  10648b:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  106490:	e9 bb 08 00 00       	jmp    106d50 <_svfprintf_r+0x10e0>
  106495:	49 63 cf             	movsxd rcx,r15d
  106498:	4c 89 e8             	mov    rax,r13
  10649b:	48 01 c8             	add    rax,rcx
  10649e:	83 fb 46             	cmp    ebx,0x46
  1064a1:	0f 85 f6 01 00 00    	jne    10669d <_svfprintf_r+0xa2d>
  1064a7:	66 0f ef c0          	pxor   xmm0,xmm0
  1064ab:	66 0f 28 8c 24 00 01 	movapd xmm1,XMMWORD PTR [rsp+0x100]
  1064b2:	00 00 
  1064b4:	66 0f 2e c8          	ucomisd xmm1,xmm0
  1064b8:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  1064be:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  1064c3:	75 06                	jne    1064cb <_svfprintf_r+0x85b>
  1064c5:	0f 8b 19 05 00 00    	jnp    1069e4 <_svfprintf_r+0xd74>
  1064cb:	41 80 7d 00 30       	cmp    BYTE PTR [r13+0x0],0x30
  1064d0:	0f 85 0e 05 00 00    	jne    1069e4 <_svfprintf_r+0xd74>
  1064d6:	b9 01 00 00 00       	mov    ecx,0x1
  1064db:	44 29 f9             	sub    ecx,r15d
  1064de:	89 4c 24 44          	mov    DWORD PTR [rsp+0x44],ecx
  1064e2:	e9 01 05 00 00       	jmp    1069e8 <_svfprintf_r+0xd78>
  1064e7:	83 f8 28             	cmp    eax,0x28
  1064ea:	0f 87 da 01 00 00    	ja     1066ca <_svfprintf_r+0xa5a>
  1064f0:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  1064f5:	48 8b 4a 10          	mov    rcx,QWORD PTR [rdx+0x10]
  1064f9:	48 01 c1             	add    rcx,rax
  1064fc:	83 c0 08             	add    eax,0x8
  1064ff:	89 02                	mov    DWORD PTR [rdx],eax
  106501:	48 0f bf 09          	movsx  rcx,WORD PTR [rcx]
  106505:	e9 d3 01 00 00       	jmp    1066dd <_svfprintf_r+0xa6d>
  10650a:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  10650f:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  106512:	48 8d 48 08          	lea    rcx,[rax+0x8]
  106516:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  106519:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  10651c:	e9 bc 01 00 00       	jmp    1066dd <_svfprintf_r+0xa6d>
  106521:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  106526:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  106529:	48 8d 48 08          	lea    rcx,[rax+0x8]
  10652d:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  106530:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  106533:	88 84 24 d0 00 00 00 	mov    BYTE PTR [rsp+0xd0],al
  10653a:	c6 44 24 0b 00       	mov    BYTE PTR [rsp+0xb],0x0
  10653f:	ba 01 00 00 00       	mov    edx,0x1
  106544:	31 c0                	xor    eax,eax
  106546:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
  10654d:	00 
  10654e:	bd 63 00 00 00       	mov    ebp,0x63
  106553:	4c 8d ac 24 d0 00 00 	lea    r13,[rsp+0xd0]
  10655a:	00 
  10655b:	45 31 ff             	xor    r15d,r15d
  10655e:	e9 78 04 00 00       	jmp    1069db <_svfprintf_r+0xd6b>
  106563:	83 f8 28             	cmp    eax,0x28
  106566:	0f 87 05 02 00 00    	ja     106771 <_svfprintf_r+0xb01>
  10656c:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  106571:	48 8b 4a 10          	mov    rcx,QWORD PTR [rdx+0x10]
  106575:	48 01 c1             	add    rcx,rax
  106578:	83 c0 08             	add    eax,0x8
  10657b:	89 02                	mov    DWORD PTR [rdx],eax
  10657d:	e9 fe 01 00 00       	jmp    106780 <_svfprintf_r+0xb10>
  106582:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  106587:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  10658a:	48 8d 48 08          	lea    rcx,[rax+0x8]
  10658e:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  106591:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  106594:	83 4c 24 04 02       	or     DWORD PTR [rsp+0x4],0x2
  106599:	66 c7 44 24 6e 30 78 	mov    WORD PTR [rsp+0x6e],0x7830
  1065a0:	48 8d 05 a9 9d ff ff 	lea    rax,[rip+0xffffffffffff9da9]        # 100350 <_svfprintf_r.blanks-0x790>
  1065a7:	48 89 84 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rax
  1065ae:	00 
  1065af:	b0 02                	mov    al,0x2
  1065b1:	bd 78 00 00 00       	mov    ebp,0x78
  1065b6:	e9 15 02 00 00       	jmp    1067d0 <_svfprintf_r+0xb60>
  1065bb:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  1065c0:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  1065c3:	48 8d 48 08          	lea    rcx,[rax+0x8]
  1065c7:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  1065ca:	4c 8b 28             	mov    r13,QWORD PTR [rax]
  1065cd:	c6 44 24 0b 00       	mov    BYTE PTR [rsp+0xb],0x0
  1065d2:	4d 85 ed             	test   r13,r13
  1065d5:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  1065d9:	0f 84 27 01 00 00    	je     106706 <_svfprintf_r+0xa96>
  1065df:	66 0f 29 54 24 70    	movapd XMMWORD PTR [rsp+0x70],xmm2
  1065e5:	45 85 ff             	test   r15d,r15d
  1065e8:	0f 88 c5 03 00 00    	js     1069b3 <_svfprintf_r+0xd43>
  1065ee:	44 89 fa             	mov    edx,r15d
  1065f1:	31 c0                	xor    eax,eax
  1065f3:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
  1065fa:	00 
  1065fb:	4c 89 ef             	mov    rdi,r13
  1065fe:	31 f6                	xor    esi,esi
  106600:	e8 9b 46 00 00       	call   10aca0 <memchr>
  106605:	89 c2                	mov    edx,eax
  106607:	44 29 ea             	sub    edx,r13d
  10660a:	48 85 c0             	test   rax,rax
  10660d:	41 0f 44 d7          	cmove  edx,r15d
  106611:	e9 b2 03 00 00       	jmp    1069c8 <_svfprintf_r+0xd58>
  106616:	83 f8 28             	cmp    eax,0x28
  106619:	0f 87 68 01 00 00    	ja     106787 <_svfprintf_r+0xb17>
  10661f:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  106624:	48 8b 4a 10          	mov    rcx,QWORD PTR [rdx+0x10]
  106628:	48 01 c1             	add    rcx,rax
  10662b:	83 c0 08             	add    eax,0x8
  10662e:	89 02                	mov    DWORD PTR [rdx],eax
  106630:	e9 61 01 00 00       	jmp    106796 <_svfprintf_r+0xb26>
  106635:	83 f8 28             	cmp    eax,0x28
  106638:	0f 87 5f 01 00 00    	ja     10679d <_svfprintf_r+0xb2d>
  10663e:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  106643:	48 8b 4a 10          	mov    rcx,QWORD PTR [rdx+0x10]
  106647:	48 01 c1             	add    rcx,rax
  10664a:	83 c0 08             	add    eax,0x8
  10664d:	89 02                	mov    DWORD PTR [rdx],eax
  10664f:	e9 58 01 00 00       	jmp    1067ac <_svfprintf_r+0xb3c>
  106654:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  106659:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  10665c:	48 8d 48 08          	lea    rcx,[rax+0x8]
  106660:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  106663:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  106666:	31 c0                	xor    eax,eax
  106668:	e9 63 01 00 00       	jmp    1067d0 <_svfprintf_r+0xb60>
  10666d:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  106672:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  106675:	48 8d 48 08          	lea    rcx,[rax+0x8]
  106679:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  10667c:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  10667f:	b0 01                	mov    al,0x1
  106681:	e9 4a 01 00 00       	jmp    1067d0 <_svfprintf_r+0xb60>
  106686:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  10668b:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  10668e:	48 8d 48 08          	lea    rcx,[rax+0x8]
  106692:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  106695:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  106698:	e9 12 01 00 00       	jmp    1067af <_svfprintf_r+0xb3f>
  10669d:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  1066a3:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  1066a8:	66 0f 28 8c 24 00 01 	movapd xmm1,XMMWORD PTR [rsp+0x100]
  1066af:	00 00 
  1066b1:	e9 38 03 00 00       	jmp    1069ee <_svfprintf_r+0xd7e>
  1066b6:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  1066bb:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  1066be:	48 8d 41 08          	lea    rax,[rcx+0x8]
  1066c2:	48 89 02             	mov    QWORD PTR [rdx],rax
  1066c5:	48 63 09             	movsxd rcx,DWORD PTR [rcx]
  1066c8:	eb 13                	jmp    1066dd <_svfprintf_r+0xa6d>
  1066ca:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  1066cf:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  1066d2:	48 8d 48 08          	lea    rcx,[rax+0x8]
  1066d6:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  1066d9:	48 0f bf 08          	movsx  rcx,WORD PTR [rax]
  1066dd:	b0 01                	mov    al,0x1
  1066df:	48 85 c9             	test   rcx,rcx
  1066e2:	0f 89 ed 00 00 00    	jns    1067d5 <_svfprintf_r+0xb65>
  1066e8:	48 f7 d9             	neg    rcx
  1066eb:	c6 44 24 0b 2d       	mov    BYTE PTR [rsp+0xb],0x2d
  1066f0:	8b 5c 24 04          	mov    ebx,DWORD PTR [rsp+0x4]
  1066f4:	89 d8                	mov    eax,ebx
  1066f6:	25 7f ff ff ff       	and    eax,0xffffff7f
  1066fb:	45 85 ff             	test   r15d,r15d
  1066fe:	0f 49 d8             	cmovns ebx,eax
  106701:	e9 7f 01 00 00       	jmp    106885 <_svfprintf_r+0xc15>
  106706:	41 83 ff 06          	cmp    r15d,0x6
  10670a:	ba 06 00 00 00       	mov    edx,0x6
  10670f:	41 0f 42 d7          	cmovb  edx,r15d
  106713:	31 c0                	xor    eax,eax
  106715:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
  10671c:	00 
  10671d:	bd 73 00 00 00       	mov    ebp,0x73
  106722:	4c 8d 2d 75 9a ff ff 	lea    r13,[rip+0xffffffffffff9a75]        # 10019e <_svfprintf_r.blanks-0x942>
  106729:	45 31 ff             	xor    r15d,r15d
  10672c:	e9 1f 06 00 00       	jmp    106d50 <_svfprintf_r+0x10e0>
  106731:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  106736:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  106739:	48 8d 41 08          	lea    rax,[rcx+0x8]
  10673d:	48 89 02             	mov    QWORD PTR [rdx],rax
  106740:	8b 09                	mov    ecx,DWORD PTR [rcx]
  106742:	31 c0                	xor    eax,eax
  106744:	e9 87 00 00 00       	jmp    1067d0 <_svfprintf_r+0xb60>
  106749:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  10674e:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  106751:	48 8d 41 08          	lea    rax,[rcx+0x8]
  106755:	48 89 02             	mov    QWORD PTR [rdx],rax
  106758:	8b 09                	mov    ecx,DWORD PTR [rcx]
  10675a:	b0 01                	mov    al,0x1
  10675c:	eb 72                	jmp    1067d0 <_svfprintf_r+0xb60>
  10675e:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  106763:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  106766:	48 8d 41 08          	lea    rax,[rcx+0x8]
  10676a:	48 89 02             	mov    QWORD PTR [rdx],rax
  10676d:	8b 09                	mov    ecx,DWORD PTR [rcx]
  10676f:	eb 3e                	jmp    1067af <_svfprintf_r+0xb3f>
  106771:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  106776:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  106779:	48 8d 41 08          	lea    rax,[rcx+0x8]
  10677d:	48 89 02             	mov    QWORD PTR [rdx],rax
  106780:	0f b7 09             	movzx  ecx,WORD PTR [rcx]
  106783:	31 c0                	xor    eax,eax
  106785:	eb 49                	jmp    1067d0 <_svfprintf_r+0xb60>
  106787:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  10678c:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  10678f:	48 8d 41 08          	lea    rax,[rcx+0x8]
  106793:	48 89 02             	mov    QWORD PTR [rdx],rax
  106796:	0f b7 09             	movzx  ecx,WORD PTR [rcx]
  106799:	b0 01                	mov    al,0x1
  10679b:	eb 33                	jmp    1067d0 <_svfprintf_r+0xb60>
  10679d:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  1067a2:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  1067a5:	48 8d 41 08          	lea    rax,[rcx+0x8]
  1067a9:	48 89 02             	mov    QWORD PTR [rdx],rax
  1067ac:	0f b7 09             	movzx  ecx,WORD PTR [rcx]
  1067af:	b0 02                	mov    al,0x2
  1067b1:	f6 44 24 04 01       	test   BYTE PTR [rsp+0x4],0x1
  1067b6:	74 18                	je     1067d0 <_svfprintf_r+0xb60>
  1067b8:	48 85 c9             	test   rcx,rcx
  1067bb:	74 13                	je     1067d0 <_svfprintf_r+0xb60>
  1067bd:	c6 44 24 6e 30       	mov    BYTE PTR [rsp+0x6e],0x30
  1067c2:	40 88 6c 24 6f       	mov    BYTE PTR [rsp+0x6f],bpl
  1067c7:	83 4c 24 04 02       	or     DWORD PTR [rsp+0x4],0x2
  1067cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  1067d0:	c6 44 24 0b 00       	mov    BYTE PTR [rsp+0xb],0x0
  1067d5:	8b 5c 24 04          	mov    ebx,DWORD PTR [rsp+0x4]
  1067d9:	89 da                	mov    edx,ebx
  1067db:	81 e3 7f ff ff ff    	and    ebx,0xffffff7f
  1067e1:	45 85 ff             	test   r15d,r15d
  1067e4:	0f 48 da             	cmovs  ebx,edx
  1067e7:	48 85 c9             	test   rcx,rcx
  1067ea:	75 44                	jne    106830 <_svfprintf_r+0xbc0>
  1067ec:	45 85 ff             	test   r15d,r15d
  1067ef:	75 3f                	jne    106830 <_svfprintf_r+0xbc0>
  1067f1:	45 31 ff             	xor    r15d,r15d
  1067f4:	84 c0                	test   al,al
  1067f6:	44 89 6c 24 0c       	mov    DWORD PTR [rsp+0xc],r13d
  1067fb:	0f 85 e6 00 00 00    	jne    1068e7 <_svfprintf_r+0xc77>
  106801:	89 d9                	mov    ecx,ebx
  106803:	89 d8                	mov    eax,ebx
  106805:	83 e0 01             	and    eax,0x1
  106808:	0f 84 e6 00 00 00    	je     1068f4 <_svfprintf_r+0xc84>
  10680e:	c6 84 24 f7 00 00 00 	mov    BYTE PTR [rsp+0xf7],0x30
  106815:	30 
  106816:	4c 8d ac 24 f7 00 00 	lea    r13,[rsp+0xf7]
  10681d:	00 
  10681e:	e9 6f 01 00 00       	jmp    106992 <_svfprintf_r+0xd22>
  106823:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10682a:	84 00 00 00 00 00 
  106830:	84 c0                	test   al,al
  106832:	0f 84 c9 00 00 00    	je     106901 <_svfprintf_r+0xc91>
  106838:	0f b6 c0             	movzx  eax,al
  10683b:	83 f8 01             	cmp    eax,0x1
  10683e:	74 45                	je     106885 <_svfprintf_r+0xc15>
  106840:	44 89 6c 24 0c       	mov    DWORD PTR [rsp+0xc],r13d
  106845:	4c 8d ac 24 f8 00 00 	lea    r13,[rsp+0xf8]
  10684c:	00 
  10684d:	83 f8 02             	cmp    eax,0x2
  106850:	48 8b 94 24 b8 00 00 	mov    rdx,QWORD PTR [rsp+0xb8]
  106857:	00 
  106858:	0f 85 f0 00 00 00    	jne    10694e <_svfprintf_r+0xcde>
  10685e:	66 90                	xchg   ax,ax
  106860:	89 c8                	mov    eax,ecx
  106862:	83 e0 0f             	and    eax,0xf
  106865:	0f b6 04 02          	movzx  eax,BYTE PTR [rdx+rax*1]
  106869:	41 88 45 ff          	mov    BYTE PTR [r13-0x1],al
  10686d:	49 ff cd             	dec    r13
  106870:	48 89 c8             	mov    rax,rcx
  106873:	48 c1 e8 04          	shr    rax,0x4
  106877:	48 83 f9 10          	cmp    rcx,0x10
  10687b:	48 89 c1             	mov    rcx,rax
  10687e:	73 e0                	jae    106860 <_svfprintf_r+0xbf0>
  106880:	e9 0b 01 00 00       	jmp    106990 <_svfprintf_r+0xd20>
  106885:	44 89 6c 24 0c       	mov    DWORD PTR [rsp+0xc],r13d
  10688a:	48 83 f9 0a          	cmp    rcx,0xa
  10688e:	73 17                	jae    1068a7 <_svfprintf_r+0xc37>
  106890:	80 c1 30             	add    cl,0x30
  106893:	88 8c 24 f7 00 00 00 	mov    BYTE PTR [rsp+0xf7],cl
  10689a:	4c 8d ac 24 f7 00 00 	lea    r13,[rsp+0xf7]
  1068a1:	00 
  1068a2:	e9 e9 00 00 00       	jmp    106990 <_svfprintf_r+0xd20>
  1068a7:	4c 8d ac 24 f8 00 00 	lea    r13,[rsp+0xf8]
  1068ae:	00 
  1068af:	90                   	nop
  1068b0:	48 ba cd cc cc cc cc 	movabs rdx,0xcccccccccccccccd
  1068b7:	cc cc cc 
  1068ba:	48 89 c8             	mov    rax,rcx
  1068bd:	48 f7 e2             	mul    rdx
  1068c0:	48 c1 ea 03          	shr    rdx,0x3
  1068c4:	8d 04 12             	lea    eax,[rdx+rdx*1]
  1068c7:	8d 04 80             	lea    eax,[rax+rax*4]
  1068ca:	89 ce                	mov    esi,ecx
  1068cc:	29 c6                	sub    esi,eax
  1068ce:	40 80 ce 30          	or     sil,0x30
  1068d2:	41 88 75 ff          	mov    BYTE PTR [r13-0x1],sil
  1068d6:	49 ff cd             	dec    r13
  1068d9:	48 83 f9 0a          	cmp    rcx,0xa
  1068dd:	48 89 d1             	mov    rcx,rdx
  1068e0:	73 ce                	jae    1068b0 <_svfprintf_r+0xc40>
  1068e2:	e9 a9 00 00 00       	jmp    106990 <_svfprintf_r+0xd20>
  1068e7:	4c 8d ac 24 f8 00 00 	lea    r13,[rsp+0xf8]
  1068ee:	00 
  1068ef:	e9 9c 00 00 00       	jmp    106990 <_svfprintf_r+0xd20>
  1068f4:	4c 8d ac 24 f8 00 00 	lea    r13,[rsp+0xf8]
  1068fb:	00 
  1068fc:	e9 91 00 00 00       	jmp    106992 <_svfprintf_r+0xd22>
  106901:	44 89 6c 24 0c       	mov    DWORD PTR [rsp+0xc],r13d
  106906:	4c 8d ac 24 f7 00 00 	lea    r13,[rsp+0xf7]
  10690d:	00 
  10690e:	48 89 ca             	mov    rdx,rcx
  106911:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  106918:	0f 1f 84 00 00 00 00 
  10691f:	00 
  106920:	89 c8                	mov    eax,ecx
  106922:	24 07                	and    al,0x7
  106924:	0c 30                	or     al,0x30
  106926:	41 88 45 00          	mov    BYTE PTR [r13+0x0],al
  10692a:	48 c1 ea 03          	shr    rdx,0x3
  10692e:	49 ff cd             	dec    r13
  106931:	48 83 f9 07          	cmp    rcx,0x7
  106935:	48 89 d1             	mov    rcx,rdx
  106938:	77 e6                	ja     106920 <_svfprintf_r+0xcb0>
  10693a:	49 8d 4d 01          	lea    rcx,[r13+0x1]
  10693e:	f6 c3 01             	test   bl,0x1
  106941:	74 44                	je     106987 <_svfprintf_r+0xd17>
  106943:	3c 30                	cmp    al,0x30
  106945:	74 40                	je     106987 <_svfprintf_r+0xd17>
  106947:	41 c6 45 00 30       	mov    BYTE PTR [r13+0x0],0x30
  10694c:	eb 42                	jmp    106990 <_svfprintf_r+0xd20>
  10694e:	4c 8d 2d 20 9c ff ff 	lea    r13,[rip+0xffffffffffff9c20]        # 100575 <_svfprintf_r.blanks-0x56b>
  106955:	4c 89 ef             	mov    rdi,r13
  106958:	66 0f 29 54 24 70    	movapd XMMWORD PTR [rsp+0x70],xmm2
  10695e:	e8 7d f1 ff ff       	call   105ae0 <strlen>
  106963:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  106968:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  10696e:	48 89 c2             	mov    rdx,rax
  106971:	31 c0                	xor    eax,eax
  106973:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
  10697a:	00 
  10697b:	89 d9                	mov    ecx,ebx
  10697d:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  106982:	e9 c9 03 00 00       	jmp    106d50 <_svfprintf_r+0x10e0>
  106987:	49 89 cd             	mov    r13,rcx
  10698a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  106990:	89 d9                	mov    ecx,ebx
  106992:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  106997:	48 8d 84 24 f8 00 00 	lea    rax,[rsp+0xf8]
  10699e:	00 
  10699f:	89 c2                	mov    edx,eax
  1069a1:	44 29 ea             	sub    edx,r13d
  1069a4:	31 c0                	xor    eax,eax
  1069a6:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
  1069ad:	00 
  1069ae:	e9 9d 03 00 00       	jmp    106d50 <_svfprintf_r+0x10e0>
  1069b3:	4c 89 ef             	mov    rdi,r13
  1069b6:	e8 25 f1 ff ff       	call   105ae0 <strlen>
  1069bb:	48 89 c2             	mov    rdx,rax
  1069be:	31 c0                	xor    eax,eax
  1069c0:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
  1069c7:	00 
  1069c8:	bd 73 00 00 00       	mov    ebp,0x73
  1069cd:	45 31 ff             	xor    r15d,r15d
  1069d0:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  1069d6:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  1069db:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  1069df:	e9 6c 03 00 00       	jmp    106d50 <_svfprintf_r+0x10e0>
  1069e4:	8b 4c 24 44          	mov    ecx,DWORD PTR [rsp+0x44]
  1069e8:	48 63 c9             	movsxd rcx,ecx
  1069eb:	48 01 c8             	add    rax,rcx
  1069ee:	66 0f 57 c0          	xorpd  xmm0,xmm0
  1069f2:	66 0f 2e c8          	ucomisd xmm1,xmm0
  1069f6:	75 18                	jne    106a10 <_svfprintf_r+0xda0>
  1069f8:	7a 16                	jp     106a10 <_svfprintf_r+0xda0>
  1069fa:	49 89 c2             	mov    r10,rax
  1069fd:	eb 1e                	jmp    106a1d <_svfprintf_r+0xdad>
  1069ff:	90                   	nop
  106a00:	49 8d 4a 01          	lea    rcx,[r10+0x1]
  106a04:	48 89 8c 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rcx
  106a0b:	00 
  106a0c:	41 c6 02 30          	mov    BYTE PTR [r10],0x30
  106a10:	4c 8b 94 24 98 00 00 	mov    r10,QWORD PTR [rsp+0x98]
  106a17:	00 
  106a18:	49 39 c2             	cmp    r10,rax
  106a1b:	72 e3                	jb     106a00 <_svfprintf_r+0xd90>
  106a1d:	45 29 ea             	sub    r10d,r13d
  106a20:	83 fb 47             	cmp    ebx,0x47
  106a23:	4c 89 94 24 90 00 00 	mov    QWORD PTR [rsp+0x90],r10
  106a2a:	00 
  106a2b:	75 29                	jne    106a56 <_svfprintf_r+0xde6>
  106a2d:	8b 54 24 44          	mov    edx,DWORD PTR [rsp+0x44]
  106a31:	83 c5 fe             	add    ebp,0xfffffffe
  106a34:	83 fa fd             	cmp    edx,0xfffffffd
  106a37:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  106a3c:	4c 8b bc 24 a8 00 00 	mov    r15,QWORD PTR [rsp+0xa8]
  106a43:	00 
  106a44:	7c 22                	jl     106a68 <_svfprintf_r+0xdf8>
  106a46:	b8 67 00 00 00       	mov    eax,0x67
  106a4b:	44 39 fa             	cmp    edx,r15d
  106a4e:	0f 8e 23 01 00 00    	jle    106b77 <_svfprintf_r+0xf07>
  106a54:	eb 12                	jmp    106a68 <_svfprintf_r+0xdf8>
  106a56:	83 fd 65             	cmp    ebp,0x65
  106a59:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  106a5e:	0f 8f b8 00 00 00    	jg     106b1c <_svfprintf_r+0xeac>
  106a64:	8b 54 24 44          	mov    edx,DWORD PTR [rsp+0x44]
  106a68:	8d 42 ff             	lea    eax,[rdx-0x1]
  106a6b:	89 44 24 44          	mov    DWORD PTR [rsp+0x44],eax
  106a6f:	40 88 6c 24 67       	mov    BYTE PTR [rsp+0x67],bpl
  106a74:	85 d2                	test   edx,edx
  106a76:	0f 9e c1             	setle  cl
  106a79:	00 c9                	add    cl,cl
  106a7b:	80 c1 2b             	add    cl,0x2b
  106a7e:	89 c2                	mov    edx,eax
  106a80:	f7 da                	neg    edx
  106a82:	0f 48 d0             	cmovs  edx,eax
  106a85:	88 4c 24 68          	mov    BYTE PTR [rsp+0x68],cl
  106a89:	83 fa 0a             	cmp    edx,0xa
  106a8c:	0f 82 cd 00 00 00    	jb     106b5f <_svfprintf_r+0xeef>
  106a92:	b9 01 00 00 00       	mov    ecx,0x1
  106a97:	31 c0                	xor    eax,eax
  106a99:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  106aa0:	48 89 c7             	mov    rdi,rax
  106aa3:	48 63 f2             	movsxd rsi,edx
  106aa6:	48 69 d6 67 66 66 66 	imul   rdx,rsi,0x66666667
  106aad:	48 89 d0             	mov    rax,rdx
  106ab0:	48 c1 e8 3f          	shr    rax,0x3f
  106ab4:	48 c1 fa 22          	sar    rdx,0x22
  106ab8:	01 c2                	add    edx,eax
  106aba:	8d 04 12             	lea    eax,[rdx+rdx*1]
  106abd:	8d 04 80             	lea    eax,[rax+rax*4]
  106ac0:	89 f3                	mov    ebx,esi
  106ac2:	29 c3                	sub    ebx,eax
  106ac4:	80 c3 30             	add    bl,0x30
  106ac7:	88 9c 3c 9e 00 00 00 	mov    BYTE PTR [rsp+rdi*1+0x9e],bl
  106ace:	48 8d 47 ff          	lea    rax,[rdi-0x1]
  106ad2:	48 ff c1             	inc    rcx
  106ad5:	83 fe 63             	cmp    esi,0x63
  106ad8:	7f c6                	jg     106aa0 <_svfprintf_r+0xe30>
  106ada:	80 c2 30             	add    dl,0x30
  106add:	88 94 04 9e 00 00 00 	mov    BYTE PTR [rsp+rax*1+0x9e],dl
  106ae4:	48 8d 50 08          	lea    rdx,[rax+0x8]
  106ae8:	48 8d 74 24 69       	lea    rsi,[rsp+0x69]
  106aed:	48 83 fa 08          	cmp    rdx,0x8
  106af1:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  106af6:	0f 8f ea 01 00 00    	jg     106ce6 <_svfprintf_r+0x1076>
  106afc:	ba 01 00 00 00       	mov    edx,0x1
  106b01:	48 29 c2             	sub    rdx,rax
  106b04:	48 83 fa 20          	cmp    rdx,0x20
  106b08:	0f 83 b0 00 00 00    	jae    106bbe <_svfprintf_r+0xf4e>
  106b0e:	48 83 c0 06          	add    rax,0x6
  106b12:	48 8d 74 24 69       	lea    rsi,[rsp+0x69]
  106b17:	e9 b4 01 00 00       	jmp    106cd0 <_svfprintf_r+0x1060>
  106b1c:	8b 54 24 44          	mov    edx,DWORD PTR [rsp+0x44]
  106b20:	83 fd 66             	cmp    ebp,0x66
  106b23:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  106b27:	75 4c                	jne    106b75 <_svfprintf_r+0xf05>
  106b29:	89 c8                	mov    eax,ecx
  106b2b:	83 e0 01             	and    eax,0x1
  106b2e:	48 8b b4 24 a8 00 00 	mov    rsi,QWORD PTR [rsp+0xa8]
  106b35:	00 
  106b36:	09 f0                	or     eax,esi
  106b38:	0f 94 c0             	sete   al
  106b3b:	85 d2                	test   edx,edx
  106b3d:	48 89 94 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rdx
  106b44:	00 
  106b45:	0f 8e 02 01 00 00    	jle    106c4d <_svfprintf_r+0xfdd>
  106b4b:	bd 66 00 00 00       	mov    ebp,0x66
  106b50:	84 c0                	test   al,al
  106b52:	0f 84 10 01 00 00    	je     106c68 <_svfprintf_r+0xff8>
  106b58:	89 d6                	mov    esi,edx
  106b5a:	e9 c7 01 00 00       	jmp    106d26 <_svfprintf_r+0x10b6>
  106b5f:	c6 44 24 69 30       	mov    BYTE PTR [rsp+0x69],0x30
  106b64:	80 c2 30             	add    dl,0x30
  106b67:	88 54 24 6a          	mov    BYTE PTR [rsp+0x6a],dl
  106b6b:	48 8d 74 24 6b       	lea    rsi,[rsp+0x6b]
  106b70:	e9 71 01 00 00       	jmp    106ce6 <_svfprintf_r+0x1076>
  106b75:	89 e8                	mov    eax,ebp
  106b77:	44 39 d2             	cmp    edx,r10d
  106b7a:	48 89 94 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rdx
  106b81:	00 
  106b82:	7d 1f                	jge    106ba3 <_svfprintf_r+0xf33>
  106b84:	48 8b 8c 24 a0 00 00 	mov    rcx,QWORD PTR [rsp+0xa0]
  106b8b:	00 
  106b8c:	41 8d 34 0a          	lea    esi,[r10+rcx*1]
  106b90:	85 d2                	test   edx,edx
  106b92:	7f 04                	jg     106b98 <_svfprintf_r+0xf28>
  106b94:	29 d6                	sub    esi,edx
  106b96:	ff c6                	inc    esi
  106b98:	89 c5                	mov    ebp,eax
  106b9a:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  106b9e:	e9 83 01 00 00       	jmp    106d26 <_svfprintf_r+0x10b6>
  106ba3:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  106ba7:	89 ce                	mov    esi,ecx
  106ba9:	83 e6 01             	and    esi,0x1
  106bac:	f7 de                	neg    esi
  106bae:	23 b4 24 a0 00 00 00 	and    esi,DWORD PTR [rsp+0xa0]
  106bb5:	01 d6                	add    esi,edx
  106bb7:	89 c5                	mov    ebp,eax
  106bb9:	e9 68 01 00 00       	jmp    106d26 <_svfprintf_r+0x10b6>
  106bbe:	49 89 d0             	mov    r8,rdx
  106bc1:	49 83 e0 e0          	and    r8,0xffffffffffffffe0
  106bc5:	49 8d 70 e0          	lea    rsi,[r8-0x20]
  106bc9:	49 89 f1             	mov    r9,rsi
  106bcc:	49 c1 e9 05          	shr    r9,0x5
  106bd0:	49 ff c1             	inc    r9
  106bd3:	48 85 f6             	test   rsi,rsi
  106bd6:	0f 84 a7 00 00 00    	je     106c83 <_svfprintf_r+0x1013>
  106bdc:	48 8d b4 24 ce 00 00 	lea    rsi,[rsp+0xce]
  106be3:	00 
  106be4:	48 01 c6             	add    rsi,rax
  106be7:	bb 02 00 00 00       	mov    ebx,0x2
  106bec:	48 29 fb             	sub    rbx,rdi
  106bef:	48 83 e3 e0          	and    rbx,0xffffffffffffffe0
  106bf3:	48 83 c3 e0          	add    rbx,0xffffffffffffffe0
  106bf7:	48 c1 eb 05          	shr    rbx,0x5
  106bfb:	48 ff c3             	inc    rbx
  106bfe:	48 83 e3 fe          	and    rbx,0xfffffffffffffffe
  106c02:	31 ff                	xor    edi,edi
  106c04:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  106c0b:	00 00 00 00 00 
  106c10:	0f 10 44 3e d0       	movups xmm0,XMMWORD PTR [rsi+rdi*1-0x30]
  106c15:	0f 10 4c 3e e0       	movups xmm1,XMMWORD PTR [rsi+rdi*1-0x20]
  106c1a:	0f 11 44 3c 69       	movups XMMWORD PTR [rsp+rdi*1+0x69],xmm0
  106c1f:	0f 11 4c 3c 79       	movups XMMWORD PTR [rsp+rdi*1+0x79],xmm1
  106c24:	f3 0f 6f 44 3e f0    	movdqu xmm0,XMMWORD PTR [rsi+rdi*1-0x10]
  106c2a:	f3 0f 6f 0c 3e       	movdqu xmm1,XMMWORD PTR [rsi+rdi*1]
  106c2f:	f3 0f 7f 84 3c 89 00 	movdqu XMMWORD PTR [rsp+rdi*1+0x89],xmm0
  106c36:	00 00 
  106c38:	f3 0f 7f 8c 3c 99 00 	movdqu XMMWORD PTR [rsp+rdi*1+0x99],xmm1
  106c3f:	00 00 
  106c41:	48 83 c7 40          	add    rdi,0x40
  106c45:	48 83 c3 fe          	add    rbx,0xfffffffffffffffe
  106c49:	75 c5                	jne    106c10 <_svfprintf_r+0xfa0>
  106c4b:	eb 38                	jmp    106c85 <_svfprintf_r+0x1015>
  106c4d:	03 b4 24 c0 00 00 00 	add    esi,DWORD PTR [rsp+0xc0]
  106c54:	84 c0                	test   al,al
  106c56:	b8 01 00 00 00       	mov    eax,0x1
  106c5b:	0f 45 f0             	cmovne esi,eax
  106c5e:	bd 66 00 00 00       	mov    ebp,0x66
  106c63:	e9 be 00 00 00       	jmp    106d26 <_svfprintf_r+0x10b6>
  106c68:	4c 8b bc 24 a8 00 00 	mov    r15,QWORD PTR [rsp+0xa8]
  106c6f:	00 
  106c70:	44 03 bc 24 a0 00 00 	add    r15d,DWORD PTR [rsp+0xa0]
  106c77:	00 
  106c78:	41 01 d7             	add    r15d,edx
  106c7b:	4c 89 fe             	mov    rsi,r15
  106c7e:	e9 a3 00 00 00       	jmp    106d26 <_svfprintf_r+0x10b6>
  106c83:	31 ff                	xor    edi,edi
  106c85:	41 f6 c1 01          	test   r9b,0x1
  106c89:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  106c8e:	74 23                	je     106cb3 <_svfprintf_r+0x1043>
  106c90:	48 8d b4 24 98 00 00 	lea    rsi,[rsp+0x98]
  106c97:	00 
  106c98:	48 01 fe             	add    rsi,rdi
  106c9b:	f3 0f 6f 44 30 06    	movdqu xmm0,XMMWORD PTR [rax+rsi*1+0x6]
  106ca1:	f3 0f 6f 4c 30 16    	movdqu xmm1,XMMWORD PTR [rax+rsi*1+0x16]
  106ca7:	f3 0f 7f 44 3c 69    	movdqu XMMWORD PTR [rsp+rdi*1+0x69],xmm0
  106cad:	f3 0f 7f 4c 3c 79    	movdqu XMMWORD PTR [rsp+rdi*1+0x79],xmm1
  106cb3:	48 8d 74 24 69       	lea    rsi,[rsp+0x69]
  106cb8:	4c 01 c6             	add    rsi,r8
  106cbb:	4c 39 c2             	cmp    rdx,r8
  106cbe:	74 26                	je     106ce6 <_svfprintf_r+0x1076>
  106cc0:	48 83 e1 e0          	and    rcx,0xffffffffffffffe0
  106cc4:	48 01 c8             	add    rax,rcx
  106cc7:	48 83 c0 06          	add    rax,0x6
  106ccb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  106cd0:	0f b6 8c 04 98 00 00 	movzx  ecx,BYTE PTR [rsp+rax*1+0x98]
  106cd7:	00 
  106cd8:	48 ff c0             	inc    rax
  106cdb:	88 0e                	mov    BYTE PTR [rsi],cl
  106cdd:	48 ff c6             	inc    rsi
  106ce0:	48 83 f8 07          	cmp    rax,0x7
  106ce4:	75 ea                	jne    106cd0 <_svfprintf_r+0x1060>
  106ce6:	8b 54 24 04          	mov    edx,DWORD PTR [rsp+0x4]
  106cea:	89 d7                	mov    edi,edx
  106cec:	83 e7 01             	and    edi,0x1
  106cef:	f7 df                	neg    edi
  106cf1:	48 8d 44 24 67       	lea    rax,[rsp+0x67]
  106cf6:	29 c6                	sub    esi,eax
  106cf8:	48 89 b4 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rsi
  106cff:	00 
  106d00:	42 8d 04 16          	lea    eax,[rsi+r10*1]
  106d04:	48 8b 8c 24 a0 00 00 	mov    rcx,QWORD PTR [rsp+0xa0]
  106d0b:	00 
  106d0c:	21 cf                	and    edi,ecx
  106d0e:	41 83 fa 02          	cmp    r10d,0x2
  106d12:	0f 4d f9             	cmovge edi,ecx
  106d15:	89 d1                	mov    ecx,edx
  106d17:	01 c7                	add    edi,eax
  106d19:	48 89 fe             	mov    rsi,rdi
  106d1c:	31 c0                	xor    eax,eax
  106d1e:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
  106d25:	00 
  106d26:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  106d2b:	81 c9 00 01 00 00    	or     ecx,0x100
  106d31:	45 31 ff             	xor    r15d,r15d
  106d34:	48 85 c0             	test   rax,rax
  106d37:	79 05                	jns    106d3e <_svfprintf_r+0x10ce>
  106d39:	c6 44 24 0b 2d       	mov    BYTE PTR [rsp+0xb],0x2d
  106d3e:	48 89 f2             	mov    rdx,rsi
  106d41:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  106d48:	0f 1f 84 00 00 00 00 
  106d4f:	00 
  106d50:	41 39 d7             	cmp    r15d,edx
  106d53:	48 89 94 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rdx
  106d5a:	00 
  106d5b:	89 d0                	mov    eax,edx
  106d5d:	41 0f 4f c7          	cmovg  eax,r15d
  106d61:	80 7c 24 0b 01       	cmp    BYTE PTR [rsp+0xb],0x1
  106d66:	83 d8 ff             	sbb    eax,0xffffffff
  106d69:	8d 50 02             	lea    edx,[rax+0x2]
  106d6c:	f6 c1 02             	test   cl,0x2
  106d6f:	0f 44 d0             	cmove  edx,eax
  106d72:	44 89 d8             	mov    eax,r11d
  106d75:	89 94 24 c4 00 00 00 	mov    DWORD PTR [rsp+0xc4],edx
  106d7c:	29 d0                	sub    eax,edx
  106d7e:	89 ca                	mov    edx,ecx
  106d80:	81 e2 84 00 00 00    	and    edx,0x84
  106d86:	89 94 24 00 01 00 00 	mov    DWORD PTR [rsp+0x100],edx
  106d8d:	66 0f 29 54 24 70    	movapd XMMWORD PTR [rsp+0x70],xmm2
  106d93:	89 4c 24 04          	mov    DWORD PTR [rsp+0x4],ecx
  106d97:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
  106d9c:	0f 85 ed 00 00 00    	jne    106e8f <_svfprintf_r+0x121f>
  106da2:	85 c0                	test   eax,eax
  106da4:	0f 8e e5 00 00 00    	jle    106e8f <_svfprintf_r+0x121f>
  106daa:	83 f8 11             	cmp    eax,0x11
  106dad:	0f 82 7d 00 00 00    	jb     106e30 <_svfprintf_r+0x11c0>
  106db3:	89 c3                	mov    ebx,eax
  106db5:	eb 17                	jmp    106dce <_svfprintf_r+0x115e>
  106db7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  106dbe:	00 00 
  106dc0:	49 83 c6 10          	add    r14,0x10
  106dc4:	8d 43 f0             	lea    eax,[rbx-0x10]
  106dc7:	83 fb 20             	cmp    ebx,0x20
  106dca:	89 c3                	mov    ebx,eax
  106dcc:	7e 62                	jle    106e30 <_svfprintf_r+0x11c0>
  106dce:	48 8d 05 0b 9d ff ff 	lea    rax,[rip+0xffffffffffff9d0b]        # 100ae0 <_svfprintf_r.blanks>
  106dd5:	49 89 06             	mov    QWORD PTR [r14],rax
  106dd8:	49 c7 46 08 10 00 00 	mov    QWORD PTR [r14+0x8],0x10
  106ddf:	00 
  106de0:	48 83 44 24 20 10    	add    QWORD PTR [rsp+0x20],0x10
  106de6:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  106dea:	8d 48 01             	lea    ecx,[rax+0x1]
  106ded:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  106df1:	83 f8 07             	cmp    eax,0x7
  106df4:	7c ca                	jl     106dc0 <_svfprintf_r+0x1150>
  106df6:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  106dfb:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
  106e00:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  106e05:	e8 96 1f 00 00       	call   108da0 <__ssprint_r>
  106e0a:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  106e0f:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  106e15:	4c 8d b4 24 20 01 00 	lea    r14,[rsp+0x120]
  106e1c:	00 
  106e1d:	85 c0                	test   eax,eax
  106e1f:	74 a3                	je     106dc4 <_svfprintf_r+0x1154>
  106e21:	e9 38 0f 00 00       	jmp    107d5e <_svfprintf_r+0x20ee>
  106e26:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  106e2d:	00 00 00 
  106e30:	48 8d 0d a9 9c ff ff 	lea    rcx,[rip+0xffffffffffff9ca9]        # 100ae0 <_svfprintf_r.blanks>
  106e37:	49 89 0e             	mov    QWORD PTR [r14],rcx
  106e3a:	89 c0                	mov    eax,eax
  106e3c:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  106e40:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  106e45:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  106e49:	8d 48 01             	lea    ecx,[rax+0x1]
  106e4c:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  106e50:	83 f8 07             	cmp    eax,0x7
  106e53:	0f 8c b1 00 00 00    	jl     106f0a <_svfprintf_r+0x129a>
  106e59:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  106e5e:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  106e63:	48 89 de             	mov    rsi,rbx
  106e66:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  106e6b:	e8 30 1f 00 00       	call   108da0 <__ssprint_r>
  106e70:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  106e75:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  106e7b:	4c 8d b4 24 20 01 00 	lea    r14,[rsp+0x120]
  106e82:	00 
  106e83:	85 c0                	test   eax,eax
  106e85:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  106e89:	0f 85 d4 0e 00 00    	jne    107d63 <_svfprintf_r+0x20f3>
  106e8f:	80 7c 24 0b 00       	cmp    BYTE PTR [rsp+0xb],0x0
  106e94:	0f 84 96 00 00 00    	je     106f30 <_svfprintf_r+0x12c0>
  106e9a:	48 8d 44 24 0b       	lea    rax,[rsp+0xb]
  106e9f:	49 89 06             	mov    QWORD PTR [r14],rax
  106ea2:	49 c7 46 08 01 00 00 	mov    QWORD PTR [r14+0x8],0x1
  106ea9:	00 
  106eaa:	48 ff 44 24 20       	inc    QWORD PTR [rsp+0x20]
  106eaf:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  106eb3:	8d 48 01             	lea    ecx,[rax+0x1]
  106eb6:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  106eba:	83 f8 07             	cmp    eax,0x7
  106ebd:	7c 41                	jl     106f00 <_svfprintf_r+0x1290>
  106ebf:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  106ec4:	48 89 de             	mov    rsi,rbx
  106ec7:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  106ecc:	e8 cf 1e 00 00       	call   108da0 <__ssprint_r>
  106ed1:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  106ed6:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  106edc:	4c 8d b4 24 20 01 00 	lea    r14,[rsp+0x120]
  106ee3:	00 
  106ee4:	85 c0                	test   eax,eax
  106ee6:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  106eea:	74 44                	je     106f30 <_svfprintf_r+0x12c0>
  106eec:	e9 72 0e 00 00       	jmp    107d63 <_svfprintf_r+0x20f3>
  106ef1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  106ef8:	0f 1f 84 00 00 00 00 
  106eff:	00 
  106f00:	49 83 c6 10          	add    r14,0x10
  106f04:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  106f08:	eb 26                	jmp    106f30 <_svfprintf_r+0x12c0>
  106f0a:	49 83 c6 10          	add    r14,0x10
  106f0e:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  106f13:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  106f17:	80 7c 24 0b 00       	cmp    BYTE PTR [rsp+0xb],0x0
  106f1c:	0f 85 78 ff ff ff    	jne    106e9a <_svfprintf_r+0x122a>
  106f22:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  106f29:	1f 84 00 00 00 00 00 
  106f30:	f6 c1 02             	test   cl,0x2
  106f33:	74 57                	je     106f8c <_svfprintf_r+0x131c>
  106f35:	48 8d 44 24 6e       	lea    rax,[rsp+0x6e]
  106f3a:	49 89 06             	mov    QWORD PTR [r14],rax
  106f3d:	49 c7 46 08 02 00 00 	mov    QWORD PTR [r14+0x8],0x2
  106f44:	00 
  106f45:	48 83 44 24 20 02    	add    QWORD PTR [rsp+0x20],0x2
  106f4b:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  106f4f:	8d 48 01             	lea    ecx,[rax+0x1]
  106f52:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  106f56:	83 f8 07             	cmp    eax,0x7
  106f59:	7c 45                	jl     106fa0 <_svfprintf_r+0x1330>
  106f5b:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  106f60:	48 89 de             	mov    rsi,rbx
  106f63:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  106f68:	e8 33 1e 00 00       	call   108da0 <__ssprint_r>
  106f6d:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  106f72:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  106f78:	4c 8d b4 24 20 01 00 	lea    r14,[rsp+0x120]
  106f7f:	00 
  106f80:	85 c0                	test   eax,eax
  106f82:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  106f86:	0f 85 d7 0d 00 00    	jne    107d63 <_svfprintf_r+0x20f3>
  106f8c:	81 bc 24 00 01 00 00 	cmp    DWORD PTR [rsp+0x100],0x80
  106f93:	80 00 00 00 
  106f97:	74 20                	je     106fb9 <_svfprintf_r+0x1349>
  106f99:	e9 01 01 00 00       	jmp    10709f <_svfprintf_r+0x142f>
  106f9e:	66 90                	xchg   ax,ax
  106fa0:	49 83 c6 10          	add    r14,0x10
  106fa4:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  106fa8:	81 bc 24 00 01 00 00 	cmp    DWORD PTR [rsp+0x100],0x80
  106faf:	80 00 00 00 
  106fb3:	0f 85 e6 00 00 00    	jne    10709f <_svfprintf_r+0x142f>
  106fb9:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  106fbe:	85 c0                	test   eax,eax
  106fc0:	0f 8e d9 00 00 00    	jle    10709f <_svfprintf_r+0x142f>
  106fc6:	83 f8 11             	cmp    eax,0x11
  106fc9:	72 75                	jb     107040 <_svfprintf_r+0x13d0>
  106fcb:	89 c3                	mov    ebx,eax
  106fcd:	eb 0f                	jmp    106fde <_svfprintf_r+0x136e>
  106fcf:	90                   	nop
  106fd0:	49 83 c6 10          	add    r14,0x10
  106fd4:	8d 43 f0             	lea    eax,[rbx-0x10]
  106fd7:	83 fb 20             	cmp    ebx,0x20
  106fda:	89 c3                	mov    ebx,eax
  106fdc:	7e 62                	jle    107040 <_svfprintf_r+0x13d0>
  106fde:	48 8d 05 0b 9b ff ff 	lea    rax,[rip+0xffffffffffff9b0b]        # 100af0 <_svfprintf_r.zeroes>
  106fe5:	49 89 06             	mov    QWORD PTR [r14],rax
  106fe8:	49 c7 46 08 10 00 00 	mov    QWORD PTR [r14+0x8],0x10
  106fef:	00 
  106ff0:	48 83 44 24 20 10    	add    QWORD PTR [rsp+0x20],0x10
  106ff6:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  106ffa:	8d 48 01             	lea    ecx,[rax+0x1]
  106ffd:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  107001:	83 f8 07             	cmp    eax,0x7
  107004:	7c ca                	jl     106fd0 <_svfprintf_r+0x1360>
  107006:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  10700b:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
  107010:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107015:	e8 86 1d 00 00       	call   108da0 <__ssprint_r>
  10701a:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  10701f:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  107025:	4c 8d b4 24 20 01 00 	lea    r14,[rsp+0x120]
  10702c:	00 
  10702d:	85 c0                	test   eax,eax
  10702f:	74 a3                	je     106fd4 <_svfprintf_r+0x1364>
  107031:	e9 28 0d 00 00       	jmp    107d5e <_svfprintf_r+0x20ee>
  107036:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10703d:	00 00 00 
  107040:	48 8d 0d a9 9a ff ff 	lea    rcx,[rip+0xffffffffffff9aa9]        # 100af0 <_svfprintf_r.zeroes>
  107047:	49 89 0e             	mov    QWORD PTR [r14],rcx
  10704a:	89 c0                	mov    eax,eax
  10704c:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  107050:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  107055:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  107059:	8d 48 01             	lea    ecx,[rax+0x1]
  10705c:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  107060:	83 f8 07             	cmp    eax,0x7
  107063:	0f 8c 28 01 00 00    	jl     107191 <_svfprintf_r+0x1521>
  107069:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  10706e:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  107073:	48 89 de             	mov    rsi,rbx
  107076:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  10707b:	e8 20 1d 00 00       	call   108da0 <__ssprint_r>
  107080:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  107085:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  10708b:	4c 8d b4 24 20 01 00 	lea    r14,[rsp+0x120]
  107092:	00 
  107093:	85 c0                	test   eax,eax
  107095:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  107099:	0f 85 c4 0c 00 00    	jne    107d63 <_svfprintf_r+0x20f3>
  10709f:	44 2b bc 24 a8 00 00 	sub    r15d,DWORD PTR [rsp+0xa8]
  1070a6:	00 
  1070a7:	0f 8e 03 01 00 00    	jle    1071b0 <_svfprintf_r+0x1540>
  1070ad:	41 83 ff 11          	cmp    r15d,0x11
  1070b1:	73 7e                	jae    107131 <_svfprintf_r+0x14c1>
  1070b3:	44 89 f8             	mov    eax,r15d
  1070b6:	48 8d 0d 33 9a ff ff 	lea    rcx,[rip+0xffffffffffff9a33]        # 100af0 <_svfprintf_r.zeroes>
  1070bd:	49 89 0e             	mov    QWORD PTR [r14],rcx
  1070c0:	89 c0                	mov    eax,eax
  1070c2:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  1070c6:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  1070cb:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  1070cf:	8d 48 01             	lea    ecx,[rax+0x1]
  1070d2:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  1070d6:	83 f8 07             	cmp    eax,0x7
  1070d9:	0f 8c a8 00 00 00    	jl     107187 <_svfprintf_r+0x1517>
  1070df:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  1070e4:	48 89 de             	mov    rsi,rbx
  1070e7:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  1070ec:	e8 af 1c 00 00       	call   108da0 <__ssprint_r>
  1070f1:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  1070f6:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  1070fc:	4c 8d b4 24 20 01 00 	lea    r14,[rsp+0x120]
  107103:	00 
  107104:	85 c0                	test   eax,eax
  107106:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  10710a:	0f 84 a0 00 00 00    	je     1071b0 <_svfprintf_r+0x1540>
  107110:	e9 4e 0c 00 00       	jmp    107d63 <_svfprintf_r+0x20f3>
  107115:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  10711c:	00 00 00 00 
  107120:	49 83 c6 10          	add    r14,0x10
  107124:	41 8d 47 f0          	lea    eax,[r15-0x10]
  107128:	41 83 ff 20          	cmp    r15d,0x20
  10712c:	41 89 c7             	mov    r15d,eax
  10712f:	7e 85                	jle    1070b6 <_svfprintf_r+0x1446>
  107131:	48 8d 05 b8 99 ff ff 	lea    rax,[rip+0xffffffffffff99b8]        # 100af0 <_svfprintf_r.zeroes>
  107138:	49 89 06             	mov    QWORD PTR [r14],rax
  10713b:	49 c7 46 08 10 00 00 	mov    QWORD PTR [r14+0x8],0x10
  107142:	00 
  107143:	48 83 44 24 20 10    	add    QWORD PTR [rsp+0x20],0x10
  107149:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  10714d:	8d 48 01             	lea    ecx,[rax+0x1]
  107150:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  107154:	83 f8 07             	cmp    eax,0x7
  107157:	7c c7                	jl     107120 <_svfprintf_r+0x14b0>
  107159:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  10715e:	48 89 de             	mov    rsi,rbx
  107161:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107166:	e8 35 1c 00 00       	call   108da0 <__ssprint_r>
  10716b:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  107170:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  107176:	4c 8d b4 24 20 01 00 	lea    r14,[rsp+0x120]
  10717d:	00 
  10717e:	85 c0                	test   eax,eax
  107180:	74 a2                	je     107124 <_svfprintf_r+0x14b4>
  107182:	e9 dc 0b 00 00       	jmp    107d63 <_svfprintf_r+0x20f3>
  107187:	49 83 c6 10          	add    r14,0x10
  10718b:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  10718f:	eb 1f                	jmp    1071b0 <_svfprintf_r+0x1540>
  107191:	49 83 c6 10          	add    r14,0x10
  107195:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  10719a:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  10719e:	44 2b bc 24 a8 00 00 	sub    r15d,DWORD PTR [rsp+0xa8]
  1071a5:	00 
  1071a6:	0f 8f 01 ff ff ff    	jg     1070ad <_svfprintf_r+0x143d>
  1071ac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  1071b0:	f7 c1 00 01 00 00    	test   ecx,0x100
  1071b6:	75 68                	jne    107220 <_svfprintf_r+0x15b0>
  1071b8:	4d 89 2e             	mov    QWORD PTR [r14],r13
  1071bb:	48 63 84 24 a8 00 00 	movsxd rax,DWORD PTR [rsp+0xa8]
  1071c2:	00 
  1071c3:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  1071c7:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  1071cc:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  1071d0:	8d 48 01             	lea    ecx,[rax+0x1]
  1071d3:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  1071d7:	83 f8 07             	cmp    eax,0x7
  1071da:	0f 8c c5 00 00 00    	jl     1072a5 <_svfprintf_r+0x1635>
  1071e0:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  1071e5:	48 89 de             	mov    rsi,rbx
  1071e8:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  1071ed:	e8 ae 1b 00 00       	call   108da0 <__ssprint_r>
  1071f2:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  1071f7:	4c 8d bc 24 20 01 00 	lea    r15,[rsp+0x120]
  1071fe:	00 
  1071ff:	4d 89 fe             	mov    r14,r15
  107202:	85 c0                	test   eax,eax
  107204:	44 8b 6c 24 0c       	mov    r13d,DWORD PTR [rsp+0xc]
  107209:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  10720d:	48 8b 6c 24 58       	mov    rbp,QWORD PTR [rsp+0x58]
  107212:	0f 84 58 09 00 00    	je     107b70 <_svfprintf_r+0x1f00>
  107218:	e9 4b 0b 00 00       	jmp    107d68 <_svfprintf_r+0x20f8>
  10721d:	0f 1f 00             	nop    DWORD PTR [rax]
  107220:	83 fd 66             	cmp    ebp,0x66
  107223:	0f 8c a4 00 00 00    	jl     1072cd <_svfprintf_r+0x165d>
  107229:	66 0f 2e 15 87 96 ff 	ucomisd xmm2,QWORD PTR [rip+0xffffffffffff9687]        # 1008b8 <_svfprintf_r.blanks-0x228>
  107230:	ff 
  107231:	4c 8d bc 24 20 01 00 	lea    r15,[rsp+0x120]
  107238:	00 
  107239:	0f 85 a1 01 00 00    	jne    1073e0 <_svfprintf_r+0x1770>
  10723f:	0f 8a 9b 01 00 00    	jp     1073e0 <_svfprintf_r+0x1770>
  107245:	48 8d 05 42 8f ff ff 	lea    rax,[rip+0xffffffffffff8f42]        # 10018e <_svfprintf_r.blanks-0x952>
  10724c:	49 89 06             	mov    QWORD PTR [r14],rax
  10724f:	49 c7 46 08 01 00 00 	mov    QWORD PTR [r14+0x8],0x1
  107256:	00 
  107257:	48 ff 44 24 20       	inc    QWORD PTR [rsp+0x20]
  10725c:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  107260:	8d 48 01             	lea    ecx,[rax+0x1]
  107263:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  107267:	83 f8 07             	cmp    eax,0x7
  10726a:	48 8b 6c 24 58       	mov    rbp,QWORD PTR [rsp+0x58]
  10726f:	0f 8c e6 01 00 00    	jl     10745b <_svfprintf_r+0x17eb>
  107275:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  10727a:	48 89 de             	mov    rsi,rbx
  10727d:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107282:	e8 19 1b 00 00       	call   108da0 <__ssprint_r>
  107287:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  10728c:	4d 89 fe             	mov    r14,r15
  10728f:	85 c0                	test   eax,eax
  107291:	44 8b 6c 24 0c       	mov    r13d,DWORD PTR [rsp+0xc]
  107296:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  10729a:	0f 84 c8 01 00 00    	je     107468 <_svfprintf_r+0x17f8>
  1072a0:	e9 c3 0a 00 00       	jmp    107d68 <_svfprintf_r+0x20f8>
  1072a5:	49 83 c6 10          	add    r14,0x10
  1072a9:	44 8b 6c 24 0c       	mov    r13d,DWORD PTR [rsp+0xc]
  1072ae:	4c 8d bc 24 20 01 00 	lea    r15,[rsp+0x120]
  1072b5:	00 
  1072b6:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  1072ba:	48 8b 6c 24 58       	mov    rbp,QWORD PTR [rsp+0x58]
  1072bf:	f6 c1 04             	test   cl,0x4
  1072c2:	0f 85 b1 08 00 00    	jne    107b79 <_svfprintf_r+0x1f09>
  1072c8:	e9 83 09 00 00       	jmp    107c50 <_svfprintf_r+0x1fe0>
  1072cd:	4d 89 2e             	mov    QWORD PTR [r14],r13
  1072d0:	49 c7 46 08 01 00 00 	mov    QWORD PTR [r14+0x8],0x1
  1072d7:	00 
  1072d8:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
  1072dd:	48 ff c0             	inc    rax
  1072e0:	49 83 c6 10          	add    r14,0x10
  1072e4:	8b 54 24 18          	mov    edx,DWORD PTR [rsp+0x18]
  1072e8:	8d 4a 01             	lea    ecx,[rdx+0x1]
  1072eb:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  1072f0:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  1072f4:	83 bc 24 90 00 00 00 	cmp    DWORD PTR [rsp+0x90],0x1
  1072fb:	01 
  1072fc:	4c 8d bc 24 20 01 00 	lea    r15,[rsp+0x120]
  107303:	00 
  107304:	7f 43                	jg     107349 <_svfprintf_r+0x16d9>
  107306:	8b 74 24 04          	mov    esi,DWORD PTR [rsp+0x4]
  10730a:	83 e6 01             	and    esi,0x1
  10730d:	75 3a                	jne    107349 <_svfprintf_r+0x16d9>
  10730f:	83 fa 07             	cmp    edx,0x7
  107312:	44 8b 6c 24 0c       	mov    r13d,DWORD PTR [rsp+0xc]
  107317:	48 8b 6c 24 58       	mov    rbp,QWORD PTR [rsp+0x58]
  10731c:	0f 8c f7 07 00 00    	jl     107b19 <_svfprintf_r+0x1ea9>
  107322:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  107327:	48 89 de             	mov    rsi,rbx
  10732a:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  10732f:	e8 6c 1a 00 00       	call   108da0 <__ssprint_r>
  107334:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  107339:	4d 89 fe             	mov    r14,r15
  10733c:	85 c0                	test   eax,eax
  10733e:	0f 84 d5 07 00 00    	je     107b19 <_svfprintf_r+0x1ea9>
  107344:	e9 1f 0a 00 00       	jmp    107d68 <_svfprintf_r+0x20f8>
  107349:	83 fa 07             	cmp    edx,0x7
  10734c:	48 8b 6c 24 58       	mov    rbp,QWORD PTR [rsp+0x58]
  107351:	7c 31                	jl     107384 <_svfprintf_r+0x1714>
  107353:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  107358:	48 89 de             	mov    rsi,rbx
  10735b:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107360:	e8 3b 1a 00 00       	call   108da0 <__ssprint_r>
  107365:	85 c0                	test   eax,eax
  107367:	0f 85 f6 09 00 00    	jne    107d63 <_svfprintf_r+0x20f3>
  10736d:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
  107372:	8b 4c 24 18          	mov    ecx,DWORD PTR [rsp+0x18]
  107376:	4d 89 fe             	mov    r14,r15
  107379:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  10737f:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  107384:	48 8b 94 24 b0 00 00 	mov    rdx,QWORD PTR [rsp+0xb0]
  10738b:	00 
  10738c:	49 89 16             	mov    QWORD PTR [r14],rdx
  10738f:	48 8b 94 24 a0 00 00 	mov    rdx,QWORD PTR [rsp+0xa0]
  107396:	00 
  107397:	49 89 56 08          	mov    QWORD PTR [r14+0x8],rdx
  10739b:	48 01 d0             	add    rax,rdx
  10739e:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  1073a3:	8d 41 01             	lea    eax,[rcx+0x1]
  1073a6:	89 44 24 18          	mov    DWORD PTR [rsp+0x18],eax
  1073aa:	83 f9 07             	cmp    ecx,0x7
  1073ad:	0f 8c 25 01 00 00    	jl     1074d8 <_svfprintf_r+0x1868>
  1073b3:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  1073b8:	48 89 de             	mov    rsi,rbx
  1073bb:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  1073c0:	e8 db 19 00 00       	call   108da0 <__ssprint_r>
  1073c5:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  1073ca:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  1073d0:	4d 89 fe             	mov    r14,r15
  1073d3:	85 c0                	test   eax,eax
  1073d5:	0f 84 01 01 00 00    	je     1074dc <_svfprintf_r+0x186c>
  1073db:	e9 83 09 00 00       	jmp    107d63 <_svfprintf_r+0x20f3>
  1073e0:	8b 44 24 44          	mov    eax,DWORD PTR [rsp+0x44]
  1073e4:	85 c0                	test   eax,eax
  1073e6:	0f 8e 6f 02 00 00    	jle    10765b <_svfprintf_r+0x19eb>
  1073ec:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  1073f3:	00 
  1073f4:	4c 8b bc 24 88 00 00 	mov    r15,QWORD PTR [rsp+0x88]
  1073fb:	00 
  1073fc:	44 39 f8             	cmp    eax,r15d
  1073ff:	44 89 fd             	mov    ebp,r15d
  107402:	0f 4c e8             	cmovl  ebp,eax
  107405:	85 ed                	test   ebp,ebp
  107407:	0f 8e bf 02 00 00    	jle    1076cc <_svfprintf_r+0x1a5c>
  10740d:	4d 89 2e             	mov    QWORD PTR [r14],r13
  107410:	89 e8                	mov    eax,ebp
  107412:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  107416:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  10741b:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  10741f:	8d 48 01             	lea    ecx,[rax+0x1]
  107422:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  107426:	83 f8 07             	cmp    eax,0x7
  107429:	0f 8c 99 02 00 00    	jl     1076c8 <_svfprintf_r+0x1a58>
  10742f:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  107434:	48 89 de             	mov    rsi,rbx
  107437:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  10743c:	e8 5f 19 00 00       	call   108da0 <__ssprint_r>
  107441:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  107446:	4c 8d b4 24 20 01 00 	lea    r14,[rsp+0x120]
  10744d:	00 
  10744e:	85 c0                	test   eax,eax
  107450:	0f 84 76 02 00 00    	je     1076cc <_svfprintf_r+0x1a5c>
  107456:	e9 08 09 00 00       	jmp    107d63 <_svfprintf_r+0x20f3>
  10745b:	49 83 c6 10          	add    r14,0x10
  10745f:	44 8b 6c 24 0c       	mov    r13d,DWORD PTR [rsp+0xc]
  107464:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  107468:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  10746f:	00 
  107470:	39 44 24 44          	cmp    DWORD PTR [rsp+0x44],eax
  107474:	7c 0b                	jl     107481 <_svfprintf_r+0x1811>
  107476:	89 c8                	mov    eax,ecx
  107478:	83 e0 01             	and    eax,0x1
  10747b:	0f 84 ef 06 00 00    	je     107b70 <_svfprintf_r+0x1f00>
  107481:	48 8b 84 24 b0 00 00 	mov    rax,QWORD PTR [rsp+0xb0]
  107488:	00 
  107489:	49 89 06             	mov    QWORD PTR [r14],rax
  10748c:	48 8b 84 24 a0 00 00 	mov    rax,QWORD PTR [rsp+0xa0]
  107493:	00 
  107494:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  107498:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  10749d:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  1074a1:	8d 48 01             	lea    ecx,[rax+0x1]
  1074a4:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  1074a8:	83 f8 07             	cmp    eax,0x7
  1074ab:	0f 8c 12 01 00 00    	jl     1075c3 <_svfprintf_r+0x1953>
  1074b1:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  1074b6:	48 89 de             	mov    rsi,rbx
  1074b9:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  1074be:	e8 dd 18 00 00       	call   108da0 <__ssprint_r>
  1074c3:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  1074c8:	4d 89 fe             	mov    r14,r15
  1074cb:	85 c0                	test   eax,eax
  1074cd:	0f 84 f4 00 00 00    	je     1075c7 <_svfprintf_r+0x1957>
  1074d3:	e9 90 08 00 00       	jmp    107d68 <_svfprintf_r+0x20f8>
  1074d8:	49 83 c6 10          	add    r14,0x10
  1074dc:	66 0f 2e 15 d4 93 ff 	ucomisd xmm2,QWORD PTR [rip+0xffffffffffff93d4]        # 1008b8 <_svfprintf_r.blanks-0x228>
  1074e3:	ff 
  1074e4:	75 02                	jne    1074e8 <_svfprintf_r+0x1878>
  1074e6:	7b 5a                	jnp    107542 <_svfprintf_r+0x18d2>
  1074e8:	49 ff c5             	inc    r13
  1074eb:	4d 89 2e             	mov    QWORD PTR [r14],r13
  1074ee:	48 63 84 24 90 00 00 	movsxd rax,DWORD PTR [rsp+0x90]
  1074f5:	00 
  1074f6:	48 ff c8             	dec    rax
  1074f9:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  1074fd:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  107502:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  107506:	8d 48 01             	lea    ecx,[rax+0x1]
  107509:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  10750d:	83 f8 07             	cmp    eax,0x7
  107510:	0f 8c 37 01 00 00    	jl     10764d <_svfprintf_r+0x19dd>
  107516:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  10751b:	48 89 de             	mov    rsi,rbx
  10751e:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107523:	e8 78 18 00 00       	call   108da0 <__ssprint_r>
  107528:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  10752d:	4d 89 fe             	mov    r14,r15
  107530:	85 c0                	test   eax,eax
  107532:	44 8b 6c 24 0c       	mov    r13d,DWORD PTR [rsp+0xc]
  107537:	0f 84 dc 05 00 00    	je     107b19 <_svfprintf_r+0x1ea9>
  10753d:	e9 26 08 00 00       	jmp    107d68 <_svfprintf_r+0x20f8>
  107542:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  107549:	00 
  10754a:	83 f8 02             	cmp    eax,0x2
  10754d:	0f 8c 63 01 00 00    	jl     1076b6 <_svfprintf_r+0x1a46>
  107553:	83 f8 12             	cmp    eax,0x12
  107556:	0f 82 0f 05 00 00    	jb     107a6b <_svfprintf_r+0x1dfb>
  10755c:	8d 58 0f             	lea    ebx,[rax+0xf]
  10755f:	44 8b 6c 24 0c       	mov    r13d,DWORD PTR [rsp+0xc]
  107564:	eb 10                	jmp    107576 <_svfprintf_r+0x1906>
  107566:	49 83 c6 10          	add    r14,0x10
  10756a:	83 c3 f0             	add    ebx,0xfffffff0
  10756d:	83 fb 20             	cmp    ebx,0x20
  107570:	0f 8e 63 05 00 00    	jle    107ad9 <_svfprintf_r+0x1e69>
  107576:	48 8d 05 73 95 ff ff 	lea    rax,[rip+0xffffffffffff9573]        # 100af0 <_svfprintf_r.zeroes>
  10757d:	49 89 06             	mov    QWORD PTR [r14],rax
  107580:	49 c7 46 08 10 00 00 	mov    QWORD PTR [r14+0x8],0x10
  107587:	00 
  107588:	48 83 44 24 20 10    	add    QWORD PTR [rsp+0x20],0x10
  10758e:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  107592:	8d 48 01             	lea    ecx,[rax+0x1]
  107595:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  107599:	83 f8 07             	cmp    eax,0x7
  10759c:	7c c8                	jl     107566 <_svfprintf_r+0x18f6>
  10759e:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  1075a3:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
  1075a8:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  1075ad:	e8 ee 17 00 00       	call   108da0 <__ssprint_r>
  1075b2:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  1075b7:	4d 89 fe             	mov    r14,r15
  1075ba:	85 c0                	test   eax,eax
  1075bc:	74 ac                	je     10756a <_svfprintf_r+0x18fa>
  1075be:	e9 f2 07 00 00       	jmp    107db5 <_svfprintf_r+0x2145>
  1075c3:	49 83 c6 10          	add    r14,0x10
  1075c7:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  1075ce:	00 
  1075cf:	83 f8 02             	cmp    eax,0x2
  1075d2:	0f 8c 65 06 00 00    	jl     107c3d <_svfprintf_r+0x1fcd>
  1075d8:	83 f8 12             	cmp    eax,0x12
  1075db:	0f 82 df 00 00 00    	jb     1076c0 <_svfprintf_r+0x1a50>
  1075e1:	8d 58 0f             	lea    ebx,[rax+0xf]
  1075e4:	eb 1a                	jmp    107600 <_svfprintf_r+0x1990>
  1075e6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  1075ed:	00 00 00 
  1075f0:	49 83 c6 10          	add    r14,0x10
  1075f4:	83 c3 f0             	add    ebx,0xfffffff0
  1075f7:	83 fb 20             	cmp    ebx,0x20
  1075fa:	0f 8e 26 04 00 00    	jle    107a26 <_svfprintf_r+0x1db6>
  107600:	48 8d 05 e9 94 ff ff 	lea    rax,[rip+0xffffffffffff94e9]        # 100af0 <_svfprintf_r.zeroes>
  107607:	49 89 06             	mov    QWORD PTR [r14],rax
  10760a:	49 c7 46 08 10 00 00 	mov    QWORD PTR [r14+0x8],0x10
  107611:	00 
  107612:	48 83 44 24 20 10    	add    QWORD PTR [rsp+0x20],0x10
  107618:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  10761c:	8d 48 01             	lea    ecx,[rax+0x1]
  10761f:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  107623:	83 f8 07             	cmp    eax,0x7
  107626:	7c c8                	jl     1075f0 <_svfprintf_r+0x1980>
  107628:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  10762d:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
  107632:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107637:	e8 64 17 00 00       	call   108da0 <__ssprint_r>
  10763c:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  107641:	4d 89 fe             	mov    r14,r15
  107644:	85 c0                	test   eax,eax
  107646:	74 ac                	je     1075f4 <_svfprintf_r+0x1984>
  107648:	e9 68 07 00 00       	jmp    107db5 <_svfprintf_r+0x2145>
  10764d:	49 83 c6 10          	add    r14,0x10
  107651:	44 8b 6c 24 0c       	mov    r13d,DWORD PTR [rsp+0xc]
  107656:	e9 be 04 00 00       	jmp    107b19 <_svfprintf_r+0x1ea9>
  10765b:	48 8d 0d 2c 8b ff ff 	lea    rcx,[rip+0xffffffffffff8b2c]        # 10018e <_svfprintf_r.blanks-0x952>
  107662:	49 89 0e             	mov    QWORD PTR [r14],rcx
  107665:	49 c7 46 08 01 00 00 	mov    QWORD PTR [r14+0x8],0x1
  10766c:	00 
  10766d:	48 ff 44 24 20       	inc    QWORD PTR [rsp+0x20]
  107672:	8b 4c 24 18          	mov    ecx,DWORD PTR [rsp+0x18]
  107676:	8d 51 01             	lea    edx,[rcx+0x1]
  107679:	89 54 24 18          	mov    DWORD PTR [rsp+0x18],edx
  10767d:	83 f9 07             	cmp    ecx,0x7
  107680:	0f 8c 37 01 00 00    	jl     1077bd <_svfprintf_r+0x1b4d>
  107686:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  10768b:	48 89 de             	mov    rsi,rbx
  10768e:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107693:	e8 08 17 00 00       	call   108da0 <__ssprint_r>
  107698:	85 c0                	test   eax,eax
  10769a:	48 8b 6c 24 58       	mov    rbp,QWORD PTR [rsp+0x58]
  10769f:	0f 85 be 06 00 00    	jne    107d63 <_svfprintf_r+0x20f3>
  1076a5:	8b 44 24 44          	mov    eax,DWORD PTR [rsp+0x44]
  1076a9:	4d 89 fe             	mov    r14,r15
  1076ac:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  1076b1:	e9 10 01 00 00       	jmp    1077c6 <_svfprintf_r+0x1b56>
  1076b6:	44 8b 6c 24 0c       	mov    r13d,DWORD PTR [rsp+0xc]
  1076bb:	e9 59 04 00 00       	jmp    107b19 <_svfprintf_r+0x1ea9>
  1076c0:	8d 58 ff             	lea    ebx,[rax-0x1]
  1076c3:	e9 61 03 00 00       	jmp    107a29 <_svfprintf_r+0x1db9>
  1076c8:	49 83 c6 10          	add    r14,0x10
  1076cc:	85 ed                	test   ebp,ebp
  1076ce:	b8 00 00 00 00       	mov    eax,0x0
  1076d3:	0f 4e e8             	cmovle ebp,eax
  1076d6:	44 89 fb             	mov    ebx,r15d
  1076d9:	29 eb                	sub    ebx,ebp
  1076db:	0f 8e ca 00 00 00    	jle    1077ab <_svfprintf_r+0x1b3b>
  1076e1:	83 fb 11             	cmp    ebx,0x11
  1076e4:	48 8d ac 24 20 01 00 	lea    rbp,[rsp+0x120]
  1076eb:	00 
  1076ec:	73 70                	jae    10775e <_svfprintf_r+0x1aee>
  1076ee:	89 d8                	mov    eax,ebx
  1076f0:	48 8d 0d f9 93 ff ff 	lea    rcx,[rip+0xffffffffffff93f9]        # 100af0 <_svfprintf_r.zeroes>
  1076f7:	49 89 0e             	mov    QWORD PTR [r14],rcx
  1076fa:	89 c0                	mov    eax,eax
  1076fc:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  107700:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  107705:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  107709:	8d 48 01             	lea    ecx,[rax+0x1]
  10770c:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  107710:	83 f8 07             	cmp    eax,0x7
  107713:	0f 8c 23 01 00 00    	jl     10783c <_svfprintf_r+0x1bcc>
  107719:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  10771e:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  107723:	48 89 de             	mov    rsi,rbx
  107726:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  10772b:	e8 70 16 00 00       	call   108da0 <__ssprint_r>
  107730:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  107735:	49 89 ee             	mov    r14,rbp
  107738:	85 c0                	test   eax,eax
  10773a:	0f 84 05 01 00 00    	je     107845 <_svfprintf_r+0x1bd5>
  107740:	e9 1e 06 00 00       	jmp    107d63 <_svfprintf_r+0x20f3>
  107745:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  10774c:	00 00 00 00 
  107750:	49 83 c6 10          	add    r14,0x10
  107754:	8d 43 f0             	lea    eax,[rbx-0x10]
  107757:	83 fb 20             	cmp    ebx,0x20
  10775a:	89 c3                	mov    ebx,eax
  10775c:	7e 92                	jle    1076f0 <_svfprintf_r+0x1a80>
  10775e:	48 8d 05 8b 93 ff ff 	lea    rax,[rip+0xffffffffffff938b]        # 100af0 <_svfprintf_r.zeroes>
  107765:	49 89 06             	mov    QWORD PTR [r14],rax
  107768:	49 c7 46 08 10 00 00 	mov    QWORD PTR [r14+0x8],0x10
  10776f:	00 
  107770:	48 83 44 24 20 10    	add    QWORD PTR [rsp+0x20],0x10
  107776:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  10777a:	8d 48 01             	lea    ecx,[rax+0x1]
  10777d:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  107781:	83 f8 07             	cmp    eax,0x7
  107784:	7c ca                	jl     107750 <_svfprintf_r+0x1ae0>
  107786:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  10778b:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
  107790:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107795:	e8 06 16 00 00       	call   108da0 <__ssprint_r>
  10779a:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  10779f:	49 89 ee             	mov    r14,rbp
  1077a2:	85 c0                	test   eax,eax
  1077a4:	74 ae                	je     107754 <_svfprintf_r+0x1ae4>
  1077a6:	e9 b3 05 00 00       	jmp    107d5e <_svfprintf_r+0x20ee>
  1077ab:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  1077b0:	48 8d ac 24 20 01 00 	lea    rbp,[rsp+0x120]
  1077b7:	00 
  1077b8:	e9 88 00 00 00       	jmp    107845 <_svfprintf_r+0x1bd5>
  1077bd:	49 83 c6 10          	add    r14,0x10
  1077c1:	48 8b 6c 24 58       	mov    rbp,QWORD PTR [rsp+0x58]
  1077c6:	85 c0                	test   eax,eax
  1077c8:	75 17                	jne    1077e1 <_svfprintf_r+0x1b71>
  1077ca:	83 bc 24 90 00 00 00 	cmp    DWORD PTR [rsp+0x90],0x0
  1077d1:	00 
  1077d2:	75 0d                	jne    1077e1 <_svfprintf_r+0x1b71>
  1077d4:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  1077d8:	83 e1 01             	and    ecx,0x1
  1077db:	0f 84 ee 02 00 00    	je     107acf <_svfprintf_r+0x1e5f>
  1077e1:	48 8b 8c 24 b0 00 00 	mov    rcx,QWORD PTR [rsp+0xb0]
  1077e8:	00 
  1077e9:	49 89 0e             	mov    QWORD PTR [r14],rcx
  1077ec:	48 8b 8c 24 a0 00 00 	mov    rcx,QWORD PTR [rsp+0xa0]
  1077f3:	00 
  1077f4:	49 89 4e 08          	mov    QWORD PTR [r14+0x8],rcx
  1077f8:	48 01 4c 24 20       	add    QWORD PTR [rsp+0x20],rcx
  1077fd:	8b 4c 24 18          	mov    ecx,DWORD PTR [rsp+0x18]
  107801:	8d 51 01             	lea    edx,[rcx+0x1]
  107804:	89 54 24 18          	mov    DWORD PTR [rsp+0x18],edx
  107808:	83 f9 07             	cmp    ecx,0x7
  10780b:	0f 8c 64 02 00 00    	jl     107a75 <_svfprintf_r+0x1e05>
  107811:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  107816:	48 89 de             	mov    rsi,rbx
  107819:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  10781e:	e8 7d 15 00 00       	call   108da0 <__ssprint_r>
  107823:	85 c0                	test   eax,eax
  107825:	0f 85 38 05 00 00    	jne    107d63 <_svfprintf_r+0x20f3>
  10782b:	8b 44 24 44          	mov    eax,DWORD PTR [rsp+0x44]
  10782f:	4d 89 fe             	mov    r14,r15
  107832:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  107837:	e9 3d 02 00 00       	jmp    107a79 <_svfprintf_r+0x1e09>
  10783c:	49 83 c6 10          	add    r14,0x10
  107840:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  107845:	8b 44 24 44          	mov    eax,DWORD PTR [rsp+0x44]
  107849:	3b 84 24 90 00 00 00 	cmp    eax,DWORD PTR [rsp+0x90]
  107850:	7c 09                	jl     10785b <_svfprintf_r+0x1beb>
  107852:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  107856:	83 e1 01             	and    ecx,0x1
  107859:	74 58                	je     1078b3 <_svfprintf_r+0x1c43>
  10785b:	48 8b 8c 24 b0 00 00 	mov    rcx,QWORD PTR [rsp+0xb0]
  107862:	00 
  107863:	49 89 0e             	mov    QWORD PTR [r14],rcx
  107866:	48 8b 8c 24 a0 00 00 	mov    rcx,QWORD PTR [rsp+0xa0]
  10786d:	00 
  10786e:	49 89 4e 08          	mov    QWORD PTR [r14+0x8],rcx
  107872:	48 01 4c 24 20       	add    QWORD PTR [rsp+0x20],rcx
  107877:	8b 4c 24 18          	mov    ecx,DWORD PTR [rsp+0x18]
  10787b:	8d 51 01             	lea    edx,[rcx+0x1]
  10787e:	89 54 24 18          	mov    DWORD PTR [rsp+0x18],edx
  107882:	83 f9 07             	cmp    ecx,0x7
  107885:	7c 28                	jl     1078af <_svfprintf_r+0x1c3f>
  107887:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  10788c:	48 89 de             	mov    rsi,rbx
  10788f:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107894:	e8 07 15 00 00       	call   108da0 <__ssprint_r>
  107899:	85 c0                	test   eax,eax
  10789b:	0f 85 c2 04 00 00    	jne    107d63 <_svfprintf_r+0x20f3>
  1078a1:	8b 44 24 44          	mov    eax,DWORD PTR [rsp+0x44]
  1078a5:	49 89 ee             	mov    r14,rbp
  1078a8:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  1078ad:	eb 04                	jmp    1078b3 <_svfprintf_r+0x1c43>
  1078af:	49 83 c6 10          	add    r14,0x10
  1078b3:	49 63 cf             	movsxd rcx,r15d
  1078b6:	4c 01 e9             	add    rcx,r13
  1078b9:	48 8b 94 24 90 00 00 	mov    rdx,QWORD PTR [rsp+0x90]
  1078c0:	00 
  1078c1:	41 01 d5             	add    r13d,edx
  1078c4:	41 29 cd             	sub    r13d,ecx
  1078c7:	89 d3                	mov    ebx,edx
  1078c9:	29 c3                	sub    ebx,eax
  1078cb:	44 39 eb             	cmp    ebx,r13d
  1078ce:	41 0f 4d dd          	cmovge ebx,r13d
  1078d2:	85 db                	test   ebx,ebx
  1078d4:	7e 4d                	jle    107923 <_svfprintf_r+0x1cb3>
  1078d6:	49 89 0e             	mov    QWORD PTR [r14],rcx
  1078d9:	89 d9                	mov    ecx,ebx
  1078db:	49 89 4e 08          	mov    QWORD PTR [r14+0x8],rcx
  1078df:	48 01 4c 24 20       	add    QWORD PTR [rsp+0x20],rcx
  1078e4:	8b 4c 24 18          	mov    ecx,DWORD PTR [rsp+0x18]
  1078e8:	8d 51 01             	lea    edx,[rcx+0x1]
  1078eb:	89 54 24 18          	mov    DWORD PTR [rsp+0x18],edx
  1078ef:	83 f9 07             	cmp    ecx,0x7
  1078f2:	44 8b 6c 24 0c       	mov    r13d,DWORD PTR [rsp+0xc]
  1078f7:	7c 31                	jl     10792a <_svfprintf_r+0x1cba>
  1078f9:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  1078fe:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
  107903:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107908:	e8 93 14 00 00       	call   108da0 <__ssprint_r>
  10790d:	85 c0                	test   eax,eax
  10790f:	0f 85 a0 04 00 00    	jne    107db5 <_svfprintf_r+0x2145>
  107915:	8b 44 24 44          	mov    eax,DWORD PTR [rsp+0x44]
  107919:	49 89 ee             	mov    r14,rbp
  10791c:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  107921:	eb 0b                	jmp    10792e <_svfprintf_r+0x1cbe>
  107923:	44 8b 6c 24 0c       	mov    r13d,DWORD PTR [rsp+0xc]
  107928:	eb 04                	jmp    10792e <_svfprintf_r+0x1cbe>
  10792a:	49 83 c6 10          	add    r14,0x10
  10792e:	85 db                	test   ebx,ebx
  107930:	b9 00 00 00 00       	mov    ecx,0x0
  107935:	0f 4e d9             	cmovle ebx,ecx
  107938:	01 c3                	add    ebx,eax
  10793a:	48 8b ac 24 90 00 00 	mov    rbp,QWORD PTR [rsp+0x90]
  107941:	00 
  107942:	29 dd                	sub    ebp,ebx
  107944:	85 ed                	test   ebp,ebp
  107946:	7e 76                	jle    1079be <_svfprintf_r+0x1d4e>
  107948:	83 fd 11             	cmp    ebp,0x11
  10794b:	72 7b                	jb     1079c8 <_svfprintf_r+0x1d58>
  10794d:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  107952:	eb 1a                	jmp    10796e <_svfprintf_r+0x1cfe>
  107954:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10795b:	00 00 00 00 00 
  107960:	49 83 c6 10          	add    r14,0x10
  107964:	8d 45 f0             	lea    eax,[rbp-0x10]
  107967:	83 fd 20             	cmp    ebp,0x20
  10796a:	89 c5                	mov    ebp,eax
  10796c:	7e 61                	jle    1079cf <_svfprintf_r+0x1d5f>
  10796e:	48 8d 05 7b 91 ff ff 	lea    rax,[rip+0xffffffffffff917b]        # 100af0 <_svfprintf_r.zeroes>
  107975:	49 89 06             	mov    QWORD PTR [r14],rax
  107978:	49 c7 46 08 10 00 00 	mov    QWORD PTR [r14+0x8],0x10
  10797f:	00 
  107980:	48 83 44 24 20 10    	add    QWORD PTR [rsp+0x20],0x10
  107986:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  10798a:	8d 48 01             	lea    ecx,[rax+0x1]
  10798d:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  107991:	83 f8 07             	cmp    eax,0x7
  107994:	7c ca                	jl     107960 <_svfprintf_r+0x1cf0>
  107996:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  10799b:	48 89 de             	mov    rsi,rbx
  10799e:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  1079a3:	e8 f8 13 00 00       	call   108da0 <__ssprint_r>
  1079a8:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  1079ad:	4c 8d b4 24 20 01 00 	lea    r14,[rsp+0x120]
  1079b4:	00 
  1079b5:	85 c0                	test   eax,eax
  1079b7:	74 ab                	je     107964 <_svfprintf_r+0x1cf4>
  1079b9:	e9 aa 03 00 00       	jmp    107d68 <_svfprintf_r+0x20f8>
  1079be:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  1079c3:	e9 e6 f8 ff ff       	jmp    1072ae <_svfprintf_r+0x163e>
  1079c8:	89 e8                	mov    eax,ebp
  1079ca:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  1079cf:	48 8d 0d 1a 91 ff ff 	lea    rcx,[rip+0xffffffffffff911a]        # 100af0 <_svfprintf_r.zeroes>
  1079d6:	49 89 0e             	mov    QWORD PTR [r14],rcx
  1079d9:	89 c0                	mov    eax,eax
  1079db:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  1079df:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  1079e4:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  1079e8:	8d 48 01             	lea    ecx,[rax+0x1]
  1079eb:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  1079ef:	83 f8 07             	cmp    eax,0x7
  1079f2:	7c 29                	jl     107a1d <_svfprintf_r+0x1dad>
  1079f4:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  1079f9:	48 89 de             	mov    rsi,rbx
  1079fc:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107a01:	e8 9a 13 00 00       	call   108da0 <__ssprint_r>
  107a06:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  107a0b:	4c 8d bc 24 20 01 00 	lea    r15,[rsp+0x120]
  107a12:	00 
  107a13:	4d 89 fe             	mov    r14,r15
  107a16:	85 c0                	test   eax,eax
  107a18:	e9 ec f7 ff ff       	jmp    107209 <_svfprintf_r+0x1599>
  107a1d:	49 83 c6 10          	add    r14,0x10
  107a21:	e9 88 f8 ff ff       	jmp    1072ae <_svfprintf_r+0x163e>
  107a26:	83 c3 f0             	add    ebx,0xfffffff0
  107a29:	48 8d 05 c0 90 ff ff 	lea    rax,[rip+0xffffffffffff90c0]        # 100af0 <_svfprintf_r.zeroes>
  107a30:	49 89 06             	mov    QWORD PTR [r14],rax
  107a33:	89 d8                	mov    eax,ebx
  107a35:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  107a39:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  107a3e:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  107a42:	8d 48 01             	lea    ecx,[rax+0x1]
  107a45:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  107a49:	83 f8 07             	cmp    eax,0x7
  107a4c:	7c 0f                	jl     107a5d <_svfprintf_r+0x1ded>
  107a4e:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  107a53:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  107a58:	e9 ee 00 00 00       	jmp    107b4b <_svfprintf_r+0x1edb>
  107a5d:	49 83 c6 10          	add    r14,0x10
  107a61:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  107a66:	e9 d2 01 00 00       	jmp    107c3d <_svfprintf_r+0x1fcd>
  107a6b:	8d 58 ff             	lea    ebx,[rax-0x1]
  107a6e:	44 8b 6c 24 0c       	mov    r13d,DWORD PTR [rsp+0xc]
  107a73:	eb 67                	jmp    107adc <_svfprintf_r+0x1e6c>
  107a75:	49 83 c6 10          	add    r14,0x10
  107a79:	85 c0                	test   eax,eax
  107a7b:	0f 88 1a 02 00 00    	js     107c9b <_svfprintf_r+0x202b>
  107a81:	4d 89 2e             	mov    QWORD PTR [r14],r13
  107a84:	48 63 84 24 90 00 00 	movsxd rax,DWORD PTR [rsp+0x90]
  107a8b:	00 
  107a8c:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  107a90:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  107a95:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  107a99:	8d 48 01             	lea    ecx,[rax+0x1]
  107a9c:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  107aa0:	83 f8 07             	cmp    eax,0x7
  107aa3:	7c 26                	jl     107acb <_svfprintf_r+0x1e5b>
  107aa5:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  107aaa:	48 89 de             	mov    rsi,rbx
  107aad:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107ab2:	e8 e9 12 00 00       	call   108da0 <__ssprint_r>
  107ab7:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  107abc:	4d 89 fe             	mov    r14,r15
  107abf:	85 c0                	test   eax,eax
  107ac1:	44 8b 6c 24 0c       	mov    r13d,DWORD PTR [rsp+0xc]
  107ac6:	e9 97 00 00 00       	jmp    107b62 <_svfprintf_r+0x1ef2>
  107acb:	49 83 c6 10          	add    r14,0x10
  107acf:	44 8b 6c 24 0c       	mov    r13d,DWORD PTR [rsp+0xc]
  107ad4:	e9 64 01 00 00       	jmp    107c3d <_svfprintf_r+0x1fcd>
  107ad9:	83 c3 f0             	add    ebx,0xfffffff0
  107adc:	48 8d 05 0d 90 ff ff 	lea    rax,[rip+0xffffffffffff900d]        # 100af0 <_svfprintf_r.zeroes>
  107ae3:	49 89 06             	mov    QWORD PTR [r14],rax
  107ae6:	89 d8                	mov    eax,ebx
  107ae8:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  107aec:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  107af1:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  107af5:	8d 48 01             	lea    ecx,[rax+0x1]
  107af8:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  107afc:	83 f8 07             	cmp    eax,0x7
  107aff:	7c 0f                	jl     107b10 <_svfprintf_r+0x1ea0>
  107b01:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  107b06:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  107b0b:	e9 17 f8 ff ff       	jmp    107327 <_svfprintf_r+0x16b7>
  107b10:	49 83 c6 10          	add    r14,0x10
  107b14:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  107b19:	48 8d 44 24 67       	lea    rax,[rsp+0x67]
  107b1e:	49 89 06             	mov    QWORD PTR [r14],rax
  107b21:	48 63 84 24 c8 00 00 	movsxd rax,DWORD PTR [rsp+0xc8]
  107b28:	00 
  107b29:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  107b2d:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  107b32:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  107b36:	8d 48 01             	lea    ecx,[rax+0x1]
  107b39:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  107b3d:	83 f8 07             	cmp    eax,0x7
  107b40:	0f 8c f3 00 00 00    	jl     107c39 <_svfprintf_r+0x1fc9>
  107b46:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  107b4b:	48 89 de             	mov    rsi,rbx
  107b4e:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107b53:	e8 48 12 00 00       	call   108da0 <__ssprint_r>
  107b58:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  107b5d:	4d 89 fe             	mov    r14,r15
  107b60:	85 c0                	test   eax,eax
  107b62:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  107b66:	0f 85 fc 01 00 00    	jne    107d68 <_svfprintf_r+0x20f8>
  107b6c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  107b70:	f6 c1 04             	test   cl,0x4
  107b73:	0f 84 d7 00 00 00    	je     107c50 <_svfprintf_r+0x1fe0>
  107b79:	85 ed                	test   ebp,ebp
  107b7b:	0f 8e cf 00 00 00    	jle    107c50 <_svfprintf_r+0x1fe0>
  107b81:	83 fd 11             	cmp    ebp,0x11
  107b84:	73 68                	jae    107bee <_svfprintf_r+0x1f7e>
  107b86:	89 e8                	mov    eax,ebp
  107b88:	48 8d 0d 51 8f ff ff 	lea    rcx,[rip+0xffffffffffff8f51]        # 100ae0 <_svfprintf_r.blanks>
  107b8f:	49 89 0e             	mov    QWORD PTR [r14],rcx
  107b92:	89 c0                	mov    eax,eax
  107b94:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  107b98:	48 03 44 24 20       	add    rax,QWORD PTR [rsp+0x20]
  107b9d:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  107ba2:	8b 4c 24 18          	mov    ecx,DWORD PTR [rsp+0x18]
  107ba6:	8d 51 01             	lea    edx,[rcx+0x1]
  107ba9:	89 54 24 18          	mov    DWORD PTR [rsp+0x18],edx
  107bad:	83 f9 07             	cmp    ecx,0x7
  107bb0:	0f 8c 9f 00 00 00    	jl     107c55 <_svfprintf_r+0x1fe5>
  107bb6:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  107bbb:	48 89 de             	mov    rsi,rbx
  107bbe:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107bc3:	e8 d8 11 00 00       	call   108da0 <__ssprint_r>
  107bc8:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  107bcd:	85 c0                	test   eax,eax
  107bcf:	74 7f                	je     107c50 <_svfprintf_r+0x1fe0>
  107bd1:	e9 92 01 00 00       	jmp    107d68 <_svfprintf_r+0x20f8>
  107bd6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  107bdd:	00 00 00 
  107be0:	49 83 c6 10          	add    r14,0x10
  107be4:	8d 45 f0             	lea    eax,[rbp-0x10]
  107be7:	83 fd 20             	cmp    ebp,0x20
  107bea:	89 c5                	mov    ebp,eax
  107bec:	7e 9a                	jle    107b88 <_svfprintf_r+0x1f18>
  107bee:	48 8d 05 eb 8e ff ff 	lea    rax,[rip+0xffffffffffff8eeb]        # 100ae0 <_svfprintf_r.blanks>
  107bf5:	49 89 06             	mov    QWORD PTR [r14],rax
  107bf8:	49 c7 46 08 10 00 00 	mov    QWORD PTR [r14+0x8],0x10
  107bff:	00 
  107c00:	48 83 44 24 20 10    	add    QWORD PTR [rsp+0x20],0x10
  107c06:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  107c0a:	8d 48 01             	lea    ecx,[rax+0x1]
  107c0d:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  107c11:	83 f8 07             	cmp    eax,0x7
  107c14:	7c ca                	jl     107be0 <_svfprintf_r+0x1f70>
  107c16:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  107c1b:	48 89 de             	mov    rsi,rbx
  107c1e:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107c23:	e8 78 11 00 00       	call   108da0 <__ssprint_r>
  107c28:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  107c2d:	4d 89 fe             	mov    r14,r15
  107c30:	85 c0                	test   eax,eax
  107c32:	74 b0                	je     107be4 <_svfprintf_r+0x1f74>
  107c34:	e9 2f 01 00 00       	jmp    107d68 <_svfprintf_r+0x20f8>
  107c39:	49 83 c6 10          	add    r14,0x10
  107c3d:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  107c41:	f6 c1 04             	test   cl,0x4
  107c44:	0f 85 2f ff ff ff    	jne    107b79 <_svfprintf_r+0x1f09>
  107c4a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  107c50:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
  107c55:	48 89 dd             	mov    rbp,rbx
  107c58:	8b 9c 24 c4 00 00 00 	mov    ebx,DWORD PTR [rsp+0xc4]
  107c5f:	41 39 db             	cmp    r11d,ebx
  107c62:	41 0f 4f db          	cmovg  ebx,r11d
  107c66:	44 01 eb             	add    ebx,r13d
  107c69:	48 85 c0             	test   rax,rax
  107c6c:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  107c71:	74 15                	je     107c88 <_svfprintf_r+0x2018>
  107c73:	48 89 ee             	mov    rsi,rbp
  107c76:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107c7b:	e8 20 11 00 00       	call   108da0 <__ssprint_r>
  107c80:	85 c0                	test   eax,eax
  107c82:	0f 85 34 01 00 00    	jne    107dbc <_svfprintf_r+0x214c>
  107c88:	c7 44 24 18 00 00 00 	mov    DWORD PTR [rsp+0x18],0x0
  107c8f:	00 
  107c90:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  107c96:	e9 aa e0 ff ff       	jmp    105d45 <_svfprintf_r+0xd5>
  107c9b:	89 c3                	mov    ebx,eax
  107c9d:	f7 db                	neg    ebx
  107c9f:	83 f8 ef             	cmp    eax,0xffffffef
  107ca2:	76 62                	jbe    107d06 <_svfprintf_r+0x2096>
  107ca4:	89 d8                	mov    eax,ebx
  107ca6:	48 8d 0d 43 8e ff ff 	lea    rcx,[rip+0xffffffffffff8e43]        # 100af0 <_svfprintf_r.zeroes>
  107cad:	49 89 0e             	mov    QWORD PTR [r14],rcx
  107cb0:	89 c0                	mov    eax,eax
  107cb2:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  107cb6:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  107cbb:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  107cbf:	8d 48 01             	lea    ecx,[rax+0x1]
  107cc2:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  107cc6:	83 f8 07             	cmp    eax,0x7
  107cc9:	0f 8c 81 00 00 00    	jl     107d50 <_svfprintf_r+0x20e0>
  107ccf:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  107cd4:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  107cd9:	48 89 de             	mov    rsi,rbx
  107cdc:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107ce1:	e8 ba 10 00 00       	call   108da0 <__ssprint_r>
  107ce6:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  107ceb:	4d 89 fe             	mov    r14,r15
  107cee:	85 c0                	test   eax,eax
  107cf0:	0f 84 8b fd ff ff    	je     107a81 <_svfprintf_r+0x1e11>
  107cf6:	eb 6b                	jmp    107d63 <_svfprintf_r+0x20f3>
  107cf8:	49 83 c6 10          	add    r14,0x10
  107cfc:	8d 43 f0             	lea    eax,[rbx-0x10]
  107cff:	83 fb 20             	cmp    ebx,0x20
  107d02:	89 c3                	mov    ebx,eax
  107d04:	7e a0                	jle    107ca6 <_svfprintf_r+0x2036>
  107d06:	48 8d 05 e3 8d ff ff 	lea    rax,[rip+0xffffffffffff8de3]        # 100af0 <_svfprintf_r.zeroes>
  107d0d:	49 89 06             	mov    QWORD PTR [r14],rax
  107d10:	49 c7 46 08 10 00 00 	mov    QWORD PTR [r14+0x8],0x10
  107d17:	00 
  107d18:	48 83 44 24 20 10    	add    QWORD PTR [rsp+0x20],0x10
  107d1e:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  107d22:	8d 48 01             	lea    ecx,[rax+0x1]
  107d25:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  107d29:	83 f8 07             	cmp    eax,0x7
  107d2c:	7c ca                	jl     107cf8 <_svfprintf_r+0x2088>
  107d2e:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  107d33:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
  107d38:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107d3d:	e8 5e 10 00 00       	call   108da0 <__ssprint_r>
  107d42:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  107d47:	4d 89 fe             	mov    r14,r15
  107d4a:	85 c0                	test   eax,eax
  107d4c:	74 ae                	je     107cfc <_svfprintf_r+0x208c>
  107d4e:	eb 0e                	jmp    107d5e <_svfprintf_r+0x20ee>
  107d50:	49 83 c6 10          	add    r14,0x10
  107d54:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  107d59:	e9 23 fd ff ff       	jmp    107a81 <_svfprintf_r+0x1e11>
  107d5e:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  107d63:	44 8b 6c 24 0c       	mov    r13d,DWORD PTR [rsp+0xc]
  107d68:	0f b6 4b 10          	movzx  ecx,BYTE PTR [rbx+0x10]
  107d6c:	80 e1 40             	and    cl,0x40
  107d6f:	31 c0                	xor    eax,eax
  107d71:	f6 d9                	neg    cl
  107d73:	19 c0                	sbb    eax,eax
  107d75:	44 09 e8             	or     eax,r13d
  107d78:	48 81 c4 a8 01 00 00 	add    rsp,0x1a8
  107d7f:	5b                   	pop    rbx
  107d80:	41 5c                	pop    r12
  107d82:	41 5d                	pop    r13
  107d84:	41 5e                	pop    r14
  107d86:	41 5f                	pop    r15
  107d88:	5d                   	pop    rbp
  107d89:	c3                   	ret
  107d8a:	48 83 7c 24 20 00    	cmp    QWORD PTR [rsp+0x20],0x0
  107d90:	74 d6                	je     107d68 <_svfprintf_r+0x20f8>
  107d92:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107d97:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  107d9c:	48 89 de             	mov    rsi,rbx
  107d9f:	e8 fc 0f 00 00       	call   108da0 <__ssprint_r>
  107da4:	eb c2                	jmp    107d68 <_svfprintf_r+0x20f8>
  107da6:	41 c7 45 00 0c 00 00 	mov    DWORD PTR [r13+0x0],0xc
  107dad:	00 
  107dae:	b8 ff ff ff ff       	mov    eax,0xffffffff
  107db3:	eb c3                	jmp    107d78 <_svfprintf_r+0x2108>
  107db5:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  107dba:	eb ac                	jmp    107d68 <_svfprintf_r+0x20f8>
  107dbc:	41 89 dd             	mov    r13d,ebx
  107dbf:	48 89 eb             	mov    rbx,rbp
  107dc2:	eb a4                	jmp    107d68 <_svfprintf_r+0x20f8>
  107dc4:	cc                   	int3
  107dc5:	cc                   	int3
  107dc6:	cc                   	int3
  107dc7:	cc                   	int3
  107dc8:	cc                   	int3
  107dc9:	cc                   	int3
  107dca:	cc                   	int3
  107dcb:	cc                   	int3
  107dcc:	cc                   	int3
  107dcd:	cc                   	int3
  107dce:	cc                   	int3
  107dcf:	cc                   	int3

0000000000107dd0 <__localeconv_l>:
  107dd0:	48 8d 87 00 01 00 00 	lea    rax,[rdi+0x100]
  107dd7:	c3                   	ret
  107dd8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  107ddf:	00 

0000000000107de0 <_localeconv_r>:
  107de0:	48 8d 05 b1 de 00 00 	lea    rax,[rip+0xdeb1]        # 115c98 <_impure_ptr>
  107de7:	48 8b 00             	mov    rax,QWORD PTR [rax]
  107dea:	48 8b 40 48          	mov    rax,QWORD PTR [rax+0x48]
  107dee:	48 85 c0             	test   rax,rax
  107df1:	75 07                	jne    107dfa <_localeconv_r+0x1a>
  107df3:	48 8d 05 ee e5 00 00 	lea    rax,[rip+0xe5ee]        # 1163e8 <__global_locale>
  107dfa:	48 05 00 01 00 00    	add    rax,0x100
  107e00:	c3                   	ret
  107e01:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  107e08:	0f 1f 84 00 00 00 00 
  107e0f:	00 

0000000000107e10 <localeconv>:
  107e10:	48 8d 05 81 de 00 00 	lea    rax,[rip+0xde81]        # 115c98 <_impure_ptr>
  107e17:	48 8b 00             	mov    rax,QWORD PTR [rax]
  107e1a:	48 8b 40 48          	mov    rax,QWORD PTR [rax+0x48]
  107e1e:	48 85 c0             	test   rax,rax
  107e21:	75 07                	jne    107e2a <localeconv+0x1a>
  107e23:	48 8d 05 be e5 00 00 	lea    rax,[rip+0xe5be]        # 1163e8 <__global_locale>
  107e2a:	48 05 00 01 00 00    	add    rax,0x100
  107e30:	c3                   	ret
  107e31:	cc                   	int3
  107e32:	cc                   	int3
  107e33:	cc                   	int3
  107e34:	cc                   	int3
  107e35:	cc                   	int3
  107e36:	cc                   	int3
  107e37:	cc                   	int3
  107e38:	cc                   	int3
  107e39:	cc                   	int3
  107e3a:	cc                   	int3
  107e3b:	cc                   	int3
  107e3c:	cc                   	int3
  107e3d:	cc                   	int3
  107e3e:	cc                   	int3
  107e3f:	cc                   	int3

0000000000107e40 <_setlocale_r>:
  107e40:	53                   	push   rbx
  107e41:	48 85 d2             	test   rdx,rdx
  107e44:	74 40                	je     107e86 <_setlocale_r+0x46>
  107e46:	48 89 d3             	mov    rbx,rdx
  107e49:	48 8d 35 c0 86 ff ff 	lea    rsi,[rip+0xffffffffffff86c0]        # 100510 <_svfprintf_r.blanks-0x5d0>
  107e50:	48 89 d7             	mov    rdi,rdx
  107e53:	e8 f8 00 00 00       	call   107f50 <strcmp>
  107e58:	85 c0                	test   eax,eax
  107e5a:	74 2a                	je     107e86 <_setlocale_r+0x46>
  107e5c:	48 8d 35 77 89 ff ff 	lea    rsi,[rip+0xffffffffffff8977]        # 1007da <_svfprintf_r.blanks-0x306>
  107e63:	48 89 df             	mov    rdi,rbx
  107e66:	e8 e5 00 00 00       	call   107f50 <strcmp>
  107e6b:	85 c0                	test   eax,eax
  107e6d:	74 17                	je     107e86 <_setlocale_r+0x46>
  107e6f:	48 8d 35 3f 85 ff ff 	lea    rsi,[rip+0xffffffffffff853f]        # 1003b5 <_svfprintf_r.blanks-0x72b>
  107e76:	48 89 df             	mov    rdi,rbx
  107e79:	e8 d2 00 00 00       	call   107f50 <strcmp>
  107e7e:	85 c0                	test   eax,eax
  107e80:	74 04                	je     107e86 <_setlocale_r+0x46>
  107e82:	31 c0                	xor    eax,eax
  107e84:	5b                   	pop    rbx
  107e85:	c3                   	ret
  107e86:	48 8d 05 4d 89 ff ff 	lea    rax,[rip+0xffffffffffff894d]        # 1007da <_svfprintf_r.blanks-0x306>
  107e8d:	5b                   	pop    rbx
  107e8e:	c3                   	ret
  107e8f:	90                   	nop

0000000000107e90 <__locale_mb_cur_max>:
  107e90:	48 8d 05 01 de 00 00 	lea    rax,[rip+0xde01]        # 115c98 <_impure_ptr>
  107e97:	48 8b 00             	mov    rax,QWORD PTR [rax]
  107e9a:	48 8b 40 48          	mov    rax,QWORD PTR [rax+0x48]
  107e9e:	48 85 c0             	test   rax,rax
  107ea1:	48 8d 0d 40 e5 00 00 	lea    rcx,[rip+0xe540]        # 1163e8 <__global_locale>
  107ea8:	48 0f 45 c8          	cmovne rcx,rax
  107eac:	0f be 81 60 01 00 00 	movsx  eax,BYTE PTR [rcx+0x160]
  107eb3:	c3                   	ret
  107eb4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  107ebb:	00 00 00 00 00 

0000000000107ec0 <__locale_ctype_ptr_l>:
  107ec0:	48 8b 87 f8 00 00 00 	mov    rax,QWORD PTR [rdi+0xf8]
  107ec7:	c3                   	ret
  107ec8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  107ecf:	00 

0000000000107ed0 <__locale_ctype_ptr>:
  107ed0:	48 8d 05 c1 dd 00 00 	lea    rax,[rip+0xddc1]        # 115c98 <_impure_ptr>
  107ed7:	48 8b 00             	mov    rax,QWORD PTR [rax]
  107eda:	48 8b 40 48          	mov    rax,QWORD PTR [rax+0x48]
  107ede:	48 85 c0             	test   rax,rax
  107ee1:	48 8d 0d 00 e5 00 00 	lea    rcx,[rip+0xe500]        # 1163e8 <__global_locale>
  107ee8:	48 0f 45 c8          	cmovne rcx,rax
  107eec:	48 8b 81 f8 00 00 00 	mov    rax,QWORD PTR [rcx+0xf8]
  107ef3:	c3                   	ret
  107ef4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  107efb:	00 00 00 00 00 

0000000000107f00 <setlocale>:
  107f00:	53                   	push   rbx
  107f01:	48 85 f6             	test   rsi,rsi
  107f04:	74 40                	je     107f46 <setlocale+0x46>
  107f06:	48 89 f3             	mov    rbx,rsi
  107f09:	48 8d 35 00 86 ff ff 	lea    rsi,[rip+0xffffffffffff8600]        # 100510 <_svfprintf_r.blanks-0x5d0>
  107f10:	48 89 df             	mov    rdi,rbx
  107f13:	e8 38 00 00 00       	call   107f50 <strcmp>
  107f18:	85 c0                	test   eax,eax
  107f1a:	74 2a                	je     107f46 <setlocale+0x46>
  107f1c:	48 8d 35 b7 88 ff ff 	lea    rsi,[rip+0xffffffffffff88b7]        # 1007da <_svfprintf_r.blanks-0x306>
  107f23:	48 89 df             	mov    rdi,rbx
  107f26:	e8 25 00 00 00       	call   107f50 <strcmp>
  107f2b:	85 c0                	test   eax,eax
  107f2d:	74 17                	je     107f46 <setlocale+0x46>
  107f2f:	48 8d 35 7f 84 ff ff 	lea    rsi,[rip+0xffffffffffff847f]        # 1003b5 <_svfprintf_r.blanks-0x72b>
  107f36:	48 89 df             	mov    rdi,rbx
  107f39:	e8 12 00 00 00       	call   107f50 <strcmp>
  107f3e:	85 c0                	test   eax,eax
  107f40:	74 04                	je     107f46 <setlocale+0x46>
  107f42:	31 c0                	xor    eax,eax
  107f44:	5b                   	pop    rbx
  107f45:	c3                   	ret
  107f46:	48 8d 05 8d 88 ff ff 	lea    rax,[rip+0xffffffffffff888d]        # 1007da <_svfprintf_r.blanks-0x306>
  107f4d:	5b                   	pop    rbx
  107f4e:	c3                   	ret
  107f4f:	cc                   	int3

0000000000107f50 <strcmp>:
  107f50:	89 f0                	mov    eax,esi
  107f52:	09 f8                	or     eax,edi
  107f54:	a8 07                	test   al,0x7
  107f56:	74 05                	je     107f5d <strcmp+0xd>
  107f58:	0f b6 07             	movzx  eax,BYTE PTR [rdi]
  107f5b:	eb 4a                	jmp    107fa7 <strcmp+0x57>
  107f5d:	48 8b 07             	mov    rax,QWORD PTR [rdi]
  107f60:	48 3b 06             	cmp    rax,QWORD PTR [rsi]
  107f63:	75 42                	jne    107fa7 <strcmp+0x57>
  107f65:	49 b8 80 80 80 80 80 	movabs r8,0x8080808080808080
  107f6c:	80 80 80 
  107f6f:	48 ba ff fe fe fe fe 	movabs rdx,0xfefefefefefefeff
  107f76:	fe fe fe 
  107f79:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  107f80:	48 8d 0c 10          	lea    rcx,[rax+rdx*1]
  107f84:	48 f7 d0             	not    rax
  107f87:	4c 21 c0             	and    rax,r8
  107f8a:	48 85 c8             	test   rax,rcx
  107f8d:	75 3d                	jne    107fcc <strcmp+0x7c>
  107f8f:	48 8d 4e 08          	lea    rcx,[rsi+0x8]
  107f93:	48 8b 47 08          	mov    rax,QWORD PTR [rdi+0x8]
  107f97:	48 83 c7 08          	add    rdi,0x8
  107f9b:	48 3b 46 08          	cmp    rax,QWORD PTR [rsi+0x8]
  107f9f:	48 89 ce             	mov    rsi,rcx
  107fa2:	74 dc                	je     107f80 <strcmp+0x30>
  107fa4:	48 89 ce             	mov    rsi,rcx
  107fa7:	84 c0                	test   al,al
  107fa9:	74 16                	je     107fc1 <strcmp+0x71>
  107fab:	48 ff c7             	inc    rdi
  107fae:	66 90                	xchg   ax,ax
  107fb0:	3a 06                	cmp    al,BYTE PTR [rsi]
  107fb2:	75 0f                	jne    107fc3 <strcmp+0x73>
  107fb4:	48 ff c6             	inc    rsi
  107fb7:	0f b6 07             	movzx  eax,BYTE PTR [rdi]
  107fba:	48 ff c7             	inc    rdi
  107fbd:	84 c0                	test   al,al
  107fbf:	75 ef                	jne    107fb0 <strcmp+0x60>
  107fc1:	31 c0                	xor    eax,eax
  107fc3:	0f b6 c0             	movzx  eax,al
  107fc6:	0f b6 0e             	movzx  ecx,BYTE PTR [rsi]
  107fc9:	29 c8                	sub    eax,ecx
  107fcb:	c3                   	ret
  107fcc:	31 c0                	xor    eax,eax
  107fce:	c3                   	ret
  107fcf:	cc                   	int3

0000000000107fd0 <_wctomb_r>:
  107fd0:	48 8d 05 c1 dc 00 00 	lea    rax,[rip+0xdcc1]        # 115c98 <_impure_ptr>
  107fd7:	48 8b 00             	mov    rax,QWORD PTR [rax]
  107fda:	48 8b 40 48          	mov    rax,QWORD PTR [rax+0x48]
  107fde:	48 85 c0             	test   rax,rax
  107fe1:	75 07                	jne    107fea <_wctomb_r+0x1a>
  107fe3:	48 8d 05 fe e3 00 00 	lea    rax,[rip+0xe3fe]        # 1163e8 <__global_locale>
  107fea:	48 8b 80 e0 00 00 00 	mov    rax,QWORD PTR [rax+0xe0]
  107ff1:	ff e0                	jmp    rax
  107ff3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  107ffa:	84 00 00 00 00 00 

0000000000108000 <__ascii_wctomb>:
  108000:	48 85 f6             	test   rsi,rsi
  108003:	74 14                	je     108019 <__ascii_wctomb+0x19>
  108005:	81 fa 00 01 00 00    	cmp    edx,0x100
  10800b:	72 0f                	jb     10801c <__ascii_wctomb+0x1c>
  10800d:	c7 07 8a 00 00 00    	mov    DWORD PTR [rdi],0x8a
  108013:	b8 ff ff ff ff       	mov    eax,0xffffffff
  108018:	c3                   	ret
  108019:	31 c0                	xor    eax,eax
  10801b:	c3                   	ret
  10801c:	88 16                	mov    BYTE PTR [rsi],dl
  10801e:	b8 01 00 00 00       	mov    eax,0x1
  108023:	c3                   	ret
  108024:	cc                   	int3
  108025:	cc                   	int3
  108026:	cc                   	int3
  108027:	cc                   	int3
  108028:	cc                   	int3
  108029:	cc                   	int3
  10802a:	cc                   	int3
  10802b:	cc                   	int3
  10802c:	cc                   	int3
  10802d:	cc                   	int3
  10802e:	cc                   	int3
  10802f:	cc                   	int3

0000000000108030 <_mbtowc_r>:
  108030:	48 8d 05 61 dc 00 00 	lea    rax,[rip+0xdc61]        # 115c98 <_impure_ptr>
  108037:	48 8b 00             	mov    rax,QWORD PTR [rax]
  10803a:	48 8b 40 48          	mov    rax,QWORD PTR [rax+0x48]
  10803e:	48 85 c0             	test   rax,rax
  108041:	75 07                	jne    10804a <_mbtowc_r+0x1a>
  108043:	48 8d 05 9e e3 00 00 	lea    rax,[rip+0xe39e]        # 1163e8 <__global_locale>
  10804a:	48 8b 80 e8 00 00 00 	mov    rax,QWORD PTR [rax+0xe8]
  108051:	ff e0                	jmp    rax
  108053:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10805a:	84 00 00 00 00 00 

0000000000108060 <__ascii_mbtowc>:
  108060:	48 85 f6             	test   rsi,rsi
  108063:	48 8d 44 24 fc       	lea    rax,[rsp-0x4]
  108068:	48 0f 45 c6          	cmovne rax,rsi
  10806c:	48 85 d2             	test   rdx,rdx
  10806f:	74 13                	je     108084 <__ascii_mbtowc+0x24>
  108071:	48 85 c9             	test   rcx,rcx
  108074:	74 11                	je     108087 <__ascii_mbtowc+0x27>
  108076:	0f b6 0a             	movzx  ecx,BYTE PTR [rdx]
  108079:	89 08                	mov    DWORD PTR [rax],ecx
  10807b:	31 c0                	xor    eax,eax
  10807d:	80 3a 00             	cmp    BYTE PTR [rdx],0x0
  108080:	0f 95 c0             	setne  al
  108083:	c3                   	ret
  108084:	31 c0                	xor    eax,eax
  108086:	c3                   	ret
  108087:	b8 fe ff ff ff       	mov    eax,0xfffffffe
  10808c:	c3                   	ret
  10808d:	cc                   	int3
  10808e:	cc                   	int3
  10808f:	cc                   	int3

0000000000108090 <_malloc_r>:
  108090:	55                   	push   rbp
  108091:	41 57                	push   r15
  108093:	41 56                	push   r14
  108095:	41 55                	push   r13
  108097:	41 54                	push   r12
  108099:	53                   	push   rbx
  10809a:	48 83 ec 18          	sub    rsp,0x18
  10809e:	49 89 fe             	mov    r14,rdi
  1080a1:	48 8d 46 17          	lea    rax,[rsi+0x17]
  1080a5:	48 89 c1             	mov    rcx,rax
  1080a8:	48 83 e1 f0          	and    rcx,0xfffffffffffffff0
  1080ac:	48 83 f8 2f          	cmp    rax,0x2f
  1080b0:	41 bd 20 00 00 00    	mov    r13d,0x20
  1080b6:	4c 0f 43 e9          	cmovae r13,rcx
  1080ba:	49 81 fd ff ff ff 7f 	cmp    r13,0x7fffffff
  1080c1:	77 64                	ja     108127 <_malloc_r+0x97>
  1080c3:	49 39 f5             	cmp    r13,rsi
  1080c6:	72 5f                	jb     108127 <_malloc_r+0x97>
  1080c8:	4c 89 f7             	mov    rdi,r14
  1080cb:	e8 d0 07 00 00       	call   1088a0 <__malloc_lock>
  1080d0:	49 81 fd f7 01 00 00 	cmp    r13,0x1f7
  1080d7:	77 5d                	ja     108136 <_malloc_r+0xa6>
  1080d9:	48 b9 f0 ff ff ff 03 	movabs rcx,0x3fffffff0
  1080e0:	00 00 00 
  1080e3:	4c 21 e9             	and    rcx,r13
  1080e6:	48 8d 15 a3 e4 00 00 	lea    rdx,[rip+0xe4a3]        # 116590 <__malloc_av_>
  1080ed:	48 8d 04 4a          	lea    rax,[rdx+rcx*2]
  1080f1:	4c 8b 7c 4a 18       	mov    r15,QWORD PTR [rdx+rcx*2+0x18]
  1080f6:	49 39 c7             	cmp    r15,rax
  1080f9:	74 63                	je     10815e <_malloc_r+0xce>
  1080fb:	49 39 c7             	cmp    r15,rax
  1080fe:	74 6f                	je     10816f <_malloc_r+0xdf>
  108100:	49 8b 47 08          	mov    rax,QWORD PTR [r15+0x8]
  108104:	49 8b 4f 10          	mov    rcx,QWORD PTR [r15+0x10]
  108108:	48 83 e0 fc          	and    rax,0xfffffffffffffffc
  10810c:	49 8b 57 18          	mov    rdx,QWORD PTR [r15+0x18]
  108110:	48 89 51 18          	mov    QWORD PTR [rcx+0x18],rdx
  108114:	48 89 4a 10          	mov    QWORD PTR [rdx+0x10],rcx
  108118:	41 80 4c 07 08 01    	or     BYTE PTR [r15+rax*1+0x8],0x1
  10811e:	49 83 c7 10          	add    r15,0x10
  108122:	e9 7e 05 00 00       	jmp    1086a5 <_malloc_r+0x615>
  108127:	41 c7 06 0c 00 00 00 	mov    DWORD PTR [r14],0xc
  10812e:	45 31 ff             	xor    r15d,r15d
  108131:	e9 3e 07 00 00       	jmp    108874 <_malloc_r+0x7e4>
  108136:	ba 3f 00 00 00       	mov    edx,0x3f
  10813b:	49 81 fd 00 02 00 00 	cmp    r13,0x200
  108142:	0f 82 93 00 00 00    	jb     1081db <_malloc_r+0x14b>
  108148:	49 81 fd ff 09 00 00 	cmp    r13,0x9ff
  10814f:	77 2d                	ja     10817e <_malloc_r+0xee>
  108151:	4c 89 ea             	mov    rdx,r13
  108154:	48 c1 ea 06          	shr    rdx,0x6
  108158:	48 83 c2 38          	add    rdx,0x38
  10815c:	eb 7d                	jmp    1081db <_malloc_r+0x14b>
  10815e:	48 8d 04 4a          	lea    rax,[rdx+rcx*2]
  108162:	48 83 c0 10          	add    rax,0x10
  108166:	4c 8b 78 18          	mov    r15,QWORD PTR [rax+0x18]
  10816a:	49 39 c7             	cmp    r15,rax
  10816d:	75 91                	jne    108100 <_malloc_r+0x70>
  10816f:	4c 89 ea             	mov    rdx,r13
  108172:	48 c1 ea 03          	shr    rdx,0x3
  108176:	83 c2 02             	add    edx,0x2
  108179:	e9 b1 00 00 00       	jmp    10822f <_malloc_r+0x19f>
  10817e:	49 81 fd ff 29 00 00 	cmp    r13,0x29ff
  108185:	77 0d                	ja     108194 <_malloc_r+0x104>
  108187:	4c 89 ea             	mov    rdx,r13
  10818a:	48 c1 ea 09          	shr    rdx,0x9
  10818e:	48 83 c2 5b          	add    rdx,0x5b
  108192:	eb 47                	jmp    1081db <_malloc_r+0x14b>
  108194:	49 81 fd ff a9 00 00 	cmp    r13,0xa9ff
  10819b:	77 0d                	ja     1081aa <_malloc_r+0x11a>
  10819d:	4c 89 ea             	mov    rdx,r13
  1081a0:	48 c1 ea 0c          	shr    rdx,0xc
  1081a4:	48 83 c2 6e          	add    rdx,0x6e
  1081a8:	eb 31                	jmp    1081db <_malloc_r+0x14b>
  1081aa:	49 81 fd ff a9 02 00 	cmp    r13,0x2a9ff
  1081b1:	77 0d                	ja     1081c0 <_malloc_r+0x130>
  1081b3:	4c 89 ea             	mov    rdx,r13
  1081b6:	48 c1 ea 0f          	shr    rdx,0xf
  1081ba:	48 83 c2 77          	add    rdx,0x77
  1081be:	eb 1b                	jmp    1081db <_malloc_r+0x14b>
  1081c0:	4c 89 e8             	mov    rax,r13
  1081c3:	48 c1 e8 12          	shr    rax,0x12
  1081c7:	48 83 c0 7c          	add    rax,0x7c
  1081cb:	49 81 fd 00 aa 0a 00 	cmp    r13,0xaaa00
  1081d2:	ba 7e 00 00 00       	mov    edx,0x7e
  1081d7:	48 0f 42 d0          	cmovb  rdx,rax
  1081db:	8d 04 12             	lea    eax,[rdx+rdx*1]
  1081de:	83 c0 02             	add    eax,0x2
  1081e1:	48 8d 35 a8 e3 00 00 	lea    rsi,[rip+0xe3a8]        # 116590 <__malloc_av_>
  1081e8:	48 8d 0c c6          	lea    rcx,[rsi+rax*8]
  1081ec:	48 83 c1 f0          	add    rcx,0xfffffffffffffff0
  1081f0:	48 8b 44 c6 08       	mov    rax,QWORD PTR [rsi+rax*8+0x8]
  1081f5:	48 39 c8             	cmp    rax,rcx
  1081f8:	74 33                	je     10822d <_malloc_r+0x19d>
  1081fa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  108200:	48 8b 68 08          	mov    rbp,QWORD PTR [rax+0x8]
  108204:	48 83 e5 fc          	and    rbp,0xfffffffffffffffc
  108208:	48 89 ee             	mov    rsi,rbp
  10820b:	4c 29 ee             	sub    rsi,r13
  10820e:	48 83 fe 20          	cmp    rsi,0x20
  108212:	7d 17                	jge    10822b <_malloc_r+0x19b>
  108214:	48 8b 78 18          	mov    rdi,QWORD PTR [rax+0x18]
  108218:	48 85 f6             	test   rsi,rsi
  10821b:	0f 89 96 00 00 00    	jns    1082b7 <_malloc_r+0x227>
  108221:	48 89 f8             	mov    rax,rdi
  108224:	48 39 cf             	cmp    rdi,rcx
  108227:	75 d7                	jne    108200 <_malloc_r+0x170>
  108229:	eb 02                	jmp    10822d <_malloc_r+0x19d>
  10822b:	ff ca                	dec    edx
  10822d:	ff c2                	inc    edx
  10822f:	4c 8b 3d 7a e3 00 00 	mov    r15,QWORD PTR [rip+0xe37a]        # 1165b0 <__malloc_av_+0x20>
  108236:	4c 8d 0d 63 e3 00 00 	lea    r9,[rip+0xe363]        # 1165a0 <__malloc_av_+0x10>
  10823d:	4d 39 cf             	cmp    r15,r9
  108240:	0f 84 b2 01 00 00    	je     1083f8 <_malloc_r+0x368>
  108246:	49 8b 77 08          	mov    rsi,QWORD PTR [r15+0x8]
  10824a:	48 89 f1             	mov    rcx,rsi
  10824d:	48 83 e1 fc          	and    rcx,0xfffffffffffffffc
  108251:	48 89 c8             	mov    rax,rcx
  108254:	4c 29 e8             	sub    rax,r13
  108257:	48 83 f8 20          	cmp    rax,0x20
  10825b:	7c 3c                	jl     108299 <_malloc_r+0x209>
  10825d:	4b 8d 14 2f          	lea    rdx,[r15+r13*1]
  108261:	4c 89 ee             	mov    rsi,r13
  108264:	48 83 ce 01          	or     rsi,0x1
  108268:	49 89 77 08          	mov    QWORD PTR [r15+0x8],rsi
  10826c:	48 89 15 45 e3 00 00 	mov    QWORD PTR [rip+0xe345],rdx        # 1165b8 <__malloc_av_+0x28>
  108273:	48 89 15 36 e3 00 00 	mov    QWORD PTR [rip+0xe336],rdx        # 1165b0 <__malloc_av_+0x20>
  10827a:	4f 89 4c 2f 18       	mov    QWORD PTR [r15+r13*1+0x18],r9
  10827f:	4f 89 4c 2f 10       	mov    QWORD PTR [r15+r13*1+0x10],r9
  108284:	48 89 c2             	mov    rdx,rax
  108287:	48 83 ca 01          	or     rdx,0x1
  10828b:	4b 89 54 2f 08       	mov    QWORD PTR [r15+r13*1+0x8],rdx
  108290:	49 89 04 0f          	mov    QWORD PTR [r15+rcx*1],rax
  108294:	e9 cf 05 00 00       	jmp    108868 <_malloc_r+0x7d8>
  108299:	4c 89 0d 18 e3 00 00 	mov    QWORD PTR [rip+0xe318],r9        # 1165b8 <__malloc_av_+0x28>
  1082a0:	4c 89 0d 09 e3 00 00 	mov    QWORD PTR [rip+0xe309],r9        # 1165b0 <__malloc_av_+0x20>
  1082a7:	48 85 c0             	test   rax,rax
  1082aa:	78 25                	js     1082d1 <_malloc_r+0x241>
  1082ac:	41 80 4c 0f 08 01    	or     BYTE PTR [r15+rcx*1+0x8],0x1
  1082b2:	e9 b1 05 00 00       	jmp    108868 <_malloc_r+0x7d8>
  1082b7:	4c 8d 78 10          	lea    r15,[rax+0x10]
  1082bb:	48 8b 48 10          	mov    rcx,QWORD PTR [rax+0x10]
  1082bf:	48 89 79 18          	mov    QWORD PTR [rcx+0x18],rdi
  1082c3:	48 89 4f 10          	mov    QWORD PTR [rdi+0x10],rcx
  1082c7:	80 4c 28 08 01       	or     BYTE PTR [rax+rbp*1+0x8],0x1
  1082cc:	e9 d4 03 00 00       	jmp    1086a5 <_malloc_r+0x615>
  1082d1:	48 81 f9 ff 01 00 00 	cmp    rcx,0x1ff
  1082d8:	77 45                	ja     10831f <_malloc_r+0x28f>
  1082da:	48 c1 ee 03          	shr    rsi,0x3
  1082de:	8d 4e 03             	lea    ecx,[rsi+0x3]
  1082e1:	85 f6                	test   esi,esi
  1082e3:	0f 49 ce             	cmovns ecx,esi
  1082e6:	c1 e9 02             	shr    ecx,0x2
  1082e9:	b8 01 00 00 00       	mov    eax,0x1
  1082ee:	48 d3 e0             	shl    rax,cl
  1082f1:	48 09 05 a0 e2 00 00 	or     QWORD PTR [rip+0xe2a0],rax        # 116598 <__malloc_av_+0x8>
  1082f8:	48 8d 05 91 e2 00 00 	lea    rax,[rip+0xe291]        # 116590 <__malloc_av_>
  1082ff:	8d 0c 36             	lea    ecx,[rsi+rsi*1]
  108302:	83 c1 02             	add    ecx,0x2
  108305:	48 8d 74 c8 f0       	lea    rsi,[rax+rcx*8-0x10]
  10830a:	48 8b 3c c8          	mov    rdi,QWORD PTR [rax+rcx*8]
  10830e:	49 89 77 18          	mov    QWORD PTR [r15+0x18],rsi
  108312:	49 89 7f 10          	mov    QWORD PTR [r15+0x10],rdi
  108316:	4c 89 3c c8          	mov    QWORD PTR [rax+rcx*8],r15
  10831a:	e9 d5 00 00 00       	jmp    1083f4 <_malloc_r+0x364>
  10831f:	48 81 fe ff 09 00 00 	cmp    rsi,0x9ff
  108326:	77 0a                	ja     108332 <_malloc_r+0x2a2>
  108328:	48 c1 ee 06          	shr    rsi,0x6
  10832c:	48 83 c6 38          	add    rsi,0x38
  108330:	eb 54                	jmp    108386 <_malloc_r+0x2f6>
  108332:	48 81 fe ff 29 00 00 	cmp    rsi,0x29ff
  108339:	77 0a                	ja     108345 <_malloc_r+0x2b5>
  10833b:	48 c1 ee 09          	shr    rsi,0x9
  10833f:	48 83 c6 5b          	add    rsi,0x5b
  108343:	eb 41                	jmp    108386 <_malloc_r+0x2f6>
  108345:	48 81 fe ff a9 00 00 	cmp    rsi,0xa9ff
  10834c:	77 0a                	ja     108358 <_malloc_r+0x2c8>
  10834e:	48 c1 ee 0c          	shr    rsi,0xc
  108352:	48 83 c6 6e          	add    rsi,0x6e
  108356:	eb 2e                	jmp    108386 <_malloc_r+0x2f6>
  108358:	48 81 fe ff a9 02 00 	cmp    rsi,0x2a9ff
  10835f:	77 0a                	ja     10836b <_malloc_r+0x2db>
  108361:	48 c1 ee 0f          	shr    rsi,0xf
  108365:	48 83 c6 77          	add    rsi,0x77
  108369:	eb 1b                	jmp    108386 <_malloc_r+0x2f6>
  10836b:	48 89 f0             	mov    rax,rsi
  10836e:	48 c1 e8 12          	shr    rax,0x12
  108372:	48 83 c0 7c          	add    rax,0x7c
  108376:	48 81 fe 00 aa 0a 00 	cmp    rsi,0xaaa00
  10837d:	be 7e 00 00 00       	mov    esi,0x7e
  108382:	48 0f 42 f0          	cmovb  rsi,rax
  108386:	8d 04 36             	lea    eax,[rsi+rsi*1]
  108389:	48 98                	cdqe
  10838b:	48 8d 2d fe e1 00 00 	lea    rbp,[rip+0xe1fe]        # 116590 <__malloc_av_>
  108392:	48 8d 3c c5 00 00 00 	lea    rdi,[rax*8+0x0]
  108399:	00 
  10839a:	48 01 ef             	add    rdi,rbp
  10839d:	48 8b 44 c5 10       	mov    rax,QWORD PTR [rbp+rax*8+0x10]
  1083a2:	48 39 f8             	cmp    rax,rdi
  1083a5:	74 1b                	je     1083c2 <_malloc_r+0x332>
  1083a7:	48 8b 70 08          	mov    rsi,QWORD PTR [rax+0x8]
  1083ab:	48 83 e6 fc          	and    rsi,0xfffffffffffffffc
  1083af:	48 39 f1             	cmp    rcx,rsi
  1083b2:	73 2d                	jae    1083e1 <_malloc_r+0x351>
  1083b4:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
  1083b8:	48 39 f8             	cmp    rax,rdi
  1083bb:	75 ea                	jne    1083a7 <_malloc_r+0x317>
  1083bd:	48 89 f8             	mov    rax,rdi
  1083c0:	eb 22                	jmp    1083e4 <_malloc_r+0x354>
  1083c2:	8d 4e 03             	lea    ecx,[rsi+0x3]
  1083c5:	85 f6                	test   esi,esi
  1083c7:	0f 49 ce             	cmovns ecx,esi
  1083ca:	c1 e9 02             	shr    ecx,0x2
  1083cd:	b8 01 00 00 00       	mov    eax,0x1
  1083d2:	48 d3 e0             	shl    rax,cl
  1083d5:	48 09 05 bc e1 00 00 	or     QWORD PTR [rip+0xe1bc],rax        # 116598 <__malloc_av_+0x8>
  1083dc:	48 89 f8             	mov    rax,rdi
  1083df:	eb 07                	jmp    1083e8 <_malloc_r+0x358>
  1083e1:	48 89 c7             	mov    rdi,rax
  1083e4:	48 8b 40 18          	mov    rax,QWORD PTR [rax+0x18]
  1083e8:	49 89 47 18          	mov    QWORD PTR [r15+0x18],rax
  1083ec:	49 89 7f 10          	mov    QWORD PTR [r15+0x10],rdi
  1083f0:	4c 89 78 10          	mov    QWORD PTR [rax+0x10],r15
  1083f4:	4c 89 7f 18          	mov    QWORD PTR [rdi+0x18],r15
  1083f8:	8d 4a 03             	lea    ecx,[rdx+0x3]
  1083fb:	85 d2                	test   edx,edx
  1083fd:	0f 49 ca             	cmovns ecx,edx
  108400:	c1 f9 02             	sar    ecx,0x2
  108403:	bf 01 00 00 00       	mov    edi,0x1
  108408:	48 d3 e7             	shl    rdi,cl
  10840b:	48 8b 35 86 e1 00 00 	mov    rsi,QWORD PTR [rip+0xe186]        # 116598 <__malloc_av_+0x8>
  108412:	48 39 f7             	cmp    rdi,rsi
  108415:	0f 86 bc 00 00 00    	jbe    1084d7 <_malloc_r+0x447>
  10841b:	4c 8b 3d 7e e1 00 00 	mov    r15,QWORD PTR [rip+0xe17e]        # 1165a0 <__malloc_av_+0x10>
  108422:	49 8b 6f 08          	mov    rbp,QWORD PTR [r15+0x8]
  108426:	48 83 e5 fc          	and    rbp,0xfffffffffffffffc
  10842a:	48 89 e8             	mov    rax,rbp
  10842d:	4c 29 e8             	sub    rax,r13
  108430:	72 0a                	jb     10843c <_malloc_r+0x3ac>
  108432:	48 83 f8 1f          	cmp    rax,0x1f
  108436:	0f 8f 0d 04 00 00    	jg     108849 <_malloc_r+0x7b9>
  10843c:	48 8b 05 1d 46 51 00 	mov    rax,QWORD PTR [rip+0x51461d]        # 61ca60 <__malloc_top_pad>
  108443:	4a 8d 0c 28          	lea    rcx,[rax+r13*1]
  108447:	48 83 c1 20          	add    rcx,0x20
  10844b:	4e 8d 24 28          	lea    r12,[rax+r13*1]
  10844f:	49 81 c4 1f 10 00 00 	add    r12,0x101f
  108456:	49 81 e4 00 f0 ff ff 	and    r12,0xfffffffffffff000
  10845d:	48 83 3d 43 e9 00 00 	cmp    QWORD PTR [rip+0xe943],0xffffffffffffffff        # 116da8 <__malloc_sbrk_base>
  108464:	ff 
  108465:	4c 0f 44 e1          	cmove  r12,rcx
  108469:	4c 89 f7             	mov    rdi,r14
  10846c:	4c 89 e6             	mov    rsi,r12
  10846f:	e8 4c 04 00 00       	call   1088c0 <_sbrk_r>
  108474:	48 83 f8 ff          	cmp    rax,0xffffffffffffffff
  108478:	0f 84 b1 03 00 00    	je     10882f <_malloc_r+0x79f>
  10847e:	48 89 c3             	mov    rbx,rax
  108481:	49 8d 04 2f          	lea    rax,[r15+rbp*1]
  108485:	48 8d 0d 04 e1 00 00 	lea    rcx,[rip+0xe104]        # 116590 <__malloc_av_>
  10848c:	49 39 cf             	cmp    r15,rcx
  10848f:	74 09                	je     10849a <_malloc_r+0x40a>
  108491:	48 39 c3             	cmp    rbx,rax
  108494:	0f 82 95 03 00 00    	jb     10882f <_malloc_r+0x79f>
  10849a:	8b 0d d8 45 51 00    	mov    ecx,DWORD PTR [rip+0x5145d8]        # 61ca78 <__malloc_current_mallinfo>
  1084a0:	44 01 e1             	add    ecx,r12d
  1084a3:	89 0d cf 45 51 00    	mov    DWORD PTR [rip+0x5145cf],ecx        # 61ca78 <__malloc_current_mallinfo>
  1084a9:	48 39 c3             	cmp    rbx,rax
  1084ac:	0f 85 5e 02 00 00    	jne    108710 <_malloc_r+0x680>
  1084b2:	89 c2                	mov    edx,eax
  1084b4:	81 e2 ff 0f 00 00    	and    edx,0xfff
  1084ba:	0f 85 50 02 00 00    	jne    108710 <_malloc_r+0x680>
  1084c0:	49 01 ec             	add    r12,rbp
  1084c3:	49 83 cc 01          	or     r12,0x1
  1084c7:	48 8b 05 d2 e0 00 00 	mov    rax,QWORD PTR [rip+0xe0d2]        # 1165a0 <__malloc_av_+0x10>
  1084ce:	4c 89 60 08          	mov    QWORD PTR [rax+0x8],r12
  1084d2:	e9 35 03 00 00       	jmp    10880c <_malloc_r+0x77c>
  1084d7:	48 85 fe             	test   rsi,rdi
  1084da:	0f 84 fb 01 00 00    	je     1086db <_malloc_r+0x64b>
  1084e0:	4c 8d 05 a9 e0 00 00 	lea    r8,[rip+0xe0a9]        # 116590 <__malloc_av_>
  1084e7:	8d 04 12             	lea    eax,[rdx+rdx*1]
  1084ea:	48 98                	cdqe
  1084ec:	4d 8d 14 c0          	lea    r10,[r8+rax*8]
  1084f0:	49 83 c2 10          	add    r10,0x10
  1084f4:	49 8d 2c c0          	lea    rbp,[r8+rax*8]
  1084f8:	48 89 eb             	mov    rbx,rbp
  1084fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  108500:	48 8b 5b 18          	mov    rbx,QWORD PTR [rbx+0x18]
  108504:	48 39 eb             	cmp    rbx,rbp
  108507:	74 22                	je     10852b <_malloc_r+0x49b>
  108509:	48 8b 43 08          	mov    rax,QWORD PTR [rbx+0x8]
  10850d:	48 83 e0 fc          	and    rax,0xfffffffffffffffc
  108511:	48 89 c1             	mov    rcx,rax
  108514:	4c 29 e9             	sub    rcx,r13
  108517:	48 83 f9 20          	cmp    rcx,0x20
  10851b:	0f 8d 39 01 00 00    	jge    10865a <_malloc_r+0x5ca>
  108521:	48 85 c9             	test   rcx,rcx
  108524:	78 da                	js     108500 <_malloc_r+0x470>
  108526:	e9 87 01 00 00       	jmp    1086b2 <_malloc_r+0x622>
  10852b:	8d 5a 01             	lea    ebx,[rdx+0x1]
  10852e:	f6 c3 03             	test   bl,0x3
  108531:	0f 84 ab 00 00 00    	je     1085e2 <_malloc_r+0x552>
  108537:	4c 89 d3             	mov    rbx,r10
  10853a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  108540:	48 8b 5b 18          	mov    rbx,QWORD PTR [rbx+0x18]
  108544:	4c 39 d3             	cmp    rbx,r10
  108547:	74 22                	je     10856b <_malloc_r+0x4db>
  108549:	48 8b 43 08          	mov    rax,QWORD PTR [rbx+0x8]
  10854d:	48 83 e0 fc          	and    rax,0xfffffffffffffffc
  108551:	48 89 c1             	mov    rcx,rax
  108554:	4c 29 e9             	sub    rcx,r13
  108557:	48 83 f9 1f          	cmp    rcx,0x1f
  10855b:	0f 8f f9 00 00 00    	jg     10865a <_malloc_r+0x5ca>
  108561:	48 85 c9             	test   rcx,rcx
  108564:	78 da                	js     108540 <_malloc_r+0x4b0>
  108566:	e9 47 01 00 00       	jmp    1086b2 <_malloc_r+0x622>
  10856b:	8d 5a 02             	lea    ebx,[rdx+0x2]
  10856e:	f6 c3 03             	test   bl,0x3
  108571:	74 6f                	je     1085e2 <_malloc_r+0x552>
  108573:	49 8d 6a 10          	lea    rbp,[r10+0x10]
  108577:	48 89 eb             	mov    rbx,rbp
  10857a:	48 8b 5b 18          	mov    rbx,QWORD PTR [rbx+0x18]
  10857e:	48 39 eb             	cmp    rbx,rbp
  108581:	74 22                	je     1085a5 <_malloc_r+0x515>
  108583:	48 8b 43 08          	mov    rax,QWORD PTR [rbx+0x8]
  108587:	48 83 e0 fc          	and    rax,0xfffffffffffffffc
  10858b:	48 89 c1             	mov    rcx,rax
  10858e:	4c 29 e9             	sub    rcx,r13
  108591:	48 83 f9 1f          	cmp    rcx,0x1f
  108595:	0f 8f bf 00 00 00    	jg     10865a <_malloc_r+0x5ca>
  10859b:	48 85 c9             	test   rcx,rcx
  10859e:	78 da                	js     10857a <_malloc_r+0x4ea>
  1085a0:	e9 0d 01 00 00       	jmp    1086b2 <_malloc_r+0x622>
  1085a5:	8d 5a 03             	lea    ebx,[rdx+0x3]
  1085a8:	f6 c3 03             	test   bl,0x3
  1085ab:	74 35                	je     1085e2 <_malloc_r+0x552>
  1085ad:	49 8d 6a 20          	lea    rbp,[r10+0x20]
  1085b1:	48 89 eb             	mov    rbx,rbp
  1085b4:	48 8b 5b 18          	mov    rbx,QWORD PTR [rbx+0x18]
  1085b8:	48 39 eb             	cmp    rbx,rbp
  1085bb:	74 22                	je     1085df <_malloc_r+0x54f>
  1085bd:	48 8b 43 08          	mov    rax,QWORD PTR [rbx+0x8]
  1085c1:	48 83 e0 fc          	and    rax,0xfffffffffffffffc
  1085c5:	48 89 c1             	mov    rcx,rax
  1085c8:	4c 29 e9             	sub    rcx,r13
  1085cb:	48 83 f9 1f          	cmp    rcx,0x1f
  1085cf:	0f 8f 85 00 00 00    	jg     10865a <_malloc_r+0x5ca>
  1085d5:	48 85 c9             	test   rcx,rcx
  1085d8:	78 da                	js     1085b4 <_malloc_r+0x524>
  1085da:	e9 d3 00 00 00       	jmp    1086b2 <_malloc_r+0x622>
  1085df:	8d 5a 04             	lea    ebx,[rdx+0x4]
  1085e2:	f6 c2 03             	test   dl,0x3
  1085e5:	74 33                	je     10861a <_malloc_r+0x58a>
  1085e7:	49 8d 42 e0          	lea    rax,[r10-0x20]
  1085eb:	49 39 42 f0          	cmp    QWORD PTR [r10-0x10],rax
  1085ef:	75 39                	jne    10862a <_malloc_r+0x59a>
  1085f1:	8d 42 ff             	lea    eax,[rdx-0x1]
  1085f4:	a8 03                	test   al,0x3
  1085f6:	74 22                	je     10861a <_malloc_r+0x58a>
  1085f8:	49 8d 42 d0          	lea    rax,[r10-0x30]
  1085fc:	49 39 42 e0          	cmp    QWORD PTR [r10-0x20],rax
  108600:	75 28                	jne    10862a <_malloc_r+0x59a>
  108602:	8d 42 02             	lea    eax,[rdx+0x2]
  108605:	a8 03                	test   al,0x3
  108607:	74 11                	je     10861a <_malloc_r+0x58a>
  108609:	49 8d 42 c0          	lea    rax,[r10-0x40]
  10860d:	49 39 42 d0          	cmp    QWORD PTR [r10-0x30],rax
  108611:	75 17                	jne    10862a <_malloc_r+0x59a>
  108613:	ff c2                	inc    edx
  108615:	f6 c2 03             	test   dl,0x3
  108618:	75 10                	jne    10862a <_malloc_r+0x59a>
  10861a:	48 89 f8             	mov    rax,rdi
  10861d:	48 f7 d0             	not    rax
  108620:	48 21 c6             	and    rsi,rax
  108623:	48 89 35 6e df 00 00 	mov    QWORD PTR [rip+0xdf6e],rsi        # 116598 <__malloc_av_+0x8>
  10862a:	48 8d 04 3f          	lea    rax,[rdi+rdi*1]
  10862e:	48 ff c8             	dec    rax
  108631:	48 39 f0             	cmp    rax,rsi
  108634:	0f 83 e1 fd ff ff    	jae    10841b <_malloc_r+0x38b>
  10863a:	48 01 ff             	add    rdi,rdi
  10863d:	89 da                	mov    edx,ebx
  10863f:	48 85 f7             	test   rdi,rsi
  108642:	0f 85 9f fe ff ff    	jne    1084e7 <_malloc_r+0x457>
  108648:	83 c3 04             	add    ebx,0x4
  10864b:	48 01 ff             	add    rdi,rdi
  10864e:	48 85 f7             	test   rdi,rsi
  108651:	74 f5                	je     108648 <_malloc_r+0x5b8>
  108653:	89 da                	mov    edx,ebx
  108655:	e9 8d fe ff ff       	jmp    1084e7 <_malloc_r+0x457>
  10865a:	4a 8d 14 2b          	lea    rdx,[rbx+r13*1]
  10865e:	4c 89 ee             	mov    rsi,r13
  108661:	48 83 ce 01          	or     rsi,0x1
  108665:	48 89 73 08          	mov    QWORD PTR [rbx+0x8],rsi
  108669:	48 8b 73 10          	mov    rsi,QWORD PTR [rbx+0x10]
  10866d:	48 8b 7b 18          	mov    rdi,QWORD PTR [rbx+0x18]
  108671:	4c 8d 7b 10          	lea    r15,[rbx+0x10]
  108675:	48 89 7e 18          	mov    QWORD PTR [rsi+0x18],rdi
  108679:	48 89 77 10          	mov    QWORD PTR [rdi+0x10],rsi
  10867d:	48 89 15 34 df 00 00 	mov    QWORD PTR [rip+0xdf34],rdx        # 1165b8 <__malloc_av_+0x28>
  108684:	48 89 15 25 df 00 00 	mov    QWORD PTR [rip+0xdf25],rdx        # 1165b0 <__malloc_av_+0x20>
  10868b:	4e 89 4c 2b 18       	mov    QWORD PTR [rbx+r13*1+0x18],r9
  108690:	4e 89 4c 2b 10       	mov    QWORD PTR [rbx+r13*1+0x10],r9
  108695:	48 89 ca             	mov    rdx,rcx
  108698:	48 83 ca 01          	or     rdx,0x1
  10869c:	4a 89 54 2b 08       	mov    QWORD PTR [rbx+r13*1+0x8],rdx
  1086a1:	48 89 0c 03          	mov    QWORD PTR [rbx+rax*1],rcx
  1086a5:	4c 89 f7             	mov    rdi,r14
  1086a8:	e8 03 02 00 00       	call   1088b0 <__malloc_unlock>
  1086ad:	e9 c2 01 00 00       	jmp    108874 <_malloc_r+0x7e4>
  1086b2:	80 4c 03 08 01       	or     BYTE PTR [rbx+rax*1+0x8],0x1
  1086b7:	48 8b 43 10          	mov    rax,QWORD PTR [rbx+0x10]
  1086bb:	48 8b 4b 18          	mov    rcx,QWORD PTR [rbx+0x18]
  1086bf:	48 83 c3 10          	add    rbx,0x10
  1086c3:	48 89 48 18          	mov    QWORD PTR [rax+0x18],rcx
  1086c7:	48 89 41 10          	mov    QWORD PTR [rcx+0x10],rax
  1086cb:	4c 89 f7             	mov    rdi,r14
  1086ce:	e8 dd 01 00 00       	call   1088b0 <__malloc_unlock>
  1086d3:	49 89 df             	mov    r15,rbx
  1086d6:	e9 99 01 00 00       	jmp    108874 <_malloc_r+0x7e4>
  1086db:	83 c2 04             	add    edx,0x4
  1086de:	83 e2 fc             	and    edx,0xfffffffc
  1086e1:	bf 02 00 00 00       	mov    edi,0x2
  1086e6:	48 d3 e7             	shl    rdi,cl
  1086e9:	48 85 f7             	test   rdi,rsi
  1086ec:	0f 85 ee fd ff ff    	jne    1084e0 <_malloc_r+0x450>
  1086f2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  1086f9:	1f 84 00 00 00 00 00 
  108700:	83 c2 04             	add    edx,0x4
  108703:	48 01 ff             	add    rdi,rdi
  108706:	48 85 f7             	test   rdi,rsi
  108709:	74 f5                	je     108700 <_malloc_r+0x670>
  10870b:	e9 d0 fd ff ff       	jmp    1084e0 <_malloc_r+0x450>
  108710:	48 83 3d 90 e6 00 00 	cmp    QWORD PTR [rip+0xe690],0xffffffffffffffff        # 116da8 <__malloc_sbrk_base>
  108717:	ff 
  108718:	74 0e                	je     108728 <_malloc_r+0x698>
  10871a:	89 da                	mov    edx,ebx
  10871c:	29 c2                	sub    edx,eax
  10871e:	01 d1                	add    ecx,edx
  108720:	89 0d 52 43 51 00    	mov    DWORD PTR [rip+0x514352],ecx        # 61ca78 <__malloc_current_mallinfo>
  108726:	eb 07                	jmp    10872f <_malloc_r+0x69f>
  108728:	48 89 1d 79 e6 00 00 	mov    QWORD PTR [rip+0xe679],rbx        # 116da8 <__malloc_sbrk_base>
  10872f:	8d 43 10             	lea    eax,[rbx+0x10]
  108732:	83 e0 0f             	and    eax,0xf
  108735:	b9 10 00 00 00       	mov    ecx,0x10
  10873a:	48 29 c1             	sub    rcx,rax
  10873d:	48 85 c0             	test   rax,rax
  108740:	48 0f 44 c8          	cmove  rcx,rax
  108744:	48 89 d8             	mov    rax,rbx
  108747:	48 01 c8             	add    rax,rcx
  10874a:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  10874f:	48 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],rcx
  108754:	41 01 c4             	add    r12d,eax
  108757:	41 81 e4 ff 0f 00 00 	and    r12d,0xfff
  10875e:	49 f7 dc             	neg    r12
  108761:	49 01 cc             	add    r12,rcx
  108764:	49 81 c4 00 10 00 00 	add    r12,0x1000
  10876b:	4c 89 f7             	mov    rdi,r14
  10876e:	4c 89 e6             	mov    rsi,r12
  108771:	e8 4a 01 00 00       	call   1088c0 <_sbrk_r>
  108776:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
  10877b:	31 d2                	xor    edx,edx
  10877d:	48 83 f8 ff          	cmp    rax,0xffffffffffffffff
  108781:	48 0f 44 c6          	cmove  rax,rsi
  108785:	49 0f 45 d4          	cmovne rdx,r12
  108789:	8b 0d e9 42 51 00    	mov    ecx,DWORD PTR [rip+0x5142e9]        # 61ca78 <__malloc_current_mallinfo>
  10878f:	01 d1                	add    ecx,edx
  108791:	48 29 f2             	sub    rdx,rsi
  108794:	48 01 c2             	add    rdx,rax
  108797:	48 83 ca 01          	or     rdx,0x1
  10879b:	89 0d d7 42 51 00    	mov    DWORD PTR [rip+0x5142d7],ecx        # 61ca78 <__malloc_current_mallinfo>
  1087a1:	48 89 35 f8 dd 00 00 	mov    QWORD PTR [rip+0xddf8],rsi        # 1165a0 <__malloc_av_+0x10>
  1087a8:	48 8b 44 24 10       	mov    rax,QWORD PTR [rsp+0x10]
  1087ad:	48 89 54 03 08       	mov    QWORD PTR [rbx+rax*1+0x8],rdx
  1087b2:	48 8d 05 d7 dd 00 00 	lea    rax,[rip+0xddd7]        # 116590 <__malloc_av_>
  1087b9:	49 39 c7             	cmp    r15,rax
  1087bc:	74 4e                	je     10880c <_malloc_r+0x77c>
  1087be:	48 83 fd 1f          	cmp    rbp,0x1f
  1087c2:	77 0a                	ja     1087ce <_malloc_r+0x73e>
  1087c4:	48 c7 46 08 01 00 00 	mov    QWORD PTR [rsi+0x8],0x1
  1087cb:	00 
  1087cc:	eb 61                	jmp    10882f <_malloc_r+0x79f>
  1087ce:	48 83 c5 e8          	add    rbp,0xffffffffffffffe8
  1087d2:	48 83 e5 f0          	and    rbp,0xfffffffffffffff0
  1087d6:	49 8b 47 08          	mov    rax,QWORD PTR [r15+0x8]
  1087da:	83 e0 01             	and    eax,0x1
  1087dd:	48 09 e8             	or     rax,rbp
  1087e0:	49 89 47 08          	mov    QWORD PTR [r15+0x8],rax
  1087e4:	0f 28 05 f5 80 ff ff 	movaps xmm0,XMMWORD PTR [rip+0xffffffffffff80f5]        # 1008e0 <_svfprintf_r.blanks-0x200>
  1087eb:	41 0f 11 44 2f 08    	movups XMMWORD PTR [r15+rbp*1+0x8],xmm0
  1087f1:	48 83 fd 20          	cmp    rbp,0x20
  1087f5:	72 15                	jb     10880c <_malloc_r+0x77c>
  1087f7:	49 83 c7 10          	add    r15,0x10
  1087fb:	4c 89 f7             	mov    rdi,r14
  1087fe:	4c 89 fe             	mov    rsi,r15
  108801:	e8 2a 02 00 00       	call   108a30 <_free_r>
  108806:	8b 0d 6c 42 51 00    	mov    ecx,DWORD PTR [rip+0x51426c]        # 61ca78 <__malloc_current_mallinfo>
  10880c:	48 63 c1             	movsxd rax,ecx
  10880f:	48 39 05 52 42 51 00 	cmp    QWORD PTR [rip+0x514252],rax        # 61ca68 <__malloc_max_sbrked_mem>
  108816:	73 07                	jae    10881f <_malloc_r+0x78f>
  108818:	48 89 05 49 42 51 00 	mov    QWORD PTR [rip+0x514249],rax        # 61ca68 <__malloc_max_sbrked_mem>
  10881f:	48 39 05 4a 42 51 00 	cmp    QWORD PTR [rip+0x51424a],rax        # 61ca70 <__malloc_max_total_mem>
  108826:	73 07                	jae    10882f <_malloc_r+0x79f>
  108828:	48 89 05 41 42 51 00 	mov    QWORD PTR [rip+0x514241],rax        # 61ca70 <__malloc_max_total_mem>
  10882f:	4c 8b 3d 6a dd 00 00 	mov    r15,QWORD PTR [rip+0xdd6a]        # 1165a0 <__malloc_av_+0x10>
  108836:	49 8b 47 08          	mov    rax,QWORD PTR [r15+0x8]
  10883a:	48 83 e0 fc          	and    rax,0xfffffffffffffffc
  10883e:	4c 29 e8             	sub    rax,r13
  108841:	72 43                	jb     108886 <_malloc_r+0x7f6>
  108843:	48 83 f8 1f          	cmp    rax,0x1f
  108847:	7e 3d                	jle    108886 <_malloc_r+0x7f6>
  108849:	4c 89 e9             	mov    rcx,r13
  10884c:	48 83 c9 01          	or     rcx,0x1
  108850:	49 89 4f 08          	mov    QWORD PTR [r15+0x8],rcx
  108854:	4b 8d 0c 2f          	lea    rcx,[r15+r13*1]
  108858:	48 89 0d 41 dd 00 00 	mov    QWORD PTR [rip+0xdd41],rcx        # 1165a0 <__malloc_av_+0x10>
  10885f:	48 83 c8 01          	or     rax,0x1
  108863:	4b 89 44 2f 08       	mov    QWORD PTR [r15+r13*1+0x8],rax
  108868:	4c 89 f7             	mov    rdi,r14
  10886b:	e8 40 00 00 00       	call   1088b0 <__malloc_unlock>
  108870:	49 83 c7 10          	add    r15,0x10
  108874:	4c 89 f8             	mov    rax,r15
  108877:	48 83 c4 18          	add    rsp,0x18
  10887b:	5b                   	pop    rbx
  10887c:	41 5c                	pop    r12
  10887e:	41 5d                	pop    r13
  108880:	41 5e                	pop    r14
  108882:	41 5f                	pop    r15
  108884:	5d                   	pop    rbp
  108885:	c3                   	ret
  108886:	4c 89 f7             	mov    rdi,r14
  108889:	e8 22 00 00 00       	call   1088b0 <__malloc_unlock>
  10888e:	45 31 ff             	xor    r15d,r15d
  108891:	eb e1                	jmp    108874 <_malloc_r+0x7e4>
  108893:	cc                   	int3
  108894:	cc                   	int3
  108895:	cc                   	int3
  108896:	cc                   	int3
  108897:	cc                   	int3
  108898:	cc                   	int3
  108899:	cc                   	int3
  10889a:	cc                   	int3
  10889b:	cc                   	int3
  10889c:	cc                   	int3
  10889d:	cc                   	int3
  10889e:	cc                   	int3
  10889f:	cc                   	int3

00000000001088a0 <__malloc_lock>:
  1088a0:	c3                   	ret
  1088a1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  1088a8:	0f 1f 84 00 00 00 00 
  1088af:	00 

00000000001088b0 <__malloc_unlock>:
  1088b0:	c3                   	ret
  1088b1:	cc                   	int3
  1088b2:	cc                   	int3
  1088b3:	cc                   	int3
  1088b4:	cc                   	int3
  1088b5:	cc                   	int3
  1088b6:	cc                   	int3
  1088b7:	cc                   	int3
  1088b8:	cc                   	int3
  1088b9:	cc                   	int3
  1088ba:	cc                   	int3
  1088bb:	cc                   	int3
  1088bc:	cc                   	int3
  1088bd:	cc                   	int3
  1088be:	cc                   	int3
  1088bf:	cc                   	int3

00000000001088c0 <_sbrk_r>:
  1088c0:	41 56                	push   r14
  1088c2:	53                   	push   rbx
  1088c3:	50                   	push   rax
  1088c4:	49 89 fe             	mov    r14,rdi
  1088c7:	48 8d 1d d2 41 51 00 	lea    rbx,[rip+0x5141d2]        # 61caa0 <errno>
  1088ce:	c7 03 00 00 00 00    	mov    DWORD PTR [rbx],0x0
  1088d4:	48 89 f7             	mov    rdi,rsi
  1088d7:	e8 54 5f 00 00       	call   10e830 <sbrk>
  1088dc:	48 83 f8 ff          	cmp    rax,0xffffffffffffffff
  1088e0:	75 09                	jne    1088eb <_sbrk_r+0x2b>
  1088e2:	8b 0b                	mov    ecx,DWORD PTR [rbx]
  1088e4:	85 c9                	test   ecx,ecx
  1088e6:	74 03                	je     1088eb <_sbrk_r+0x2b>
  1088e8:	41 89 0e             	mov    DWORD PTR [r14],ecx
  1088eb:	48 83 c4 08          	add    rsp,0x8
  1088ef:	5b                   	pop    rbx
  1088f0:	41 5e                	pop    r14
  1088f2:	c3                   	ret
  1088f3:	cc                   	int3
  1088f4:	cc                   	int3
  1088f5:	cc                   	int3
  1088f6:	cc                   	int3
  1088f7:	cc                   	int3
  1088f8:	cc                   	int3
  1088f9:	cc                   	int3
  1088fa:	cc                   	int3
  1088fb:	cc                   	int3
  1088fc:	cc                   	int3
  1088fd:	cc                   	int3
  1088fe:	cc                   	int3
  1088ff:	cc                   	int3

0000000000108900 <cleanup_glue>:
  108900:	41 56                	push   r14
  108902:	53                   	push   rbx
  108903:	50                   	push   rax
  108904:	48 89 f3             	mov    rbx,rsi
  108907:	49 89 fe             	mov    r14,rdi
  10890a:	48 8b 36             	mov    rsi,QWORD PTR [rsi]
  10890d:	48 85 f6             	test   rsi,rsi
  108910:	74 08                	je     10891a <cleanup_glue+0x1a>
  108912:	4c 89 f7             	mov    rdi,r14
  108915:	e8 e6 ff ff ff       	call   108900 <cleanup_glue>
  10891a:	4c 89 f7             	mov    rdi,r14
  10891d:	48 89 de             	mov    rsi,rbx
  108920:	48 83 c4 08          	add    rsp,0x8
  108924:	5b                   	pop    rbx
  108925:	41 5e                	pop    r14
  108927:	e9 04 01 00 00       	jmp    108a30 <_free_r>
  10892c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000108930 <_reclaim_reent>:
  108930:	41 57                	push   r15
  108932:	41 56                	push   r14
  108934:	53                   	push   rbx
  108935:	48 8d 05 5c d3 00 00 	lea    rax,[rip+0xd35c]        # 115c98 <_impure_ptr>
  10893c:	48 39 38             	cmp    QWORD PTR [rax],rdi
  10893f:	0f 84 d9 00 00 00    	je     108a1e <_reclaim_reent+0xee>
  108945:	49 89 ff             	mov    r15,rdi
  108948:	48 83 7f 78 00       	cmp    QWORD PTR [rdi+0x78],0x0
  10894d:	74 52                	je     1089a1 <_reclaim_reent+0x71>
  10894f:	45 31 f6             	xor    r14d,r14d
  108952:	eb 15                	jmp    108969 <_reclaim_reent+0x39>
  108954:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10895b:	00 00 00 00 00 
  108960:	49 ff c6             	inc    r14
  108963:	49 83 fe 40          	cmp    r14,0x40
  108967:	74 2c                	je     108995 <_reclaim_reent+0x65>
  108969:	49 8b 47 78          	mov    rax,QWORD PTR [r15+0x78]
  10896d:	4a 8b 34 f0          	mov    rsi,QWORD PTR [rax+r14*8]
  108971:	48 85 f6             	test   rsi,rsi
  108974:	74 ea                	je     108960 <_reclaim_reent+0x30>
  108976:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10897d:	00 00 00 
  108980:	48 8b 1e             	mov    rbx,QWORD PTR [rsi]
  108983:	4c 89 ff             	mov    rdi,r15
  108986:	e8 a5 00 00 00       	call   108a30 <_free_r>
  10898b:	48 89 de             	mov    rsi,rbx
  10898e:	48 85 db             	test   rbx,rbx
  108991:	75 ed                	jne    108980 <_reclaim_reent+0x50>
  108993:	eb cb                	jmp    108960 <_reclaim_reent+0x30>
  108995:	49 8b 77 78          	mov    rsi,QWORD PTR [r15+0x78]
  108999:	4c 89 ff             	mov    rdi,r15
  10899c:	e8 8f 00 00 00       	call   108a30 <_free_r>
  1089a1:	49 8b 77 60          	mov    rsi,QWORD PTR [r15+0x60]
  1089a5:	48 85 f6             	test   rsi,rsi
  1089a8:	74 08                	je     1089b2 <_reclaim_reent+0x82>
  1089aa:	4c 89 ff             	mov    rdi,r15
  1089ad:	e8 7e 00 00 00       	call   108a30 <_free_r>
  1089b2:	49 8b b7 f8 01 00 00 	mov    rsi,QWORD PTR [r15+0x1f8]
  1089b9:	48 85 f6             	test   rsi,rsi
  1089bc:	74 25                	je     1089e3 <_reclaim_reent+0xb3>
  1089be:	4d 8d b7 00 02 00 00 	lea    r14,[r15+0x200]
  1089c5:	4c 39 f6             	cmp    rsi,r14
  1089c8:	74 19                	je     1089e3 <_reclaim_reent+0xb3>
  1089ca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  1089d0:	48 8b 1e             	mov    rbx,QWORD PTR [rsi]
  1089d3:	4c 89 ff             	mov    rdi,r15
  1089d6:	e8 55 00 00 00       	call   108a30 <_free_r>
  1089db:	48 89 de             	mov    rsi,rbx
  1089de:	4c 39 f3             	cmp    rbx,r14
  1089e1:	75 ed                	jne    1089d0 <_reclaim_reent+0xa0>
  1089e3:	49 8b b7 88 00 00 00 	mov    rsi,QWORD PTR [r15+0x88]
  1089ea:	48 85 f6             	test   rsi,rsi
  1089ed:	74 08                	je     1089f7 <_reclaim_reent+0xc7>
  1089ef:	4c 89 ff             	mov    rdi,r15
  1089f2:	e8 39 00 00 00       	call   108a30 <_free_r>
  1089f7:	41 83 7f 50 00       	cmp    DWORD PTR [r15+0x50],0x0
  1089fc:	74 20                	je     108a1e <_reclaim_reent+0xee>
  1089fe:	4c 89 ff             	mov    rdi,r15
  108a01:	41 ff 57 58          	call   QWORD PTR [r15+0x58]
  108a05:	49 8b b7 20 05 00 00 	mov    rsi,QWORD PTR [r15+0x520]
  108a0c:	48 85 f6             	test   rsi,rsi
  108a0f:	74 0d                	je     108a1e <_reclaim_reent+0xee>
  108a11:	4c 89 ff             	mov    rdi,r15
  108a14:	5b                   	pop    rbx
  108a15:	41 5e                	pop    r14
  108a17:	41 5f                	pop    r15
  108a19:	e9 e2 fe ff ff       	jmp    108900 <cleanup_glue>
  108a1e:	5b                   	pop    rbx
  108a1f:	41 5e                	pop    r14
  108a21:	41 5f                	pop    r15
  108a23:	c3                   	ret
  108a24:	cc                   	int3
  108a25:	cc                   	int3
  108a26:	cc                   	int3
  108a27:	cc                   	int3
  108a28:	cc                   	int3
  108a29:	cc                   	int3
  108a2a:	cc                   	int3
  108a2b:	cc                   	int3
  108a2c:	cc                   	int3
  108a2d:	cc                   	int3
  108a2e:	cc                   	int3
  108a2f:	cc                   	int3

0000000000108a30 <_free_r>:
  108a30:	48 85 f6             	test   rsi,rsi
  108a33:	0f 84 f0 00 00 00    	je     108b29 <_free_r+0xf9>
  108a39:	41 56                	push   r14
  108a3b:	53                   	push   rbx
  108a3c:	50                   	push   rax
  108a3d:	48 89 f3             	mov    rbx,rsi
  108a40:	49 89 fe             	mov    r14,rdi
  108a43:	e8 58 fe ff ff       	call   1088a0 <__malloc_lock>
  108a48:	48 8d 43 f0          	lea    rax,[rbx-0x10]
  108a4c:	48 8b 53 f8          	mov    rdx,QWORD PTR [rbx-0x8]
  108a50:	48 89 d6             	mov    rsi,rdx
  108a53:	48 83 e6 fe          	and    rsi,0xfffffffffffffffe
  108a57:	48 8d 3c 33          	lea    rdi,[rbx+rsi*1]
  108a5b:	48 83 c7 f0          	add    rdi,0xfffffffffffffff0
  108a5f:	48 8b 4c 33 f8       	mov    rcx,QWORD PTR [rbx+rsi*1-0x8]
  108a64:	48 83 e1 fc          	and    rcx,0xfffffffffffffffc
  108a68:	4c 8d 05 21 db 00 00 	lea    r8,[rip+0xdb21]        # 116590 <__malloc_av_>
  108a6f:	49 3b 78 10          	cmp    rdi,QWORD PTR [r8+0x10]
  108a73:	0f 84 b1 00 00 00    	je     108b2a <_free_r+0xfa>
  108a79:	48 89 4f 08          	mov    QWORD PTR [rdi+0x8],rcx
  108a7d:	f6 c2 01             	test   dl,0x1
  108a80:	75 26                	jne    108aa8 <_free_r+0x78>
  108a82:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  108a85:	48 29 d0             	sub    rax,rdx
  108a88:	48 01 d6             	add    rsi,rdx
  108a8b:	48 8b 50 10          	mov    rdx,QWORD PTR [rax+0x10]
  108a8f:	49 8d 58 10          	lea    rbx,[r8+0x10]
  108a93:	48 39 da             	cmp    rdx,rbx
  108a96:	0f 84 fe 00 00 00    	je     108b9a <_free_r+0x16a>
  108a9c:	48 8b 58 18          	mov    rbx,QWORD PTR [rax+0x18]
  108aa0:	48 89 5a 18          	mov    QWORD PTR [rdx+0x18],rbx
  108aa4:	48 89 53 10          	mov    QWORD PTR [rbx+0x10],rdx
  108aa8:	f6 44 0f 08 01       	test   BYTE PTR [rdi+rcx*1+0x8],0x1
  108aad:	75 20                	jne    108acf <_free_r+0x9f>
  108aaf:	48 01 ce             	add    rsi,rcx
  108ab2:	48 8b 4f 10          	mov    rcx,QWORD PTR [rdi+0x10]
  108ab6:	49 8d 50 10          	lea    rdx,[r8+0x10]
  108aba:	48 39 d1             	cmp    rcx,rdx
  108abd:	0f 84 09 01 00 00    	je     108bcc <_free_r+0x19c>
  108ac3:	48 8b 57 18          	mov    rdx,QWORD PTR [rdi+0x18]
  108ac7:	48 89 51 18          	mov    QWORD PTR [rcx+0x18],rdx
  108acb:	48 89 4a 10          	mov    QWORD PTR [rdx+0x10],rcx
  108acf:	48 89 f1             	mov    rcx,rsi
  108ad2:	48 83 c9 01          	or     rcx,0x1
  108ad6:	48 89 48 08          	mov    QWORD PTR [rax+0x8],rcx
  108ada:	48 89 34 30          	mov    QWORD PTR [rax+rsi*1],rsi
  108ade:	48 81 fe ff 01 00 00 	cmp    rsi,0x1ff
  108ae5:	0f 87 96 00 00 00    	ja     108b81 <_free_r+0x151>
  108aeb:	48 89 f1             	mov    rcx,rsi
  108aee:	48 c1 e9 05          	shr    rcx,0x5
  108af2:	ba 01 00 00 00       	mov    edx,0x1
  108af7:	48 d3 e2             	shl    rdx,cl
  108afa:	49 09 50 08          	or     QWORD PTR [r8+0x8],rdx
  108afe:	48 c1 ee 02          	shr    rsi,0x2
  108b02:	83 e6 fe             	and    esi,0xfffffffe
  108b05:	83 c6 02             	add    esi,0x2
  108b08:	49 8d 0c f0          	lea    rcx,[r8+rsi*8]
  108b0c:	48 83 c1 f0          	add    rcx,0xfffffffffffffff0
  108b10:	49 8b 14 f0          	mov    rdx,QWORD PTR [r8+rsi*8]
  108b14:	48 89 48 18          	mov    QWORD PTR [rax+0x18],rcx
  108b18:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
  108b1c:	49 89 04 f0          	mov    QWORD PTR [r8+rsi*8],rax
  108b20:	48 89 42 18          	mov    QWORD PTR [rdx+0x18],rax
  108b24:	e9 70 01 00 00       	jmp    108c99 <_free_r+0x269>
  108b29:	c3                   	ret
  108b2a:	48 01 f1             	add    rcx,rsi
  108b2d:	f6 c2 01             	test   dl,0x1
  108b30:	75 19                	jne    108b4b <_free_r+0x11b>
  108b32:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  108b35:	48 29 d0             	sub    rax,rdx
  108b38:	48 01 d1             	add    rcx,rdx
  108b3b:	48 8b 50 10          	mov    rdx,QWORD PTR [rax+0x10]
  108b3f:	48 8b 70 18          	mov    rsi,QWORD PTR [rax+0x18]
  108b43:	48 89 72 18          	mov    QWORD PTR [rdx+0x18],rsi
  108b47:	48 89 56 10          	mov    QWORD PTR [rsi+0x10],rdx
  108b4b:	48 89 ca             	mov    rdx,rcx
  108b4e:	48 83 ca 01          	or     rdx,0x1
  108b52:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
  108b56:	49 89 40 10          	mov    QWORD PTR [r8+0x10],rax
  108b5a:	48 8d 05 3f e2 00 00 	lea    rax,[rip+0xe23f]        # 116da0 <__malloc_trim_threshold>
  108b61:	48 3b 08             	cmp    rcx,QWORD PTR [rax]
  108b64:	0f 82 2f 01 00 00    	jb     108c99 <_free_r+0x269>
  108b6a:	48 8d 05 ef 3e 51 00 	lea    rax,[rip+0x513eef]        # 61ca60 <__malloc_top_pad>
  108b71:	48 8b 30             	mov    rsi,QWORD PTR [rax]
  108b74:	4c 89 f7             	mov    rdi,r14
  108b77:	e8 34 01 00 00       	call   108cb0 <_malloc_trim_r>
  108b7c:	e9 18 01 00 00       	jmp    108c99 <_free_r+0x269>
  108b81:	48 81 fe ff 09 00 00 	cmp    rsi,0x9ff
  108b88:	77 2c                	ja     108bb6 <_free_r+0x186>
  108b8a:	48 89 f3             	mov    rbx,rsi
  108b8d:	48 c1 eb 06          	shr    rbx,0x6
  108b91:	48 83 c3 38          	add    rbx,0x38
  108b95:	e9 9d 00 00 00       	jmp    108c37 <_free_r+0x207>
  108b9a:	f6 44 0f 08 01       	test   BYTE PTR [rdi+rcx*1+0x8],0x1
  108b9f:	75 3b                	jne    108bdc <_free_r+0x1ac>
  108ba1:	48 01 ce             	add    rsi,rcx
  108ba4:	48 8b 4f 10          	mov    rcx,QWORD PTR [rdi+0x10]
  108ba8:	48 8b 57 18          	mov    rdx,QWORD PTR [rdi+0x18]
  108bac:	48 89 51 18          	mov    QWORD PTR [rcx+0x18],rdx
  108bb0:	48 89 4a 10          	mov    QWORD PTR [rdx+0x10],rcx
  108bb4:	eb 26                	jmp    108bdc <_free_r+0x1ac>
  108bb6:	48 81 fe ff 29 00 00 	cmp    rsi,0x29ff
  108bbd:	77 31                	ja     108bf0 <_free_r+0x1c0>
  108bbf:	48 89 f3             	mov    rbx,rsi
  108bc2:	48 c1 eb 09          	shr    rbx,0x9
  108bc6:	48 83 c3 5b          	add    rbx,0x5b
  108bca:	eb 6b                	jmp    108c37 <_free_r+0x207>
  108bcc:	49 89 40 28          	mov    QWORD PTR [r8+0x28],rax
  108bd0:	49 89 40 20          	mov    QWORD PTR [r8+0x20],rax
  108bd4:	48 89 50 18          	mov    QWORD PTR [rax+0x18],rdx
  108bd8:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
  108bdc:	48 89 f1             	mov    rcx,rsi
  108bdf:	48 83 c9 01          	or     rcx,0x1
  108be3:	48 89 48 08          	mov    QWORD PTR [rax+0x8],rcx
  108be7:	48 89 34 30          	mov    QWORD PTR [rax+rsi*1],rsi
  108beb:	e9 a9 00 00 00       	jmp    108c99 <_free_r+0x269>
  108bf0:	48 81 fe ff a9 00 00 	cmp    rsi,0xa9ff
  108bf7:	77 0d                	ja     108c06 <_free_r+0x1d6>
  108bf9:	48 89 f3             	mov    rbx,rsi
  108bfc:	48 c1 eb 0c          	shr    rbx,0xc
  108c00:	48 83 c3 6e          	add    rbx,0x6e
  108c04:	eb 31                	jmp    108c37 <_free_r+0x207>
  108c06:	48 81 fe ff a9 02 00 	cmp    rsi,0x2a9ff
  108c0d:	77 0d                	ja     108c1c <_free_r+0x1ec>
  108c0f:	48 89 f3             	mov    rbx,rsi
  108c12:	48 c1 eb 0f          	shr    rbx,0xf
  108c16:	48 83 c3 77          	add    rbx,0x77
  108c1a:	eb 1b                	jmp    108c37 <_free_r+0x207>
  108c1c:	48 89 f1             	mov    rcx,rsi
  108c1f:	48 c1 e9 12          	shr    rcx,0x12
  108c23:	48 83 c1 7c          	add    rcx,0x7c
  108c27:	48 81 fe 00 aa 0a 00 	cmp    rsi,0xaaa00
  108c2e:	bb 7e 00 00 00       	mov    ebx,0x7e
  108c33:	48 0f 42 d9          	cmovb  rbx,rcx
  108c37:	8d 0c 1b             	lea    ecx,[rbx+rbx*1]
  108c3a:	48 63 c9             	movsxd rcx,ecx
  108c3d:	49 8d 3c c8          	lea    rdi,[r8+rcx*8]
  108c41:	49 8b 4c c8 10       	mov    rcx,QWORD PTR [r8+rcx*8+0x10]
  108c46:	48 39 f9             	cmp    rcx,rdi
  108c49:	74 24                	je     108c6f <_free_r+0x23f>
  108c4b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  108c50:	48 8b 51 08          	mov    rdx,QWORD PTR [rcx+0x8]
  108c54:	48 83 e2 fc          	and    rdx,0xfffffffffffffffc
  108c58:	48 39 d6             	cmp    rsi,rdx
  108c5b:	73 0c                	jae    108c69 <_free_r+0x239>
  108c5d:	48 8b 49 10          	mov    rcx,QWORD PTR [rcx+0x10]
  108c61:	48 39 f9             	cmp    rcx,rdi
  108c64:	75 ea                	jne    108c50 <_free_r+0x220>
  108c66:	48 89 f9             	mov    rcx,rdi
  108c69:	48 8b 79 18          	mov    rdi,QWORD PTR [rcx+0x18]
  108c6d:	eb 1a                	jmp    108c89 <_free_r+0x259>
  108c6f:	8d 4b 03             	lea    ecx,[rbx+0x3]
  108c72:	85 db                	test   ebx,ebx
  108c74:	0f 49 cb             	cmovns ecx,ebx
  108c77:	c1 e9 02             	shr    ecx,0x2
  108c7a:	ba 01 00 00 00       	mov    edx,0x1
  108c7f:	48 d3 e2             	shl    rdx,cl
  108c82:	49 09 50 08          	or     QWORD PTR [r8+0x8],rdx
  108c86:	48 89 f9             	mov    rcx,rdi
  108c89:	48 89 78 18          	mov    QWORD PTR [rax+0x18],rdi
  108c8d:	48 89 48 10          	mov    QWORD PTR [rax+0x10],rcx
  108c91:	48 89 47 10          	mov    QWORD PTR [rdi+0x10],rax
  108c95:	48 89 41 18          	mov    QWORD PTR [rcx+0x18],rax
  108c99:	4c 89 f7             	mov    rdi,r14
  108c9c:	48 83 c4 08          	add    rsp,0x8
  108ca0:	5b                   	pop    rbx
  108ca1:	41 5e                	pop    r14
  108ca3:	e9 08 fc ff ff       	jmp    1088b0 <__malloc_unlock>
  108ca8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  108caf:	00 

0000000000108cb0 <_malloc_trim_r>:
  108cb0:	41 57                	push   r15
  108cb2:	41 56                	push   r14
  108cb4:	41 55                	push   r13
  108cb6:	41 54                	push   r12
  108cb8:	53                   	push   rbx
  108cb9:	49 89 f4             	mov    r12,rsi
  108cbc:	49 89 fe             	mov    r14,rdi
  108cbf:	e8 dc fb ff ff       	call   1088a0 <__malloc_lock>
  108cc4:	4c 8d 3d c5 d8 00 00 	lea    r15,[rip+0xd8c5]        # 116590 <__malloc_av_>
  108ccb:	49 8b 47 10          	mov    rax,QWORD PTR [r15+0x10]
  108ccf:	4c 8b 68 08          	mov    r13,QWORD PTR [rax+0x8]
  108cd3:	49 83 e5 fc          	and    r13,0xfffffffffffffffc
  108cd7:	4c 89 eb             	mov    rbx,r13
  108cda:	4c 29 e3             	sub    rbx,r12
  108cdd:	48 83 c3 df          	add    rbx,0xffffffffffffffdf
  108ce1:	48 81 e3 00 f0 ff ff 	and    rbx,0xfffffffffffff000
  108ce8:	45 31 e4             	xor    r12d,r12d
  108ceb:	48 81 fb 00 10 00 00 	cmp    rbx,0x1000
  108cf2:	0f 8c 84 00 00 00    	jl     108d7c <_malloc_trim_r+0xcc>
  108cf8:	45 31 e4             	xor    r12d,r12d
  108cfb:	4c 89 f7             	mov    rdi,r14
  108cfe:	31 f6                	xor    esi,esi
  108d00:	e8 bb fb ff ff       	call   1088c0 <_sbrk_r>
  108d05:	49 8b 4f 10          	mov    rcx,QWORD PTR [r15+0x10]
  108d09:	4c 01 e9             	add    rcx,r13
  108d0c:	48 39 c8             	cmp    rax,rcx
  108d0f:	75 6b                	jne    108d7c <_malloc_trim_r+0xcc>
  108d11:	48 89 de             	mov    rsi,rbx
  108d14:	48 f7 de             	neg    rsi
  108d17:	4c 89 f7             	mov    rdi,r14
  108d1a:	e8 a1 fb ff ff       	call   1088c0 <_sbrk_r>
  108d1f:	48 83 f8 ff          	cmp    rax,0xffffffffffffffff
  108d23:	74 20                	je     108d45 <_malloc_trim_r+0x95>
  108d25:	49 29 dd             	sub    r13,rbx
  108d28:	49 83 cd 01          	or     r13,0x1
  108d2c:	49 8b 47 10          	mov    rax,QWORD PTR [r15+0x10]
  108d30:	4c 89 68 08          	mov    QWORD PTR [rax+0x8],r13
  108d34:	48 8d 05 3d 3d 51 00 	lea    rax,[rip+0x513d3d]        # 61ca78 <__malloc_current_mallinfo>
  108d3b:	29 18                	sub    DWORD PTR [rax],ebx
  108d3d:	41 bc 01 00 00 00    	mov    r12d,0x1
  108d43:	eb 37                	jmp    108d7c <_malloc_trim_r+0xcc>
  108d45:	45 31 e4             	xor    r12d,r12d
  108d48:	4c 89 f7             	mov    rdi,r14
  108d4b:	31 f6                	xor    esi,esi
  108d4d:	e8 6e fb ff ff       	call   1088c0 <_sbrk_r>
  108d52:	49 8b 4f 10          	mov    rcx,QWORD PTR [r15+0x10]
  108d56:	48 89 c2             	mov    rdx,rax
  108d59:	48 29 ca             	sub    rdx,rcx
  108d5c:	48 83 fa 20          	cmp    rdx,0x20
  108d60:	7c 1a                	jl     108d7c <_malloc_trim_r+0xcc>
  108d62:	48 8d 35 3f e0 00 00 	lea    rsi,[rip+0xe03f]        # 116da8 <__malloc_sbrk_base>
  108d69:	2b 06                	sub    eax,DWORD PTR [rsi]
  108d6b:	48 8d 35 06 3d 51 00 	lea    rsi,[rip+0x513d06]        # 61ca78 <__malloc_current_mallinfo>
  108d72:	89 06                	mov    DWORD PTR [rsi],eax
  108d74:	48 83 ca 01          	or     rdx,0x1
  108d78:	48 89 51 08          	mov    QWORD PTR [rcx+0x8],rdx
  108d7c:	4c 89 f7             	mov    rdi,r14
  108d7f:	e8 2c fb ff ff       	call   1088b0 <__malloc_unlock>
  108d84:	44 89 e0             	mov    eax,r12d
  108d87:	5b                   	pop    rbx
  108d88:	41 5c                	pop    r12
  108d8a:	41 5d                	pop    r13
  108d8c:	41 5e                	pop    r14
  108d8e:	41 5f                	pop    r15
  108d90:	c3                   	ret
  108d91:	cc                   	int3
  108d92:	cc                   	int3
  108d93:	cc                   	int3
  108d94:	cc                   	int3
  108d95:	cc                   	int3
  108d96:	cc                   	int3
  108d97:	cc                   	int3
  108d98:	cc                   	int3
  108d99:	cc                   	int3
  108d9a:	cc                   	int3
  108d9b:	cc                   	int3
  108d9c:	cc                   	int3
  108d9d:	cc                   	int3
  108d9e:	cc                   	int3
  108d9f:	cc                   	int3

0000000000108da0 <__ssprint_r>:
  108da0:	55                   	push   rbp
  108da1:	41 57                	push   r15
  108da3:	41 56                	push   r14
  108da5:	41 55                	push   r13
  108da7:	41 54                	push   r12
  108da9:	53                   	push   rbx
  108daa:	48 83 ec 18          	sub    rsp,0x18
  108dae:	49 89 d5             	mov    r13,rdx
  108db1:	48 89 3c 24          	mov    QWORD PTR [rsp],rdi
  108db5:	48 83 7a 10 00       	cmp    QWORD PTR [rdx+0x10],0x0
  108dba:	0f 84 49 01 00 00    	je     108f09 <__ssprint_r+0x169>
  108dc0:	49 89 f4             	mov    r12,rsi
  108dc3:	4d 8b 7d 00          	mov    r15,QWORD PTR [r13+0x0]
  108dc7:	45 31 f6             	xor    r14d,r14d
  108dca:	31 db                	xor    ebx,ebx
  108dcc:	4c 89 6c 24 10       	mov    QWORD PTR [rsp+0x10],r13
  108dd1:	eb 73                	jmp    108e46 <__ssprint_r+0xa6>
  108dd3:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
  108dd7:	e8 94 11 00 00       	call   109f70 <_realloc_r>
  108ddc:	48 89 c5             	mov    rbp,rax
  108ddf:	48 85 c0             	test   rax,rax
  108de2:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  108de7:	0f 84 20 01 00 00    	je     108f0d <__ssprint_r+0x16d>
  108ded:	49 89 6c 24 18       	mov    QWORD PTR [r12+0x18],rbp
  108df2:	48 01 d5             	add    rbp,rdx
  108df5:	49 89 2c 24          	mov    QWORD PTR [r12],rbp
  108df9:	45 89 6c 24 20       	mov    DWORD PTR [r12+0x20],r13d
  108dfe:	41 29 d5             	sub    r13d,edx
  108e01:	45 89 6c 24 0c       	mov    DWORD PTR [r12+0xc],r13d
  108e06:	49 63 d6             	movsxd rdx,r14d
  108e09:	44 89 f1             	mov    ecx,r14d
  108e0c:	4c 8b 6c 24 10       	mov    r13,QWORD PTR [rsp+0x10]
  108e11:	49 39 d6             	cmp    r14,rdx
  108e14:	41 0f 42 ce          	cmovb  ecx,r14d
  108e18:	49 8b 3c 24          	mov    rdi,QWORD PTR [r12]
  108e1c:	48 63 e9             	movsxd rbp,ecx
  108e1f:	48 89 de             	mov    rsi,rbx
  108e22:	48 89 ea             	mov    rdx,rbp
  108e25:	e8 76 17 00 00       	call   10a5a0 <memmove>
  108e2a:	41 29 6c 24 0c       	sub    DWORD PTR [r12+0xc],ebp
  108e2f:	49 01 2c 24          	add    QWORD PTR [r12],rbp
  108e33:	49 63 c6             	movsxd rax,r14d
  108e36:	48 01 c3             	add    rbx,rax
  108e39:	49 29 c6             	sub    r14,rax
  108e3c:	49 29 45 10          	sub    QWORD PTR [r13+0x10],rax
  108e40:	0f 84 bf 00 00 00    	je     108f05 <__ssprint_r+0x165>
  108e46:	4d 85 f6             	test   r14,r14
  108e49:	75 16                	jne    108e61 <__ssprint_r+0xc1>
  108e4b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  108e50:	4d 8b 77 08          	mov    r14,QWORD PTR [r15+0x8]
  108e54:	49 83 c7 10          	add    r15,0x10
  108e58:	4d 85 f6             	test   r14,r14
  108e5b:	74 f3                	je     108e50 <__ssprint_r+0xb0>
  108e5d:	49 8b 5f f0          	mov    rbx,QWORD PTR [r15-0x10]
  108e61:	41 8b 4c 24 0c       	mov    ecx,DWORD PTR [r12+0xc]
  108e66:	48 63 d1             	movsxd rdx,ecx
  108e69:	49 39 d6             	cmp    r14,rdx
  108e6c:	72 a3                	jb     108e11 <__ssprint_r+0x71>
  108e6e:	41 0f b7 44 24 10    	movzx  eax,WORD PTR [r12+0x10]
  108e74:	a9 80 04 00 00       	test   eax,0x480
  108e79:	74 96                	je     108e11 <__ssprint_r+0x71>
  108e7b:	49 8b 0c 24          	mov    rcx,QWORD PTR [r12]
  108e7f:	49 8b 74 24 18       	mov    rsi,QWORD PTR [r12+0x18]
  108e84:	48 29 f1             	sub    rcx,rsi
  108e87:	41 8b 54 24 20       	mov    edx,DWORD PTR [r12+0x20]
  108e8c:	8d 14 52             	lea    edx,[rdx+rdx*2]
  108e8f:	89 d7                	mov    edi,edx
  108e91:	c1 ef 1f             	shr    edi,0x1f
  108e94:	01 d7                	add    edi,edx
  108e96:	d1 ff                	sar    edi,1
  108e98:	4c 63 ef             	movsxd r13,edi
  108e9b:	48 63 c9             	movsxd rcx,ecx
  108e9e:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
  108ea3:	4c 01 f1             	add    rcx,r14
  108ea6:	48 ff c1             	inc    rcx
  108ea9:	4c 39 e9             	cmp    rcx,r13
  108eac:	44 0f 47 e9          	cmova  r13d,ecx
  108eb0:	49 63 d5             	movsxd rdx,r13d
  108eb3:	a9 00 04 00 00       	test   eax,0x400
  108eb8:	0f 84 15 ff ff ff    	je     108dd3 <__ssprint_r+0x33>
  108ebe:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
  108ec2:	48 89 d6             	mov    rsi,rdx
  108ec5:	e8 c6 f1 ff ff       	call   108090 <_malloc_r>
  108eca:	48 85 c0             	test   rax,rax
  108ecd:	74 4c                	je     108f1b <__ssprint_r+0x17b>
  108ecf:	48 89 c5             	mov    rbp,rax
  108ed2:	49 8b 74 24 18       	mov    rsi,QWORD PTR [r12+0x18]
  108ed7:	48 89 c7             	mov    rdi,rax
  108eda:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  108edf:	e8 8c 1c 00 00       	call   10ab70 <memcpy>
  108ee4:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  108ee9:	41 8b 44 24 10       	mov    eax,DWORD PTR [r12+0x10]
  108eee:	b9 7f fb ff ff       	mov    ecx,0xfffffb7f
  108ef3:	21 c8                	and    eax,ecx
  108ef5:	0d 80 00 00 00       	or     eax,0x80
  108efa:	66 41 89 44 24 10    	mov    WORD PTR [r12+0x10],ax
  108f00:	e9 e8 fe ff ff       	jmp    108ded <__ssprint_r+0x4d>
  108f05:	31 c0                	xor    eax,eax
  108f07:	eb 2c                	jmp    108f35 <__ssprint_r+0x195>
  108f09:	31 c0                	xor    eax,eax
  108f0b:	eb 30                	jmp    108f3d <__ssprint_r+0x19d>
  108f0d:	49 8b 74 24 18       	mov    rsi,QWORD PTR [r12+0x18]
  108f12:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
  108f16:	e8 15 fb ff ff       	call   108a30 <_free_r>
  108f1b:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
  108f1f:	c7 00 0c 00 00 00    	mov    DWORD PTR [rax],0xc
  108f25:	41 80 4c 24 10 40    	or     BYTE PTR [r12+0x10],0x40
  108f2b:	b8 ff ff ff ff       	mov    eax,0xffffffff
  108f30:	4c 8b 6c 24 10       	mov    r13,QWORD PTR [rsp+0x10]
  108f35:	49 c7 45 10 00 00 00 	mov    QWORD PTR [r13+0x10],0x0
  108f3c:	00 
  108f3d:	41 c7 45 08 00 00 00 	mov    DWORD PTR [r13+0x8],0x0
  108f44:	00 
  108f45:	48 83 c4 18          	add    rsp,0x18
  108f49:	5b                   	pop    rbx
  108f4a:	41 5c                	pop    r12
  108f4c:	41 5d                	pop    r13
  108f4e:	41 5e                	pop    r14
  108f50:	41 5f                	pop    r15
  108f52:	5d                   	pop    rbp
  108f53:	c3                   	ret
  108f54:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  108f5b:	00 00 00 00 00 

0000000000108f60 <_svfiprintf_r>:
  108f60:	55                   	push   rbp
  108f61:	41 57                	push   r15
  108f63:	41 56                	push   r14
  108f65:	41 55                	push   r13
  108f67:	41 54                	push   r12
  108f69:	53                   	push   rbx
  108f6a:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  108f71:	49 89 ce             	mov    r14,rcx
  108f74:	49 89 d5             	mov    r13,rdx
  108f77:	48 89 f3             	mov    rbx,rsi
  108f7a:	48 89 fd             	mov    rbp,rdi
  108f7d:	f6 46 10 80          	test   BYTE PTR [rsi+0x10],0x80
  108f81:	74 2b                	je     108fae <_svfiprintf_r+0x4e>
  108f83:	48 83 7b 18 00       	cmp    QWORD PTR [rbx+0x18],0x0
  108f88:	75 24                	jne    108fae <_svfiprintf_r+0x4e>
  108f8a:	be 40 00 00 00       	mov    esi,0x40
  108f8f:	48 89 ef             	mov    rdi,rbp
  108f92:	e8 f9 f0 ff ff       	call   108090 <_malloc_r>
  108f97:	48 89 03             	mov    QWORD PTR [rbx],rax
  108f9a:	48 89 43 18          	mov    QWORD PTR [rbx+0x18],rax
  108f9e:	48 85 c0             	test   rax,rax
  108fa1:	0f 84 a8 0f 00 00    	je     109f4f <_svfiprintf_r+0xfef>
  108fa7:	c7 43 20 40 00 00 00 	mov    DWORD PTR [rbx+0x20],0x40
  108fae:	48 89 6c 24 48       	mov    QWORD PTR [rsp+0x48],rbp
  108fb3:	48 89 5c 24 38       	mov    QWORD PTR [rsp+0x38],rbx
  108fb8:	4c 8d a4 24 a0 00 00 	lea    r12,[rsp+0xa0]
  108fbf:	00 
  108fc0:	4c 89 64 24 20       	mov    QWORD PTR [rsp+0x20],r12
  108fc5:	48 c7 44 24 30 00 00 	mov    QWORD PTR [rsp+0x30],0x0
  108fcc:	00 00 
  108fce:	c7 44 24 28 00 00 00 	mov    DWORD PTR [rsp+0x28],0x0
  108fd5:	00 
  108fd6:	49 8d 46 08          	lea    rax,[r14+0x8]
  108fda:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  108fdf:	31 db                	xor    ebx,ebx
  108fe1:	48 be 00 00 00 00 01 	movabs rsi,0x100000000
  108fe8:	00 00 00 
  108feb:	31 c0                	xor    eax,eax
  108fed:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  108ff2:	4c 89 b4 24 98 00 00 	mov    QWORD PTR [rsp+0x98],r14
  108ff9:	00 
  108ffa:	41 89 df             	mov    r15d,ebx
  108ffd:	49 8d 5d 01          	lea    rbx,[r13+0x1]
  109001:	31 ed                	xor    ebp,ebp
  109003:	31 c0                	xor    eax,eax
  109005:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  10900c:	00 00 00 00 
  109010:	0f b6 4b ff          	movzx  ecx,BYTE PTR [rbx-0x1]
  109014:	85 c9                	test   ecx,ecx
  109016:	74 18                	je     109030 <_svfiprintf_r+0xd0>
  109018:	83 f9 25             	cmp    ecx,0x25
  10901b:	74 13                	je     109030 <_svfiprintf_r+0xd0>
  10901d:	48 ff c3             	inc    rbx
  109020:	48 01 f0             	add    rax,rsi
  109023:	ff cd                	dec    ebp
  109025:	eb e9                	jmp    109010 <_svfiprintf_r+0xb0>
  109027:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  10902e:	00 00 
  109030:	85 ed                	test   ebp,ebp
  109032:	74 4c                	je     109080 <_svfiprintf_r+0x120>
  109034:	4d 89 2c 24          	mov    QWORD PTR [r12],r13
  109038:	48 c1 f8 20          	sar    rax,0x20
  10903c:	49 89 44 24 08       	mov    QWORD PTR [r12+0x8],rax
  109041:	48 01 44 24 30       	add    QWORD PTR [rsp+0x30],rax
  109046:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
  10904a:	8d 48 01             	lea    ecx,[rax+0x1]
  10904d:	89 4c 24 28          	mov    DWORD PTR [rsp+0x28],ecx
  109051:	83 f8 07             	cmp    eax,0x7
  109054:	7c 3a                	jl     109090 <_svfiprintf_r+0x130>
  109056:	48 8b 7c 24 48       	mov    rdi,QWORD PTR [rsp+0x48]
  10905b:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  109060:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  109065:	e8 36 fd ff ff       	call   108da0 <__ssprint_r>
  10906a:	4c 8d a4 24 a0 00 00 	lea    r12,[rsp+0xa0]
  109071:	00 
  109072:	85 c0                	test   eax,eax
  109074:	74 1e                	je     109094 <_svfiprintf_r+0x134>
  109076:	e9 ad 0e 00 00       	jmp    109f28 <_svfiprintf_r+0xfc8>
  10907b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  109080:	44 89 7c 24 0c       	mov    DWORD PTR [rsp+0xc],r15d
  109085:	eb 19                	jmp    1090a0 <_svfiprintf_r+0x140>
  109087:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  10908e:	00 00 
  109090:	49 83 c4 10          	add    r12,0x10
  109094:	41 29 ef             	sub    r15d,ebp
  109097:	44 89 7c 24 0c       	mov    DWORD PTR [rsp+0xc],r15d
  10909c:	0f b6 4b ff          	movzx  ecx,BYTE PTR [rbx-0x1]
  1090a0:	84 c9                	test   cl,cl
  1090a2:	48 8b 7c 24 48       	mov    rdi,QWORD PTR [rsp+0x48]
  1090a7:	48 8d 2d e2 7c ff ff 	lea    rbp,[rip+0xffffffffffff7ce2]        # 100d90 <_ctype_+0x110>
  1090ae:	0f 84 58 0e 00 00    	je     109f0c <_svfiprintf_r+0xfac>
  1090b4:	c6 44 24 07 00       	mov    BYTE PTR [rsp+0x7],0x0
  1090b9:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
  1090bf:	31 c0                	xor    eax,eax
  1090c1:	c7 44 24 08 00 00 00 	mov    DWORD PTR [rsp+0x8],0x0
  1090c8:	00 
  1090c9:	49 89 dd             	mov    r13,rbx
  1090cc:	31 db                	xor    ebx,ebx
  1090ce:	41 0f b6 4d 00       	movzx  ecx,BYTE PTR [r13+0x0]
  1090d3:	49 ff c5             	inc    r13
  1090d6:	0f be d1             	movsx  edx,cl
  1090d9:	83 fa 78             	cmp    edx,0x78
  1090dc:	0f 87 85 03 00 00    	ja     109467 <_svfiprintf_r+0x507>
  1090e2:	89 d1                	mov    ecx,edx
  1090e4:	48 63 4c 8d 00       	movsxd rcx,DWORD PTR [rbp+rcx*4+0x0]
  1090e9:	48 01 e9             	add    rcx,rbp
  1090ec:	ff e1                	jmp    rcx
  1090ee:	41 0f be 55 00       	movsx  edx,BYTE PTR [r13+0x0]
  1090f3:	49 ff c5             	inc    r13
  1090f6:	83 fa 2a             	cmp    edx,0x2a
  1090f9:	0f 84 d5 00 00 00    	je     1091d4 <_svfiprintf_r+0x274>
  1090ff:	8d 72 d0             	lea    esi,[rdx-0x30]
  109102:	31 c9                	xor    ecx,ecx
  109104:	83 fe 09             	cmp    esi,0x9
  109107:	77 1d                	ja     109126 <_svfiprintf_r+0x1c6>
  109109:	31 c9                	xor    ecx,ecx
  10910b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  109110:	8d 0c 89             	lea    ecx,[rcx+rcx*4]
  109113:	8d 0c 4e             	lea    ecx,[rsi+rcx*2]
  109116:	41 0f be 55 00       	movsx  edx,BYTE PTR [r13+0x0]
  10911b:	49 ff c5             	inc    r13
  10911e:	8d 72 d0             	lea    esi,[rdx-0x30]
  109121:	83 fe 0a             	cmp    esi,0xa
  109124:	72 ea                	jb     109110 <_svfiprintf_r+0x1b0>
  109126:	85 c9                	test   ecx,ecx
  109128:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
  10912e:	44 0f 49 c1          	cmovns r8d,ecx
  109132:	83 fa 78             	cmp    edx,0x78
  109135:	76 ab                	jbe    1090e2 <_svfiprintf_r+0x182>
  109137:	e9 2b 03 00 00       	jmp    109467 <_svfiprintf_r+0x507>
  10913c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  109140:	31 db                	xor    ebx,ebx
  109142:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  109149:	1f 84 00 00 00 00 00 
  109150:	8d 0c 9b             	lea    ecx,[rbx+rbx*4]
  109153:	8d 1c 4a             	lea    ebx,[rdx+rcx*2]
  109156:	83 c3 d0             	add    ebx,0xffffffd0
  109159:	41 0f b6 4d 00       	movzx  ecx,BYTE PTR [r13+0x0]
  10915e:	49 ff c5             	inc    r13
  109161:	0f be d1             	movsx  edx,cl
  109164:	8d 72 d0             	lea    esi,[rdx-0x30]
  109167:	83 fe 0a             	cmp    esi,0xa
  10916a:	72 e4                	jb     109150 <_svfiprintf_r+0x1f0>
  10916c:	e9 65 ff ff ff       	jmp    1090d6 <_svfiprintf_r+0x176>
  109171:	83 4c 24 08 10       	or     DWORD PTR [rsp+0x8],0x10
  109176:	e9 53 ff ff ff       	jmp    1090ce <_svfiprintf_r+0x16e>
  10917b:	84 c0                	test   al,al
  10917d:	0f 85 4b ff ff ff    	jne    1090ce <_svfiprintf_r+0x16e>
  109183:	c6 44 24 07 20       	mov    BYTE PTR [rsp+0x7],0x20
  109188:	b0 20                	mov    al,0x20
  10918a:	e9 3f ff ff ff       	jmp    1090ce <_svfiprintf_r+0x16e>
  10918f:	83 4c 24 08 01       	or     DWORD PTR [rsp+0x8],0x1
  109194:	e9 35 ff ff ff       	jmp    1090ce <_svfiprintf_r+0x16e>
  109199:	41 8b 16             	mov    edx,DWORD PTR [r14]
  10919c:	48 83 fa 28          	cmp    rdx,0x28
  1091a0:	77 4a                	ja     1091ec <_svfiprintf_r+0x28c>
  1091a2:	48 89 d1             	mov    rcx,rdx
  1091a5:	49 03 4e 10          	add    rcx,QWORD PTR [r14+0x10]
  1091a9:	83 c2 08             	add    edx,0x8
  1091ac:	41 89 16             	mov    DWORD PTR [r14],edx
  1091af:	eb 4a                	jmp    1091fb <_svfiprintf_r+0x29b>
  1091b1:	c6 44 24 07 2b       	mov    BYTE PTR [rsp+0x7],0x2b
  1091b6:	b0 2b                	mov    al,0x2b
  1091b8:	e9 11 ff ff ff       	jmp    1090ce <_svfiprintf_r+0x16e>
  1091bd:	81 4c 24 08 80 00 00 	or     DWORD PTR [rsp+0x8],0x80
  1091c4:	00 
  1091c5:	e9 04 ff ff ff       	jmp    1090ce <_svfiprintf_r+0x16e>
  1091ca:	83 4c 24 08 40       	or     DWORD PTR [rsp+0x8],0x40
  1091cf:	e9 fa fe ff ff       	jmp    1090ce <_svfiprintf_r+0x16e>
  1091d4:	41 8b 16             	mov    edx,DWORD PTR [r14]
  1091d7:	48 83 fa 28          	cmp    rdx,0x28
  1091db:	77 34                	ja     109211 <_svfiprintf_r+0x2b1>
  1091dd:	48 89 d1             	mov    rcx,rdx
  1091e0:	49 03 4e 10          	add    rcx,QWORD PTR [r14+0x10]
  1091e4:	83 c2 08             	add    edx,0x8
  1091e7:	41 89 16             	mov    DWORD PTR [r14],edx
  1091ea:	eb 34                	jmp    109220 <_svfiprintf_r+0x2c0>
  1091ec:	48 8b 74 24 18       	mov    rsi,QWORD PTR [rsp+0x18]
  1091f1:	48 8b 0e             	mov    rcx,QWORD PTR [rsi]
  1091f4:	48 8d 51 08          	lea    rdx,[rcx+0x8]
  1091f8:	48 89 16             	mov    QWORD PTR [rsi],rdx
  1091fb:	8b 19                	mov    ebx,DWORD PTR [rcx]
  1091fd:	85 db                	test   ebx,ebx
  1091ff:	0f 89 c9 fe ff ff    	jns    1090ce <_svfiprintf_r+0x16e>
  109205:	f7 db                	neg    ebx
  109207:	83 4c 24 08 04       	or     DWORD PTR [rsp+0x8],0x4
  10920c:	e9 bd fe ff ff       	jmp    1090ce <_svfiprintf_r+0x16e>
  109211:	48 8b 74 24 18       	mov    rsi,QWORD PTR [rsp+0x18]
  109216:	48 8b 0e             	mov    rcx,QWORD PTR [rsi]
  109219:	48 8d 51 08          	lea    rdx,[rcx+0x8]
  10921d:	48 89 16             	mov    QWORD PTR [rsi],rdx
  109220:	8b 09                	mov    ecx,DWORD PTR [rcx]
  109222:	85 c9                	test   ecx,ecx
  109224:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
  10922a:	44 0f 49 c1          	cmovns r8d,ecx
  10922e:	e9 9b fe ff ff       	jmp    1090ce <_svfiprintf_r+0x16e>
  109233:	8b 44 24 08          	mov    eax,DWORD PTR [rsp+0x8]
  109237:	a8 10                	test   al,0x10
  109239:	75 2b                	jne    109266 <_svfiprintf_r+0x306>
  10923b:	a8 40                	test   al,0x40
  10923d:	75 3f                	jne    10927e <_svfiprintf_r+0x31e>
  10923f:	41 8b 0e             	mov    ecx,DWORD PTR [r14]
  109242:	48 83 f9 28          	cmp    rcx,0x28
  109246:	44 8b 7c 24 0c       	mov    r15d,DWORD PTR [rsp+0xc]
  10924b:	48 be 00 00 00 00 01 	movabs rsi,0x100000000
  109252:	00 00 00 
  109255:	77 7a                	ja     1092d1 <_svfiprintf_r+0x371>
  109257:	48 89 c8             	mov    rax,rcx
  10925a:	49 03 46 10          	add    rax,QWORD PTR [r14+0x10]
  10925e:	83 c1 08             	add    ecx,0x8
  109261:	41 89 0e             	mov    DWORD PTR [r14],ecx
  109264:	eb 7a                	jmp    1092e0 <_svfiprintf_r+0x380>
  109266:	41 8b 0e             	mov    ecx,DWORD PTR [r14]
  109269:	48 83 f9 28          	cmp    rcx,0x28
  10926d:	77 36                	ja     1092a5 <_svfiprintf_r+0x345>
  10926f:	48 89 c8             	mov    rax,rcx
  109272:	49 03 46 10          	add    rax,QWORD PTR [r14+0x10]
  109276:	83 c1 08             	add    ecx,0x8
  109279:	41 89 0e             	mov    DWORD PTR [r14],ecx
  10927c:	eb 36                	jmp    1092b4 <_svfiprintf_r+0x354>
  10927e:	41 8b 0e             	mov    ecx,DWORD PTR [r14]
  109281:	48 83 f9 28          	cmp    rcx,0x28
  109285:	44 8b 7c 24 0c       	mov    r15d,DWORD PTR [rsp+0xc]
  10928a:	48 be 00 00 00 00 01 	movabs rsi,0x100000000
  109291:	00 00 00 
  109294:	77 55                	ja     1092eb <_svfiprintf_r+0x38b>
  109296:	48 89 c8             	mov    rax,rcx
  109299:	49 03 46 10          	add    rax,QWORD PTR [r14+0x10]
  10929d:	83 c1 08             	add    ecx,0x8
  1092a0:	41 89 0e             	mov    DWORD PTR [r14],ecx
  1092a3:	eb 55                	jmp    1092fa <_svfiprintf_r+0x39a>
  1092a5:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  1092aa:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  1092ad:	48 8d 48 08          	lea    rcx,[rax+0x8]
  1092b1:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  1092b4:	44 8b 7c 24 0c       	mov    r15d,DWORD PTR [rsp+0xc]
  1092b9:	48 be 00 00 00 00 01 	movabs rsi,0x100000000
  1092c0:	00 00 00 
  1092c3:	49 63 cf             	movsxd rcx,r15d
  1092c6:	48 8b 00             	mov    rax,QWORD PTR [rax]
  1092c9:	48 89 08             	mov    QWORD PTR [rax],rcx
  1092cc:	e9 2c fd ff ff       	jmp    108ffd <_svfiprintf_r+0x9d>
  1092d1:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  1092d6:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  1092d9:	48 8d 48 08          	lea    rcx,[rax+0x8]
  1092dd:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  1092e0:	48 8b 00             	mov    rax,QWORD PTR [rax]
  1092e3:	44 89 38             	mov    DWORD PTR [rax],r15d
  1092e6:	e9 12 fd ff ff       	jmp    108ffd <_svfiprintf_r+0x9d>
  1092eb:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  1092f0:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  1092f3:	48 8d 48 08          	lea    rcx,[rax+0x8]
  1092f7:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  1092fa:	48 8b 00             	mov    rax,QWORD PTR [rax]
  1092fd:	66 44 89 38          	mov    WORD PTR [rax],r15w
  109301:	e9 f7 fc ff ff       	jmp    108ffd <_svfiprintf_r+0x9d>
  109306:	8b 6c 24 08          	mov    ebp,DWORD PTR [rsp+0x8]
  10930a:	eb 07                	jmp    109313 <_svfiprintf_r+0x3b3>
  10930c:	8b 6c 24 08          	mov    ebp,DWORD PTR [rsp+0x8]
  109310:	83 cd 10             	or     ebp,0x10
  109313:	40 f6 c5 10          	test   bpl,0x10
  109317:	48 89 5c 24 50       	mov    QWORD PTR [rsp+0x50],rbx
  10931c:	75 28                	jne    109346 <_svfiprintf_r+0x3e6>
  10931e:	41 8b 06             	mov    eax,DWORD PTR [r14]
  109321:	40 f6 c5 40          	test   bpl,0x40
  109325:	0f 85 eb 01 00 00    	jne    109516 <_svfiprintf_r+0x5b6>
  10932b:	83 f8 28             	cmp    eax,0x28
  10932e:	0f 87 66 03 00 00    	ja     10969a <_svfiprintf_r+0x73a>
  109334:	48 89 c1             	mov    rcx,rax
  109337:	49 03 4e 10          	add    rcx,QWORD PTR [r14+0x10]
  10933b:	83 c0 08             	add    eax,0x8
  10933e:	41 89 06             	mov    DWORD PTR [r14],eax
  109341:	e9 63 03 00 00       	jmp    1096a9 <_svfiprintf_r+0x749>
  109346:	41 8b 06             	mov    eax,DWORD PTR [r14]
  109349:	48 83 f8 28          	cmp    rax,0x28
  10934d:	0f 87 e2 01 00 00    	ja     109535 <_svfiprintf_r+0x5d5>
  109353:	48 89 c1             	mov    rcx,rax
  109356:	49 03 4e 10          	add    rcx,QWORD PTR [r14+0x10]
  10935a:	83 c0 08             	add    eax,0x8
  10935d:	41 89 06             	mov    DWORD PTR [r14],eax
  109360:	48 8b 09             	mov    rcx,QWORD PTR [rcx]
  109363:	e9 5e 03 00 00       	jmp    1096c6 <_svfiprintf_r+0x766>
  109368:	8b 6c 24 08          	mov    ebp,DWORD PTR [rsp+0x8]
  10936c:	83 cd 10             	or     ebp,0x10
  10936f:	eb 40                	jmp    1093b1 <_svfiprintf_r+0x451>
  109371:	8b 6c 24 08          	mov    ebp,DWORD PTR [rsp+0x8]
  109375:	83 cd 10             	or     ebp,0x10
  109378:	e9 b7 00 00 00       	jmp    109434 <_svfiprintf_r+0x4d4>
  10937d:	48 8d 3d 5f 73 ff ff 	lea    rdi,[rip+0xffffffffffff735f]        # 1006e3 <_svfprintf_r.blanks-0x3fd>
  109384:	e9 31 01 00 00       	jmp    1094ba <_svfiprintf_r+0x55a>
  109389:	41 8b 0e             	mov    ecx,DWORD PTR [r14]
  10938c:	48 83 f9 28          	cmp    rcx,0x28
  109390:	48 89 5c 24 50       	mov    QWORD PTR [rsp+0x50],rbx
  109395:	0f 87 b1 01 00 00    	ja     10954c <_svfiprintf_r+0x5ec>
  10939b:	48 89 c8             	mov    rax,rcx
  10939e:	49 03 46 10          	add    rax,QWORD PTR [r14+0x10]
  1093a2:	83 c1 08             	add    ecx,0x8
  1093a5:	41 89 0e             	mov    DWORD PTR [r14],ecx
  1093a8:	e9 ae 01 00 00       	jmp    10955b <_svfiprintf_r+0x5fb>
  1093ad:	8b 6c 24 08          	mov    ebp,DWORD PTR [rsp+0x8]
  1093b1:	40 f6 c5 10          	test   bpl,0x10
  1093b5:	48 89 5c 24 50       	mov    QWORD PTR [rsp+0x50],rbx
  1093ba:	0f 85 b5 00 00 00    	jne    109475 <_svfiprintf_r+0x515>
  1093c0:	41 8b 06             	mov    eax,DWORD PTR [r14]
  1093c3:	40 f6 c5 40          	test   bpl,0x40
  1093c7:	0f 85 ac 01 00 00    	jne    109579 <_svfiprintf_r+0x619>
  1093cd:	83 f8 28             	cmp    eax,0x28
  1093d0:	0f 87 36 03 00 00    	ja     10970c <_svfiprintf_r+0x7ac>
  1093d6:	48 89 c1             	mov    rcx,rax
  1093d9:	49 03 4e 10          	add    rcx,QWORD PTR [r14+0x10]
  1093dd:	83 c0 08             	add    eax,0x8
  1093e0:	41 89 06             	mov    DWORD PTR [r14],eax
  1093e3:	e9 33 03 00 00       	jmp    10971b <_svfiprintf_r+0x7bb>
  1093e8:	41 8b 0e             	mov    ecx,DWORD PTR [r14]
  1093eb:	48 83 f9 28          	cmp    rcx,0x28
  1093ef:	48 89 5c 24 50       	mov    QWORD PTR [rsp+0x50],rbx
  1093f4:	0f 87 9a 01 00 00    	ja     109594 <_svfiprintf_r+0x634>
  1093fa:	48 89 c8             	mov    rax,rcx
  1093fd:	49 03 46 10          	add    rax,QWORD PTR [r14+0x10]
  109401:	83 c1 08             	add    ecx,0x8
  109404:	41 89 0e             	mov    DWORD PTR [r14],ecx
  109407:	e9 97 01 00 00       	jmp    1095a3 <_svfiprintf_r+0x643>
  10940c:	41 8b 0e             	mov    ecx,DWORD PTR [r14]
  10940f:	48 83 f9 28          	cmp    rcx,0x28
  109413:	48 89 5c 24 50       	mov    QWORD PTR [rsp+0x50],rbx
  109418:	0f 87 a4 01 00 00    	ja     1095c2 <_svfiprintf_r+0x662>
  10941e:	48 89 c8             	mov    rax,rcx
  109421:	49 03 46 10          	add    rax,QWORD PTR [r14+0x10]
  109425:	83 c1 08             	add    ecx,0x8
  109428:	41 89 0e             	mov    DWORD PTR [r14],ecx
  10942b:	e9 a1 01 00 00       	jmp    1095d1 <_svfiprintf_r+0x671>
  109430:	8b 6c 24 08          	mov    ebp,DWORD PTR [rsp+0x8]
  109434:	40 f6 c5 10          	test   bpl,0x10
  109438:	48 89 5c 24 50       	mov    QWORD PTR [rsp+0x50],rbx
  10943d:	75 55                	jne    109494 <_svfiprintf_r+0x534>
  10943f:	41 8b 06             	mov    eax,DWORD PTR [r14]
  109442:	40 f6 c5 40          	test   bpl,0x40
  109446:	0f 85 c2 01 00 00    	jne    10960e <_svfiprintf_r+0x6ae>
  10944c:	83 f8 28             	cmp    eax,0x28
  10944f:	0f 87 d4 02 00 00    	ja     109729 <_svfiprintf_r+0x7c9>
  109455:	48 89 c1             	mov    rcx,rax
  109458:	49 03 4e 10          	add    rcx,QWORD PTR [r14+0x10]
  10945c:	83 c0 08             	add    eax,0x8
  10945f:	41 89 06             	mov    DWORD PTR [r14],eax
  109462:	e9 d1 02 00 00       	jmp    109738 <_svfiprintf_r+0x7d8>
  109467:	48 89 5c 24 50       	mov    QWORD PTR [rsp+0x50],rbx
  10946c:	88 54 24 70          	mov    BYTE PTR [rsp+0x70],dl
  109470:	e9 ed 00 00 00       	jmp    109562 <_svfiprintf_r+0x602>
  109475:	41 8b 0e             	mov    ecx,DWORD PTR [r14]
  109478:	48 83 f9 28          	cmp    rcx,0x28
  10947c:	0f 87 a7 01 00 00    	ja     109629 <_svfiprintf_r+0x6c9>
  109482:	48 89 c8             	mov    rax,rcx
  109485:	49 03 46 10          	add    rax,QWORD PTR [r14+0x10]
  109489:	83 c1 08             	add    ecx,0x8
  10948c:	41 89 0e             	mov    DWORD PTR [r14],ecx
  10948f:	e9 a4 01 00 00       	jmp    109638 <_svfiprintf_r+0x6d8>
  109494:	41 8b 0e             	mov    ecx,DWORD PTR [r14]
  109497:	48 83 f9 28          	cmp    rcx,0x28
  10949b:	0f 87 a6 01 00 00    	ja     109647 <_svfiprintf_r+0x6e7>
  1094a1:	48 89 c8             	mov    rax,rcx
  1094a4:	49 03 46 10          	add    rax,QWORD PTR [r14+0x10]
  1094a8:	83 c1 08             	add    ecx,0x8
  1094ab:	41 89 0e             	mov    DWORD PTR [r14],ecx
  1094ae:	e9 a3 01 00 00       	jmp    109656 <_svfiprintf_r+0x6f6>
  1094b3:	48 8d 3d 96 6e ff ff 	lea    rdi,[rip+0xffffffffffff6e96]        # 100350 <_svfprintf_r.blanks-0x790>
  1094ba:	8b 6c 24 08          	mov    ebp,DWORD PTR [rsp+0x8]
  1094be:	40 f6 c5 10          	test   bpl,0x10
  1094c2:	48 89 5c 24 50       	mov    QWORD PTR [rsp+0x50],rbx
  1094c7:	75 28                	jne    1094f1 <_svfiprintf_r+0x591>
  1094c9:	41 8b 06             	mov    eax,DWORD PTR [r14]
  1094cc:	40 f6 c5 40          	test   bpl,0x40
  1094d0:	0f 85 8f 01 00 00    	jne    109665 <_svfiprintf_r+0x705>
  1094d6:	83 f8 28             	cmp    eax,0x28
  1094d9:	0f 87 67 02 00 00    	ja     109746 <_svfiprintf_r+0x7e6>
  1094df:	48 89 c1             	mov    rcx,rax
  1094e2:	49 03 4e 10          	add    rcx,QWORD PTR [r14+0x10]
  1094e6:	83 c0 08             	add    eax,0x8
  1094e9:	41 89 06             	mov    DWORD PTR [r14],eax
  1094ec:	e9 64 02 00 00       	jmp    109755 <_svfiprintf_r+0x7f5>
  1094f1:	41 8b 06             	mov    eax,DWORD PTR [r14]
  1094f4:	48 83 f8 28          	cmp    rax,0x28
  1094f8:	0f 87 82 01 00 00    	ja     109680 <_svfiprintf_r+0x720>
  1094fe:	48 89 c1             	mov    rcx,rax
  109501:	49 03 4e 10          	add    rcx,QWORD PTR [r14+0x10]
  109505:	83 c0 08             	add    eax,0x8
  109508:	41 89 06             	mov    DWORD PTR [r14],eax
  10950b:	48 8b 09             	mov    rcx,QWORD PTR [rcx]
  10950e:	48 89 fe             	mov    rsi,rdi
  109511:	e9 91 02 00 00       	jmp    1097a7 <_svfiprintf_r+0x847>
  109516:	83 f8 28             	cmp    eax,0x28
  109519:	0f 87 94 01 00 00    	ja     1096b3 <_svfiprintf_r+0x753>
  10951f:	49 8b 4e 10          	mov    rcx,QWORD PTR [r14+0x10]
  109523:	48 01 c1             	add    rcx,rax
  109526:	83 c0 08             	add    eax,0x8
  109529:	41 89 06             	mov    DWORD PTR [r14],eax
  10952c:	48 0f bf 09          	movsx  rcx,WORD PTR [rcx]
  109530:	e9 91 01 00 00       	jmp    1096c6 <_svfiprintf_r+0x766>
  109535:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  10953a:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  10953d:	48 8d 48 08          	lea    rcx,[rax+0x8]
  109541:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  109544:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  109547:	e9 7a 01 00 00       	jmp    1096c6 <_svfiprintf_r+0x766>
  10954c:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  109551:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  109554:	48 8d 48 08          	lea    rcx,[rax+0x8]
  109558:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  10955b:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  10955e:	88 44 24 70          	mov    BYTE PTR [rsp+0x70],al
  109562:	c6 44 24 07 00       	mov    BYTE PTR [rsp+0x7],0x0
  109567:	45 31 c0             	xor    r8d,r8d
  10956a:	4c 8d 7c 24 70       	lea    r15,[rsp+0x70]
  10956f:	bd 01 00 00 00       	mov    ebp,0x1
  109574:	e9 d4 03 00 00       	jmp    10994d <_svfiprintf_r+0x9ed>
  109579:	83 f8 28             	cmp    eax,0x28
  10957c:	0f 87 da 01 00 00    	ja     10975c <_svfiprintf_r+0x7fc>
  109582:	49 8b 4e 10          	mov    rcx,QWORD PTR [r14+0x10]
  109586:	48 01 c1             	add    rcx,rax
  109589:	83 c0 08             	add    eax,0x8
  10958c:	41 89 06             	mov    DWORD PTR [r14],eax
  10958f:	e9 d7 01 00 00       	jmp    10976b <_svfiprintf_r+0x80b>
  109594:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  109599:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  10959c:	48 8d 48 08          	lea    rcx,[rax+0x8]
  1095a0:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  1095a3:	8b 6c 24 08          	mov    ebp,DWORD PTR [rsp+0x8]
  1095a7:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  1095aa:	83 cd 02             	or     ebp,0x2
  1095ad:	66 c7 44 24 46 30 78 	mov    WORD PTR [rsp+0x46],0x7830
  1095b4:	48 8d 35 95 6d ff ff 	lea    rsi,[rip+0xffffffffffff6d95]        # 100350 <_svfprintf_r.blanks-0x790>
  1095bb:	b0 02                	mov    al,0x2
  1095bd:	e9 fe 01 00 00       	jmp    1097c0 <_svfiprintf_r+0x860>
  1095c2:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  1095c7:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  1095ca:	48 8d 48 08          	lea    rcx,[rax+0x8]
  1095ce:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  1095d1:	4c 8b 38             	mov    r15,QWORD PTR [rax]
  1095d4:	c6 44 24 07 00       	mov    BYTE PTR [rsp+0x7],0x0
  1095d9:	4d 85 ff             	test   r15,r15
  1095dc:	0f 84 0e 01 00 00    	je     1096f0 <_svfiprintf_r+0x790>
  1095e2:	45 85 c0             	test   r8d,r8d
  1095e5:	0f 88 0e 09 00 00    	js     109ef9 <_svfiprintf_r+0xf99>
  1095eb:	44 89 c2             	mov    edx,r8d
  1095ee:	4c 89 ff             	mov    rdi,r15
  1095f1:	31 f6                	xor    esi,esi
  1095f3:	4c 89 c3             	mov    rbx,r8
  1095f6:	e8 a5 16 00 00       	call   10aca0 <memchr>
  1095fb:	89 c5                	mov    ebp,eax
  1095fd:	44 29 fd             	sub    ebp,r15d
  109600:	48 85 c0             	test   rax,rax
  109603:	0f 44 eb             	cmove  ebp,ebx
  109606:	45 31 c0             	xor    r8d,r8d
  109609:	e9 3f 03 00 00       	jmp    10994d <_svfiprintf_r+0x9ed>
  10960e:	83 f8 28             	cmp    eax,0x28
  109611:	0f 87 60 01 00 00    	ja     109777 <_svfiprintf_r+0x817>
  109617:	49 8b 4e 10          	mov    rcx,QWORD PTR [r14+0x10]
  10961b:	48 01 c1             	add    rcx,rax
  10961e:	83 c0 08             	add    eax,0x8
  109621:	41 89 06             	mov    DWORD PTR [r14],eax
  109624:	e9 5d 01 00 00       	jmp    109786 <_svfiprintf_r+0x826>
  109629:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  10962e:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  109631:	48 8d 48 08          	lea    rcx,[rax+0x8]
  109635:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  109638:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
  10963d:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  109640:	31 c0                	xor    eax,eax
  109642:	e9 79 01 00 00       	jmp    1097c0 <_svfiprintf_r+0x860>
  109647:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  10964c:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  10964f:	48 8d 48 08          	lea    rcx,[rax+0x8]
  109653:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  109656:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
  10965b:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  10965e:	b0 01                	mov    al,0x1
  109660:	e9 5b 01 00 00       	jmp    1097c0 <_svfiprintf_r+0x860>
  109665:	83 f8 28             	cmp    eax,0x28
  109668:	0f 87 24 01 00 00    	ja     109792 <_svfiprintf_r+0x832>
  10966e:	49 8b 4e 10          	mov    rcx,QWORD PTR [r14+0x10]
  109672:	48 01 c1             	add    rcx,rax
  109675:	83 c0 08             	add    eax,0x8
  109678:	41 89 06             	mov    DWORD PTR [r14],eax
  10967b:	e9 21 01 00 00       	jmp    1097a1 <_svfiprintf_r+0x841>
  109680:	48 8b 74 24 18       	mov    rsi,QWORD PTR [rsp+0x18]
  109685:	48 8b 06             	mov    rax,QWORD PTR [rsi]
  109688:	48 8d 48 08          	lea    rcx,[rax+0x8]
  10968c:	48 89 0e             	mov    QWORD PTR [rsi],rcx
  10968f:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  109692:	48 89 fe             	mov    rsi,rdi
  109695:	e9 0d 01 00 00       	jmp    1097a7 <_svfiprintf_r+0x847>
  10969a:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  10969f:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  1096a2:	48 8d 41 08          	lea    rax,[rcx+0x8]
  1096a6:	48 89 02             	mov    QWORD PTR [rdx],rax
  1096a9:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
  1096ae:	48 63 09             	movsxd rcx,DWORD PTR [rcx]
  1096b1:	eb 18                	jmp    1096cb <_svfiprintf_r+0x76b>
  1096b3:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  1096b8:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  1096bb:	48 8d 48 08          	lea    rcx,[rax+0x8]
  1096bf:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  1096c2:	48 0f bf 08          	movsx  rcx,WORD PTR [rax]
  1096c6:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
  1096cb:	b0 01                	mov    al,0x1
  1096cd:	48 85 c9             	test   rcx,rcx
  1096d0:	0f 89 ef 00 00 00    	jns    1097c5 <_svfiprintf_r+0x865>
  1096d6:	48 f7 d9             	neg    rcx
  1096d9:	c6 44 24 07 2d       	mov    BYTE PTR [rsp+0x7],0x2d
  1096de:	89 e8                	mov    eax,ebp
  1096e0:	25 7f ff ff ff       	and    eax,0xffffff7f
  1096e5:	45 85 c0             	test   r8d,r8d
  1096e8:	0f 49 e8             	cmovns ebp,eax
  1096eb:	e9 75 01 00 00       	jmp    109865 <_svfiprintf_r+0x905>
  1096f0:	41 83 f8 06          	cmp    r8d,0x6
  1096f4:	bd 06 00 00 00       	mov    ebp,0x6
  1096f9:	41 0f 42 e8          	cmovb  ebp,r8d
  1096fd:	45 31 c0             	xor    r8d,r8d
  109700:	4c 8d 3d 97 6a ff ff 	lea    r15,[rip+0xffffffffffff6a97]        # 10019e <_svfprintf_r.blanks-0x942>
  109707:	e9 41 02 00 00       	jmp    10994d <_svfiprintf_r+0x9ed>
  10970c:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  109711:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  109714:	48 8d 41 08          	lea    rax,[rcx+0x8]
  109718:	48 89 02             	mov    QWORD PTR [rdx],rax
  10971b:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
  109720:	8b 09                	mov    ecx,DWORD PTR [rcx]
  109722:	31 c0                	xor    eax,eax
  109724:	e9 97 00 00 00       	jmp    1097c0 <_svfiprintf_r+0x860>
  109729:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  10972e:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  109731:	48 8d 41 08          	lea    rax,[rcx+0x8]
  109735:	48 89 02             	mov    QWORD PTR [rdx],rax
  109738:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
  10973d:	8b 09                	mov    ecx,DWORD PTR [rcx]
  10973f:	b0 01                	mov    al,0x1
  109741:	e9 7a 00 00 00       	jmp    1097c0 <_svfiprintf_r+0x860>
  109746:	48 8b 74 24 18       	mov    rsi,QWORD PTR [rsp+0x18]
  10974b:	48 8b 0e             	mov    rcx,QWORD PTR [rsi]
  10974e:	48 8d 41 08          	lea    rax,[rcx+0x8]
  109752:	48 89 06             	mov    QWORD PTR [rsi],rax
  109755:	48 89 fe             	mov    rsi,rdi
  109758:	8b 09                	mov    ecx,DWORD PTR [rcx]
  10975a:	eb 4b                	jmp    1097a7 <_svfiprintf_r+0x847>
  10975c:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  109761:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  109764:	48 8d 41 08          	lea    rax,[rcx+0x8]
  109768:	48 89 02             	mov    QWORD PTR [rdx],rax
  10976b:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
  109770:	0f b7 09             	movzx  ecx,WORD PTR [rcx]
  109773:	31 c0                	xor    eax,eax
  109775:	eb 49                	jmp    1097c0 <_svfiprintf_r+0x860>
  109777:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  10977c:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  10977f:	48 8d 41 08          	lea    rax,[rcx+0x8]
  109783:	48 89 02             	mov    QWORD PTR [rdx],rax
  109786:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
  10978b:	0f b7 09             	movzx  ecx,WORD PTR [rcx]
  10978e:	b0 01                	mov    al,0x1
  109790:	eb 2e                	jmp    1097c0 <_svfiprintf_r+0x860>
  109792:	48 8b 74 24 18       	mov    rsi,QWORD PTR [rsp+0x18]
  109797:	48 8b 0e             	mov    rcx,QWORD PTR [rsi]
  10979a:	48 8d 41 08          	lea    rax,[rcx+0x8]
  10979e:	48 89 06             	mov    QWORD PTR [rsi],rax
  1097a1:	48 89 fe             	mov    rsi,rdi
  1097a4:	0f b7 09             	movzx  ecx,WORD PTR [rcx]
  1097a7:	b0 02                	mov    al,0x2
  1097a9:	40 f6 c5 01          	test   bpl,0x1
  1097ad:	74 11                	je     1097c0 <_svfiprintf_r+0x860>
  1097af:	48 85 c9             	test   rcx,rcx
  1097b2:	74 0c                	je     1097c0 <_svfiprintf_r+0x860>
  1097b4:	c6 44 24 46 30       	mov    BYTE PTR [rsp+0x46],0x30
  1097b9:	88 54 24 47          	mov    BYTE PTR [rsp+0x47],dl
  1097bd:	83 cd 02             	or     ebp,0x2
  1097c0:	c6 44 24 07 00       	mov    BYTE PTR [rsp+0x7],0x0
  1097c5:	89 ea                	mov    edx,ebp
  1097c7:	81 e5 7f ff ff ff    	and    ebp,0xffffff7f
  1097cd:	45 85 c0             	test   r8d,r8d
  1097d0:	0f 48 ea             	cmovs  ebp,edx
  1097d3:	48 85 c9             	test   rcx,rcx
  1097d6:	75 38                	jne    109810 <_svfiprintf_r+0x8b0>
  1097d8:	45 85 c0             	test   r8d,r8d
  1097db:	75 33                	jne    109810 <_svfiprintf_r+0x8b0>
  1097dd:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  1097e2:	45 31 c0             	xor    r8d,r8d
  1097e5:	84 c0                	test   al,al
  1097e7:	89 6c 24 08          	mov    DWORD PTR [rsp+0x8],ebp
  1097eb:	0f 85 9e 00 00 00    	jne    10988f <_svfiprintf_r+0x92f>
  1097f1:	89 e8                	mov    eax,ebp
  1097f3:	83 e0 01             	and    eax,0x1
  1097f6:	0f 84 93 00 00 00    	je     10988f <_svfiprintf_r+0x92f>
  1097fc:	c6 84 24 97 00 00 00 	mov    BYTE PTR [rsp+0x97],0x30
  109803:	30 
  109804:	eb 7c                	jmp    109882 <_svfiprintf_r+0x922>
  109806:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10980d:	00 00 00 
  109810:	84 c0                	test   al,al
  109812:	0f 84 84 00 00 00    	je     10989c <_svfiprintf_r+0x93c>
  109818:	0f b6 c0             	movzx  eax,al
  10981b:	83 f8 01             	cmp    eax,0x1
  10981e:	74 45                	je     109865 <_svfiprintf_r+0x905>
  109820:	89 6c 24 08          	mov    DWORD PTR [rsp+0x8],ebp
  109824:	4c 8d bc 24 98 00 00 	lea    r15,[rsp+0x98]
  10982b:	00 
  10982c:	83 f8 02             	cmp    eax,0x2
  10982f:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  109834:	0f 85 a4 00 00 00    	jne    1098de <_svfiprintf_r+0x97e>
  10983a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  109840:	89 c8                	mov    eax,ecx
  109842:	83 e0 0f             	and    eax,0xf
  109845:	0f b6 04 06          	movzx  eax,BYTE PTR [rsi+rax*1]
  109849:	41 88 47 ff          	mov    BYTE PTR [r15-0x1],al
  10984d:	49 ff cf             	dec    r15
  109850:	48 89 c8             	mov    rax,rcx
  109853:	48 c1 e8 04          	shr    rax,0x4
  109857:	48 83 f9 10          	cmp    rcx,0x10
  10985b:	48 89 c1             	mov    rcx,rax
  10985e:	73 e0                	jae    109840 <_svfiprintf_r+0x8e0>
  109860:	e9 db 00 00 00       	jmp    109940 <_svfiprintf_r+0x9e0>
  109865:	89 6c 24 08          	mov    DWORD PTR [rsp+0x8],ebp
  109869:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  10986e:	48 83 f9 0a          	cmp    rcx,0xa
  109872:	0f 83 80 00 00 00    	jae    1098f8 <_svfiprintf_r+0x998>
  109878:	80 c1 30             	add    cl,0x30
  10987b:	88 8c 24 97 00 00 00 	mov    BYTE PTR [rsp+0x97],cl
  109882:	4c 8d bc 24 97 00 00 	lea    r15,[rsp+0x97]
  109889:	00 
  10988a:	e9 b1 00 00 00       	jmp    109940 <_svfiprintf_r+0x9e0>
  10988f:	4c 8d bc 24 98 00 00 	lea    r15,[rsp+0x98]
  109896:	00 
  109897:	e9 a4 00 00 00       	jmp    109940 <_svfiprintf_r+0x9e0>
  10989c:	89 6c 24 08          	mov    DWORD PTR [rsp+0x8],ebp
  1098a0:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  1098a5:	4c 8d bc 24 97 00 00 	lea    r15,[rsp+0x97]
  1098ac:	00 
  1098ad:	48 89 ca             	mov    rdx,rcx
  1098b0:	89 c8                	mov    eax,ecx
  1098b2:	24 07                	and    al,0x7
  1098b4:	0c 30                	or     al,0x30
  1098b6:	41 88 07             	mov    BYTE PTR [r15],al
  1098b9:	48 c1 ea 03          	shr    rdx,0x3
  1098bd:	49 ff cf             	dec    r15
  1098c0:	48 83 f9 07          	cmp    rcx,0x7
  1098c4:	48 89 d1             	mov    rcx,rdx
  1098c7:	77 e7                	ja     1098b0 <_svfiprintf_r+0x950>
  1098c9:	49 8d 4f 01          	lea    rcx,[r15+0x1]
  1098cd:	f6 44 24 08 01       	test   BYTE PTR [rsp+0x8],0x1
  1098d2:	74 60                	je     109934 <_svfiprintf_r+0x9d4>
  1098d4:	3c 30                	cmp    al,0x30
  1098d6:	74 5c                	je     109934 <_svfiprintf_r+0x9d4>
  1098d8:	41 c6 07 30          	mov    BYTE PTR [r15],0x30
  1098dc:	eb 62                	jmp    109940 <_svfiprintf_r+0x9e0>
  1098de:	4c 8d 3d 90 6c ff ff 	lea    r15,[rip+0xffffffffffff6c90]        # 100575 <_svfprintf_r.blanks-0x56b>
  1098e5:	4c 89 ff             	mov    rdi,r15
  1098e8:	4d 89 c6             	mov    r14,r8
  1098eb:	e8 f0 c1 ff ff       	call   105ae0 <strlen>
  1098f0:	4d 89 f0             	mov    r8,r14
  1098f3:	48 89 c5             	mov    rbp,rax
  1098f6:	eb 55                	jmp    10994d <_svfiprintf_r+0x9ed>
  1098f8:	4c 8d bc 24 98 00 00 	lea    r15,[rsp+0x98]
  1098ff:	00 
  109900:	48 ba cd cc cc cc cc 	movabs rdx,0xcccccccccccccccd
  109907:	cc cc cc 
  10990a:	48 89 c8             	mov    rax,rcx
  10990d:	48 f7 e2             	mul    rdx
  109910:	48 c1 ea 03          	shr    rdx,0x3
  109914:	8d 04 12             	lea    eax,[rdx+rdx*1]
  109917:	8d 04 80             	lea    eax,[rax+rax*4]
  10991a:	89 ce                	mov    esi,ecx
  10991c:	29 c6                	sub    esi,eax
  10991e:	40 80 ce 30          	or     sil,0x30
  109922:	41 88 77 ff          	mov    BYTE PTR [r15-0x1],sil
  109926:	49 ff cf             	dec    r15
  109929:	48 83 f9 0a          	cmp    rcx,0xa
  10992d:	48 89 d1             	mov    rcx,rdx
  109930:	73 ce                	jae    109900 <_svfiprintf_r+0x9a0>
  109932:	eb 0c                	jmp    109940 <_svfiprintf_r+0x9e0>
  109934:	49 89 cf             	mov    r15,rcx
  109937:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  10993e:	00 00 
  109940:	48 8d 84 24 98 00 00 	lea    rax,[rsp+0x98]
  109947:	00 
  109948:	89 c5                	mov    ebp,eax
  10994a:	44 29 fd             	sub    ebp,r15d
  10994d:	41 39 e8             	cmp    r8d,ebp
  109950:	89 e8                	mov    eax,ebp
  109952:	41 0f 4f c0          	cmovg  eax,r8d
  109956:	80 7c 24 07 01       	cmp    BYTE PTR [rsp+0x7],0x1
  10995b:	83 d8 ff             	sbb    eax,0xffffffff
  10995e:	8d 50 02             	lea    edx,[rax+0x2]
  109961:	8b 4c 24 08          	mov    ecx,DWORD PTR [rsp+0x8]
  109965:	f6 c1 02             	test   cl,0x2
  109968:	0f 44 d0             	cmove  edx,eax
  10996b:	4c 8b 74 24 50       	mov    r14,QWORD PTR [rsp+0x50]
  109970:	48 89 54 24 68       	mov    QWORD PTR [rsp+0x68],rdx
  109975:	41 29 d6             	sub    r14d,edx
  109978:	89 cb                	mov    ebx,ecx
  10997a:	81 e3 84 00 00 00    	and    ebx,0x84
  109980:	4c 89 44 24 58       	mov    QWORD PTR [rsp+0x58],r8
  109985:	0f 85 f0 00 00 00    	jne    109a7b <_svfiprintf_r+0xb1b>
  10998b:	45 85 f6             	test   r14d,r14d
  10998e:	0f 8e e7 00 00 00    	jle    109a7b <_svfiprintf_r+0xb1b>
  109994:	89 5c 24 64          	mov    DWORD PTR [rsp+0x64],ebx
  109998:	41 83 fe 11          	cmp    r14d,0x11
  10999c:	0f 82 7e 00 00 00    	jb     109a20 <_svfiprintf_r+0xac0>
  1099a2:	44 89 f3             	mov    ebx,r14d
  1099a5:	eb 17                	jmp    1099be <_svfiprintf_r+0xa5e>
  1099a7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  1099ae:	00 00 
  1099b0:	49 83 c4 10          	add    r12,0x10
  1099b4:	8d 43 f0             	lea    eax,[rbx-0x10]
  1099b7:	83 fb 20             	cmp    ebx,0x20
  1099ba:	89 c3                	mov    ebx,eax
  1099bc:	7e 65                	jle    109a23 <_svfiprintf_r+0xac3>
  1099be:	48 8d 05 bb 75 ff ff 	lea    rax,[rip+0xffffffffffff75bb]        # 100f80 <_svfiprintf_r.blanks>
  1099c5:	49 89 04 24          	mov    QWORD PTR [r12],rax
  1099c9:	49 c7 44 24 08 10 00 	mov    QWORD PTR [r12+0x8],0x10
  1099d0:	00 00 
  1099d2:	48 83 44 24 30 10    	add    QWORD PTR [rsp+0x30],0x10
  1099d8:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
  1099dc:	8d 48 01             	lea    ecx,[rax+0x1]
  1099df:	89 4c 24 28          	mov    DWORD PTR [rsp+0x28],ecx
  1099e3:	83 f8 07             	cmp    eax,0x7
  1099e6:	7c c8                	jl     1099b0 <_svfiprintf_r+0xa50>
  1099e8:	48 8b 7c 24 48       	mov    rdi,QWORD PTR [rsp+0x48]
  1099ed:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  1099f2:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  1099f7:	e8 a4 f3 ff ff       	call   108da0 <__ssprint_r>
  1099fc:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  109a01:	4c 8d a4 24 a0 00 00 	lea    r12,[rsp+0xa0]
  109a08:	00 
  109a09:	85 c0                	test   eax,eax
  109a0b:	74 a7                	je     1099b4 <_svfiprintf_r+0xa54>
  109a0d:	e9 11 05 00 00       	jmp    109f23 <_svfiprintf_r+0xfc3>
  109a12:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  109a19:	1f 84 00 00 00 00 00 
  109a20:	44 89 f0             	mov    eax,r14d
  109a23:	48 8d 0d 56 75 ff ff 	lea    rcx,[rip+0xffffffffffff7556]        # 100f80 <_svfiprintf_r.blanks>
  109a2a:	49 89 0c 24          	mov    QWORD PTR [r12],rcx
  109a2e:	89 c0                	mov    eax,eax
  109a30:	49 89 44 24 08       	mov    QWORD PTR [r12+0x8],rax
  109a35:	48 01 44 24 30       	add    QWORD PTR [rsp+0x30],rax
  109a3a:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
  109a3e:	8d 48 01             	lea    ecx,[rax+0x1]
  109a41:	89 4c 24 28          	mov    DWORD PTR [rsp+0x28],ecx
  109a45:	83 f8 07             	cmp    eax,0x7
  109a48:	8b 5c 24 64          	mov    ebx,DWORD PTR [rsp+0x64]
  109a4c:	0f 8c 94 00 00 00    	jl     109ae6 <_svfiprintf_r+0xb86>
  109a52:	48 8b 7c 24 48       	mov    rdi,QWORD PTR [rsp+0x48]
  109a57:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  109a5c:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  109a61:	e8 3a f3 ff ff       	call   108da0 <__ssprint_r>
  109a66:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  109a6b:	4c 8d a4 24 a0 00 00 	lea    r12,[rsp+0xa0]
  109a72:	00 
  109a73:	85 c0                	test   eax,eax
  109a75:	0f 85 a8 04 00 00    	jne    109f23 <_svfiprintf_r+0xfc3>
  109a7b:	80 7c 24 07 00       	cmp    BYTE PTR [rsp+0x7],0x0
  109a80:	74 7e                	je     109b00 <_svfiprintf_r+0xba0>
  109a82:	48 8d 44 24 07       	lea    rax,[rsp+0x7]
  109a87:	49 89 04 24          	mov    QWORD PTR [r12],rax
  109a8b:	49 c7 44 24 08 01 00 	mov    QWORD PTR [r12+0x8],0x1
  109a92:	00 00 
  109a94:	48 ff 44 24 30       	inc    QWORD PTR [rsp+0x30]
  109a99:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
  109a9d:	8d 48 01             	lea    ecx,[rax+0x1]
  109aa0:	89 4c 24 28          	mov    DWORD PTR [rsp+0x28],ecx
  109aa4:	83 f8 07             	cmp    eax,0x7
  109aa7:	7c 37                	jl     109ae0 <_svfiprintf_r+0xb80>
  109aa9:	48 8b 7c 24 48       	mov    rdi,QWORD PTR [rsp+0x48]
  109aae:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  109ab3:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  109ab8:	e8 e3 f2 ff ff       	call   108da0 <__ssprint_r>
  109abd:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  109ac2:	4c 8d a4 24 a0 00 00 	lea    r12,[rsp+0xa0]
  109ac9:	00 
  109aca:	85 c0                	test   eax,eax
  109acc:	74 32                	je     109b00 <_svfiprintf_r+0xba0>
  109ace:	e9 50 04 00 00       	jmp    109f23 <_svfiprintf_r+0xfc3>
  109ad3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  109ada:	84 00 00 00 00 00 
  109ae0:	49 83 c4 10          	add    r12,0x10
  109ae4:	eb 1a                	jmp    109b00 <_svfiprintf_r+0xba0>
  109ae6:	49 83 c4 10          	add    r12,0x10
  109aea:	80 7c 24 07 00       	cmp    BYTE PTR [rsp+0x7],0x0
  109aef:	75 91                	jne    109a82 <_svfiprintf_r+0xb22>
  109af1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  109af8:	0f 1f 84 00 00 00 00 
  109aff:	00 
  109b00:	f6 44 24 08 02       	test   BYTE PTR [rsp+0x8],0x2
  109b05:	74 51                	je     109b58 <_svfiprintf_r+0xbf8>
  109b07:	48 8d 44 24 46       	lea    rax,[rsp+0x46]
  109b0c:	49 89 04 24          	mov    QWORD PTR [r12],rax
  109b10:	49 c7 44 24 08 02 00 	mov    QWORD PTR [r12+0x8],0x2
  109b17:	00 00 
  109b19:	48 83 44 24 30 02    	add    QWORD PTR [rsp+0x30],0x2
  109b1f:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
  109b23:	8d 48 01             	lea    ecx,[rax+0x1]
  109b26:	89 4c 24 28          	mov    DWORD PTR [rsp+0x28],ecx
  109b2a:	83 f8 07             	cmp    eax,0x7
  109b2d:	7c 41                	jl     109b70 <_svfiprintf_r+0xc10>
  109b2f:	48 8b 7c 24 48       	mov    rdi,QWORD PTR [rsp+0x48]
  109b34:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  109b39:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  109b3e:	e8 5d f2 ff ff       	call   108da0 <__ssprint_r>
  109b43:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  109b48:	4c 8d a4 24 a0 00 00 	lea    r12,[rsp+0xa0]
  109b4f:	00 
  109b50:	85 c0                	test   eax,eax
  109b52:	0f 85 cb 03 00 00    	jne    109f23 <_svfiprintf_r+0xfc3>
  109b58:	81 fb 80 00 00 00    	cmp    ebx,0x80
  109b5e:	74 20                	je     109b80 <_svfiprintf_r+0xc20>
  109b60:	e9 f4 00 00 00       	jmp    109c59 <_svfiprintf_r+0xcf9>
  109b65:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  109b6c:	00 00 00 00 
  109b70:	49 83 c4 10          	add    r12,0x10
  109b74:	81 fb 80 00 00 00    	cmp    ebx,0x80
  109b7a:	0f 85 d9 00 00 00    	jne    109c59 <_svfiprintf_r+0xcf9>
  109b80:	45 85 f6             	test   r14d,r14d
  109b83:	0f 8e d0 00 00 00    	jle    109c59 <_svfiprintf_r+0xcf9>
  109b89:	41 83 fe 11          	cmp    r14d,0x11
  109b8d:	72 73                	jb     109c02 <_svfiprintf_r+0xca2>
  109b8f:	44 89 f3             	mov    ebx,r14d
  109b92:	eb 1a                	jmp    109bae <_svfiprintf_r+0xc4e>
  109b94:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  109b9b:	00 00 00 00 00 
  109ba0:	49 83 c4 10          	add    r12,0x10
  109ba4:	8d 43 f0             	lea    eax,[rbx-0x10]
  109ba7:	83 fb 20             	cmp    ebx,0x20
  109baa:	89 c3                	mov    ebx,eax
  109bac:	7e 57                	jle    109c05 <_svfiprintf_r+0xca5>
  109bae:	48 8d 05 db 73 ff ff 	lea    rax,[rip+0xffffffffffff73db]        # 100f90 <_svfiprintf_r.zeroes>
  109bb5:	49 89 04 24          	mov    QWORD PTR [r12],rax
  109bb9:	49 c7 44 24 08 10 00 	mov    QWORD PTR [r12+0x8],0x10
  109bc0:	00 00 
  109bc2:	48 83 44 24 30 10    	add    QWORD PTR [rsp+0x30],0x10
  109bc8:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
  109bcc:	8d 48 01             	lea    ecx,[rax+0x1]
  109bcf:	89 4c 24 28          	mov    DWORD PTR [rsp+0x28],ecx
  109bd3:	83 f8 07             	cmp    eax,0x7
  109bd6:	7c c8                	jl     109ba0 <_svfiprintf_r+0xc40>
  109bd8:	48 8b 7c 24 48       	mov    rdi,QWORD PTR [rsp+0x48]
  109bdd:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  109be2:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  109be7:	e8 b4 f1 ff ff       	call   108da0 <__ssprint_r>
  109bec:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  109bf1:	4c 8d a4 24 a0 00 00 	lea    r12,[rsp+0xa0]
  109bf8:	00 
  109bf9:	85 c0                	test   eax,eax
  109bfb:	74 a7                	je     109ba4 <_svfiprintf_r+0xc44>
  109bfd:	e9 21 03 00 00       	jmp    109f23 <_svfiprintf_r+0xfc3>
  109c02:	44 89 f0             	mov    eax,r14d
  109c05:	48 8d 0d 84 73 ff ff 	lea    rcx,[rip+0xffffffffffff7384]        # 100f90 <_svfiprintf_r.zeroes>
  109c0c:	49 89 0c 24          	mov    QWORD PTR [r12],rcx
  109c10:	89 c0                	mov    eax,eax
  109c12:	49 89 44 24 08       	mov    QWORD PTR [r12+0x8],rax
  109c17:	48 01 44 24 30       	add    QWORD PTR [rsp+0x30],rax
  109c1c:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
  109c20:	8d 48 01             	lea    ecx,[rax+0x1]
  109c23:	89 4c 24 28          	mov    DWORD PTR [rsp+0x28],ecx
  109c27:	83 f8 07             	cmp    eax,0x7
  109c2a:	0f 8c fc 00 00 00    	jl     109d2c <_svfiprintf_r+0xdcc>
  109c30:	48 8b 7c 24 48       	mov    rdi,QWORD PTR [rsp+0x48]
  109c35:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  109c3a:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  109c3f:	e8 5c f1 ff ff       	call   108da0 <__ssprint_r>
  109c44:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  109c49:	4c 8d a4 24 a0 00 00 	lea    r12,[rsp+0xa0]
  109c50:	00 
  109c51:	85 c0                	test   eax,eax
  109c53:	0f 85 ca 02 00 00    	jne    109f23 <_svfiprintf_r+0xfc3>
  109c59:	41 29 e8             	sub    r8d,ebp
  109c5c:	0f 8e de 00 00 00    	jle    109d40 <_svfiprintf_r+0xde0>
  109c62:	41 83 f8 11          	cmp    r8d,0x11
  109c66:	73 69                	jae    109cd1 <_svfiprintf_r+0xd71>
  109c68:	44 89 c0             	mov    eax,r8d
  109c6b:	48 8d 0d 1e 73 ff ff 	lea    rcx,[rip+0xffffffffffff731e]        # 100f90 <_svfiprintf_r.zeroes>
  109c72:	49 89 0c 24          	mov    QWORD PTR [r12],rcx
  109c76:	89 c0                	mov    eax,eax
  109c78:	49 89 44 24 08       	mov    QWORD PTR [r12+0x8],rax
  109c7d:	48 01 44 24 30       	add    QWORD PTR [rsp+0x30],rax
  109c82:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
  109c86:	8d 48 01             	lea    ecx,[rax+0x1]
  109c89:	89 4c 24 28          	mov    DWORD PTR [rsp+0x28],ecx
  109c8d:	83 f8 07             	cmp    eax,0x7
  109c90:	0f 8c 90 00 00 00    	jl     109d26 <_svfiprintf_r+0xdc6>
  109c96:	48 8b 7c 24 48       	mov    rdi,QWORD PTR [rsp+0x48]
  109c9b:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  109ca0:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  109ca5:	e8 f6 f0 ff ff       	call   108da0 <__ssprint_r>
  109caa:	4c 8d a4 24 a0 00 00 	lea    r12,[rsp+0xa0]
  109cb1:	00 
  109cb2:	85 c0                	test   eax,eax
  109cb4:	0f 84 86 00 00 00    	je     109d40 <_svfiprintf_r+0xde0>
  109cba:	e9 64 02 00 00       	jmp    109f23 <_svfiprintf_r+0xfc3>
  109cbf:	90                   	nop
  109cc0:	49 83 c4 10          	add    r12,0x10
  109cc4:	41 8d 40 f0          	lea    eax,[r8-0x10]
  109cc8:	41 83 f8 20          	cmp    r8d,0x20
  109ccc:	41 89 c0             	mov    r8d,eax
  109ccf:	7e 9a                	jle    109c6b <_svfiprintf_r+0xd0b>
  109cd1:	48 8d 05 b8 72 ff ff 	lea    rax,[rip+0xffffffffffff72b8]        # 100f90 <_svfiprintf_r.zeroes>
  109cd8:	49 89 04 24          	mov    QWORD PTR [r12],rax
  109cdc:	49 c7 44 24 08 10 00 	mov    QWORD PTR [r12+0x8],0x10
  109ce3:	00 00 
  109ce5:	48 83 44 24 30 10    	add    QWORD PTR [rsp+0x30],0x10
  109ceb:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
  109cef:	8d 48 01             	lea    ecx,[rax+0x1]
  109cf2:	89 4c 24 28          	mov    DWORD PTR [rsp+0x28],ecx
  109cf6:	83 f8 07             	cmp    eax,0x7
  109cf9:	7c c5                	jl     109cc0 <_svfiprintf_r+0xd60>
  109cfb:	48 8b 7c 24 48       	mov    rdi,QWORD PTR [rsp+0x48]
  109d00:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  109d05:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  109d0a:	4c 89 c3             	mov    rbx,r8
  109d0d:	e8 8e f0 ff ff       	call   108da0 <__ssprint_r>
  109d12:	49 89 d8             	mov    r8,rbx
  109d15:	4c 8d a4 24 a0 00 00 	lea    r12,[rsp+0xa0]
  109d1c:	00 
  109d1d:	85 c0                	test   eax,eax
  109d1f:	74 a3                	je     109cc4 <_svfiprintf_r+0xd64>
  109d21:	e9 fd 01 00 00       	jmp    109f23 <_svfiprintf_r+0xfc3>
  109d26:	49 83 c4 10          	add    r12,0x10
  109d2a:	eb 14                	jmp    109d40 <_svfiprintf_r+0xde0>
  109d2c:	49 83 c4 10          	add    r12,0x10
  109d30:	41 29 e8             	sub    r8d,ebp
  109d33:	0f 8f 29 ff ff ff    	jg     109c62 <_svfiprintf_r+0xd02>
  109d39:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  109d40:	4d 89 3c 24          	mov    QWORD PTR [r12],r15
  109d44:	48 63 c5             	movsxd rax,ebp
  109d47:	49 89 44 24 08       	mov    QWORD PTR [r12+0x8],rax
  109d4c:	48 01 44 24 30       	add    QWORD PTR [rsp+0x30],rax
  109d51:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
  109d55:	8d 48 01             	lea    ecx,[rax+0x1]
  109d58:	89 4c 24 28          	mov    DWORD PTR [rsp+0x28],ecx
  109d5c:	83 f8 07             	cmp    eax,0x7
  109d5f:	7c 4f                	jl     109db0 <_svfiprintf_r+0xe50>
  109d61:	48 8b 6c 24 48       	mov    rbp,QWORD PTR [rsp+0x48]
  109d66:	48 89 ef             	mov    rdi,rbp
  109d69:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  109d6e:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  109d73:	e8 28 f0 ff ff       	call   108da0 <__ssprint_r>
  109d78:	4c 8d a4 24 a0 00 00 	lea    r12,[rsp+0xa0]
  109d7f:	00 
  109d80:	85 c0                	test   eax,eax
  109d82:	48 be 00 00 00 00 01 	movabs rsi,0x100000000
  109d89:	00 00 00 
  109d8c:	48 8b 5c 24 68       	mov    rbx,QWORD PTR [rsp+0x68]
  109d91:	0f 85 8c 01 00 00    	jne    109f23 <_svfiprintf_r+0xfc3>
  109d97:	f6 44 24 08 04       	test   BYTE PTR [rsp+0x8],0x4
  109d9c:	75 31                	jne    109dcf <_svfiprintf_r+0xe6f>
  109d9e:	e9 8e 00 00 00       	jmp    109e31 <_svfiprintf_r+0xed1>
  109da3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  109daa:	84 00 00 00 00 00 
  109db0:	49 83 c4 10          	add    r12,0x10
  109db4:	48 8b 6c 24 48       	mov    rbp,QWORD PTR [rsp+0x48]
  109db9:	48 be 00 00 00 00 01 	movabs rsi,0x100000000
  109dc0:	00 00 00 
  109dc3:	48 8b 5c 24 68       	mov    rbx,QWORD PTR [rsp+0x68]
  109dc8:	f6 44 24 08 04       	test   BYTE PTR [rsp+0x8],0x4
  109dcd:	74 62                	je     109e31 <_svfiprintf_r+0xed1>
  109dcf:	45 85 f6             	test   r14d,r14d
  109dd2:	7e 5d                	jle    109e31 <_svfiprintf_r+0xed1>
  109dd4:	41 83 fe 11          	cmp    r14d,0x11
  109dd8:	0f 83 c7 00 00 00    	jae    109ea5 <_svfiprintf_r+0xf45>
  109dde:	44 89 f0             	mov    eax,r14d
  109de1:	48 8d 0d 98 71 ff ff 	lea    rcx,[rip+0xffffffffffff7198]        # 100f80 <_svfiprintf_r.blanks>
  109de8:	49 89 0c 24          	mov    QWORD PTR [r12],rcx
  109dec:	89 c0                	mov    eax,eax
  109dee:	49 89 44 24 08       	mov    QWORD PTR [r12+0x8],rax
  109df3:	48 03 44 24 30       	add    rax,QWORD PTR [rsp+0x30]
  109df8:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  109dfd:	8b 4c 24 28          	mov    ecx,DWORD PTR [rsp+0x28]
  109e01:	8d 51 01             	lea    edx,[rcx+0x1]
  109e04:	89 54 24 28          	mov    DWORD PTR [rsp+0x28],edx
  109e08:	83 f9 07             	cmp    ecx,0x7
  109e0b:	7c 29                	jl     109e36 <_svfiprintf_r+0xed6>
  109e0d:	48 89 ef             	mov    rdi,rbp
  109e10:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  109e15:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  109e1a:	e8 81 ef ff ff       	call   108da0 <__ssprint_r>
  109e1f:	48 be 00 00 00 00 01 	movabs rsi,0x100000000
  109e26:	00 00 00 
  109e29:	85 c0                	test   eax,eax
  109e2b:	0f 85 f2 00 00 00    	jne    109f23 <_svfiprintf_r+0xfc3>
  109e31:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  109e36:	48 8b 4c 24 50       	mov    rcx,QWORD PTR [rsp+0x50]
  109e3b:	39 d9                	cmp    ecx,ebx
  109e3d:	0f 4f d9             	cmovg  ebx,ecx
  109e40:	03 5c 24 0c          	add    ebx,DWORD PTR [rsp+0xc]
  109e44:	48 85 c0             	test   rax,rax
  109e47:	74 24                	je     109e6d <_svfiprintf_r+0xf0d>
  109e49:	48 89 ef             	mov    rdi,rbp
  109e4c:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  109e51:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  109e56:	e8 45 ef ff ff       	call   108da0 <__ssprint_r>
  109e5b:	48 be 00 00 00 00 01 	movabs rsi,0x100000000
  109e62:	00 00 00 
  109e65:	85 c0                	test   eax,eax
  109e67:	0f 85 f0 00 00 00    	jne    109f5d <_svfiprintf_r+0xffd>
  109e6d:	c7 44 24 28 00 00 00 	mov    DWORD PTR [rsp+0x28],0x0
  109e74:	00 
  109e75:	4c 8b b4 24 98 00 00 	mov    r14,QWORD PTR [rsp+0x98]
  109e7c:	00 
  109e7d:	4c 8d a4 24 a0 00 00 	lea    r12,[rsp+0xa0]
  109e84:	00 
  109e85:	e9 70 f1 ff ff       	jmp    108ffa <_svfiprintf_r+0x9a>
  109e8a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  109e90:	49 83 c4 10          	add    r12,0x10
  109e94:	41 8d 46 f0          	lea    eax,[r14-0x10]
  109e98:	41 83 fe 20          	cmp    r14d,0x20
  109e9c:	41 89 c6             	mov    r14d,eax
  109e9f:	0f 8e 3c ff ff ff    	jle    109de1 <_svfiprintf_r+0xe81>
  109ea5:	48 8d 05 d4 70 ff ff 	lea    rax,[rip+0xffffffffffff70d4]        # 100f80 <_svfiprintf_r.blanks>
  109eac:	49 89 04 24          	mov    QWORD PTR [r12],rax
  109eb0:	49 c7 44 24 08 10 00 	mov    QWORD PTR [r12+0x8],0x10
  109eb7:	00 00 
  109eb9:	48 83 44 24 30 10    	add    QWORD PTR [rsp+0x30],0x10
  109ebf:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
  109ec3:	8d 48 01             	lea    ecx,[rax+0x1]
  109ec6:	89 4c 24 28          	mov    DWORD PTR [rsp+0x28],ecx
  109eca:	83 f8 07             	cmp    eax,0x7
  109ecd:	7c c1                	jl     109e90 <_svfiprintf_r+0xf30>
  109ecf:	48 89 ef             	mov    rdi,rbp
  109ed2:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  109ed7:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  109edc:	e8 bf ee ff ff       	call   108da0 <__ssprint_r>
  109ee1:	48 be 00 00 00 00 01 	movabs rsi,0x100000000
  109ee8:	00 00 00 
  109eeb:	4c 8d a4 24 a0 00 00 	lea    r12,[rsp+0xa0]
  109ef2:	00 
  109ef3:	85 c0                	test   eax,eax
  109ef5:	74 9d                	je     109e94 <_svfiprintf_r+0xf34>
  109ef7:	eb 2a                	jmp    109f23 <_svfiprintf_r+0xfc3>
  109ef9:	4c 89 ff             	mov    rdi,r15
  109efc:	e8 df bb ff ff       	call   105ae0 <strlen>
  109f01:	48 89 c5             	mov    rbp,rax
  109f04:	45 31 c0             	xor    r8d,r8d
  109f07:	e9 41 fa ff ff       	jmp    10994d <_svfiprintf_r+0x9ed>
  109f0c:	48 83 7c 24 30 00    	cmp    QWORD PTR [rsp+0x30],0x0
  109f12:	74 0f                	je     109f23 <_svfiprintf_r+0xfc3>
  109f14:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  109f19:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  109f1e:	e8 7d ee ff ff       	call   108da0 <__ssprint_r>
  109f23:	44 8b 7c 24 0c       	mov    r15d,DWORD PTR [rsp+0xc]
  109f28:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  109f2d:	0f b6 48 10          	movzx  ecx,BYTE PTR [rax+0x10]
  109f31:	80 e1 40             	and    cl,0x40
  109f34:	31 c0                	xor    eax,eax
  109f36:	f6 d9                	neg    cl
  109f38:	19 c0                	sbb    eax,eax
  109f3a:	44 09 f8             	or     eax,r15d
  109f3d:	48 81 c4 28 01 00 00 	add    rsp,0x128
  109f44:	5b                   	pop    rbx
  109f45:	41 5c                	pop    r12
  109f47:	41 5d                	pop    r13
  109f49:	41 5e                	pop    r14
  109f4b:	41 5f                	pop    r15
  109f4d:	5d                   	pop    rbp
  109f4e:	c3                   	ret
  109f4f:	c7 45 00 0c 00 00 00 	mov    DWORD PTR [rbp+0x0],0xc
  109f56:	b8 ff ff ff ff       	mov    eax,0xffffffff
  109f5b:	eb e0                	jmp    109f3d <_svfiprintf_r+0xfdd>
  109f5d:	41 89 df             	mov    r15d,ebx
  109f60:	eb c6                	jmp    109f28 <_svfiprintf_r+0xfc8>
  109f62:	cc                   	int3
  109f63:	cc                   	int3
  109f64:	cc                   	int3
  109f65:	cc                   	int3
  109f66:	cc                   	int3
  109f67:	cc                   	int3
  109f68:	cc                   	int3
  109f69:	cc                   	int3
  109f6a:	cc                   	int3
  109f6b:	cc                   	int3
  109f6c:	cc                   	int3
  109f6d:	cc                   	int3
  109f6e:	cc                   	int3
  109f6f:	cc                   	int3

0000000000109f70 <_realloc_r>:
  109f70:	55                   	push   rbp
  109f71:	41 57                	push   r15
  109f73:	41 56                	push   r14
  109f75:	41 55                	push   r13
  109f77:	41 54                	push   r12
  109f79:	53                   	push   rbx
  109f7a:	48 83 ec 18          	sub    rsp,0x18
  109f7e:	48 89 d3             	mov    rbx,rdx
  109f81:	48 89 fd             	mov    rbp,rdi
  109f84:	48 85 f6             	test   rsi,rsi
  109f87:	0f 84 a3 00 00 00    	je     10a030 <_realloc_r+0xc0>
  109f8d:	49 89 f4             	mov    r12,rsi
  109f90:	48 89 ef             	mov    rdi,rbp
  109f93:	e8 08 e9 ff ff       	call   1088a0 <__malloc_lock>
  109f98:	48 8d 43 17          	lea    rax,[rbx+0x17]
  109f9c:	48 89 c1             	mov    rcx,rax
  109f9f:	48 83 e1 f0          	and    rcx,0xfffffffffffffff0
  109fa3:	48 83 f8 2f          	cmp    rax,0x2f
  109fa7:	41 bf 20 00 00 00    	mov    r15d,0x20
  109fad:	4c 0f 43 f9          	cmovae r15,rcx
  109fb1:	49 81 ff ff ff ff 7f 	cmp    r15,0x7fffffff
  109fb8:	0f 87 8b 00 00 00    	ja     10a049 <_realloc_r+0xd9>
  109fbe:	49 39 df             	cmp    r15,rbx
  109fc1:	0f 82 82 00 00 00    	jb     10a049 <_realloc_r+0xd9>
  109fc7:	4d 8d 74 24 f0       	lea    r14,[r12-0x10]
  109fcc:	49 8b 4c 24 f8       	mov    rcx,QWORD PTR [r12-0x8]
  109fd1:	49 89 cd             	mov    r13,rcx
  109fd4:	49 83 e5 fc          	and    r13,0xfffffffffffffffc
  109fd8:	4d 39 fd             	cmp    r13,r15
  109fdb:	7d 78                	jge    10a055 <_realloc_r+0xe5>
  109fdd:	4b 8d 34 2e          	lea    rsi,[r14+r13*1]
  109fe1:	4c 8d 1d a8 c5 00 00 	lea    r11,[rip+0xc5a8]        # 116590 <__malloc_av_>
  109fe8:	4d 8b 43 10          	mov    r8,QWORD PTR [r11+0x10]
  109fec:	4b 8b 7c 2e 08       	mov    rdi,QWORD PTR [r14+r13*1+0x8]
  109ff1:	4c 39 c6             	cmp    rsi,r8
  109ff4:	0f 84 ce 00 00 00    	je     10a0c8 <_realloc_r+0x158>
  109ffa:	48 89 f8             	mov    rax,rdi
  109ffd:	48 83 e0 fe          	and    rax,0xfffffffffffffffe
  10a001:	45 31 d2             	xor    r10d,r10d
  10a004:	f6 44 06 08 01       	test   BYTE PTR [rsi+rax*1+0x8],0x1
  10a009:	ba 00 00 00 00       	mov    edx,0x0
  10a00e:	0f 85 cf 00 00 00    	jne    10a0e3 <_realloc_r+0x173>
  10a014:	48 83 e7 fc          	and    rdi,0xfffffffffffffffc
  10a018:	4e 8d 14 2f          	lea    r10,[rdi+r13*1]
  10a01c:	4d 39 fa             	cmp    r10,r15
  10a01f:	0f 8d d2 01 00 00    	jge    10a1f7 <_realloc_r+0x287>
  10a025:	49 89 fa             	mov    r10,rdi
  10a028:	48 89 f2             	mov    rdx,rsi
  10a02b:	e9 b3 00 00 00       	jmp    10a0e3 <_realloc_r+0x173>
  10a030:	48 89 ef             	mov    rdi,rbp
  10a033:	48 89 de             	mov    rsi,rbx
  10a036:	48 83 c4 18          	add    rsp,0x18
  10a03a:	5b                   	pop    rbx
  10a03b:	41 5c                	pop    r12
  10a03d:	41 5d                	pop    r13
  10a03f:	41 5e                	pop    r14
  10a041:	41 5f                	pop    r15
  10a043:	5d                   	pop    rbp
  10a044:	e9 47 e0 ff ff       	jmp    108090 <_malloc_r>
  10a049:	c7 45 00 0c 00 00 00 	mov    DWORD PTR [rbp+0x0],0xc
  10a050:	45 31 e4             	xor    r12d,r12d
  10a053:	eb 61                	jmp    10a0b6 <_realloc_r+0x146>
  10a055:	4d 89 ea             	mov    r10,r13
  10a058:	4c 89 d0             	mov    rax,r10
  10a05b:	4c 29 f8             	sub    rax,r15
  10a05e:	48 83 f8 20          	cmp    rax,0x20
  10a062:	72 2f                	jb     10a093 <_realloc_r+0x123>
  10a064:	49 8b 4e 08          	mov    rcx,QWORD PTR [r14+0x8]
  10a068:	83 e1 01             	and    ecx,0x1
  10a06b:	4c 09 f9             	or     rcx,r15
  10a06e:	49 89 4e 08          	mov    QWORD PTR [r14+0x8],rcx
  10a072:	48 83 c8 01          	or     rax,0x1
  10a076:	4b 89 44 3e 08       	mov    QWORD PTR [r14+r15*1+0x8],rax
  10a07b:	43 80 4c 16 08 01    	or     BYTE PTR [r14+r10*1+0x8],0x1
  10a081:	4b 8d 34 3e          	lea    rsi,[r14+r15*1]
  10a085:	48 83 c6 10          	add    rsi,0x10
  10a089:	48 89 ef             	mov    rdi,rbp
  10a08c:	e8 9f e9 ff ff       	call   108a30 <_free_r>
  10a091:	eb 14                	jmp    10a0a7 <_realloc_r+0x137>
  10a093:	49 8b 46 08          	mov    rax,QWORD PTR [r14+0x8]
  10a097:	83 e0 01             	and    eax,0x1
  10a09a:	4c 09 d0             	or     rax,r10
  10a09d:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  10a0a1:	43 80 4c 16 08 01    	or     BYTE PTR [r14+r10*1+0x8],0x1
  10a0a7:	48 89 ef             	mov    rdi,rbp
  10a0aa:	e8 01 e8 ff ff       	call   1088b0 <__malloc_unlock>
  10a0af:	49 83 c6 10          	add    r14,0x10
  10a0b3:	4d 89 f4             	mov    r12,r14
  10a0b6:	4c 89 e0             	mov    rax,r12
  10a0b9:	48 83 c4 18          	add    rsp,0x18
  10a0bd:	5b                   	pop    rbx
  10a0be:	41 5c                	pop    r12
  10a0c0:	41 5d                	pop    r13
  10a0c2:	41 5e                	pop    r14
  10a0c4:	41 5f                	pop    r15
  10a0c6:	5d                   	pop    rbp
  10a0c7:	c3                   	ret
  10a0c8:	48 83 e7 fc          	and    rdi,0xfffffffffffffffc
  10a0cc:	4a 8d 04 2f          	lea    rax,[rdi+r13*1]
  10a0d0:	4d 8d 4f 20          	lea    r9,[r15+0x20]
  10a0d4:	49 89 fa             	mov    r10,rdi
  10a0d7:	48 89 f2             	mov    rdx,rsi
  10a0da:	4c 39 c8             	cmp    rax,r9
  10a0dd:	0f 8d e4 00 00 00    	jge    10a1c7 <_realloc_r+0x257>
  10a0e3:	4c 89 64 24 08       	mov    QWORD PTR [rsp+0x8],r12
  10a0e8:	48 89 6c 24 10       	mov    QWORD PTR [rsp+0x10],rbp
  10a0ed:	f6 c1 01             	test   cl,0x1
  10a0f0:	0f 85 2c 01 00 00    	jne    10a222 <_realloc_r+0x2b2>
  10a0f6:	49 8b 06             	mov    rax,QWORD PTR [r14]
  10a0f9:	4c 89 f1             	mov    rcx,r14
  10a0fc:	48 29 c1             	sub    rcx,rax
  10a0ff:	48 89 ce             	mov    rsi,rcx
  10a102:	48 f7 d8             	neg    rax
  10a105:	4d 8b 64 06 08       	mov    r12,QWORD PTR [r14+rax*1+0x8]
  10a10a:	49 83 e4 fc          	and    r12,0xfffffffffffffffc
  10a10e:	4d 01 ec             	add    r12,r13
  10a111:	48 85 d2             	test   rdx,rdx
  10a114:	0f 84 ff 00 00 00    	je     10a219 <_realloc_r+0x2a9>
  10a11a:	4d 01 e2             	add    r10,r12
  10a11d:	4c 39 c2             	cmp    rdx,r8
  10a120:	0f 84 e6 00 00 00    	je     10a20c <_realloc_r+0x29c>
  10a126:	4d 39 fa             	cmp    r10,r15
  10a129:	0f 8c ea 00 00 00    	jl     10a219 <_realloc_r+0x2a9>
  10a12f:	48 8b 42 10          	mov    rax,QWORD PTR [rdx+0x10]
  10a133:	48 8b 4a 18          	mov    rcx,QWORD PTR [rdx+0x18]
  10a137:	48 89 48 18          	mov    QWORD PTR [rax+0x18],rcx
  10a13b:	48 89 41 10          	mov    QWORD PTR [rcx+0x10],rax
  10a13f:	49 89 f6             	mov    r14,rsi
  10a142:	48 8b 46 10          	mov    rax,QWORD PTR [rsi+0x10]
  10a146:	48 8b 4e 18          	mov    rcx,QWORD PTR [rsi+0x18]
  10a14a:	48 8d 7e 10          	lea    rdi,[rsi+0x10]
  10a14e:	48 89 48 18          	mov    QWORD PTR [rax+0x18],rcx
  10a152:	48 89 41 10          	mov    QWORD PTR [rcx+0x10],rax
  10a156:	49 83 c5 f8          	add    r13,0xfffffffffffffff8
  10a15a:	49 83 fd 48          	cmp    r13,0x48
  10a15e:	0f 87 d1 02 00 00    	ja     10a435 <_realloc_r+0x4c5>
  10a164:	49 83 fd 28          	cmp    r13,0x28
  10a168:	48 8b 6c 24 10       	mov    rbp,QWORD PTR [rsp+0x10]
  10a16d:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
  10a172:	0f 82 b1 03 00 00    	jb     10a529 <_realloc_r+0x5b9>
  10a178:	48 8b 01             	mov    rax,QWORD PTR [rcx]
  10a17b:	48 89 07             	mov    QWORD PTR [rdi],rax
  10a17e:	48 8b 41 08          	mov    rax,QWORD PTR [rcx+0x8]
  10a182:	48 89 47 08          	mov    QWORD PTR [rdi+0x8],rax
  10a186:	49 83 fd 38          	cmp    r13,0x38
  10a18a:	0f 82 51 03 00 00    	jb     10a4e1 <_realloc_r+0x571>
  10a190:	48 8b 41 10          	mov    rax,QWORD PTR [rcx+0x10]
  10a194:	48 89 47 10          	mov    QWORD PTR [rdi+0x10],rax
  10a198:	48 8b 41 18          	mov    rax,QWORD PTR [rcx+0x18]
  10a19c:	48 89 47 18          	mov    QWORD PTR [rdi+0x18],rax
  10a1a0:	49 83 fd 48          	cmp    r13,0x48
  10a1a4:	0f 82 77 03 00 00    	jb     10a521 <_realloc_r+0x5b1>
  10a1aa:	48 8b 41 20          	mov    rax,QWORD PTR [rcx+0x20]
  10a1ae:	48 89 47 20          	mov    QWORD PTR [rdi+0x20],rax
  10a1b2:	48 8b 41 28          	mov    rax,QWORD PTR [rcx+0x28]
  10a1b6:	48 83 c1 30          	add    rcx,0x30
  10a1ba:	48 89 47 28          	mov    QWORD PTR [rdi+0x28],rax
  10a1be:	48 83 c7 30          	add    rdi,0x30
  10a1c2:	e9 62 03 00 00       	jmp    10a529 <_realloc_r+0x5b9>
  10a1c7:	4d 01 fe             	add    r14,r15
  10a1ca:	4d 89 73 10          	mov    QWORD PTR [r11+0x10],r14
  10a1ce:	4c 29 f8             	sub    rax,r15
  10a1d1:	48 83 c8 01          	or     rax,0x1
  10a1d5:	4b 89 44 3c f8       	mov    QWORD PTR [r12+r15*1-0x8],rax
  10a1da:	49 8b 44 24 f8       	mov    rax,QWORD PTR [r12-0x8]
  10a1df:	83 e0 01             	and    eax,0x1
  10a1e2:	4c 09 f8             	or     rax,r15
  10a1e5:	49 89 44 24 f8       	mov    QWORD PTR [r12-0x8],rax
  10a1ea:	48 89 ef             	mov    rdi,rbp
  10a1ed:	e8 be e6 ff ff       	call   1088b0 <__malloc_unlock>
  10a1f2:	e9 bf fe ff ff       	jmp    10a0b6 <_realloc_r+0x146>
  10a1f7:	48 8b 46 10          	mov    rax,QWORD PTR [rsi+0x10]
  10a1fb:	48 8b 4e 18          	mov    rcx,QWORD PTR [rsi+0x18]
  10a1ff:	48 89 48 18          	mov    QWORD PTR [rax+0x18],rcx
  10a203:	48 89 41 10          	mov    QWORD PTR [rcx+0x10],rax
  10a207:	e9 4c fe ff ff       	jmp    10a058 <_realloc_r+0xe8>
  10a20c:	49 8d 47 20          	lea    rax,[r15+0x20]
  10a210:	49 39 c2             	cmp    r10,rax
  10a213:	0f 8d 92 01 00 00    	jge    10a3ab <_realloc_r+0x43b>
  10a219:	4d 39 fc             	cmp    r12,r15
  10a21c:	0f 8d c6 00 00 00    	jge    10a2e8 <_realloc_r+0x378>
  10a222:	48 8b 6c 24 10       	mov    rbp,QWORD PTR [rsp+0x10]
  10a227:	48 89 ef             	mov    rdi,rbp
  10a22a:	48 89 de             	mov    rsi,rbx
  10a22d:	e8 5e de ff ff       	call   108090 <_malloc_r>
  10a232:	48 85 c0             	test   rax,rax
  10a235:	0f 84 9d 00 00 00    	je     10a2d8 <_realloc_r+0x368>
  10a23b:	49 89 c4             	mov    r12,rax
  10a23e:	48 83 c0 f0          	add    rax,0xfffffffffffffff0
  10a242:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
  10a247:	48 8b 49 f8          	mov    rcx,QWORD PTR [rcx-0x8]
  10a24b:	48 83 e1 fe          	and    rcx,0xfffffffffffffffe
  10a24f:	4c 01 f1             	add    rcx,r14
  10a252:	48 39 c8             	cmp    rax,rcx
  10a255:	0f 84 10 01 00 00    	je     10a36b <_realloc_r+0x3fb>
  10a25b:	49 83 c5 f8          	add    r13,0xfffffffffffffff8
  10a25f:	49 83 fd 48          	cmp    r13,0x48
  10a263:	0f 87 18 01 00 00    	ja     10a381 <_realloc_r+0x411>
  10a269:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
  10a26e:	4c 89 e1             	mov    rcx,r12
  10a271:	49 83 fd 28          	cmp    r13,0x28
  10a275:	0f 82 24 02 00 00    	jb     10a49f <_realloc_r+0x52f>
  10a27b:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
  10a280:	48 8b 01             	mov    rax,QWORD PTR [rcx]
  10a283:	49 89 04 24          	mov    QWORD PTR [r12],rax
  10a287:	48 8b 41 08          	mov    rax,QWORD PTR [rcx+0x8]
  10a28b:	49 89 44 24 08       	mov    QWORD PTR [r12+0x8],rax
  10a290:	49 83 fd 38          	cmp    r13,0x38
  10a294:	0f 82 c2 01 00 00    	jb     10a45c <_realloc_r+0x4ec>
  10a29a:	48 8b 41 10          	mov    rax,QWORD PTR [rcx+0x10]
  10a29e:	49 89 44 24 10       	mov    QWORD PTR [r12+0x10],rax
  10a2a3:	48 8b 41 18          	mov    rax,QWORD PTR [rcx+0x18]
  10a2a7:	49 89 44 24 18       	mov    QWORD PTR [r12+0x18],rax
  10a2ac:	49 83 fd 48          	cmp    r13,0x48
  10a2b0:	0f 82 de 01 00 00    	jb     10a494 <_realloc_r+0x524>
  10a2b6:	48 8b 41 20          	mov    rax,QWORD PTR [rcx+0x20]
  10a2ba:	49 89 44 24 20       	mov    QWORD PTR [r12+0x20],rax
  10a2bf:	48 8d 41 30          	lea    rax,[rcx+0x30]
  10a2c3:	48 8b 51 28          	mov    rdx,QWORD PTR [rcx+0x28]
  10a2c7:	4c 89 e1             	mov    rcx,r12
  10a2ca:	48 83 c1 30          	add    rcx,0x30
  10a2ce:	49 89 54 24 28       	mov    QWORD PTR [r12+0x28],rdx
  10a2d3:	e9 c7 01 00 00       	jmp    10a49f <_realloc_r+0x52f>
  10a2d8:	48 89 ef             	mov    rdi,rbp
  10a2db:	e8 d0 e5 ff ff       	call   1088b0 <__malloc_unlock>
  10a2e0:	45 31 e4             	xor    r12d,r12d
  10a2e3:	e9 ce fd ff ff       	jmp    10a0b6 <_realloc_r+0x146>
  10a2e8:	49 89 f6             	mov    r14,rsi
  10a2eb:	48 8b 46 10          	mov    rax,QWORD PTR [rsi+0x10]
  10a2ef:	48 8b 4e 18          	mov    rcx,QWORD PTR [rsi+0x18]
  10a2f3:	48 8d 7e 10          	lea    rdi,[rsi+0x10]
  10a2f7:	48 89 48 18          	mov    QWORD PTR [rax+0x18],rcx
  10a2fb:	48 89 41 10          	mov    QWORD PTR [rcx+0x10],rax
  10a2ff:	49 83 c5 f8          	add    r13,0xfffffffffffffff8
  10a303:	49 83 fd 48          	cmp    r13,0x48
  10a307:	0f 87 8c 00 00 00    	ja     10a399 <_realloc_r+0x429>
  10a30d:	49 83 fd 28          	cmp    r13,0x28
  10a311:	0f 82 3b 01 00 00    	jb     10a452 <_realloc_r+0x4e2>
  10a317:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
  10a31c:	48 8b 01             	mov    rax,QWORD PTR [rcx]
  10a31f:	48 89 07             	mov    QWORD PTR [rdi],rax
  10a322:	48 8b 41 08          	mov    rax,QWORD PTR [rcx+0x8]
  10a326:	48 89 47 08          	mov    QWORD PTR [rdi+0x8],rax
  10a32a:	49 83 fd 38          	cmp    r13,0x38
  10a32e:	0f 82 56 01 00 00    	jb     10a48a <_realloc_r+0x51a>
  10a334:	48 8b 41 10          	mov    rax,QWORD PTR [rcx+0x10]
  10a338:	48 89 47 10          	mov    QWORD PTR [rdi+0x10],rax
  10a33c:	48 8b 41 18          	mov    rax,QWORD PTR [rcx+0x18]
  10a340:	48 89 47 18          	mov    QWORD PTR [rdi+0x18],rax
  10a344:	49 83 fd 48          	cmp    r13,0x48
  10a348:	0f 82 9d 01 00 00    	jb     10a4eb <_realloc_r+0x57b>
  10a34e:	48 8b 41 20          	mov    rax,QWORD PTR [rcx+0x20]
  10a352:	48 89 47 20          	mov    QWORD PTR [rdi+0x20],rax
  10a356:	48 8b 41 28          	mov    rax,QWORD PTR [rcx+0x28]
  10a35a:	48 83 c1 30          	add    rcx,0x30
  10a35e:	48 89 47 28          	mov    QWORD PTR [rdi+0x28],rax
  10a362:	48 83 c7 30          	add    rdi,0x30
  10a366:	e9 88 01 00 00       	jmp    10a4f3 <_realloc_r+0x583>
  10a36b:	4d 8b 54 24 f8       	mov    r10,QWORD PTR [r12-0x8]
  10a370:	49 83 e2 fc          	and    r10,0xfffffffffffffffc
  10a374:	4d 01 ea             	add    r10,r13
  10a377:	48 8b 6c 24 10       	mov    rbp,QWORD PTR [rsp+0x10]
  10a37c:	e9 d7 fc ff ff       	jmp    10a058 <_realloc_r+0xe8>
  10a381:	4c 89 e7             	mov    rdi,r12
  10a384:	48 8b 6c 24 08       	mov    rbp,QWORD PTR [rsp+0x8]
  10a389:	48 89 ee             	mov    rsi,rbp
  10a38c:	4c 89 ea             	mov    rdx,r13
  10a38f:	e8 0c 02 00 00       	call   10a5a0 <memmove>
  10a394:	e9 21 01 00 00       	jmp    10a4ba <_realloc_r+0x54a>
  10a399:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
  10a39e:	4c 89 ea             	mov    rdx,r13
  10a3a1:	e8 fa 01 00 00       	call   10a5a0 <memmove>
  10a3a6:	e9 5e 01 00 00       	jmp    10a509 <_realloc_r+0x599>
  10a3ab:	48 89 f3             	mov    rbx,rsi
  10a3ae:	48 8b 46 10          	mov    rax,QWORD PTR [rsi+0x10]
  10a3b2:	48 8b 4e 18          	mov    rcx,QWORD PTR [rsi+0x18]
  10a3b6:	4c 8d 66 10          	lea    r12,[rsi+0x10]
  10a3ba:	48 89 48 18          	mov    QWORD PTR [rax+0x18],rcx
  10a3be:	48 89 41 10          	mov    QWORD PTR [rcx+0x10],rax
  10a3c2:	49 83 c5 f8          	add    r13,0xfffffffffffffff8
  10a3c6:	49 83 fd 48          	cmp    r13,0x48
  10a3ca:	0f 87 99 00 00 00    	ja     10a469 <_realloc_r+0x4f9>
  10a3d0:	49 83 fd 28          	cmp    r13,0x28
  10a3d4:	0f 82 fd 00 00 00    	jb     10a4d7 <_realloc_r+0x567>
  10a3da:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  10a3df:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  10a3e2:	49 89 04 24          	mov    QWORD PTR [r12],rax
  10a3e6:	48 8b 42 08          	mov    rax,QWORD PTR [rdx+0x8]
  10a3ea:	49 89 44 24 08       	mov    QWORD PTR [r12+0x8],rax
  10a3ef:	49 83 fd 38          	cmp    r13,0x38
  10a3f3:	0f 82 1d 01 00 00    	jb     10a516 <_realloc_r+0x5a6>
  10a3f9:	48 8b 42 10          	mov    rax,QWORD PTR [rdx+0x10]
  10a3fd:	49 89 44 24 10       	mov    QWORD PTR [r12+0x10],rax
  10a402:	48 8b 42 18          	mov    rax,QWORD PTR [rdx+0x18]
  10a406:	49 89 44 24 18       	mov    QWORD PTR [r12+0x18],rax
  10a40b:	49 83 fd 48          	cmp    r13,0x48
  10a40f:	0f 82 2f 01 00 00    	jb     10a544 <_realloc_r+0x5d4>
  10a415:	48 8b 42 20          	mov    rax,QWORD PTR [rdx+0x20]
  10a419:	49 89 44 24 20       	mov    QWORD PTR [r12+0x20],rax
  10a41e:	48 8b 4a 28          	mov    rcx,QWORD PTR [rdx+0x28]
  10a422:	48 83 c2 30          	add    rdx,0x30
  10a426:	49 8d 44 24 30       	lea    rax,[r12+0x30]
  10a42b:	49 89 4c 24 28       	mov    QWORD PTR [r12+0x28],rcx
  10a430:	e9 18 01 00 00       	jmp    10a54d <_realloc_r+0x5dd>
  10a435:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
  10a43a:	4c 89 ea             	mov    rdx,r13
  10a43d:	4c 89 d3             	mov    rbx,r10
  10a440:	e8 5b 01 00 00       	call   10a5a0 <memmove>
  10a445:	49 89 da             	mov    r10,rbx
  10a448:	48 8b 6c 24 10       	mov    rbp,QWORD PTR [rsp+0x10]
  10a44d:	e9 06 fc ff ff       	jmp    10a058 <_realloc_r+0xe8>
  10a452:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
  10a457:	e9 97 00 00 00       	jmp    10a4f3 <_realloc_r+0x583>
  10a45c:	48 8d 41 10          	lea    rax,[rcx+0x10]
  10a460:	4c 89 e1             	mov    rcx,r12
  10a463:	48 83 c1 10          	add    rcx,0x10
  10a467:	eb 36                	jmp    10a49f <_realloc_r+0x52f>
  10a469:	4c 89 e7             	mov    rdi,r12
  10a46c:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
  10a471:	4c 89 ea             	mov    rdx,r13
  10a474:	4c 89 d5             	mov    rbp,r10
  10a477:	4d 89 de             	mov    r14,r11
  10a47a:	e8 21 01 00 00       	call   10a5a0 <memmove>
  10a47f:	4d 89 f3             	mov    r11,r14
  10a482:	49 89 ea             	mov    r10,rbp
  10a485:	e9 d9 00 00 00       	jmp    10a563 <_realloc_r+0x5f3>
  10a48a:	48 83 c1 10          	add    rcx,0x10
  10a48e:	48 83 c7 10          	add    rdi,0x10
  10a492:	eb 5f                	jmp    10a4f3 <_realloc_r+0x583>
  10a494:	48 8d 41 20          	lea    rax,[rcx+0x20]
  10a498:	4c 89 e1             	mov    rcx,r12
  10a49b:	48 83 c1 20          	add    rcx,0x20
  10a49f:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  10a4a2:	48 89 11             	mov    QWORD PTR [rcx],rdx
  10a4a5:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
  10a4a9:	48 89 51 08          	mov    QWORD PTR [rcx+0x8],rdx
  10a4ad:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
  10a4b1:	48 89 41 10          	mov    QWORD PTR [rcx+0x10],rax
  10a4b5:	48 8b 6c 24 08       	mov    rbp,QWORD PTR [rsp+0x8]
  10a4ba:	48 8b 5c 24 10       	mov    rbx,QWORD PTR [rsp+0x10]
  10a4bf:	48 89 df             	mov    rdi,rbx
  10a4c2:	48 89 ee             	mov    rsi,rbp
  10a4c5:	e8 66 e5 ff ff       	call   108a30 <_free_r>
  10a4ca:	48 89 df             	mov    rdi,rbx
  10a4cd:	e8 de e3 ff ff       	call   1088b0 <__malloc_unlock>
  10a4d2:	e9 df fb ff ff       	jmp    10a0b6 <_realloc_r+0x146>
  10a4d7:	4c 89 e0             	mov    rax,r12
  10a4da:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  10a4df:	eb 6c                	jmp    10a54d <_realloc_r+0x5dd>
  10a4e1:	48 83 c1 10          	add    rcx,0x10
  10a4e5:	48 83 c7 10          	add    rdi,0x10
  10a4e9:	eb 3e                	jmp    10a529 <_realloc_r+0x5b9>
  10a4eb:	48 83 c1 20          	add    rcx,0x20
  10a4ef:	48 83 c7 20          	add    rdi,0x20
  10a4f3:	48 8b 01             	mov    rax,QWORD PTR [rcx]
  10a4f6:	48 89 07             	mov    QWORD PTR [rdi],rax
  10a4f9:	48 8b 41 08          	mov    rax,QWORD PTR [rcx+0x8]
  10a4fd:	48 89 47 08          	mov    QWORD PTR [rdi+0x8],rax
  10a501:	48 8b 41 10          	mov    rax,QWORD PTR [rcx+0x10]
  10a505:	48 89 47 10          	mov    QWORD PTR [rdi+0x10],rax
  10a509:	4d 89 e2             	mov    r10,r12
  10a50c:	48 8b 6c 24 10       	mov    rbp,QWORD PTR [rsp+0x10]
  10a511:	e9 42 fb ff ff       	jmp    10a058 <_realloc_r+0xe8>
  10a516:	48 83 c2 10          	add    rdx,0x10
  10a51a:	49 8d 44 24 10       	lea    rax,[r12+0x10]
  10a51f:	eb 2c                	jmp    10a54d <_realloc_r+0x5dd>
  10a521:	48 83 c1 20          	add    rcx,0x20
  10a525:	48 83 c7 20          	add    rdi,0x20
  10a529:	48 8b 01             	mov    rax,QWORD PTR [rcx]
  10a52c:	48 89 07             	mov    QWORD PTR [rdi],rax
  10a52f:	48 8b 41 08          	mov    rax,QWORD PTR [rcx+0x8]
  10a533:	48 89 47 08          	mov    QWORD PTR [rdi+0x8],rax
  10a537:	48 8b 41 10          	mov    rax,QWORD PTR [rcx+0x10]
  10a53b:	48 89 47 10          	mov    QWORD PTR [rdi+0x10],rax
  10a53f:	e9 14 fb ff ff       	jmp    10a058 <_realloc_r+0xe8>
  10a544:	48 83 c2 20          	add    rdx,0x20
  10a548:	49 8d 44 24 20       	lea    rax,[r12+0x20]
  10a54d:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  10a550:	48 89 08             	mov    QWORD PTR [rax],rcx
  10a553:	48 8b 4a 08          	mov    rcx,QWORD PTR [rdx+0x8]
  10a557:	48 89 48 08          	mov    QWORD PTR [rax+0x8],rcx
  10a55b:	48 8b 4a 10          	mov    rcx,QWORD PTR [rdx+0x10]
  10a55f:	48 89 48 10          	mov    QWORD PTR [rax+0x10],rcx
  10a563:	4a 8d 04 3b          	lea    rax,[rbx+r15*1]
  10a567:	49 89 43 10          	mov    QWORD PTR [r11+0x10],rax
  10a56b:	4d 29 fa             	sub    r10,r15
  10a56e:	49 83 ca 01          	or     r10,0x1
  10a572:	4e 89 54 3b 08       	mov    QWORD PTR [rbx+r15*1+0x8],r10
  10a577:	48 8b 43 08          	mov    rax,QWORD PTR [rbx+0x8]
  10a57b:	83 e0 01             	and    eax,0x1
  10a57e:	4c 09 f8             	or     rax,r15
  10a581:	48 89 43 08          	mov    QWORD PTR [rbx+0x8],rax
  10a585:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
  10a58a:	e8 21 e3 ff ff       	call   1088b0 <__malloc_unlock>
  10a58f:	e9 22 fb ff ff       	jmp    10a0b6 <_realloc_r+0x146>
  10a594:	cc                   	int3
  10a595:	cc                   	int3
  10a596:	cc                   	int3
  10a597:	cc                   	int3
  10a598:	cc                   	int3
  10a599:	cc                   	int3
  10a59a:	cc                   	int3
  10a59b:	cc                   	int3
  10a59c:	cc                   	int3
  10a59d:	cc                   	int3
  10a59e:	cc                   	int3
  10a59f:	cc                   	int3

000000000010a5a0 <memmove>:
  10a5a0:	55                   	push   rbp
  10a5a1:	41 56                	push   r14
  10a5a3:	53                   	push   rbx
  10a5a4:	48 89 f8             	mov    rax,rdi
  10a5a7:	48 39 fe             	cmp    rsi,rdi
  10a5aa:	0f 83 d6 00 00 00    	jae    10a686 <memmove+0xe6>
  10a5b0:	4c 8d 0c 16          	lea    r9,[rsi+rdx*1]
  10a5b4:	49 39 c1             	cmp    r9,rax
  10a5b7:	0f 86 c9 00 00 00    	jbe    10a686 <memmove+0xe6>
  10a5bd:	48 85 d2             	test   rdx,rdx
  10a5c0:	0f 84 29 04 00 00    	je     10a9ef <memmove+0x44f>
  10a5c6:	4c 8d 04 10          	lea    r8,[rax+rdx*1]
  10a5ca:	48 83 fa 04          	cmp    rdx,0x4
  10a5ce:	72 14                	jb     10a5e4 <memmove+0x44>
  10a5d0:	48 8d 0c 16          	lea    rcx,[rsi+rdx*1]
  10a5d4:	48 29 c1             	sub    rcx,rax
  10a5d7:	48 29 d1             	sub    rcx,rdx
  10a5da:	48 83 f9 10          	cmp    rcx,0x10
  10a5de:	0f 83 67 03 00 00    	jae    10a94b <memmove+0x3ab>
  10a5e4:	4c 89 ce             	mov    rsi,r9
  10a5e7:	4c 89 c1             	mov    rcx,r8
  10a5ea:	49 89 d2             	mov    r10,rdx
  10a5ed:	4d 8d 42 ff          	lea    r8,[r10-0x1]
  10a5f1:	4c 89 d7             	mov    rdi,r10
  10a5f4:	48 83 e7 07          	and    rdi,0x7
  10a5f8:	74 1e                	je     10a618 <memmove+0x78>
  10a5fa:	31 d2                	xor    edx,edx
  10a5fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  10a600:	0f b6 5e ff          	movzx  ebx,BYTE PTR [rsi-0x1]
  10a604:	48 ff ce             	dec    rsi
  10a607:	88 59 ff             	mov    BYTE PTR [rcx-0x1],bl
  10a60a:	48 ff c9             	dec    rcx
  10a60d:	48 ff c2             	inc    rdx
  10a610:	48 39 d7             	cmp    rdi,rdx
  10a613:	75 eb                	jne    10a600 <memmove+0x60>
  10a615:	49 29 d2             	sub    r10,rdx
  10a618:	49 83 f8 07          	cmp    r8,0x7
  10a61c:	0f 82 cd 03 00 00    	jb     10a9ef <memmove+0x44f>
  10a622:	49 f7 da             	neg    r10
  10a625:	31 d2                	xor    edx,edx
  10a627:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  10a62e:	00 00 
  10a630:	0f b6 5c 16 ff       	movzx  ebx,BYTE PTR [rsi+rdx*1-0x1]
  10a635:	88 5c 11 ff          	mov    BYTE PTR [rcx+rdx*1-0x1],bl
  10a639:	0f b6 5c 16 fe       	movzx  ebx,BYTE PTR [rsi+rdx*1-0x2]
  10a63e:	88 5c 11 fe          	mov    BYTE PTR [rcx+rdx*1-0x2],bl
  10a642:	0f b6 5c 16 fd       	movzx  ebx,BYTE PTR [rsi+rdx*1-0x3]
  10a647:	88 5c 11 fd          	mov    BYTE PTR [rcx+rdx*1-0x3],bl
  10a64b:	0f b6 5c 16 fc       	movzx  ebx,BYTE PTR [rsi+rdx*1-0x4]
  10a650:	88 5c 11 fc          	mov    BYTE PTR [rcx+rdx*1-0x4],bl
  10a654:	0f b6 5c 16 fb       	movzx  ebx,BYTE PTR [rsi+rdx*1-0x5]
  10a659:	88 5c 11 fb          	mov    BYTE PTR [rcx+rdx*1-0x5],bl
  10a65d:	0f b6 5c 16 fa       	movzx  ebx,BYTE PTR [rsi+rdx*1-0x6]
  10a662:	88 5c 11 fa          	mov    BYTE PTR [rcx+rdx*1-0x6],bl
  10a666:	0f b6 5c 16 f9       	movzx  ebx,BYTE PTR [rsi+rdx*1-0x7]
  10a66b:	88 5c 11 f9          	mov    BYTE PTR [rcx+rdx*1-0x7],bl
  10a66f:	0f b6 5c 16 f8       	movzx  ebx,BYTE PTR [rsi+rdx*1-0x8]
  10a674:	88 5c 11 f8          	mov    BYTE PTR [rcx+rdx*1-0x8],bl
  10a678:	48 83 c2 f8          	add    rdx,0xfffffffffffffff8
  10a67c:	49 39 d2             	cmp    r10,rdx
  10a67f:	75 af                	jne    10a630 <memmove+0x90>
  10a681:	e9 69 03 00 00       	jmp    10a9ef <memmove+0x44f>
  10a686:	48 83 fa 20          	cmp    rdx,0x20
  10a68a:	73 17                	jae    10a6a3 <memmove+0x103>
  10a68c:	49 89 c0             	mov    r8,rax
  10a68f:	48 85 d2             	test   rdx,rdx
  10a692:	0f 84 57 03 00 00    	je     10a9ef <memmove+0x44f>
  10a698:	48 83 fa 08          	cmp    rdx,0x8
  10a69c:	73 1b                	jae    10a6b9 <memmove+0x119>
  10a69e:	e9 c2 02 00 00       	jmp    10a965 <memmove+0x3c5>
  10a6a3:	89 f1                	mov    ecx,esi
  10a6a5:	09 c1                	or     ecx,eax
  10a6a7:	f6 c1 07             	test   cl,0x7
  10a6aa:	74 2f                	je     10a6db <memmove+0x13b>
  10a6ac:	49 89 c0             	mov    r8,rax
  10a6af:	48 83 fa 08          	cmp    rdx,0x8
  10a6b3:	0f 82 ac 02 00 00    	jb     10a965 <memmove+0x3c5>
  10a6b9:	4c 89 c1             	mov    rcx,r8
  10a6bc:	48 29 f1             	sub    rcx,rsi
  10a6bf:	48 83 f9 20          	cmp    rcx,0x20
  10a6c3:	0f 82 9c 02 00 00    	jb     10a965 <memmove+0x3c5>
  10a6c9:	48 83 fa 20          	cmp    rdx,0x20
  10a6cd:	0f 83 e6 00 00 00    	jae    10a7b9 <memmove+0x219>
  10a6d3:	45 31 c9             	xor    r9d,r9d
  10a6d6:	e9 3e 02 00 00       	jmp    10a919 <memmove+0x379>
  10a6db:	4c 8d 5a e0          	lea    r11,[rdx-0x20]
  10a6df:	41 f6 c3 20          	test   r11b,0x20
  10a6e3:	0f 85 fd 00 00 00    	jne    10a7e6 <memmove+0x246>
  10a6e9:	48 8b 0e             	mov    rcx,QWORD PTR [rsi]
  10a6ec:	48 89 08             	mov    QWORD PTR [rax],rcx
  10a6ef:	48 8b 4e 08          	mov    rcx,QWORD PTR [rsi+0x8]
  10a6f3:	48 89 48 08          	mov    QWORD PTR [rax+0x8],rcx
  10a6f7:	48 8b 4e 10          	mov    rcx,QWORD PTR [rsi+0x10]
  10a6fb:	48 89 48 10          	mov    QWORD PTR [rax+0x10],rcx
  10a6ff:	48 8b 4e 18          	mov    rcx,QWORD PTR [rsi+0x18]
  10a703:	48 83 c6 20          	add    rsi,0x20
  10a707:	4c 8d 40 20          	lea    r8,[rax+0x20]
  10a70b:	48 89 48 18          	mov    QWORD PTR [rax+0x18],rcx
  10a70f:	4c 89 d9             	mov    rcx,r11
  10a712:	49 83 fb 20          	cmp    r11,0x20
  10a716:	0f 83 e4 00 00 00    	jae    10a800 <memmove+0x260>
  10a71c:	49 83 fb 08          	cmp    r11,0x8
  10a720:	0f 82 3b 01 00 00    	jb     10a861 <memmove+0x2c1>
  10a726:	48 83 c2 d8          	add    rdx,0xffffffffffffffd8
  10a72a:	48 83 fa 28          	cmp    rdx,0x28
  10a72e:	0f 82 24 03 00 00    	jb     10aa58 <memmove+0x4b8>
  10a734:	4c 89 c1             	mov    rcx,r8
  10a737:	48 29 f1             	sub    rcx,rsi
  10a73a:	48 83 f9 20          	cmp    rcx,0x20
  10a73e:	0f 82 14 03 00 00    	jb     10aa58 <memmove+0x4b8>
  10a744:	48 c1 ea 03          	shr    rdx,0x3
  10a748:	48 ff c2             	inc    rdx
  10a74b:	49 89 d1             	mov    r9,rdx
  10a74e:	49 83 e1 fc          	and    r9,0xfffffffffffffffc
  10a752:	49 8d 49 fc          	lea    rcx,[r9-0x4]
  10a756:	49 89 ca             	mov    r10,rcx
  10a759:	49 c1 ea 02          	shr    r10,0x2
  10a75d:	49 ff c2             	inc    r10
  10a760:	48 85 c9             	test   rcx,rcx
  10a763:	0f 84 b4 02 00 00    	je     10aa1d <memmove+0x47d>
  10a769:	4c 89 d7             	mov    rdi,r10
  10a76c:	48 83 e7 fe          	and    rdi,0xfffffffffffffffe
  10a770:	31 c9                	xor    ecx,ecx
  10a772:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10a779:	1f 84 00 00 00 00 00 
  10a780:	0f 10 04 ce          	movups xmm0,XMMWORD PTR [rsi+rcx*8]
  10a784:	0f 10 4c ce 10       	movups xmm1,XMMWORD PTR [rsi+rcx*8+0x10]
  10a789:	41 0f 11 04 c8       	movups XMMWORD PTR [r8+rcx*8],xmm0
  10a78e:	41 0f 11 4c c8 10    	movups XMMWORD PTR [r8+rcx*8+0x10],xmm1
  10a794:	0f 10 44 ce 20       	movups xmm0,XMMWORD PTR [rsi+rcx*8+0x20]
  10a799:	0f 10 4c ce 30       	movups xmm1,XMMWORD PTR [rsi+rcx*8+0x30]
  10a79e:	41 0f 11 44 c8 20    	movups XMMWORD PTR [r8+rcx*8+0x20],xmm0
  10a7a4:	41 0f 11 4c c8 30    	movups XMMWORD PTR [r8+rcx*8+0x30],xmm1
  10a7aa:	48 83 c1 08          	add    rcx,0x8
  10a7ae:	48 83 c7 fe          	add    rdi,0xfffffffffffffffe
  10a7b2:	75 cc                	jne    10a780 <memmove+0x1e0>
  10a7b4:	e9 66 02 00 00       	jmp    10aa1f <memmove+0x47f>
  10a7b9:	49 89 d1             	mov    r9,rdx
  10a7bc:	49 83 e1 e0          	and    r9,0xffffffffffffffe0
  10a7c0:	49 8d 49 e0          	lea    rcx,[r9-0x20]
  10a7c4:	48 89 cf             	mov    rdi,rcx
  10a7c7:	48 c1 ef 05          	shr    rdi,0x5
  10a7cb:	48 ff c7             	inc    rdi
  10a7ce:	41 89 fa             	mov    r10d,edi
  10a7d1:	41 83 e2 03          	and    r10d,0x3
  10a7d5:	48 83 f9 60          	cmp    rcx,0x60
  10a7d9:	0f 83 8a 00 00 00    	jae    10a869 <memmove+0x2c9>
  10a7df:	31 c9                	xor    ecx,ecx
  10a7e1:	e9 ea 00 00 00       	jmp    10a8d0 <memmove+0x330>
  10a7e6:	49 89 c0             	mov    r8,rax
  10a7e9:	48 89 d1             	mov    rcx,rdx
  10a7ec:	49 83 fb 20          	cmp    r11,0x20
  10a7f0:	0f 82 26 ff ff ff    	jb     10a71c <memmove+0x17c>
  10a7f6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10a7fd:	00 00 00 
  10a800:	48 8b 16             	mov    rdx,QWORD PTR [rsi]
  10a803:	49 89 10             	mov    QWORD PTR [r8],rdx
  10a806:	48 8b 56 08          	mov    rdx,QWORD PTR [rsi+0x8]
  10a80a:	49 89 50 08          	mov    QWORD PTR [r8+0x8],rdx
  10a80e:	48 8b 56 10          	mov    rdx,QWORD PTR [rsi+0x10]
  10a812:	49 89 50 10          	mov    QWORD PTR [r8+0x10],rdx
  10a816:	48 8b 56 18          	mov    rdx,QWORD PTR [rsi+0x18]
  10a81a:	49 89 50 18          	mov    QWORD PTR [r8+0x18],rdx
  10a81e:	48 8b 56 20          	mov    rdx,QWORD PTR [rsi+0x20]
  10a822:	49 89 50 20          	mov    QWORD PTR [r8+0x20],rdx
  10a826:	48 8b 56 28          	mov    rdx,QWORD PTR [rsi+0x28]
  10a82a:	49 89 50 28          	mov    QWORD PTR [r8+0x28],rdx
  10a82e:	48 8b 56 30          	mov    rdx,QWORD PTR [rsi+0x30]
  10a832:	49 89 50 30          	mov    QWORD PTR [r8+0x30],rdx
  10a836:	48 8b 56 38          	mov    rdx,QWORD PTR [rsi+0x38]
  10a83a:	48 83 c6 40          	add    rsi,0x40
  10a83e:	49 89 50 38          	mov    QWORD PTR [r8+0x38],rdx
  10a842:	49 83 c0 40          	add    r8,0x40
  10a846:	48 83 c1 c0          	add    rcx,0xffffffffffffffc0
  10a84a:	48 83 f9 1f          	cmp    rcx,0x1f
  10a84e:	77 b0                	ja     10a800 <memmove+0x260>
  10a850:	48 8d 51 20          	lea    rdx,[rcx+0x20]
  10a854:	49 89 cb             	mov    r11,rcx
  10a857:	49 83 fb 08          	cmp    r11,0x8
  10a85b:	0f 83 c5 fe ff ff    	jae    10a726 <memmove+0x186>
  10a861:	4c 89 da             	mov    rdx,r11
  10a864:	e9 26 fe ff ff       	jmp    10a68f <memmove+0xef>
  10a869:	48 83 e7 fc          	and    rdi,0xfffffffffffffffc
  10a86d:	31 c9                	xor    ecx,ecx
  10a86f:	90                   	nop
  10a870:	0f 10 04 0e          	movups xmm0,XMMWORD PTR [rsi+rcx*1]
  10a874:	0f 10 4c 0e 10       	movups xmm1,XMMWORD PTR [rsi+rcx*1+0x10]
  10a879:	41 0f 11 04 08       	movups XMMWORD PTR [r8+rcx*1],xmm0
  10a87e:	41 0f 11 4c 08 10    	movups XMMWORD PTR [r8+rcx*1+0x10],xmm1
  10a884:	0f 10 44 0e 20       	movups xmm0,XMMWORD PTR [rsi+rcx*1+0x20]
  10a889:	0f 10 4c 0e 30       	movups xmm1,XMMWORD PTR [rsi+rcx*1+0x30]
  10a88e:	41 0f 11 44 08 20    	movups XMMWORD PTR [r8+rcx*1+0x20],xmm0
  10a894:	41 0f 11 4c 08 30    	movups XMMWORD PTR [r8+rcx*1+0x30],xmm1
  10a89a:	0f 10 44 0e 40       	movups xmm0,XMMWORD PTR [rsi+rcx*1+0x40]
  10a89f:	0f 10 4c 0e 50       	movups xmm1,XMMWORD PTR [rsi+rcx*1+0x50]
  10a8a4:	41 0f 11 44 08 40    	movups XMMWORD PTR [r8+rcx*1+0x40],xmm0
  10a8aa:	41 0f 11 4c 08 50    	movups XMMWORD PTR [r8+rcx*1+0x50],xmm1
  10a8b0:	0f 10 44 0e 60       	movups xmm0,XMMWORD PTR [rsi+rcx*1+0x60]
  10a8b5:	0f 10 4c 0e 70       	movups xmm1,XMMWORD PTR [rsi+rcx*1+0x70]
  10a8ba:	41 0f 11 44 08 60    	movups XMMWORD PTR [r8+rcx*1+0x60],xmm0
  10a8c0:	41 0f 11 4c 08 70    	movups XMMWORD PTR [r8+rcx*1+0x70],xmm1
  10a8c6:	48 83 e9 80          	sub    rcx,0xffffffffffffff80
  10a8ca:	48 83 c7 fc          	add    rdi,0xfffffffffffffffc
  10a8ce:	75 a0                	jne    10a870 <memmove+0x2d0>
  10a8d0:	4d 85 d2             	test   r10,r10
  10a8d3:	74 36                	je     10a90b <memmove+0x36b>
  10a8d5:	49 8d 3c 08          	lea    rdi,[r8+rcx*1]
  10a8d9:	48 83 c7 10          	add    rdi,0x10
  10a8dd:	48 01 f1             	add    rcx,rsi
  10a8e0:	48 83 c1 10          	add    rcx,0x10
  10a8e4:	49 c1 e2 05          	shl    r10,0x5
  10a8e8:	31 db                	xor    ebx,ebx
  10a8ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  10a8f0:	0f 10 44 19 f0       	movups xmm0,XMMWORD PTR [rcx+rbx*1-0x10]
  10a8f5:	0f 10 0c 19          	movups xmm1,XMMWORD PTR [rcx+rbx*1]
  10a8f9:	0f 11 44 1f f0       	movups XMMWORD PTR [rdi+rbx*1-0x10],xmm0
  10a8fe:	0f 11 0c 1f          	movups XMMWORD PTR [rdi+rbx*1],xmm1
  10a902:	48 83 c3 20          	add    rbx,0x20
  10a906:	49 39 da             	cmp    r10,rbx
  10a909:	75 e5                	jne    10a8f0 <memmove+0x350>
  10a90b:	4c 39 ca             	cmp    rdx,r9
  10a90e:	0f 84 db 00 00 00    	je     10a9ef <memmove+0x44f>
  10a914:	f6 c2 18             	test   dl,0x18
  10a917:	74 43                	je     10a95c <memmove+0x3bc>
  10a919:	48 89 d3             	mov    rbx,rdx
  10a91c:	48 83 e3 f8          	and    rbx,0xfffffffffffffff8
  10a920:	48 8d 0c 1e          	lea    rcx,[rsi+rbx*1]
  10a924:	49 8d 3c 18          	lea    rdi,[r8+rbx*1]
  10a928:	41 89 d2             	mov    r10d,edx
  10a92b:	41 83 e2 07          	and    r10d,0x7
  10a92f:	90                   	nop
  10a930:	4a 8b 2c 0e          	mov    rbp,QWORD PTR [rsi+r9*1]
  10a934:	4b 89 2c 08          	mov    QWORD PTR [r8+r9*1],rbp
  10a938:	49 83 c1 08          	add    r9,0x8
  10a93c:	4c 39 cb             	cmp    rbx,r9
  10a93f:	75 ef                	jne    10a930 <memmove+0x390>
  10a941:	48 39 da             	cmp    rdx,rbx
  10a944:	75 28                	jne    10a96e <memmove+0x3ce>
  10a946:	e9 a4 00 00 00       	jmp    10a9ef <memmove+0x44f>
  10a94b:	48 83 fa 10          	cmp    rdx,0x10
  10a94f:	0f 83 9f 00 00 00    	jae    10a9f4 <memmove+0x454>
  10a955:	31 ff                	xor    edi,edi
  10a957:	e9 b7 01 00 00       	jmp    10ab13 <memmove+0x573>
  10a95c:	83 e2 1f             	and    edx,0x1f
  10a95f:	4d 01 c8             	add    r8,r9
  10a962:	4c 01 ce             	add    rsi,r9
  10a965:	48 89 f1             	mov    rcx,rsi
  10a968:	4c 89 c7             	mov    rdi,r8
  10a96b:	49 89 d2             	mov    r10,rdx
  10a96e:	49 8d 6a ff          	lea    rbp,[r10-0x1]
  10a972:	4c 89 d3             	mov    rbx,r10
  10a975:	48 83 e3 07          	and    rbx,0x7
  10a979:	74 1d                	je     10a998 <memmove+0x3f8>
  10a97b:	31 f6                	xor    esi,esi
  10a97d:	0f 1f 00             	nop    DWORD PTR [rax]
  10a980:	0f b6 14 31          	movzx  edx,BYTE PTR [rcx+rsi*1]
  10a984:	88 14 37             	mov    BYTE PTR [rdi+rsi*1],dl
  10a987:	48 ff c6             	inc    rsi
  10a98a:	48 39 f3             	cmp    rbx,rsi
  10a98d:	75 f1                	jne    10a980 <memmove+0x3e0>
  10a98f:	48 01 f1             	add    rcx,rsi
  10a992:	48 01 f7             	add    rdi,rsi
  10a995:	49 29 f2             	sub    r10,rsi
  10a998:	48 83 fd 07          	cmp    rbp,0x7
  10a99c:	72 51                	jb     10a9ef <memmove+0x44f>
  10a99e:	31 d2                	xor    edx,edx
  10a9a0:	0f b6 1c 11          	movzx  ebx,BYTE PTR [rcx+rdx*1]
  10a9a4:	88 1c 17             	mov    BYTE PTR [rdi+rdx*1],bl
  10a9a7:	0f b6 5c 11 01       	movzx  ebx,BYTE PTR [rcx+rdx*1+0x1]
  10a9ac:	88 5c 17 01          	mov    BYTE PTR [rdi+rdx*1+0x1],bl
  10a9b0:	0f b6 5c 11 02       	movzx  ebx,BYTE PTR [rcx+rdx*1+0x2]
  10a9b5:	88 5c 17 02          	mov    BYTE PTR [rdi+rdx*1+0x2],bl
  10a9b9:	0f b6 5c 11 03       	movzx  ebx,BYTE PTR [rcx+rdx*1+0x3]
  10a9be:	88 5c 17 03          	mov    BYTE PTR [rdi+rdx*1+0x3],bl
  10a9c2:	0f b6 5c 11 04       	movzx  ebx,BYTE PTR [rcx+rdx*1+0x4]
  10a9c7:	88 5c 17 04          	mov    BYTE PTR [rdi+rdx*1+0x4],bl
  10a9cb:	0f b6 5c 11 05       	movzx  ebx,BYTE PTR [rcx+rdx*1+0x5]
  10a9d0:	88 5c 17 05          	mov    BYTE PTR [rdi+rdx*1+0x5],bl
  10a9d4:	0f b6 5c 11 06       	movzx  ebx,BYTE PTR [rcx+rdx*1+0x6]
  10a9d9:	88 5c 17 06          	mov    BYTE PTR [rdi+rdx*1+0x6],bl
  10a9dd:	0f b6 5c 11 07       	movzx  ebx,BYTE PTR [rcx+rdx*1+0x7]
  10a9e2:	88 5c 17 07          	mov    BYTE PTR [rdi+rdx*1+0x7],bl
  10a9e6:	48 83 c2 08          	add    rdx,0x8
  10a9ea:	49 39 d2             	cmp    r10,rdx
  10a9ed:	75 b1                	jne    10a9a0 <memmove+0x400>
  10a9ef:	5b                   	pop    rbx
  10a9f0:	41 5e                	pop    r14
  10a9f2:	5d                   	pop    rbp
  10a9f3:	c3                   	ret
  10a9f4:	48 89 d7             	mov    rdi,rdx
  10a9f7:	48 83 e7 f0          	and    rdi,0xfffffffffffffff0
  10a9fb:	48 8d 4f f0          	lea    rcx,[rdi-0x10]
  10a9ff:	49 89 cb             	mov    r11,rcx
  10aa02:	49 c1 eb 04          	shr    r11,0x4
  10aa06:	49 ff c3             	inc    r11
  10aa09:	45 89 da             	mov    r10d,r11d
  10aa0c:	41 83 e2 03          	and    r10d,0x3
  10aa10:	48 83 f9 30          	cmp    rcx,0x30
  10aa14:	73 67                	jae    10aa7d <memmove+0x4dd>
  10aa16:	31 c9                	xor    ecx,ecx
  10aa18:	e9 aa 00 00 00       	jmp    10aac7 <memmove+0x527>
  10aa1d:	31 c9                	xor    ecx,ecx
  10aa1f:	4a 8d 3c cd 00 00 00 	lea    rdi,[r9*8+0x0]
  10aa26:	00 
  10aa27:	41 f6 c2 01          	test   r10b,0x1
  10aa2b:	74 14                	je     10aa41 <memmove+0x4a1>
  10aa2d:	0f 10 04 ce          	movups xmm0,XMMWORD PTR [rsi+rcx*8]
  10aa31:	0f 10 4c ce 10       	movups xmm1,XMMWORD PTR [rsi+rcx*8+0x10]
  10aa36:	41 0f 11 04 c8       	movups XMMWORD PTR [r8+rcx*8],xmm0
  10aa3b:	41 0f 11 4c c8 10    	movups XMMWORD PTR [r8+rcx*8+0x10],xmm1
  10aa41:	4a 8d 34 ce          	lea    rsi,[rsi+r9*8]
  10aa45:	4f 8d 04 c8          	lea    r8,[r8+r9*8]
  10aa49:	49 29 fb             	sub    r11,rdi
  10aa4c:	4c 39 ca             	cmp    rdx,r9
  10aa4f:	4c 89 da             	mov    rdx,r11
  10aa52:	0f 84 37 fc ff ff    	je     10a68f <memmove+0xef>
  10aa58:	4c 89 da             	mov    rdx,r11
  10aa5b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  10aa60:	48 8b 0e             	mov    rcx,QWORD PTR [rsi]
  10aa63:	48 83 c6 08          	add    rsi,0x8
  10aa67:	49 89 08             	mov    QWORD PTR [r8],rcx
  10aa6a:	49 83 c0 08          	add    r8,0x8
  10aa6e:	48 83 c2 f8          	add    rdx,0xfffffffffffffff8
  10aa72:	48 83 fa 07          	cmp    rdx,0x7
  10aa76:	77 e8                	ja     10aa60 <memmove+0x4c0>
  10aa78:	e9 12 fc ff ff       	jmp    10a68f <memmove+0xef>
  10aa7d:	49 83 e3 fc          	and    r11,0xfffffffffffffffc
  10aa81:	4d 8d 71 f0          	lea    r14,[r9-0x10]
  10aa85:	49 8d 58 f0          	lea    rbx,[r8-0x10]
  10aa89:	31 c9                	xor    ecx,ecx
  10aa8b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  10aa90:	41 0f 10 04 0e       	movups xmm0,XMMWORD PTR [r14+rcx*1]
  10aa95:	0f 11 04 0b          	movups XMMWORD PTR [rbx+rcx*1],xmm0
  10aa99:	41 0f 10 44 0e f0    	movups xmm0,XMMWORD PTR [r14+rcx*1-0x10]
  10aa9f:	0f 11 44 0b f0       	movups XMMWORD PTR [rbx+rcx*1-0x10],xmm0
  10aaa4:	41 0f 10 44 0e e0    	movups xmm0,XMMWORD PTR [r14+rcx*1-0x20]
  10aaaa:	0f 11 44 0b e0       	movups XMMWORD PTR [rbx+rcx*1-0x20],xmm0
  10aaaf:	41 0f 10 44 0e d0    	movups xmm0,XMMWORD PTR [r14+rcx*1-0x30]
  10aab5:	0f 11 44 0b d0       	movups XMMWORD PTR [rbx+rcx*1-0x30],xmm0
  10aaba:	48 83 c1 c0          	add    rcx,0xffffffffffffffc0
  10aabe:	49 83 c3 fc          	add    r11,0xfffffffffffffffc
  10aac2:	75 cc                	jne    10aa90 <memmove+0x4f0>
  10aac4:	48 f7 d9             	neg    rcx
  10aac7:	4d 85 d2             	test   r10,r10
  10aaca:	74 39                	je     10ab05 <memmove+0x565>
  10aacc:	48 89 d3             	mov    rbx,rdx
  10aacf:	48 29 cb             	sub    rbx,rcx
  10aad2:	4c 8d 1c 18          	lea    r11,[rax+rbx*1]
  10aad6:	49 83 c3 f0          	add    r11,0xfffffffffffffff0
  10aada:	48 01 de             	add    rsi,rbx
  10aadd:	48 83 c6 f0          	add    rsi,0xfffffffffffffff0
  10aae1:	49 c1 e2 04          	shl    r10,0x4
  10aae5:	31 db                	xor    ebx,ebx
  10aae7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  10aaee:	00 00 
  10aaf0:	0f 10 04 1e          	movups xmm0,XMMWORD PTR [rsi+rbx*1]
  10aaf4:	41 0f 11 04 1b       	movups XMMWORD PTR [r11+rbx*1],xmm0
  10aaf9:	48 83 c3 f0          	add    rbx,0xfffffffffffffff0
  10aafd:	4c 89 d1             	mov    rcx,r10
  10ab00:	48 01 d9             	add    rcx,rbx
  10ab03:	75 eb                	jne    10aaf0 <memmove+0x550>
  10ab05:	48 39 d7             	cmp    rdi,rdx
  10ab08:	0f 84 e1 fe ff ff    	je     10a9ef <memmove+0x44f>
  10ab0e:	f6 c2 0c             	test   dl,0xc
  10ab11:	74 4e                	je     10ab61 <memmove+0x5c1>
  10ab13:	49 89 d3             	mov    r11,rdx
  10ab16:	49 83 e3 fc          	and    r11,0xfffffffffffffffc
  10ab1a:	4c 89 db             	mov    rbx,r11
  10ab1d:	48 f7 db             	neg    rbx
  10ab20:	4c 89 ce             	mov    rsi,r9
  10ab23:	4c 29 de             	sub    rsi,r11
  10ab26:	4c 89 c1             	mov    rcx,r8
  10ab29:	4c 29 d9             	sub    rcx,r11
  10ab2c:	41 89 d2             	mov    r10d,edx
  10ab2f:	41 83 e2 03          	and    r10d,0x3
  10ab33:	48 f7 df             	neg    rdi
  10ab36:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10ab3d:	00 00 00 
  10ab40:	41 8b 6c 39 fc       	mov    ebp,DWORD PTR [r9+rdi*1-0x4]
  10ab45:	41 89 6c 38 fc       	mov    DWORD PTR [r8+rdi*1-0x4],ebp
  10ab4a:	48 83 c7 fc          	add    rdi,0xfffffffffffffffc
  10ab4e:	48 39 fb             	cmp    rbx,rdi
  10ab51:	75 ed                	jne    10ab40 <memmove+0x5a0>
  10ab53:	49 39 d3             	cmp    r11,rdx
  10ab56:	0f 85 91 fa ff ff    	jne    10a5ed <memmove+0x4d>
  10ab5c:	e9 8e fe ff ff       	jmp    10a9ef <memmove+0x44f>
  10ab61:	83 e2 0f             	and    edx,0xf
  10ab64:	49 29 f8             	sub    r8,rdi
  10ab67:	49 29 f9             	sub    r9,rdi
  10ab6a:	e9 75 fa ff ff       	jmp    10a5e4 <memmove+0x44>
  10ab6f:	cc                   	int3

000000000010ab70 <memcpy>:
  10ab70:	48 89 f8             	mov    rax,rdi
  10ab73:	48 83 fa 10          	cmp    rdx,0x10
  10ab77:	0f 82 fa 00 00 00    	jb     10ac77 <byte_copy>
  10ab7d:	49 89 f8             	mov    r8,rdi
  10ab80:	49 83 e0 07          	and    r8,0x7
  10ab84:	74 0f                	je     10ab95 <quadword_aligned>
  10ab86:	48 c7 c1 08 00 00 00 	mov    rcx,0x8
  10ab8d:	4c 29 c1             	sub    rcx,r8
  10ab90:	48 29 ca             	sub    rdx,rcx
  10ab93:	f3 a4                	rep movs BYTE PTR es:[rdi],BYTE PTR ds:[rsi]

000000000010ab95 <quadword_aligned>:
  10ab95:	48 81 fa 00 01 00 00 	cmp    rdx,0x100
  10ab9c:	0f 82 db 00 00 00    	jb     10ac7d <quadword_copy>
  10aba2:	50                   	push   rax
  10aba3:	41 54                	push   r12
  10aba5:	41 55                	push   r13
  10aba7:	41 56                	push   r14
  10aba9:	48 89 d1             	mov    rcx,rdx
  10abac:	48 c1 e9 07          	shr    rcx,0x7

000000000010abb0 <loop>:
  10abb0:	0f 18 86 00 03 00 00 	prefetchnta BYTE PTR [rsi+0x300]
  10abb7:	0f 18 86 40 03 00 00 	prefetchnta BYTE PTR [rsi+0x340]
  10abbe:	48 8b 06             	mov    rax,QWORD PTR [rsi]
  10abc1:	4c 8b 46 08          	mov    r8,QWORD PTR [rsi+0x8]
  10abc5:	4c 8b 4e 10          	mov    r9,QWORD PTR [rsi+0x10]
  10abc9:	4c 8b 56 18          	mov    r10,QWORD PTR [rsi+0x18]
  10abcd:	4c 8b 5e 20          	mov    r11,QWORD PTR [rsi+0x20]
  10abd1:	4c 8b 66 28          	mov    r12,QWORD PTR [rsi+0x28]
  10abd5:	4c 8b 6e 30          	mov    r13,QWORD PTR [rsi+0x30]
  10abd9:	4c 8b 76 38          	mov    r14,QWORD PTR [rsi+0x38]
  10abdd:	48 0f c3 07          	movnti QWORD PTR [rdi],rax
  10abe1:	4c 0f c3 47 08       	movnti QWORD PTR [rdi+0x8],r8
  10abe6:	4c 0f c3 4f 10       	movnti QWORD PTR [rdi+0x10],r9
  10abeb:	4c 0f c3 57 18       	movnti QWORD PTR [rdi+0x18],r10
  10abf0:	4c 0f c3 5f 20       	movnti QWORD PTR [rdi+0x20],r11
  10abf5:	4c 0f c3 67 28       	movnti QWORD PTR [rdi+0x28],r12
  10abfa:	4c 0f c3 6f 30       	movnti QWORD PTR [rdi+0x30],r13
  10abff:	4c 0f c3 77 38       	movnti QWORD PTR [rdi+0x38],r14
  10ac04:	48 8b 46 40          	mov    rax,QWORD PTR [rsi+0x40]
  10ac08:	4c 8b 46 48          	mov    r8,QWORD PTR [rsi+0x48]
  10ac0c:	4c 8b 4e 50          	mov    r9,QWORD PTR [rsi+0x50]
  10ac10:	4c 8b 56 58          	mov    r10,QWORD PTR [rsi+0x58]
  10ac14:	4c 8b 5e 60          	mov    r11,QWORD PTR [rsi+0x60]
  10ac18:	4c 8b 66 68          	mov    r12,QWORD PTR [rsi+0x68]
  10ac1c:	4c 8b 6e 70          	mov    r13,QWORD PTR [rsi+0x70]
  10ac20:	4c 8b 76 78          	mov    r14,QWORD PTR [rsi+0x78]
  10ac24:	48 0f c3 47 40       	movnti QWORD PTR [rdi+0x40],rax
  10ac29:	4c 0f c3 47 48       	movnti QWORD PTR [rdi+0x48],r8
  10ac2e:	4c 0f c3 4f 50       	movnti QWORD PTR [rdi+0x50],r9
  10ac33:	4c 0f c3 57 58       	movnti QWORD PTR [rdi+0x58],r10
  10ac38:	4c 0f c3 5f 60       	movnti QWORD PTR [rdi+0x60],r11
  10ac3d:	4c 0f c3 67 68       	movnti QWORD PTR [rdi+0x68],r12
  10ac42:	4c 0f c3 6f 70       	movnti QWORD PTR [rdi+0x70],r13
  10ac47:	4c 0f c3 77 78       	movnti QWORD PTR [rdi+0x78],r14
  10ac4c:	48 8d b6 80 00 00 00 	lea    rsi,[rsi+0x80]
  10ac53:	48 8d bf 80 00 00 00 	lea    rdi,[rdi+0x80]
  10ac5a:	48 ff c9             	dec    rcx
  10ac5d:	0f 85 4d ff ff ff    	jne    10abb0 <loop>
  10ac63:	0f ae f8             	sfence
  10ac66:	48 89 d1             	mov    rcx,rdx
  10ac69:	48 83 e1 7f          	and    rcx,0x7f
  10ac6d:	f3 a4                	rep movs BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
  10ac6f:	41 5e                	pop    r14
  10ac71:	41 5d                	pop    r13
  10ac73:	41 5c                	pop    r12
  10ac75:	58                   	pop    rax
  10ac76:	c3                   	ret

000000000010ac77 <byte_copy>:
  10ac77:	48 89 d1             	mov    rcx,rdx
  10ac7a:	f3 a4                	rep movs BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
  10ac7c:	c3                   	ret

000000000010ac7d <quadword_copy>:
  10ac7d:	48 89 d1             	mov    rcx,rdx
  10ac80:	48 c1 e9 03          	shr    rcx,0x3
  10ac84:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10ac8b:	00 00 00 
  10ac8e:	66 90                	xchg   ax,ax
  10ac90:	f3 48 a5             	rep movs QWORD PTR es:[rdi],QWORD PTR ds:[rsi]
  10ac93:	48 89 d1             	mov    rcx,rdx
  10ac96:	48 83 e1 07          	and    rcx,0x7
  10ac9a:	f3 a4                	rep movs BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
  10ac9c:	c3                   	ret
  10ac9d:	cc                   	int3
  10ac9e:	cc                   	int3
  10ac9f:	cc                   	int3

000000000010aca0 <memchr>:
  10aca0:	40 f6 c7 07          	test   dil,0x7
  10aca4:	0f 84 00 01 00 00    	je     10adaa <memchr+0x10a>
  10acaa:	48 89 d1             	mov    rcx,rdx
  10acad:	48 83 e9 01          	sub    rcx,0x1
  10acb1:	0f 82 66 01 00 00    	jb     10ae1d <memchr+0x17d>
  10acb7:	40 38 37             	cmp    BYTE PTR [rdi],sil
  10acba:	75 04                	jne    10acc0 <memchr+0x20>
  10acbc:	48 89 f8             	mov    rax,rdi
  10acbf:	c3                   	ret
  10acc0:	48 8d 47 01          	lea    rax,[rdi+0x1]
  10acc4:	a8 07                	test   al,0x7
  10acc6:	0f 84 d8 00 00 00    	je     10ada4 <memchr+0x104>
  10accc:	48 85 c9             	test   rcx,rcx
  10accf:	0f 84 48 01 00 00    	je     10ae1d <memchr+0x17d>
  10acd5:	40 38 30             	cmp    BYTE PTR [rax],sil
  10acd8:	0f 84 41 01 00 00    	je     10ae1f <memchr+0x17f>
  10acde:	48 8d 4a fe          	lea    rcx,[rdx-0x2]
  10ace2:	48 8d 47 02          	lea    rax,[rdi+0x2]
  10ace6:	a8 07                	test   al,0x7
  10ace8:	0f 84 b6 00 00 00    	je     10ada4 <memchr+0x104>
  10acee:	48 85 c9             	test   rcx,rcx
  10acf1:	0f 84 26 01 00 00    	je     10ae1d <memchr+0x17d>
  10acf7:	40 38 30             	cmp    BYTE PTR [rax],sil
  10acfa:	0f 84 1f 01 00 00    	je     10ae1f <memchr+0x17f>
  10ad00:	48 8d 4a fd          	lea    rcx,[rdx-0x3]
  10ad04:	48 8d 47 03          	lea    rax,[rdi+0x3]
  10ad08:	a8 07                	test   al,0x7
  10ad0a:	0f 84 94 00 00 00    	je     10ada4 <memchr+0x104>
  10ad10:	48 85 c9             	test   rcx,rcx
  10ad13:	0f 84 04 01 00 00    	je     10ae1d <memchr+0x17d>
  10ad19:	40 38 30             	cmp    BYTE PTR [rax],sil
  10ad1c:	0f 84 fd 00 00 00    	je     10ae1f <memchr+0x17f>
  10ad22:	48 8d 4a fc          	lea    rcx,[rdx-0x4]
  10ad26:	48 8d 47 04          	lea    rax,[rdi+0x4]
  10ad2a:	a8 07                	test   al,0x7
  10ad2c:	74 76                	je     10ada4 <memchr+0x104>
  10ad2e:	48 85 c9             	test   rcx,rcx
  10ad31:	0f 84 e6 00 00 00    	je     10ae1d <memchr+0x17d>
  10ad37:	40 38 30             	cmp    BYTE PTR [rax],sil
  10ad3a:	0f 84 df 00 00 00    	je     10ae1f <memchr+0x17f>
  10ad40:	48 8d 4a fb          	lea    rcx,[rdx-0x5]
  10ad44:	48 8d 47 05          	lea    rax,[rdi+0x5]
  10ad48:	a8 07                	test   al,0x7
  10ad4a:	74 58                	je     10ada4 <memchr+0x104>
  10ad4c:	48 85 c9             	test   rcx,rcx
  10ad4f:	0f 84 c8 00 00 00    	je     10ae1d <memchr+0x17d>
  10ad55:	40 38 30             	cmp    BYTE PTR [rax],sil
  10ad58:	0f 84 c1 00 00 00    	je     10ae1f <memchr+0x17f>
  10ad5e:	48 8d 4a fa          	lea    rcx,[rdx-0x6]
  10ad62:	48 8d 47 06          	lea    rax,[rdi+0x6]
  10ad66:	a8 07                	test   al,0x7
  10ad68:	74 3a                	je     10ada4 <memchr+0x104>
  10ad6a:	48 85 c9             	test   rcx,rcx
  10ad6d:	0f 84 aa 00 00 00    	je     10ae1d <memchr+0x17d>
  10ad73:	40 38 30             	cmp    BYTE PTR [rax],sil
  10ad76:	0f 84 a3 00 00 00    	je     10ae1f <memchr+0x17f>
  10ad7c:	48 8d 4a f9          	lea    rcx,[rdx-0x7]
  10ad80:	48 8d 47 07          	lea    rax,[rdi+0x7]
  10ad84:	a8 07                	test   al,0x7
  10ad86:	74 1c                	je     10ada4 <memchr+0x104>
  10ad88:	48 85 c9             	test   rcx,rcx
  10ad8b:	0f 84 8c 00 00 00    	je     10ae1d <memchr+0x17d>
  10ad91:	40 38 30             	cmp    BYTE PTR [rax],sil
  10ad94:	0f 84 85 00 00 00    	je     10ae1f <memchr+0x17f>
  10ad9a:	48 83 c2 f8          	add    rdx,0xfffffffffffffff8
  10ad9e:	48 83 c7 08          	add    rdi,0x8
  10ada2:	eb 06                	jmp    10adaa <memchr+0x10a>
  10ada4:	48 89 ca             	mov    rdx,rcx
  10ada7:	48 89 c7             	mov    rdi,rax
  10adaa:	48 83 fa 08          	cmp    rdx,0x8
  10adae:	72 55                	jb     10ae05 <memchr+0x165>
  10adb0:	49 b8 80 80 80 80 80 	movabs r8,0x8080808080808080
  10adb7:	80 80 80 
  10adba:	40 0f b6 c6          	movzx  eax,sil
  10adbe:	69 c0 01 01 01 01    	imul   eax,eax,0x1010101
  10adc4:	49 89 c2             	mov    r10,rax
  10adc7:	49 c1 e2 20          	shl    r10,0x20
  10adcb:	49 09 c2             	or     r10,rax
  10adce:	49 b9 ff fe fe fe fe 	movabs r9,0xfefefefefefefeff
  10add5:	fe fe fe 
  10add8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  10addf:	00 
  10ade0:	48 8b 07             	mov    rax,QWORD PTR [rdi]
  10ade3:	4c 31 d0             	xor    rax,r10
  10ade6:	48 89 c1             	mov    rcx,rax
  10ade9:	48 f7 d1             	not    rcx
  10adec:	4c 21 c1             	and    rcx,r8
  10adef:	4c 01 c8             	add    rax,r9
  10adf2:	48 85 c1             	test   rcx,rax
  10adf5:	75 13                	jne    10ae0a <memchr+0x16a>
  10adf7:	48 83 c2 f8          	add    rdx,0xfffffffffffffff8
  10adfb:	48 83 c7 08          	add    rdi,0x8
  10adff:	48 83 fa 07          	cmp    rdx,0x7
  10ae03:	77 db                	ja     10ade0 <memchr+0x140>
  10ae05:	48 85 d2             	test   rdx,rdx
  10ae08:	74 13                	je     10ae1d <memchr+0x17d>
  10ae0a:	48 89 f8             	mov    rax,rdi
  10ae0d:	0f 1f 00             	nop    DWORD PTR [rax]
  10ae10:	40 38 30             	cmp    BYTE PTR [rax],sil
  10ae13:	74 0a                	je     10ae1f <memchr+0x17f>
  10ae15:	48 ff c0             	inc    rax
  10ae18:	48 ff ca             	dec    rdx
  10ae1b:	75 f3                	jne    10ae10 <memchr+0x170>
  10ae1d:	31 c0                	xor    eax,eax
  10ae1f:	c3                   	ret

000000000010ae20 <__fpclassifyd>:
  10ae20:	66 48 0f 7e c1       	movq   rcx,xmm0
  10ae25:	48 89 ce             	mov    rsi,rcx
  10ae28:	48 c1 ee 20          	shr    rsi,0x20
  10ae2c:	89 f2                	mov    edx,esi
  10ae2e:	81 e2 ff ff ff 7f    	and    edx,0x7fffffff
  10ae34:	85 c9                	test   ecx,ecx
  10ae36:	75 0a                	jne    10ae42 <__fpclassifyd+0x22>
  10ae38:	b8 02 00 00 00       	mov    eax,0x2
  10ae3d:	85 d2                	test   edx,edx
  10ae3f:	75 01                	jne    10ae42 <__fpclassifyd+0x22>
  10ae41:	c3                   	ret
  10ae42:	8d ba 00 00 f0 ff    	lea    edi,[rdx-0x100000]
  10ae48:	b8 04 00 00 00       	mov    eax,0x4
  10ae4d:	81 ff 00 00 e0 7f    	cmp    edi,0x7fe00000
  10ae53:	72 ec                	jb     10ae41 <__fpclassifyd+0x21>
  10ae55:	b8 03 00 00 00       	mov    eax,0x3
  10ae5a:	81 fe 00 00 10 00    	cmp    esi,0x100000
  10ae60:	72 df                	jb     10ae41 <__fpclassifyd+0x21>
  10ae62:	48 85 c9             	test   rcx,rcx
  10ae65:	79 08                	jns    10ae6f <__fpclassifyd+0x4f>
  10ae67:	81 fe 00 00 10 80    	cmp    esi,0x80100000
  10ae6d:	72 d2                	jb     10ae41 <__fpclassifyd+0x21>
  10ae6f:	81 f2 00 00 f0 7f    	xor    edx,0x7ff00000
  10ae75:	31 c0                	xor    eax,eax
  10ae77:	09 ca                	or     edx,ecx
  10ae79:	0f 94 c0             	sete   al
  10ae7c:	c3                   	ret
  10ae7d:	cc                   	int3
  10ae7e:	cc                   	int3
  10ae7f:	cc                   	int3

000000000010ae80 <_dtoa_r>:
  10ae80:	55                   	push   rbp
  10ae81:	41 57                	push   r15
  10ae83:	41 56                	push   r14
  10ae85:	41 55                	push   r13
  10ae87:	41 54                	push   r12
  10ae89:	53                   	push   rbx
  10ae8a:	48 81 ec a8 00 00 00 	sub    rsp,0xa8
  10ae91:	4d 89 ce             	mov    r14,r9
  10ae94:	4c 89 c5             	mov    rbp,r8
  10ae97:	49 89 cd             	mov    r13,rcx
  10ae9a:	48 89 54 24 58       	mov    QWORD PTR [rsp+0x58],rdx
  10ae9f:	41 89 f7             	mov    r15d,esi
  10aea2:	48 89 fb             	mov    rbx,rdi
  10aea5:	48 8b 77 60          	mov    rsi,QWORD PTR [rdi+0x60]
  10aea9:	48 85 f6             	test   rsi,rsi
  10aeac:	74 2c                	je     10aeda <_dtoa_r+0x5a>
  10aeae:	8b 4b 68             	mov    ecx,DWORD PTR [rbx+0x68]
  10aeb1:	89 4e 08             	mov    DWORD PTR [rsi+0x8],ecx
  10aeb4:	b8 01 00 00 00       	mov    eax,0x1
  10aeb9:	d3 e0                	shl    eax,cl
  10aebb:	89 46 0c             	mov    DWORD PTR [rsi+0xc],eax
  10aebe:	48 89 df             	mov    rdi,rbx
  10aec1:	f2 0f 11 44 24 28    	movsd  QWORD PTR [rsp+0x28],xmm0
  10aec7:	e8 c4 13 00 00       	call   10c290 <_Bfree>
  10aecc:	f3 0f 7e 44 24 28    	movq   xmm0,QWORD PTR [rsp+0x28]
  10aed2:	48 c7 43 60 00 00 00 	mov    QWORD PTR [rbx+0x60],0x0
  10aed9:	00 
  10aeda:	66 48 0f 7e c1       	movq   rcx,xmm0
  10aedf:	48 85 c9             	test   rcx,rcx
  10aee2:	78 09                	js     10aeed <_dtoa_r+0x6d>
  10aee4:	c7 45 00 00 00 00 00 	mov    DWORD PTR [rbp+0x0],0x0
  10aeeb:	eb 19                	jmp    10af06 <_dtoa_r+0x86>
  10aeed:	c7 45 00 01 00 00 00 	mov    DWORD PTR [rbp+0x0],0x1
  10aef4:	48 b8 ff ff ff ff ff 	movabs rax,0x7fffffffffffffff
  10aefb:	ff ff 7f 
  10aefe:	48 21 c1             	and    rcx,rax
  10af01:	66 48 0f 6e c1       	movq   xmm0,rcx
  10af06:	49 89 cc             	mov    r12,rcx
  10af09:	49 c1 ec 20          	shr    r12,0x20
  10af0d:	44 89 e5             	mov    ebp,r12d
  10af10:	81 e5 00 00 f0 7f    	and    ebp,0x7ff00000
  10af16:	81 fd 00 00 f0 7f    	cmp    ebp,0x7ff00000
  10af1c:	75 6a                	jne    10af88 <_dtoa_r+0x108>
  10af1e:	41 c7 45 00 0f 27 00 	mov    DWORD PTR [r13+0x0],0x270f
  10af25:	00 
  10af26:	41 81 e4 ff ff 0f 00 	and    r12d,0xfffff
  10af2d:	41 09 cc             	or     r12d,ecx
  10af30:	0f 94 c2             	sete   dl
  10af33:	48 8d 0d 27 54 ff ff 	lea    rcx,[rip+0xffffffffffff5427]        # 100361 <_svfprintf_r.blanks-0x77f>
  10af3a:	48 8d 05 40 53 ff ff 	lea    rax,[rip+0xffffffffffff5340]        # 100281 <_svfprintf_r.blanks-0x85f>
  10af41:	48 89 c5             	mov    rbp,rax
  10af44:	48 0f 44 e9          	cmove  rbp,rcx
  10af48:	4d 85 f6             	test   r14,r14
  10af4b:	0f 84 ea 10 00 00    	je     10c03b <_dtoa_r+0x11bb>
  10af51:	84 d2                	test   dl,dl
  10af53:	48 0f 45 c1          	cmovne rax,rcx
  10af57:	48 8d 0d 06 54 ff ff 	lea    rcx,[rip+0xffffffffffff5406]        # 100364 <_svfprintf_r.blanks-0x77c>
  10af5e:	48 8d 15 1f 53 ff ff 	lea    rdx,[rip+0xffffffffffff531f]        # 100284 <_svfprintf_r.blanks-0x85c>
  10af65:	48 0f 45 d1          	cmovne rdx,rcx
  10af69:	48 8d 0d f9 53 ff ff 	lea    rcx,[rip+0xffffffffffff53f9]        # 100369 <_svfprintf_r.blanks-0x777>
  10af70:	48 8d 1d 12 53 ff ff 	lea    rbx,[rip+0xffffffffffff5312]        # 100289 <_svfprintf_r.blanks-0x857>
  10af77:	48 0f 45 d9          	cmovne rbx,rcx
  10af7b:	80 78 03 00          	cmp    BYTE PTR [rax+0x3],0x0
  10af7f:	48 0f 44 da          	cmove  rbx,rdx
  10af83:	e9 b0 10 00 00       	jmp    10c038 <_dtoa_r+0x11b8>
  10af88:	66 0f 57 c9          	xorpd  xmm1,xmm1
  10af8c:	66 0f 2e c1          	ucomisd xmm0,xmm1
  10af90:	75 02                	jne    10af94 <_dtoa_r+0x114>
  10af92:	7b 52                	jnp    10afe6 <_dtoa_r+0x166>
  10af94:	48 89 4c 24 78       	mov    QWORD PTR [rsp+0x78],rcx
  10af99:	48 8d b4 24 84 00 00 	lea    rsi,[rsp+0x84]
  10afa0:	00 
  10afa1:	48 8d 54 24 74       	lea    rdx,[rsp+0x74]
  10afa6:	48 89 df             	mov    rdi,rbx
  10afa9:	f2 0f 11 44 24 28    	movsd  QWORD PTR [rsp+0x28],xmm0
  10afaf:	e8 3c 23 00 00       	call   10d2f0 <__d2b>
  10afb4:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  10afb9:	41 81 fc 00 00 10 00 	cmp    r12d,0x100000
  10afc0:	89 6c 24 64          	mov    DWORD PTR [rsp+0x64],ebp
  10afc4:	73 44                	jae    10b00a <_dtoa_r+0x18a>
  10afc6:	8b 84 24 84 00 00 00 	mov    eax,DWORD PTR [rsp+0x84]
  10afcd:	03 44 24 74          	add    eax,DWORD PTR [rsp+0x74]
  10afd1:	3d ef fb ff ff       	cmp    eax,0xfffffbef
  10afd6:	7c 61                	jl     10b039 <_dtoa_r+0x1b9>
  10afd8:	8d 48 12             	lea    ecx,[rax+0x12]
  10afdb:	48 8b 54 24 78       	mov    rdx,QWORD PTR [rsp+0x78]
  10afe0:	44 0f ad e2          	shrd   edx,r12d,cl
  10afe4:	eb 5e                	jmp    10b044 <_dtoa_r+0x1c4>
  10afe6:	41 c7 45 00 01 00 00 	mov    DWORD PTR [r13+0x0],0x1
  10afed:	00 
  10afee:	48 8d 2d 99 51 ff ff 	lea    rbp,[rip+0xffffffffffff5199]        # 10018e <_svfprintf_r.blanks-0x952>
  10aff5:	4d 85 f6             	test   r14,r14
  10aff8:	0f 84 3d 10 00 00    	je     10c03b <_dtoa_r+0x11bb>
  10affe:	48 8d 1d 8a 51 ff ff 	lea    rbx,[rip+0xffffffffffff518a]        # 10018f <_svfprintf_r.blanks-0x951>
  10b005:	e9 2e 10 00 00       	jmp    10c038 <_dtoa_r+0x11b8>
  10b00a:	44 89 e0             	mov    eax,r12d
  10b00d:	c1 e8 14             	shr    eax,0x14
  10b010:	48 ba ff ff ff ff ff 	movabs rdx,0xfffffffffffff
  10b017:	ff 0f 00 
  10b01a:	48 23 54 24 78       	and    rdx,QWORD PTR [rsp+0x78]
  10b01f:	48 b9 00 00 00 00 00 	movabs rcx,0x3ff0000000000000
  10b026:	00 f0 3f 
  10b029:	48 09 d1             	or     rcx,rdx
  10b02c:	05 01 fc ff ff       	add    eax,0xfffffc01
  10b031:	f2 0f 10 5c 24 28    	movsd  xmm3,QWORD PTR [rsp+0x28]
  10b037:	eb 2f                	jmp    10b068 <_dtoa_r+0x1e8>
  10b039:	b1 ee                	mov    cl,0xee
  10b03b:	28 c1                	sub    cl,al
  10b03d:	48 8b 54 24 78       	mov    rdx,QWORD PTR [rsp+0x78]
  10b042:	d3 e2                	shl    edx,cl
  10b044:	f2 0f 10 5c 24 28    	movsd  xmm3,QWORD PTR [rsp+0x28]
  10b04a:	89 d1                	mov    ecx,edx
  10b04c:	0f 57 c0             	xorps  xmm0,xmm0
  10b04f:	f2 48 0f 2a c1       	cvtsi2sd xmm0,rcx
  10b054:	66 48 0f 7e c2       	movq   rdx,xmm0
  10b059:	48 b9 00 00 00 00 00 	movabs rcx,0xfe10000000000000
  10b060:	00 10 fe 
  10b063:	48 01 d1             	add    rcx,rdx
  10b066:	ff c8                	dec    eax
  10b068:	4c 89 ac 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],r13
  10b06f:	00 
  10b070:	4c 89 74 24 48       	mov    QWORD PTR [rsp+0x48],r14
  10b075:	66 48 0f 6e c1       	movq   xmm0,rcx
  10b07a:	f2 0f 58 05 2e 58 ff 	addsd  xmm0,QWORD PTR [rip+0xffffffffffff582e]        # 1008b0 <_svfprintf_r.blanks-0x230>
  10b081:	ff 
  10b082:	f2 0f 59 05 36 58 ff 	mulsd  xmm0,QWORD PTR [rip+0xffffffffffff5836]        # 1008c0 <_svfprintf_r.blanks-0x220>
  10b089:	ff 
  10b08a:	f2 0f 58 05 f6 57 ff 	addsd  xmm0,QWORD PTR [rip+0xffffffffffff57f6]        # 100888 <_svfprintf_r.blanks-0x258>
  10b091:	ff 
  10b092:	0f 57 c9             	xorps  xmm1,xmm1
  10b095:	f2 0f 2a c8          	cvtsi2sd xmm1,eax
  10b099:	f2 0f 59 0d ef 57 ff 	mulsd  xmm1,QWORD PTR [rip+0xffffffffffff57ef]        # 100890 <_svfprintf_r.blanks-0x250>
  10b0a0:	ff 
  10b0a1:	f2 0f 58 c8          	addsd  xmm1,xmm0
  10b0a5:	f2 0f 2c c9          	cvttsd2si ecx,xmm1
  10b0a9:	66 0f e6 c1          	cvttpd2dq xmm0,xmm1
  10b0ad:	f3 0f e6 c0          	cvtdq2pd xmm0,xmm0
  10b0b1:	66 0f c2 c1 04       	cmpneqpd xmm0,xmm1
  10b0b6:	66 0f 57 d2          	xorpd  xmm2,xmm2
  10b0ba:	66 0f c2 ca 01       	cmpltpd xmm1,xmm2
  10b0bf:	66 0f 54 c8          	andpd  xmm1,xmm0
  10b0c3:	66 0f 7e cd          	movd   ebp,xmm1
  10b0c7:	01 cd                	add    ebp,ecx
  10b0c9:	89 ea                	mov    edx,ebp
  10b0cb:	83 fd 16             	cmp    ebp,0x16
  10b0ce:	77 19                	ja     10b0e9 <_dtoa_r+0x269>
  10b0d0:	89 e9                	mov    ecx,ebp
  10b0d2:	48 8d 15 f7 5e ff ff 	lea    rdx,[rip+0xffffffffffff5ef7]        # 100fd0 <__mprec_tens>
  10b0d9:	f2 0f 10 04 ca       	movsd  xmm0,QWORD PTR [rdx+rcx*8]
  10b0de:	66 0f 2e c3          	ucomisd xmm0,xmm3
  10b0e2:	89 ea                	mov    edx,ebp
  10b0e4:	76 03                	jbe    10b0e9 <_dtoa_r+0x269>
  10b0e6:	8d 55 ff             	lea    edx,[rbp-0x1]
  10b0e9:	83 fd 17             	cmp    ebp,0x17
  10b0ec:	41 0f 93 c1          	setae  r9b
  10b0f0:	41 89 c6             	mov    r14d,eax
  10b0f3:	41 f7 d6             	not    r14d
  10b0f6:	44 03 74 24 74       	add    r14d,DWORD PTR [rsp+0x74]
  10b0fb:	45 89 f0             	mov    r8d,r14d
  10b0fe:	41 f7 d8             	neg    r8d
  10b101:	31 c9                	xor    ecx,ecx
  10b103:	45 85 f6             	test   r14d,r14d
  10b106:	44 0f 48 f1          	cmovs  r14d,ecx
  10b10a:	44 0f 49 c1          	cmovns r8d,ecx
  10b10e:	85 d2                	test   edx,edx
  10b110:	78 0f                	js     10b121 <_dtoa_r+0x2a1>
  10b112:	41 01 d6             	add    r14d,edx
  10b115:	c7 44 24 40 00 00 00 	mov    DWORD PTR [rsp+0x40],0x0
  10b11c:	00 
  10b11d:	89 d1                	mov    ecx,edx
  10b11f:	eb 0b                	jmp    10b12c <_dtoa_r+0x2ac>
  10b121:	41 29 d0             	sub    r8d,edx
  10b124:	89 d6                	mov    esi,edx
  10b126:	f7 de                	neg    esi
  10b128:	89 74 24 40          	mov    DWORD PTR [rsp+0x40],esi
  10b12c:	31 f6                	xor    esi,esi
  10b12e:	41 83 ff 0a          	cmp    r15d,0xa
  10b132:	44 0f 43 fe          	cmovae r15d,esi
  10b136:	41 8d 7f fc          	lea    edi,[r15-0x4]
  10b13a:	41 83 ff 06          	cmp    r15d,0x6
  10b13e:	41 0f 42 ff          	cmovb  edi,r15d
  10b142:	c7 44 24 50 01 00 00 	mov    DWORD PTR [rsp+0x50],0x1
  10b149:	00 
  10b14a:	83 ff 05             	cmp    edi,0x5
  10b14d:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  10b152:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
  10b157:	48 89 7c 24 68       	mov    QWORD PTR [rsp+0x68],rdi
  10b15c:	48 89 ac 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rbp
  10b163:	00 
  10b164:	89 8c 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],ecx
  10b16b:	44 88 4c 24 20       	mov    BYTE PTR [rsp+0x20],r9b
  10b170:	77 3e                	ja     10b1b0 <_dtoa_r+0x330>
  10b172:	48 8d 05 27 5e ff ff 	lea    rax,[rip+0xffffffffffff5e27]        # 100fa0 <_svfiprintf_r.zeroes+0x10>
  10b179:	48 63 0c b8          	movsxd rcx,DWORD PTR [rax+rdi*4]
  10b17d:	48 01 c1             	add    rcx,rax
  10b180:	ff e1                	jmp    rcx
  10b182:	4c 89 c5             	mov    rbp,r8
  10b185:	c7 43 68 00 00 00 00 	mov    DWORD PTR [rbx+0x68],0x0
  10b18c:	c7 44 24 3c ff ff ff 	mov    DWORD PTR [rsp+0x3c],0xffffffff
  10b193:	ff 
  10b194:	c7 44 24 50 01 00 00 	mov    DWORD PTR [rsp+0x50],0x1
  10b19b:	00 
  10b19c:	31 c0                	xor    eax,eax
  10b19e:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
  10b1a3:	41 bd ff ff ff ff    	mov    r13d,0xffffffff
  10b1a9:	31 f6                	xor    esi,esi
  10b1ab:	e9 a8 00 00 00       	jmp    10b258 <_dtoa_r+0x3d8>
  10b1b0:	41 bd ff ff ff ff    	mov    r13d,0xffffffff
  10b1b6:	c7 44 24 3c ff ff ff 	mov    DWORD PTR [rsp+0x3c],0xffffffff
  10b1bd:	ff 
  10b1be:	eb 50                	jmp    10b210 <_dtoa_r+0x390>
  10b1c0:	c7 44 24 50 00 00 00 	mov    DWORD PTR [rsp+0x50],0x0
  10b1c7:	00 
  10b1c8:	48 8b 4c 24 58       	mov    rcx,QWORD PTR [rsp+0x58]
  10b1cd:	83 f9 02             	cmp    ecx,0x2
  10b1d0:	b8 01 00 00 00       	mov    eax,0x1
  10b1d5:	0f 4d c1             	cmovge eax,ecx
  10b1d8:	41 89 c5             	mov    r13d,eax
  10b1db:	89 c1                	mov    ecx,eax
  10b1dd:	89 44 24 3c          	mov    DWORD PTR [rsp+0x3c],eax
  10b1e1:	48 89 4c 24 58       	mov    QWORD PTR [rsp+0x58],rcx
  10b1e6:	eb 28                	jmp    10b210 <_dtoa_r+0x390>
  10b1e8:	c7 44 24 50 00 00 00 	mov    DWORD PTR [rsp+0x50],0x0
  10b1ef:	00 
  10b1f0:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  10b1f5:	8d 0c 02             	lea    ecx,[rdx+rax*1]
  10b1f8:	89 4c 24 3c          	mov    DWORD PTR [rsp+0x3c],ecx
  10b1fc:	44 8d 2c 02          	lea    r13d,[rdx+rax*1]
  10b200:	41 ff c5             	inc    r13d
  10b203:	41 83 fd 02          	cmp    r13d,0x2
  10b207:	b8 01 00 00 00       	mov    eax,0x1
  10b20c:	41 0f 4d c5          	cmovge eax,r13d
  10b210:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
  10b215:	c7 41 68 00 00 00 00 	mov    DWORD PTR [rcx+0x68],0x0
  10b21c:	4c 89 c5             	mov    rbp,r8
  10b21f:	83 f8 20             	cmp    eax,0x20
  10b222:	73 07                	jae    10b22b <_dtoa_r+0x3ab>
  10b224:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
  10b229:	eb 2d                	jmp    10b258 <_dtoa_r+0x3d8>
  10b22b:	48 98                	cdqe
  10b22d:	b9 04 00 00 00       	mov    ecx,0x4
  10b232:	31 f6                	xor    esi,esi
  10b234:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10b23b:	00 00 00 00 00 
  10b240:	ff c6                	inc    esi
  10b242:	01 c9                	add    ecx,ecx
  10b244:	48 63 d1             	movsxd rdx,ecx
  10b247:	48 83 c2 1c          	add    rdx,0x1c
  10b24b:	48 39 c2             	cmp    rdx,rax
  10b24e:	76 f0                	jbe    10b240 <_dtoa_r+0x3c0>
  10b250:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
  10b255:	89 73 68             	mov    DWORD PTR [rbx+0x68],esi
  10b258:	48 89 df             	mov    rdi,rbx
  10b25b:	e8 a0 0f 00 00       	call   10c200 <_Balloc>
  10b260:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  10b265:	48 89 43 60          	mov    QWORD PTR [rbx+0x60],rax
  10b269:	41 83 ff 05          	cmp    r15d,0x5
  10b26d:	4c 8b 44 24 30       	mov    r8,QWORD PTR [rsp+0x30]
  10b272:	f2 0f 10 6c 24 28    	movsd  xmm5,QWORD PTR [rsp+0x28]
  10b278:	0f 87 c6 03 00 00    	ja     10b644 <_dtoa_r+0x7c4>
  10b27e:	41 83 fd 0e          	cmp    r13d,0xe
  10b282:	0f 87 bc 03 00 00    	ja     10b644 <_dtoa_r+0x7c4>
  10b288:	45 85 c0             	test   r8d,r8d
  10b28b:	7e 27                	jle    10b2b4 <_dtoa_r+0x434>
  10b28d:	44 89 c2             	mov    edx,r8d
  10b290:	83 e2 0f             	and    edx,0xf
  10b293:	48 8d 35 36 5d ff ff 	lea    rsi,[rip+0xffffffffffff5d36]        # 100fd0 <__mprec_tens>
  10b29a:	44 89 c0             	mov    eax,r8d
  10b29d:	c1 e8 04             	shr    eax,0x4
  10b2a0:	b9 02 00 00 00       	mov    ecx,0x2
  10b2a5:	41 f7 c0 00 01 00 00 	test   r8d,0x100
  10b2ac:	75 3b                	jne    10b2e9 <_dtoa_r+0x469>
  10b2ae:	66 0f 28 c5          	movapd xmm0,xmm5
  10b2b2:	eb 4d                	jmp    10b301 <_dtoa_r+0x481>
  10b2b4:	b9 02 00 00 00       	mov    ecx,0x2
  10b2b9:	0f 84 03 03 00 00    	je     10b5c2 <_dtoa_r+0x742>
  10b2bf:	44 89 c0             	mov    eax,r8d
  10b2c2:	f7 d8                	neg    eax
  10b2c4:	89 c2                	mov    edx,eax
  10b2c6:	83 e2 0f             	and    edx,0xf
  10b2c9:	48 8d 35 00 5d ff ff 	lea    rsi,[rip+0xffffffffffff5d00]        # 100fd0 <__mprec_tens>
  10b2d0:	f2 0f 10 04 d6       	movsd  xmm0,QWORD PTR [rsi+rdx*8]
  10b2d5:	f2 0f 59 c5          	mulsd  xmm0,xmm5
  10b2d9:	83 f8 10             	cmp    eax,0x10
  10b2dc:	0f 83 ee 02 00 00    	jae    10b5d0 <_dtoa_r+0x750>
  10b2e2:	0f b6 5c 24 20       	movzx  ebx,BYTE PTR [rsp+0x20]
  10b2e7:	eb 56                	jmp    10b33f <_dtoa_r+0x4bf>
  10b2e9:	83 e0 0f             	and    eax,0xf
  10b2ec:	48 8d 0d ad 5d ff ff 	lea    rcx,[rip+0xffffffffffff5dad]        # 1010a0 <__mprec_bigtens>
  10b2f3:	66 0f 28 c5          	movapd xmm0,xmm5
  10b2f7:	f2 0f 5e 41 20       	divsd  xmm0,QWORD PTR [rcx+0x20]
  10b2fc:	b9 03 00 00 00       	mov    ecx,0x3
  10b301:	0f b6 5c 24 20       	movzx  ebx,BYTE PTR [rsp+0x20]
  10b306:	f2 0f 10 0c d6       	movsd  xmm1,QWORD PTR [rsi+rdx*8]
  10b30b:	85 c0                	test   eax,eax
  10b30d:	74 2c                	je     10b33b <_dtoa_r+0x4bb>
  10b30f:	48 8d 15 8a 5d ff ff 	lea    rdx,[rip+0xffffffffffff5d8a]        # 1010a0 <__mprec_bigtens>
  10b316:	eb 17                	jmp    10b32f <_dtoa_r+0x4af>
  10b318:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  10b31f:	00 
  10b320:	89 c6                	mov    esi,eax
  10b322:	d1 ee                	shr    esi,1
  10b324:	48 83 c2 08          	add    rdx,0x8
  10b328:	83 f8 01             	cmp    eax,0x1
  10b32b:	89 f0                	mov    eax,esi
  10b32d:	76 0c                	jbe    10b33b <_dtoa_r+0x4bb>
  10b32f:	a8 01                	test   al,0x1
  10b331:	74 ed                	je     10b320 <_dtoa_r+0x4a0>
  10b333:	ff c1                	inc    ecx
  10b335:	f2 0f 59 0a          	mulsd  xmm1,QWORD PTR [rdx]
  10b339:	eb e5                	jmp    10b320 <_dtoa_r+0x4a0>
  10b33b:	f2 0f 5e c1          	divsd  xmm0,xmm1
  10b33f:	f2 0f 10 0d 51 55 ff 	movsd  xmm1,QWORD PTR [rip+0xffffffffffff5551]        # 100898 <_svfprintf_r.blanks-0x248>
  10b346:	ff 
  10b347:	66 0f 2e c8          	ucomisd xmm1,xmm0
  10b34b:	0f 97 c0             	seta   al
  10b34e:	20 c3                	and    bl,al
  10b350:	80 fb 01             	cmp    bl,0x1
  10b353:	75 24                	jne    10b379 <_dtoa_r+0x4f9>
  10b355:	45 85 ed             	test   r13d,r13d
  10b358:	7e 1f                	jle    10b379 <_dtoa_r+0x4f9>
  10b35a:	83 7c 24 3c 00       	cmp    DWORD PTR [rsp+0x3c],0x0
  10b35f:	0f 8e df 02 00 00    	jle    10b644 <_dtoa_r+0x7c4>
  10b365:	41 8d 40 ff          	lea    eax,[r8-0x1]
  10b369:	f2 0f 59 05 ff 54 ff 	mulsd  xmm0,QWORD PTR [rip+0xffffffffffff54ff]        # 100870 <_svfprintf_r.blanks-0x270>
  10b370:	ff 
  10b371:	ff c1                	inc    ecx
  10b373:	8b 54 24 3c          	mov    edx,DWORD PTR [rsp+0x3c]
  10b377:	eb 06                	jmp    10b37f <_dtoa_r+0x4ff>
  10b379:	44 89 ea             	mov    edx,r13d
  10b37c:	44 89 c0             	mov    eax,r8d
  10b37f:	f2 0f 2a d1          	cvtsi2sd xmm2,ecx
  10b383:	f2 0f 59 d0          	mulsd  xmm2,xmm0
  10b387:	f2 0f 58 15 11 55 ff 	addsd  xmm2,QWORD PTR [rip+0xffffffffffff5511]        # 1008a0 <_svfprintf_r.blanks-0x240>
  10b38e:	ff 
  10b38f:	66 48 0f 7e d1       	movq   rcx,xmm2
  10b394:	48 be 00 00 00 00 00 	movabs rsi,0xfcc0000000000000
  10b39b:	00 c0 fc 
  10b39e:	48 01 ce             	add    rsi,rcx
  10b3a1:	66 48 0f 6e e6       	movq   xmm4,rsi
  10b3a6:	85 d2                	test   edx,edx
  10b3a8:	0f 84 d1 00 00 00    	je     10b47f <_dtoa_r+0x5ff>
  10b3ae:	8d 4a ff             	lea    ecx,[rdx-0x1]
  10b3b1:	48 8d 35 18 5c ff ff 	lea    rsi,[rip+0xffffffffffff5c18]        # 100fd0 <__mprec_tens>
  10b3b8:	f2 0f 10 14 ce       	movsd  xmm2,QWORD PTR [rsi+rcx*8]
  10b3bd:	83 7c 24 50 00       	cmp    DWORD PTR [rsp+0x50],0x0
  10b3c2:	0f 84 ee 00 00 00    	je     10b4b6 <_dtoa_r+0x636>
  10b3c8:	f2 0f 10 1d d8 54 ff 	movsd  xmm3,QWORD PTR [rip+0xffffffffffff54d8]        # 1008a8 <_svfprintf_r.blanks-0x238>
  10b3cf:	ff 
  10b3d0:	f2 0f 5e da          	divsd  xmm3,xmm2
  10b3d4:	f2 0f 5c dc          	subsd  xmm3,xmm4
  10b3d8:	f2 0f 2c c8          	cvttsd2si ecx,xmm0
  10b3dc:	66 0f e6 d0          	cvttpd2dq xmm2,xmm0
  10b3e0:	f3 0f e6 d2          	cvtdq2pd xmm2,xmm2
  10b3e4:	f2 0f 5c c2          	subsd  xmm0,xmm2
  10b3e8:	80 c1 30             	add    cl,0x30
  10b3eb:	48 8b 74 24 18       	mov    rsi,QWORD PTR [rsp+0x18]
  10b3f0:	48 8d 5e 01          	lea    rbx,[rsi+0x1]
  10b3f4:	88 0e                	mov    BYTE PTR [rsi],cl
  10b3f6:	66 0f 2e d8          	ucomisd xmm3,xmm0
  10b3fa:	77 65                	ja     10b461 <_dtoa_r+0x5e1>
  10b3fc:	83 fa 02             	cmp    edx,0x2
  10b3ff:	b9 01 00 00 00       	mov    ecx,0x1
  10b404:	0f 4d ca             	cmovge ecx,edx
  10b407:	ff c9                	dec    ecx
  10b409:	f2 0f 10 15 5f 54 ff 	movsd  xmm2,QWORD PTR [rip+0xffffffffffff545f]        # 100870 <_svfprintf_r.blanks-0x270>
  10b410:	ff 
  10b411:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10b418:	0f 1f 84 00 00 00 00 
  10b41f:	00 
  10b420:	66 0f 28 e1          	movapd xmm4,xmm1
  10b424:	f2 0f 5c e0          	subsd  xmm4,xmm0
  10b428:	66 0f 2e dc          	ucomisd xmm3,xmm4
  10b42c:	0f 87 49 01 00 00    	ja     10b57b <_dtoa_r+0x6fb>
  10b432:	83 e9 01             	sub    ecx,0x1
  10b435:	0f 82 09 02 00 00    	jb     10b644 <_dtoa_r+0x7c4>
  10b43b:	f2 0f 59 da          	mulsd  xmm3,xmm2
  10b43f:	f2 0f 59 c2          	mulsd  xmm0,xmm2
  10b443:	f2 0f 2c d0          	cvttsd2si edx,xmm0
  10b447:	66 0f e6 e0          	cvttpd2dq xmm4,xmm0
  10b44b:	f3 0f e6 e4          	cvtdq2pd xmm4,xmm4
  10b44f:	f2 0f 5c c4          	subsd  xmm0,xmm4
  10b453:	80 c2 30             	add    dl,0x30
  10b456:	88 13                	mov    BYTE PTR [rbx],dl
  10b458:	48 ff c3             	inc    rbx
  10b45b:	66 0f 2e d8          	ucomisd xmm3,xmm0
  10b45f:	76 bf                	jbe    10b420 <_dtoa_r+0x5a0>
  10b461:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  10b466:	4c 8b 74 24 48       	mov    r14,QWORD PTR [rsp+0x48]
  10b46b:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10b470:	4c 8b 64 24 10       	mov    r12,QWORD PTR [rsp+0x10]
  10b475:	48 8b 6c 24 18       	mov    rbp,QWORD PTR [rsp+0x18]
  10b47a:	e9 95 0b 00 00       	jmp    10c014 <_dtoa_r+0x1194>
  10b47f:	f2 0f 58 05 f1 53 ff 	addsd  xmm0,QWORD PTR [rip+0xffffffffffff53f1]        # 100878 <_svfprintf_r.blanks-0x268>
  10b486:	ff 
  10b487:	66 0f 2e c4          	ucomisd xmm0,xmm4
  10b48b:	0f 86 06 01 00 00    	jbe    10b597 <_dtoa_r+0x717>
  10b491:	31 c9                	xor    ecx,ecx
  10b493:	48 89 4c 24 20       	mov    QWORD PTR [rsp+0x20],rcx
  10b498:	41 89 c0             	mov    r8d,eax
  10b49b:	31 c9                	xor    ecx,ecx
  10b49d:	4c 8b 74 24 48       	mov    r14,QWORD PTR [rsp+0x48]
  10b4a2:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10b4a7:	4c 8b 64 24 10       	mov    r12,QWORD PTR [rsp+0x10]
  10b4ac:	48 8b 6c 24 18       	mov    rbp,QWORD PTR [rsp+0x18]
  10b4b1:	e9 5f 06 00 00       	jmp    10bb15 <_dtoa_r+0xc95>
  10b4b6:	f2 0f 2c f0          	cvttsd2si esi,xmm0
  10b4ba:	66 0f e6 c8          	cvttpd2dq xmm1,xmm0
  10b4be:	f2 0f 59 d4          	mulsd  xmm2,xmm4
  10b4c2:	f3 0f e6 c9          	cvtdq2pd xmm1,xmm1
  10b4c6:	f2 0f 5c c1          	subsd  xmm0,xmm1
  10b4ca:	40 80 c6 30          	add    sil,0x30
  10b4ce:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
  10b4d3:	48 8d 5f 01          	lea    rbx,[rdi+0x1]
  10b4d7:	40 88 37             	mov    BYTE PTR [rdi],sil
  10b4da:	83 fa 01             	cmp    edx,0x1
  10b4dd:	0f 84 82 00 00 00    	je     10b565 <_dtoa_r+0x6e5>
  10b4e3:	83 fa 02             	cmp    edx,0x2
  10b4e6:	74 58                	je     10b540 <_dtoa_r+0x6c0>
  10b4e8:	89 ca                	mov    edx,ecx
  10b4ea:	83 e2 fe             	and    edx,0xfffffffe
  10b4ed:	f2 0f 10 0d 7b 53 ff 	movsd  xmm1,QWORD PTR [rip+0xffffffffffff537b]        # 100870 <_svfprintf_r.blanks-0x270>
  10b4f4:	ff 
  10b4f5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  10b4fc:	00 00 00 00 
  10b500:	f2 0f 59 c1          	mulsd  xmm0,xmm1
  10b504:	f2 0f 2c f0          	cvttsd2si esi,xmm0
  10b508:	66 0f e6 d8          	cvttpd2dq xmm3,xmm0
  10b50c:	f3 0f e6 db          	cvtdq2pd xmm3,xmm3
  10b510:	f2 0f 5c c3          	subsd  xmm0,xmm3
  10b514:	40 80 c6 30          	add    sil,0x30
  10b518:	f2 0f 59 c1          	mulsd  xmm0,xmm1
  10b51c:	f2 0f 2c f8          	cvttsd2si edi,xmm0
  10b520:	66 0f e6 d8          	cvttpd2dq xmm3,xmm0
  10b524:	40 88 33             	mov    BYTE PTR [rbx],sil
  10b527:	f3 0f e6 db          	cvtdq2pd xmm3,xmm3
  10b52b:	f2 0f 5c c3          	subsd  xmm0,xmm3
  10b52f:	40 80 c7 30          	add    dil,0x30
  10b533:	40 88 7b 01          	mov    BYTE PTR [rbx+0x1],dil
  10b537:	48 83 c3 02          	add    rbx,0x2
  10b53b:	83 c2 fe             	add    edx,0xfffffffe
  10b53e:	75 c0                	jne    10b500 <_dtoa_r+0x680>
  10b540:	f6 c1 01             	test   cl,0x1
  10b543:	74 20                	je     10b565 <_dtoa_r+0x6e5>
  10b545:	f2 0f 59 05 23 53 ff 	mulsd  xmm0,QWORD PTR [rip+0xffffffffffff5323]        # 100870 <_svfprintf_r.blanks-0x270>
  10b54c:	ff 
  10b54d:	f2 0f 2c c8          	cvttsd2si ecx,xmm0
  10b551:	66 0f e6 c8          	cvttpd2dq xmm1,xmm0
  10b555:	f3 0f e6 c9          	cvtdq2pd xmm1,xmm1
  10b559:	f2 0f 5c c1          	subsd  xmm0,xmm1
  10b55d:	80 c1 30             	add    cl,0x30
  10b560:	88 0b                	mov    BYTE PTR [rbx],cl
  10b562:	48 ff c3             	inc    rbx
  10b565:	f2 0f 10 0d 3b 53 ff 	movsd  xmm1,QWORD PTR [rip+0xffffffffffff533b]        # 1008a8 <_svfprintf_r.blanks-0x238>
  10b56c:	ff 
  10b56d:	f2 0f 58 ca          	addsd  xmm1,xmm2
  10b571:	66 0f 2e c1          	ucomisd xmm0,xmm1
  10b575:	0f 86 94 00 00 00    	jbe    10b60f <_dtoa_r+0x78f>
  10b57b:	41 89 c0             	mov    r8d,eax
  10b57e:	4c 8b 74 24 48       	mov    r14,QWORD PTR [rsp+0x48]
  10b583:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10b588:	4c 8b 64 24 10       	mov    r12,QWORD PTR [rsp+0x10]
  10b58d:	48 8b 6c 24 18       	mov    rbp,QWORD PTR [rsp+0x18]
  10b592:	e9 60 03 00 00       	jmp    10b8f7 <_dtoa_r+0xa77>
  10b597:	66 0f 57 25 31 53 ff 	xorpd  xmm4,XMMWORD PTR [rip+0xffffffffffff5331]        # 1008d0 <_svfprintf_r.blanks-0x210>
  10b59e:	ff 
  10b59f:	66 0f 2e e0          	ucomisd xmm4,xmm0
  10b5a3:	0f 86 9b 00 00 00    	jbe    10b644 <_dtoa_r+0x7c4>
  10b5a9:	31 c0                	xor    eax,eax
  10b5ab:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  10b5b0:	45 31 ff             	xor    r15d,r15d
  10b5b3:	4c 8b 74 24 48       	mov    r14,QWORD PTR [rsp+0x48]
  10b5b8:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10b5bd:	e9 54 07 00 00       	jmp    10bd16 <_dtoa_r+0xe96>
  10b5c2:	66 0f 28 c5          	movapd xmm0,xmm5
  10b5c6:	0f b6 5c 24 20       	movzx  ebx,BYTE PTR [rsp+0x20]
  10b5cb:	e9 6f fd ff ff       	jmp    10b33f <_dtoa_r+0x4bf>
  10b5d0:	c1 e8 04             	shr    eax,0x4
  10b5d3:	b9 02 00 00 00       	mov    ecx,0x2
  10b5d8:	48 8d 15 c1 5a ff ff 	lea    rdx,[rip+0xffffffffffff5ac1]        # 1010a0 <__mprec_bigtens>
  10b5df:	0f b6 5c 24 20       	movzx  ebx,BYTE PTR [rsp+0x20]
  10b5e4:	eb 1d                	jmp    10b603 <_dtoa_r+0x783>
  10b5e6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10b5ed:	00 00 00 
  10b5f0:	89 c6                	mov    esi,eax
  10b5f2:	d1 ee                	shr    esi,1
  10b5f4:	48 83 c2 08          	add    rdx,0x8
  10b5f8:	83 f8 01             	cmp    eax,0x1
  10b5fb:	89 f0                	mov    eax,esi
  10b5fd:	0f 86 3c fd ff ff    	jbe    10b33f <_dtoa_r+0x4bf>
  10b603:	a8 01                	test   al,0x1
  10b605:	74 e9                	je     10b5f0 <_dtoa_r+0x770>
  10b607:	ff c1                	inc    ecx
  10b609:	f2 0f 59 02          	mulsd  xmm0,QWORD PTR [rdx]
  10b60d:	eb e1                	jmp    10b5f0 <_dtoa_r+0x770>
  10b60f:	f2 0f 10 0d 91 52 ff 	movsd  xmm1,QWORD PTR [rip+0xffffffffffff5291]        # 1008a8 <_svfprintf_r.blanks-0x238>
  10b616:	ff 
  10b617:	f2 0f 5c ca          	subsd  xmm1,xmm2
  10b61b:	66 0f 2e c8          	ucomisd xmm1,xmm0
  10b61f:	76 23                	jbe    10b644 <_dtoa_r+0x7c4>
  10b621:	48 ff c3             	inc    rbx
  10b624:	4c 8b 74 24 48       	mov    r14,QWORD PTR [rsp+0x48]
  10b629:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  10b630:	80 7b fe 30          	cmp    BYTE PTR [rbx-0x2],0x30
  10b634:	48 8d 5b ff          	lea    rbx,[rbx-0x1]
  10b638:	74 f6                	je     10b630 <_dtoa_r+0x7b0>
  10b63a:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  10b63f:	e9 27 fe ff ff       	jmp    10b46b <_dtoa_r+0x5eb>
  10b644:	8b 8c 24 84 00 00 00 	mov    ecx,DWORD PTR [rsp+0x84]
  10b64b:	85 c9                	test   ecx,ecx
  10b64d:	78 6f                	js     10b6be <_dtoa_r+0x83e>
  10b64f:	41 83 f8 0e          	cmp    r8d,0xe
  10b653:	7f 69                	jg     10b6be <_dtoa_r+0x83e>
  10b655:	49 63 c0             	movsxd rax,r8d
  10b658:	48 8d 0d 71 59 ff ff 	lea    rcx,[rip+0xffffffffffff5971]        # 100fd0 <__mprec_tens>
  10b65f:	f2 0f 10 04 c1       	movsd  xmm0,QWORD PTR [rcx+rax*8]
  10b664:	83 7c 24 58 00       	cmp    DWORD PTR [rsp+0x58],0x0
  10b669:	0f 89 8a 00 00 00    	jns    10b6f9 <_dtoa_r+0x879>
  10b66f:	45 85 ed             	test   r13d,r13d
  10b672:	0f 8f 81 00 00 00    	jg     10b6f9 <_dtoa_r+0x879>
  10b678:	45 85 ed             	test   r13d,r13d
  10b67b:	4c 8b 74 24 48       	mov    r14,QWORD PTR [rsp+0x48]
  10b680:	4c 8b 64 24 10       	mov    r12,QWORD PTR [rsp+0x10]
  10b685:	48 8b 6c 24 18       	mov    rbp,QWORD PTR [rsp+0x18]
  10b68a:	0f 88 4d 07 00 00    	js     10bddd <_dtoa_r+0xf5d>
  10b690:	31 c0                	xor    eax,eax
  10b692:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  10b697:	f2 0f 59 05 e1 51 ff 	mulsd  xmm0,QWORD PTR [rip+0xffffffffffff51e1]        # 100880 <_svfprintf_r.blanks-0x260>
  10b69e:	ff 
  10b69f:	66 0f 2e c5          	ucomisd xmm0,xmm5
  10b6a3:	41 bf 00 00 00 00    	mov    r15d,0x0
  10b6a9:	b9 00 00 00 00       	mov    ecx,0x0
  10b6ae:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10b6b3:	0f 82 5c 04 00 00    	jb     10bb15 <_dtoa_r+0xc95>
  10b6b9:	e9 2e 07 00 00       	jmp    10bdec <_dtoa_r+0xf6c>
  10b6be:	83 7c 24 50 00       	cmp    DWORD PTR [rsp+0x50],0x0
  10b6c3:	0f 84 d8 00 00 00    	je     10b7a1 <_dtoa_r+0x921>
  10b6c9:	83 7c 24 68 01       	cmp    DWORD PTR [rsp+0x68],0x1
  10b6ce:	0f 8f df 00 00 00    	jg     10b7b3 <_dtoa_r+0x933>
  10b6d4:	81 c1 33 04 00 00    	add    ecx,0x433
  10b6da:	b8 36 00 00 00       	mov    eax,0x36
  10b6df:	2b 44 24 74          	sub    eax,DWORD PTR [rsp+0x74]
  10b6e3:	41 81 fc 00 00 10 00 	cmp    r12d,0x100000
  10b6ea:	0f 42 c1             	cmovb  eax,ecx
  10b6ed:	89 eb                	mov    ebx,ebp
  10b6ef:	44 8b 7c 24 40       	mov    r15d,DWORD PTR [rsp+0x40]
  10b6f4:	e9 f9 00 00 00       	jmp    10b7f2 <_dtoa_r+0x972>
  10b6f9:	66 0f 28 cd          	movapd xmm1,xmm5
  10b6fd:	f2 0f 5e c8          	divsd  xmm1,xmm0
  10b701:	f2 0f 2c c1          	cvttsd2si eax,xmm1
  10b705:	66 0f e6 c9          	cvttpd2dq xmm1,xmm1
  10b709:	f3 0f e6 c9          	cvtdq2pd xmm1,xmm1
  10b70d:	f2 0f 59 c8          	mulsd  xmm1,xmm0
  10b711:	f2 0f 5c e9          	subsd  xmm5,xmm1
  10b715:	8d 48 30             	lea    ecx,[rax+0x30]
  10b718:	48 8b 6c 24 18       	mov    rbp,QWORD PTR [rsp+0x18]
  10b71d:	48 8d 5d 01          	lea    rbx,[rbp+0x1]
  10b721:	88 4d 00             	mov    BYTE PTR [rbp+0x0],cl
  10b724:	41 83 fd 01          	cmp    r13d,0x1
  10b728:	4c 8b 74 24 48       	mov    r14,QWORD PTR [rsp+0x48]
  10b72d:	4c 8b 64 24 10       	mov    r12,QWORD PTR [rsp+0x10]
  10b732:	74 55                	je     10b789 <_dtoa_r+0x909>
  10b734:	41 ff cd             	dec    r13d
  10b737:	f2 0f 10 0d 31 51 ff 	movsd  xmm1,QWORD PTR [rip+0xffffffffffff5131]        # 100870 <_svfprintf_r.blanks-0x270>
  10b73e:	ff 
  10b73f:	66 0f 57 d2          	xorpd  xmm2,xmm2
  10b743:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10b74a:	84 00 00 00 00 00 
  10b750:	f2 0f 59 e9          	mulsd  xmm5,xmm1
  10b754:	66 0f 2e ea          	ucomisd xmm5,xmm2
  10b758:	75 06                	jne    10b760 <_dtoa_r+0x8e0>
  10b75a:	0f 8b de 01 00 00    	jnp    10b93e <_dtoa_r+0xabe>
  10b760:	66 0f 28 dd          	movapd xmm3,xmm5
  10b764:	f2 0f 5e d8          	divsd  xmm3,xmm0
  10b768:	f2 0f 2c c3          	cvttsd2si eax,xmm3
  10b76c:	66 0f e6 db          	cvttpd2dq xmm3,xmm3
  10b770:	f3 0f e6 db          	cvtdq2pd xmm3,xmm3
  10b774:	f2 0f 59 d8          	mulsd  xmm3,xmm0
  10b778:	f2 0f 5c eb          	subsd  xmm5,xmm3
  10b77c:	8d 48 30             	lea    ecx,[rax+0x30]
  10b77f:	88 0b                	mov    BYTE PTR [rbx],cl
  10b781:	48 ff c3             	inc    rbx
  10b784:	41 ff cd             	dec    r13d
  10b787:	75 c7                	jne    10b750 <_dtoa_r+0x8d0>
  10b789:	f2 0f 58 ed          	addsd  xmm5,xmm5
  10b78d:	66 0f 2e e8          	ucomisd xmm5,xmm0
  10b791:	0f 86 4a 01 00 00    	jbe    10b8e1 <_dtoa_r+0xa61>
  10b797:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10b79c:	e9 56 01 00 00       	jmp    10b8f7 <_dtoa_r+0xa77>
  10b7a1:	31 f6                	xor    esi,esi
  10b7a3:	8b 4c 24 40          	mov    ecx,DWORD PTR [rsp+0x40]
  10b7a7:	41 89 cf             	mov    r15d,ecx
  10b7aa:	89 e8                	mov    eax,ebp
  10b7ac:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  10b7b1:	eb 61                	jmp    10b814 <_dtoa_r+0x994>
  10b7b3:	41 8d 45 ff          	lea    eax,[r13-0x1]
  10b7b7:	8b 74 24 40          	mov    esi,DWORD PTR [rsp+0x40]
  10b7bb:	89 f1                	mov    ecx,esi
  10b7bd:	29 c1                	sub    ecx,eax
  10b7bf:	f7 d9                	neg    ecx
  10b7c1:	31 d2                	xor    edx,edx
  10b7c3:	41 89 f7             	mov    r15d,esi
  10b7c6:	41 29 c7             	sub    r15d,eax
  10b7c9:	0f 4e f0             	cmovle esi,eax
  10b7cc:	89 74 24 40          	mov    DWORD PTR [rsp+0x40],esi
  10b7d0:	44 0f 4c fa          	cmovl  r15d,edx
  10b7d4:	0f 4d ca             	cmovge ecx,edx
  10b7d7:	01 8c 24 80 00 00 00 	add    DWORD PTR [rsp+0x80],ecx
  10b7de:	45 85 ed             	test   r13d,r13d
  10b7e1:	b8 00 00 00 00       	mov    eax,0x0
  10b7e6:	41 0f 4f c5          	cmovg  eax,r13d
  10b7ea:	41 0f 48 d5          	cmovs  edx,r13d
  10b7ee:	89 eb                	mov    ebx,ebp
  10b7f0:	29 d3                	sub    ebx,edx
  10b7f2:	01 c5                	add    ebp,eax
  10b7f4:	48 89 6c 24 28       	mov    QWORD PTR [rsp+0x28],rbp
  10b7f9:	41 01 c6             	add    r14d,eax
  10b7fc:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  10b801:	be 01 00 00 00       	mov    esi,0x1
  10b806:	e8 65 0e 00 00       	call   10c670 <__i2b>
  10b80b:	48 89 c6             	mov    rsi,rax
  10b80e:	89 dd                	mov    ebp,ebx
  10b810:	8b 4c 24 40          	mov    ecx,DWORD PTR [rsp+0x40]
  10b814:	85 ed                	test   ebp,ebp
  10b816:	7e 1f                	jle    10b837 <_dtoa_r+0x9b7>
  10b818:	45 85 f6             	test   r14d,r14d
  10b81b:	7e 1a                	jle    10b837 <_dtoa_r+0x9b7>
  10b81d:	44 39 f5             	cmp    ebp,r14d
  10b820:	44 89 f0             	mov    eax,r14d
  10b823:	0f 4c c5             	cmovl  eax,ebp
  10b826:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  10b82b:	29 c2                	sub    edx,eax
  10b82d:	48 89 54 24 28       	mov    QWORD PTR [rsp+0x28],rdx
  10b832:	29 c5                	sub    ebp,eax
  10b834:	41 29 c6             	sub    r14d,eax
  10b837:	85 c9                	test   ecx,ecx
  10b839:	48 89 ac 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rbp
  10b840:	00 
  10b841:	7e 6b                	jle    10b8ae <_dtoa_r+0xa2e>
  10b843:	83 7c 24 50 00       	cmp    DWORD PTR [rsp+0x50],0x0
  10b848:	74 70                	je     10b8ba <_dtoa_r+0xa3a>
  10b84a:	45 85 ff             	test   r15d,r15d
  10b84d:	0f 8e f5 00 00 00    	jle    10b948 <_dtoa_r+0xac8>
  10b853:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
  10b858:	48 89 df             	mov    rdi,rbx
  10b85b:	44 89 fa             	mov    edx,r15d
  10b85e:	89 4c 24 40          	mov    DWORD PTR [rsp+0x40],ecx
  10b862:	e8 e9 11 00 00       	call   10ca50 <__pow5mult>
  10b867:	48 89 df             	mov    rdi,rbx
  10b86a:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  10b86f:	48 89 c6             	mov    rsi,rax
  10b872:	44 89 fd             	mov    ebp,r15d
  10b875:	4c 8b 7c 24 10       	mov    r15,QWORD PTR [rsp+0x10]
  10b87a:	4c 89 fa             	mov    rdx,r15
  10b87d:	e8 7e 0e 00 00       	call   10c700 <__multiply>
  10b882:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
  10b889:	00 
  10b88a:	48 89 df             	mov    rdi,rbx
  10b88d:	4c 89 fe             	mov    rsi,r15
  10b890:	41 89 ef             	mov    r15d,ebp
  10b893:	e8 f8 09 00 00       	call   10c290 <_Bfree>
  10b898:	8b 4c 24 40          	mov    ecx,DWORD PTR [rsp+0x40]
  10b89c:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
  10b8a3:	00 
  10b8a4:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  10b8a9:	e9 9f 00 00 00       	jmp    10b94d <_dtoa_r+0xacd>
  10b8ae:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
  10b8b3:	4c 8b 7c 24 08       	mov    r15,QWORD PTR [rsp+0x8]
  10b8b8:	eb 1e                	jmp    10b8d8 <_dtoa_r+0xa58>
  10b8ba:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
  10b8bf:	4c 8b 7c 24 08       	mov    r15,QWORD PTR [rsp+0x8]
  10b8c4:	4c 89 ff             	mov    rdi,r15
  10b8c7:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
  10b8cc:	89 ca                	mov    edx,ecx
  10b8ce:	e8 7d 11 00 00       	call   10ca50 <__pow5mult>
  10b8d3:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  10b8d8:	8b 6c 24 64          	mov    ebp,DWORD PTR [rsp+0x64]
  10b8dc:	e9 95 00 00 00       	jmp    10b976 <_dtoa_r+0xaf6>
  10b8e1:	66 0f 2e e8          	ucomisd xmm5,xmm0
  10b8e5:	75 57                	jne    10b93e <_dtoa_r+0xabe>
  10b8e7:	7a 55                	jp     10b93e <_dtoa_r+0xabe>
  10b8e9:	83 e0 01             	and    eax,0x1
  10b8ec:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10b8f1:	0f 84 1d 07 00 00    	je     10c014 <_dtoa_r+0x1194>
  10b8f7:	48 ff cb             	dec    rbx
  10b8fa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  10b900:	48 89 d8             	mov    rax,rbx
  10b903:	0f b6 0b             	movzx  ecx,BYTE PTR [rbx]
  10b906:	80 f9 39             	cmp    cl,0x39
  10b909:	75 1c                	jne    10b927 <_dtoa_r+0xaa7>
  10b90b:	48 8d 58 ff          	lea    rbx,[rax-0x1]
  10b90f:	48 39 e8             	cmp    rax,rbp
  10b912:	75 ec                	jne    10b900 <_dtoa_r+0xa80>
  10b914:	41 ff c0             	inc    r8d
  10b917:	4c 89 44 24 30       	mov    QWORD PTR [rsp+0x30],r8
  10b91c:	c6 45 00 30          	mov    BYTE PTR [rbp+0x0],0x30
  10b920:	b1 31                	mov    cl,0x31
  10b922:	48 89 ea             	mov    rdx,rbp
  10b925:	eb 0a                	jmp    10b931 <_dtoa_r+0xab1>
  10b927:	4c 89 44 24 30       	mov    QWORD PTR [rsp+0x30],r8
  10b92c:	fe c1                	inc    cl
  10b92e:	48 89 c2             	mov    rdx,rax
  10b931:	88 0a                	mov    BYTE PTR [rdx],cl
  10b933:	48 ff c0             	inc    rax
  10b936:	48 89 c3             	mov    rbx,rax
  10b939:	e9 d6 06 00 00       	jmp    10c014 <_dtoa_r+0x1194>
  10b93e:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10b943:	e9 cc 06 00 00       	jmp    10c014 <_dtoa_r+0x1194>
  10b948:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
  10b94d:	8b 6c 24 64          	mov    ebp,DWORD PTR [rsp+0x64]
  10b951:	44 29 f9             	sub    ecx,r15d
  10b954:	75 07                	jne    10b95d <_dtoa_r+0xadd>
  10b956:	4c 8b 7c 24 08       	mov    r15,QWORD PTR [rsp+0x8]
  10b95b:	eb 19                	jmp    10b976 <_dtoa_r+0xaf6>
  10b95d:	4c 8b 7c 24 08       	mov    r15,QWORD PTR [rsp+0x8]
  10b962:	4c 89 ff             	mov    rdi,r15
  10b965:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
  10b96a:	89 ca                	mov    edx,ecx
  10b96c:	e8 df 10 00 00       	call   10ca50 <__pow5mult>
  10b971:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  10b976:	bb 01 00 00 00       	mov    ebx,0x1
  10b97b:	4c 89 ff             	mov    rdi,r15
  10b97e:	be 01 00 00 00       	mov    esi,0x1
  10b983:	e8 e8 0c 00 00       	call   10c670 <__i2b>
  10b988:	8b 94 24 80 00 00 00 	mov    edx,DWORD PTR [rsp+0x80]
  10b98f:	85 d2                	test   edx,edx
  10b991:	7e 10                	jle    10b9a3 <_dtoa_r+0xb23>
  10b993:	4c 89 ff             	mov    rdi,r15
  10b996:	48 89 c6             	mov    rsi,rax
  10b999:	41 89 d7             	mov    r15d,edx
  10b99c:	e8 af 10 00 00       	call   10ca50 <__pow5mult>
  10b9a1:	eb 03                	jmp    10b9a6 <_dtoa_r+0xb26>
  10b9a3:	41 89 d7             	mov    r15d,edx
  10b9a6:	48 8b 4c 24 78       	mov    rcx,QWORD PTR [rsp+0x78]
  10b9ab:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  10b9b0:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
  10b9b5:	83 7c 24 68 02       	cmp    DWORD PTR [rsp+0x68],0x2
  10b9ba:	0f 9d c2             	setge  dl
  10b9bd:	41 81 e4 ff ff 0f 00 	and    r12d,0xfffff
  10b9c4:	41 09 cc             	or     r12d,ecx
  10b9c7:	0f 95 c1             	setne  cl
  10b9ca:	85 ed                	test   ebp,ebp
  10b9cc:	41 0f 94 c4          	sete   r12b
  10b9d0:	41 08 d4             	or     r12b,dl
  10b9d3:	41 08 cc             	or     r12b,cl
  10b9d6:	44 89 e1             	mov    ecx,r12d
  10b9d9:	80 f1 01             	xor    cl,0x1
  10b9dc:	0f b6 e9             	movzx  ebp,cl
  10b9df:	41 01 ee             	add    r14d,ebp
  10b9e2:	45 85 ff             	test   r15d,r15d
  10b9e5:	49 89 c7             	mov    r15,rax
  10b9e8:	74 15                	je     10b9ff <_dtoa_r+0xb7f>
  10b9ea:	49 63 47 14          	movsxd rax,DWORD PTR [r15+0x14]
  10b9ee:	41 8b 7c 87 14       	mov    edi,DWORD PTR [r15+rax*4+0x14]
  10b9f3:	e8 78 0b 00 00       	call   10c570 <__hi0bits>
  10b9f8:	bb 20 00 00 00       	mov    ebx,0x20
  10b9fd:	29 c3                	sub    ebx,eax
  10b9ff:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  10ba04:	01 ea                	add    edx,ebp
  10ba06:	44 01 f3             	add    ebx,r14d
  10ba09:	83 e3 1f             	and    ebx,0x1f
  10ba0c:	b8 20 00 00 00       	mov    eax,0x20
  10ba11:	29 d8                	sub    eax,ebx
  10ba13:	85 db                	test   ebx,ebx
  10ba15:	0f 44 c3             	cmove  eax,ebx
  10ba18:	83 f8 05             	cmp    eax,0x5
  10ba1b:	72 1b                	jb     10ba38 <_dtoa_r+0xbb8>
  10ba1d:	01 c2                	add    edx,eax
  10ba1f:	83 c2 fc             	add    edx,0xfffffffc
  10ba22:	48 8b 9c 24 88 00 00 	mov    rbx,QWORD PTR [rsp+0x88]
  10ba29:	00 
  10ba2a:	01 c3                	add    ebx,eax
  10ba2c:	83 c3 fc             	add    ebx,0xfffffffc
  10ba2f:	41 01 c6             	add    r14d,eax
  10ba32:	41 83 c6 fc          	add    r14d,0xfffffffc
  10ba36:	eb 1e                	jmp    10ba56 <_dtoa_r+0xbd6>
  10ba38:	83 f8 04             	cmp    eax,0x4
  10ba3b:	48 8b 9c 24 88 00 00 	mov    rbx,QWORD PTR [rsp+0x88]
  10ba42:	00 
  10ba43:	74 11                	je     10ba56 <_dtoa_r+0xbd6>
  10ba45:	01 c2                	add    edx,eax
  10ba47:	83 c2 1c             	add    edx,0x1c
  10ba4a:	01 c3                	add    ebx,eax
  10ba4c:	83 c3 1c             	add    ebx,0x1c
  10ba4f:	41 01 c6             	add    r14d,eax
  10ba52:	41 83 c6 1c          	add    r14d,0x1c
  10ba56:	85 d2                	test   edx,edx
  10ba58:	7e 14                	jle    10ba6e <_dtoa_r+0xbee>
  10ba5a:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  10ba5f:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
  10ba64:	e8 27 11 00 00       	call   10cb90 <__lshift>
  10ba69:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  10ba6e:	45 85 f6             	test   r14d,r14d
  10ba71:	7e 13                	jle    10ba86 <_dtoa_r+0xc06>
  10ba73:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  10ba78:	4c 89 fe             	mov    rsi,r15
  10ba7b:	44 89 f2             	mov    edx,r14d
  10ba7e:	e8 0d 11 00 00       	call   10cb90 <__lshift>
  10ba83:	49 89 c7             	mov    r15,rax
  10ba86:	4c 8b 74 24 48       	mov    r14,QWORD PTR [rsp+0x48]
  10ba8b:	48 8b 6c 24 30       	mov    rbp,QWORD PTR [rsp+0x30]
  10ba90:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  10ba97:	00 
  10ba98:	83 f8 17             	cmp    eax,0x17
  10ba9b:	72 1a                	jb     10bab7 <_dtoa_r+0xc37>
  10ba9d:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
  10baa2:	4c 89 fe             	mov    rsi,r15
  10baa5:	e8 36 14 00 00       	call   10cee0 <__mcmp>
  10baaa:	48 8b 6c 24 30       	mov    rbp,QWORD PTR [rsp+0x30]
  10baaf:	85 c0                	test   eax,eax
  10bab1:	0f 88 6e 02 00 00    	js     10bd25 <_dtoa_r+0xea5>
  10bab7:	45 85 ed             	test   r13d,r13d
  10baba:	7f 7a                	jg     10bb36 <_dtoa_r+0xcb6>
  10babc:	83 7c 24 68 02       	cmp    DWORD PTR [rsp+0x68],0x2
  10bac1:	7e 73                	jle    10bb36 <_dtoa_r+0xcb6>
  10bac3:	44 89 e8             	mov    eax,r13d
  10bac6:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10bacb:	48 8b 74 24 20       	mov    rsi,QWORD PTR [rsp+0x20]
  10bad0:	85 c0                	test   eax,eax
  10bad2:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
  10bad7:	0f 88 39 02 00 00    	js     10bd16 <_dtoa_r+0xe96>
  10badd:	4c 89 ef             	mov    rdi,r13
  10bae0:	4c 89 fe             	mov    rsi,r15
  10bae3:	ba 05 00 00 00       	mov    edx,0x5
  10bae8:	31 c9                	xor    ecx,ecx
  10baea:	e8 c1 07 00 00       	call   10c2b0 <__multadd>
  10baef:	49 89 c7             	mov    r15,rax
  10baf2:	4c 8b 64 24 10       	mov    r12,QWORD PTR [rsp+0x10]
  10baf7:	4c 89 e7             	mov    rdi,r12
  10bafa:	48 89 c6             	mov    rsi,rax
  10bafd:	e8 de 13 00 00       	call   10cee0 <__mcmp>
  10bb02:	49 89 e8             	mov    r8,rbp
  10bb05:	4c 89 f9             	mov    rcx,r15
  10bb08:	85 c0                	test   eax,eax
  10bb0a:	48 8b 6c 24 18       	mov    rbp,QWORD PTR [rsp+0x18]
  10bb0f:	0f 8e d7 02 00 00    	jle    10bdec <_dtoa_r+0xf6c>
  10bb15:	48 89 eb             	mov    rbx,rbp
  10bb18:	48 ff c3             	inc    rbx
  10bb1b:	c6 45 00 31          	mov    BYTE PTR [rbp+0x0],0x31
  10bb1f:	41 ff c0             	inc    r8d
  10bb22:	4c 89 44 24 30       	mov    QWORD PTR [rsp+0x30],r8
  10bb27:	31 c0                	xor    eax,eax
  10bb29:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  10bb2e:	49 89 cf             	mov    r15,rcx
  10bb31:	e9 a2 04 00 00       	jmp    10bfd8 <_dtoa_r+0x1158>
  10bb36:	83 7c 24 50 00       	cmp    DWORD PTR [rsp+0x50],0x0
  10bb3b:	48 8b 74 24 20       	mov    rsi,QWORD PTR [rsp+0x20]
  10bb40:	0f 84 dc 02 00 00    	je     10be22 <_dtoa_r+0xfa2>
  10bb46:	44 89 e8             	mov    eax,r13d
  10bb49:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10bb4e:	48 89 6c 24 30       	mov    QWORD PTR [rsp+0x30],rbp
  10bb53:	48 89 da             	mov    rdx,rbx
  10bb56:	85 d2                	test   edx,edx
  10bb58:	7e 0f                	jle    10bb69 <_dtoa_r+0xce9>
  10bb5a:	4c 89 ef             	mov    rdi,r13
  10bb5d:	89 c3                	mov    ebx,eax
  10bb5f:	e8 2c 10 00 00       	call   10cb90 <__lshift>
  10bb64:	48 89 c6             	mov    rsi,rax
  10bb67:	89 d8                	mov    eax,ebx
  10bb69:	48 89 f1             	mov    rcx,rsi
  10bb6c:	48 89 74 24 28       	mov    QWORD PTR [rsp+0x28],rsi
  10bb71:	48 8b 5c 24 18       	mov    rbx,QWORD PTR [rsp+0x18]
  10bb76:	45 84 e4             	test   r12b,r12b
  10bb79:	75 4a                	jne    10bbc5 <_dtoa_r+0xd45>
  10bb7b:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  10bb80:	8b 73 08             	mov    esi,DWORD PTR [rbx+0x8]
  10bb83:	4c 89 ef             	mov    rdi,r13
  10bb86:	41 89 c6             	mov    r14d,eax
  10bb89:	e8 72 06 00 00       	call   10c200 <_Balloc>
  10bb8e:	48 89 c5             	mov    rbp,rax
  10bb91:	48 8d 78 10          	lea    rdi,[rax+0x10]
  10bb95:	48 8d 73 10          	lea    rsi,[rbx+0x10]
  10bb99:	48 63 43 14          	movsxd rax,DWORD PTR [rbx+0x14]
  10bb9d:	48 8d 14 85 08 00 00 	lea    rdx,[rax*4+0x8]
  10bba4:	00 
  10bba5:	e8 c6 ef ff ff       	call   10ab70 <memcpy>
  10bbaa:	4c 89 ef             	mov    rdi,r13
  10bbad:	48 89 ee             	mov    rsi,rbp
  10bbb0:	48 8b 5c 24 18       	mov    rbx,QWORD PTR [rsp+0x18]
  10bbb5:	ba 01 00 00 00       	mov    edx,0x1
  10bbba:	e8 d1 0f 00 00       	call   10cb90 <__lshift>
  10bbbf:	48 89 c6             	mov    rsi,rax
  10bbc2:	44 89 f0             	mov    eax,r14d
  10bbc5:	ff c8                	dec    eax
  10bbc7:	89 44 24 3c          	mov    DWORD PTR [rsp+0x3c],eax
  10bbcb:	48 ff c3             	inc    rbx
  10bbce:	4c 8b 74 24 10       	mov    r14,QWORD PTR [rsp+0x10]
  10bbd3:	49 89 f4             	mov    r12,rsi
  10bbd6:	4c 89 7c 24 40       	mov    QWORD PTR [rsp+0x40],r15
  10bbdb:	eb 0b                	jmp    10bbe8 <_dtoa_r+0xd68>
  10bbdd:	48 ff c3             	inc    rbx
  10bbe0:	49 89 c4             	mov    r12,rax
  10bbe3:	4c 8b 7c 24 40       	mov    r15,QWORD PTR [rsp+0x40]
  10bbe8:	4c 89 f7             	mov    rdi,r14
  10bbeb:	4c 89 fe             	mov    rsi,r15
  10bbee:	e8 5d 04 00 00       	call   10c050 <quorem>
  10bbf3:	4c 89 fd             	mov    rbp,r15
  10bbf6:	41 89 c7             	mov    r15d,eax
  10bbf9:	4c 89 74 24 10       	mov    QWORD PTR [rsp+0x10],r14
  10bbfe:	4c 89 f7             	mov    rdi,r14
  10bc01:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
  10bc06:	e8 d5 12 00 00       	call   10cee0 <__mcmp>
  10bc0b:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
  10bc0f:	4c 89 ef             	mov    rdi,r13
  10bc12:	48 89 ee             	mov    rsi,rbp
  10bc15:	4c 89 64 24 20       	mov    QWORD PTR [rsp+0x20],r12
  10bc1a:	4c 89 e2             	mov    rdx,r12
  10bc1d:	e8 0e 13 00 00       	call   10cf30 <__mdiff>
  10bc22:	49 89 c6             	mov    r14,rax
  10bc25:	4d 89 ec             	mov    r12,r13
  10bc28:	41 bd 01 00 00 00    	mov    r13d,0x1
  10bc2e:	83 78 10 00          	cmp    DWORD PTR [rax+0x10],0x0
  10bc32:	75 10                	jne    10bc44 <_dtoa_r+0xdc4>
  10bc34:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
  10bc39:	4c 89 f6             	mov    rsi,r14
  10bc3c:	e8 9f 12 00 00       	call   10cee0 <__mcmp>
  10bc41:	41 89 c5             	mov    r13d,eax
  10bc44:	4c 89 7c 24 50       	mov    QWORD PTR [rsp+0x50],r15
  10bc49:	41 8d 6f 30          	lea    ebp,[r15+0x30]
  10bc4d:	4c 89 e7             	mov    rdi,r12
  10bc50:	4c 89 f6             	mov    rsi,r14
  10bc53:	e8 38 06 00 00       	call   10c290 <_Bfree>
  10bc58:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  10bc5d:	a8 01                	test   al,0x1
  10bc5f:	75 10                	jne    10bc71 <_dtoa_r+0xdf1>
  10bc61:	45 85 ed             	test   r13d,r13d
  10bc64:	75 0b                	jne    10bc71 <_dtoa_r+0xdf1>
  10bc66:	83 7c 24 68 00       	cmp    DWORD PTR [rsp+0x68],0x0
  10bc6b:	0f 84 3a 02 00 00    	je     10beab <_dtoa_r+0x102b>
  10bc71:	8b 4c 24 58          	mov    ecx,DWORD PTR [rsp+0x58]
  10bc75:	85 c9                	test   ecx,ecx
  10bc77:	4c 8b 74 24 48       	mov    r14,QWORD PTR [rsp+0x48]
  10bc7c:	4c 8b 64 24 10       	mov    r12,QWORD PTR [rsp+0x10]
  10bc81:	0f 88 fc 00 00 00    	js     10bd83 <_dtoa_r+0xf03>
  10bc87:	a8 01                	test   al,0x1
  10bc89:	75 0f                	jne    10bc9a <_dtoa_r+0xe1a>
  10bc8b:	85 c9                	test   ecx,ecx
  10bc8d:	75 0b                	jne    10bc9a <_dtoa_r+0xe1a>
  10bc8f:	83 7c 24 68 00       	cmp    DWORD PTR [rsp+0x68],0x0
  10bc94:	0f 84 e9 00 00 00    	je     10bd83 <_dtoa_r+0xf03>
  10bc9a:	45 85 ed             	test   r13d,r13d
  10bc9d:	0f 8f 39 02 00 00    	jg     10bedc <_dtoa_r+0x105c>
  10bca3:	40 88 6b ff          	mov    BYTE PTR [rbx-0x1],bpl
  10bca7:	8b 44 24 3c          	mov    eax,DWORD PTR [rsp+0x3c]
  10bcab:	83 e8 01             	sub    eax,0x1
  10bcae:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10bcb3:	4c 8b 7c 24 20       	mov    r15,QWORD PTR [rsp+0x20]
  10bcb8:	0f 82 41 02 00 00    	jb     10beff <_dtoa_r+0x107f>
  10bcbe:	89 44 24 3c          	mov    DWORD PTR [rsp+0x3c],eax
  10bcc2:	4c 89 ef             	mov    rdi,r13
  10bcc5:	4c 89 e6             	mov    rsi,r12
  10bcc8:	ba 0a 00 00 00       	mov    edx,0xa
  10bccd:	31 c9                	xor    ecx,ecx
  10bccf:	e8 dc 05 00 00       	call   10c2b0 <__multadd>
  10bcd4:	49 89 c6             	mov    r14,rax
  10bcd7:	4c 89 ef             	mov    rdi,r13
  10bcda:	48 8b 6c 24 28       	mov    rbp,QWORD PTR [rsp+0x28]
  10bcdf:	48 89 ee             	mov    rsi,rbp
  10bce2:	ba 0a 00 00 00       	mov    edx,0xa
  10bce7:	31 c9                	xor    ecx,ecx
  10bce9:	e8 c2 05 00 00       	call   10c2b0 <__multadd>
  10bcee:	4c 39 fd             	cmp    rbp,r15
  10bcf1:	48 89 c1             	mov    rcx,rax
  10bcf4:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  10bcf9:	0f 84 de fe ff ff    	je     10bbdd <_dtoa_r+0xd5d>
  10bcff:	4c 89 ef             	mov    rdi,r13
  10bd02:	4c 89 fe             	mov    rsi,r15
  10bd05:	ba 0a 00 00 00       	mov    edx,0xa
  10bd0a:	31 c9                	xor    ecx,ecx
  10bd0c:	e8 9f 05 00 00       	call   10c2b0 <__multadd>
  10bd11:	e9 c7 fe ff ff       	jmp    10bbdd <_dtoa_r+0xd5d>
  10bd16:	4c 8b 64 24 10       	mov    r12,QWORD PTR [rsp+0x10]
  10bd1b:	48 8b 6c 24 18       	mov    rbp,QWORD PTR [rsp+0x18]
  10bd20:	e9 c7 00 00 00       	jmp    10bdec <_dtoa_r+0xf6c>
  10bd25:	ff cd                	dec    ebp
  10bd27:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10bd2c:	4c 89 ef             	mov    rdi,r13
  10bd2f:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
  10bd34:	ba 0a 00 00 00       	mov    edx,0xa
  10bd39:	31 c9                	xor    ecx,ecx
  10bd3b:	e8 70 05 00 00       	call   10c2b0 <__multadd>
  10bd40:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  10bd45:	83 7c 24 50 00       	cmp    DWORD PTR [rsp+0x50],0x0
  10bd4a:	0f 84 b7 00 00 00    	je     10be07 <_dtoa_r+0xf87>
  10bd50:	4c 89 ef             	mov    rdi,r13
  10bd53:	48 8b 74 24 20       	mov    rsi,QWORD PTR [rsp+0x20]
  10bd58:	ba 0a 00 00 00       	mov    edx,0xa
  10bd5d:	31 c9                	xor    ecx,ecx
  10bd5f:	e8 4c 05 00 00       	call   10c2b0 <__multadd>
  10bd64:	48 89 c6             	mov    rsi,rax
  10bd67:	8b 44 24 3c          	mov    eax,DWORD PTR [rsp+0x3c]
  10bd6b:	85 c0                	test   eax,eax
  10bd6d:	0f 8f db fd ff ff    	jg     10bb4e <_dtoa_r+0xcce>
  10bd73:	83 7c 24 68 03       	cmp    DWORD PTR [rsp+0x68],0x3
  10bd78:	0f 8d 52 fd ff ff    	jge    10bad0 <_dtoa_r+0xc50>
  10bd7e:	e9 cb fd ff ff       	jmp    10bb4e <_dtoa_r+0xcce>
  10bd83:	45 85 ed             	test   r13d,r13d
  10bd86:	0f 8e f8 01 00 00    	jle    10bf84 <_dtoa_r+0x1104>
  10bd8c:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10bd91:	4c 89 ef             	mov    rdi,r13
  10bd94:	4c 89 e6             	mov    rsi,r12
  10bd97:	ba 01 00 00 00       	mov    edx,0x1
  10bd9c:	e8 ef 0d 00 00       	call   10cb90 <__lshift>
  10bda1:	49 89 c4             	mov    r12,rax
  10bda4:	48 89 c7             	mov    rdi,rax
  10bda7:	4c 8b 7c 24 40       	mov    r15,QWORD PTR [rsp+0x40]
  10bdac:	4c 89 fe             	mov    rsi,r15
  10bdaf:	e8 2c 11 00 00       	call   10cee0 <__mcmp>
  10bdb4:	85 c0                	test   eax,eax
  10bdb6:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  10bdbb:	7f 09                	jg     10bdc6 <_dtoa_r+0xf46>
  10bdbd:	75 15                	jne    10bdd4 <_dtoa_r+0xf54>
  10bdbf:	89 d0                	mov    eax,edx
  10bdc1:	83 e0 01             	and    eax,0x1
  10bdc4:	74 0e                	je     10bdd4 <_dtoa_r+0xf54>
  10bdc6:	83 fd 39             	cmp    ebp,0x39
  10bdc9:	0f 84 20 01 00 00    	je     10beef <_dtoa_r+0x106f>
  10bdcf:	83 c2 31             	add    edx,0x31
  10bdd2:	89 d5                	mov    ebp,edx
  10bdd4:	40 88 6b ff          	mov    BYTE PTR [rbx-0x1],bpl
  10bdd8:	e9 f6 01 00 00       	jmp    10bfd3 <_dtoa_r+0x1153>
  10bddd:	31 c0                	xor    eax,eax
  10bddf:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  10bde4:	45 31 ff             	xor    r15d,r15d
  10bde7:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10bdec:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  10bdf1:	f7 d0                	not    eax
  10bdf3:	31 c9                	xor    ecx,ecx
  10bdf5:	48 89 4c 24 28       	mov    QWORD PTR [rsp+0x28],rcx
  10bdfa:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  10bdff:	48 89 eb             	mov    rbx,rbp
  10be02:	e9 d1 01 00 00       	jmp    10bfd8 <_dtoa_r+0x1158>
  10be07:	8b 44 24 3c          	mov    eax,DWORD PTR [rsp+0x3c]
  10be0b:	85 c0                	test   eax,eax
  10be0d:	48 8b 74 24 20       	mov    rsi,QWORD PTR [rsp+0x20]
  10be12:	7f 0b                	jg     10be1f <_dtoa_r+0xf9f>
  10be14:	83 7c 24 68 02       	cmp    DWORD PTR [rsp+0x68],0x2
  10be19:	0f 8f b1 fc ff ff    	jg     10bad0 <_dtoa_r+0xc50>
  10be1f:	41 89 c5             	mov    r13d,eax
  10be22:	48 89 6c 24 30       	mov    QWORD PTR [rsp+0x30],rbp
  10be27:	4c 8b 64 24 10       	mov    r12,QWORD PTR [rsp+0x10]
  10be2c:	4c 89 e7             	mov    rdi,r12
  10be2f:	4c 89 fe             	mov    rsi,r15
  10be32:	e8 19 02 00 00       	call   10c050 <quorem>
  10be37:	89 c5                	mov    ebp,eax
  10be39:	83 c5 30             	add    ebp,0x30
  10be3c:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
  10be41:	48 8d 58 01          	lea    rbx,[rax+0x1]
  10be45:	40 88 28             	mov    BYTE PTR [rax],bpl
  10be48:	41 83 fd 02          	cmp    r13d,0x2
  10be4c:	7c 4f                	jl     10be9d <_dtoa_r+0x101d>
  10be4e:	41 ff cd             	dec    r13d
  10be51:	31 c0                	xor    eax,eax
  10be53:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  10be58:	4d 89 fe             	mov    r14,r15
  10be5b:	4c 8b 7c 24 08       	mov    r15,QWORD PTR [rsp+0x8]
  10be60:	4c 89 ff             	mov    rdi,r15
  10be63:	4c 89 e6             	mov    rsi,r12
  10be66:	ba 0a 00 00 00       	mov    edx,0xa
  10be6b:	31 c9                	xor    ecx,ecx
  10be6d:	e8 3e 04 00 00       	call   10c2b0 <__multadd>
  10be72:	49 89 c4             	mov    r12,rax
  10be75:	48 89 c7             	mov    rdi,rax
  10be78:	4c 89 f6             	mov    rsi,r14
  10be7b:	e8 d0 01 00 00       	call   10c050 <quorem>
  10be80:	89 c5                	mov    ebp,eax
  10be82:	83 c5 30             	add    ebp,0x30
  10be85:	40 88 2b             	mov    BYTE PTR [rbx],bpl
  10be88:	48 ff c3             	inc    rbx
  10be8b:	41 ff cd             	dec    r13d
  10be8e:	75 d0                	jne    10be60 <_dtoa_r+0xfe0>
  10be90:	4d 89 fd             	mov    r13,r15
  10be93:	4d 89 f7             	mov    r15,r14
  10be96:	4c 8b 74 24 48       	mov    r14,QWORD PTR [rsp+0x48]
  10be9b:	eb 67                	jmp    10bf04 <_dtoa_r+0x1084>
  10be9d:	31 c0                	xor    eax,eax
  10be9f:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  10bea4:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10bea9:	eb 59                	jmp    10bf04 <_dtoa_r+0x1084>
  10beab:	83 fd 39             	cmp    ebp,0x39
  10beae:	4c 8b 74 24 48       	mov    r14,QWORD PTR [rsp+0x48]
  10beb3:	4c 8b 64 24 10       	mov    r12,QWORD PTR [rsp+0x10]
  10beb8:	8b 4c 24 58          	mov    ecx,DWORD PTR [rsp+0x58]
  10bebc:	0f 85 e1 00 00 00    	jne    10bfa3 <_dtoa_r+0x1123>
  10bec2:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10bec7:	48 8b 74 24 30       	mov    rsi,QWORD PTR [rsp+0x30]
  10becc:	48 8b 6c 24 18       	mov    rbp,QWORD PTR [rsp+0x18]
  10bed1:	4c 8b 7c 24 40       	mov    r15,QWORD PTR [rsp+0x40]
  10bed6:	c6 43 ff 39          	mov    BYTE PTR [rbx-0x1],0x39
  10beda:	eb 62                	jmp    10bf3e <_dtoa_r+0x10be>
  10bedc:	83 fd 39             	cmp    ebp,0x39
  10bedf:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10bee4:	4c 8b 7c 24 40       	mov    r15,QWORD PTR [rsp+0x40]
  10bee9:	0f 85 d9 00 00 00    	jne    10bfc8 <_dtoa_r+0x1148>
  10beef:	48 8b 74 24 30       	mov    rsi,QWORD PTR [rsp+0x30]
  10bef4:	48 8b 6c 24 18       	mov    rbp,QWORD PTR [rsp+0x18]
  10bef9:	c6 43 ff 39          	mov    BYTE PTR [rbx-0x1],0x39
  10befd:	eb 3f                	jmp    10bf3e <_dtoa_r+0x10be>
  10beff:	4c 8b 7c 24 40       	mov    r15,QWORD PTR [rsp+0x40]
  10bf04:	4c 89 ef             	mov    rdi,r13
  10bf07:	4c 89 e6             	mov    rsi,r12
  10bf0a:	ba 01 00 00 00       	mov    edx,0x1
  10bf0f:	e8 7c 0c 00 00       	call   10cb90 <__lshift>
  10bf14:	49 89 c4             	mov    r12,rax
  10bf17:	48 89 c7             	mov    rdi,rax
  10bf1a:	4c 89 fe             	mov    rsi,r15
  10bf1d:	e8 be 0f 00 00       	call   10cee0 <__mcmp>
  10bf22:	85 c0                	test   eax,eax
  10bf24:	7e 07                	jle    10bf2d <_dtoa_r+0x10ad>
  10bf26:	48 8b 74 24 30       	mov    rsi,QWORD PTR [rsp+0x30]
  10bf2b:	eb 0c                	jmp    10bf39 <_dtoa_r+0x10b9>
  10bf2d:	48 8b 74 24 30       	mov    rsi,QWORD PTR [rsp+0x30]
  10bf32:	75 60                	jne    10bf94 <_dtoa_r+0x1114>
  10bf34:	83 e5 01             	and    ebp,0x1
  10bf37:	74 5b                	je     10bf94 <_dtoa_r+0x1114>
  10bf39:	48 8b 6c 24 18       	mov    rbp,QWORD PTR [rsp+0x18]
  10bf3e:	48 89 e9             	mov    rcx,rbp
  10bf41:	48 29 d9             	sub    rcx,rbx
  10bf44:	48 89 da             	mov    rdx,rbx
  10bf47:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  10bf4e:	00 00 
  10bf50:	48 89 d0             	mov    rax,rdx
  10bf53:	0f b6 52 ff          	movzx  edx,BYTE PTR [rdx-0x1]
  10bf57:	80 fa 39             	cmp    dl,0x39
  10bf5a:	75 19                	jne    10bf75 <_dtoa_r+0x10f5>
  10bf5c:	48 8d 50 ff          	lea    rdx,[rax-0x1]
  10bf60:	48 39 ea             	cmp    rdx,rbp
  10bf63:	75 eb                	jne    10bf50 <_dtoa_r+0x10d0>
  10bf65:	ff c6                	inc    esi
  10bf67:	48 89 74 24 30       	mov    QWORD PTR [rsp+0x30],rsi
  10bf6c:	c6 04 0b 31          	mov    BYTE PTR [rbx+rcx*1],0x31
  10bf70:	48 89 c3             	mov    rbx,rax
  10bf73:	eb 63                	jmp    10bfd8 <_dtoa_r+0x1158>
  10bf75:	48 89 74 24 30       	mov    QWORD PTR [rsp+0x30],rsi
  10bf7a:	fe c2                	inc    dl
  10bf7c:	88 50 ff             	mov    BYTE PTR [rax-0x1],dl
  10bf7f:	48 89 c3             	mov    rbx,rax
  10bf82:	eb 54                	jmp    10bfd8 <_dtoa_r+0x1158>
  10bf84:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10bf89:	4c 8b 7c 24 40       	mov    r15,QWORD PTR [rsp+0x40]
  10bf8e:	40 88 6b ff          	mov    BYTE PTR [rbx-0x1],bpl
  10bf92:	eb 3f                	jmp    10bfd3 <_dtoa_r+0x1153>
  10bf94:	48 ff c3             	inc    rbx
  10bf97:	80 7b fe 30          	cmp    BYTE PTR [rbx-0x2],0x30
  10bf9b:	48 8d 5b ff          	lea    rbx,[rbx-0x1]
  10bf9f:	74 f6                	je     10bf97 <_dtoa_r+0x1117>
  10bfa1:	eb 30                	jmp    10bfd3 <_dtoa_r+0x1153>
  10bfa3:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
  10bfa8:	83 c0 31             	add    eax,0x31
  10bfab:	85 c9                	test   ecx,ecx
  10bfad:	0f b6 c0             	movzx  eax,al
  10bfb0:	0f 4f e8             	cmovg  ebp,eax
  10bfb3:	40 88 6b ff          	mov    BYTE PTR [rbx-0x1],bpl
  10bfb7:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10bfbc:	48 8b 6c 24 18       	mov    rbp,QWORD PTR [rsp+0x18]
  10bfc1:	4c 8b 7c 24 40       	mov    r15,QWORD PTR [rsp+0x40]
  10bfc6:	eb 10                	jmp    10bfd8 <_dtoa_r+0x1158>
  10bfc8:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
  10bfcd:	83 c0 31             	add    eax,0x31
  10bfd0:	88 43 ff             	mov    BYTE PTR [rbx-0x1],al
  10bfd3:	48 8b 6c 24 18       	mov    rbp,QWORD PTR [rsp+0x18]
  10bfd8:	4c 89 ef             	mov    rdi,r13
  10bfdb:	4c 89 fe             	mov    rsi,r15
  10bfde:	e8 ad 02 00 00       	call   10c290 <_Bfree>
  10bfe3:	48 8b 74 24 20       	mov    rsi,QWORD PTR [rsp+0x20]
  10bfe8:	48 85 f6             	test   rsi,rsi
  10bfeb:	74 27                	je     10c014 <_dtoa_r+0x1194>
  10bfed:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
  10bff2:	48 85 c0             	test   rax,rax
  10bff5:	74 15                	je     10c00c <_dtoa_r+0x118c>
  10bff7:	48 39 f0             	cmp    rax,rsi
  10bffa:	74 10                	je     10c00c <_dtoa_r+0x118c>
  10bffc:	4c 89 ef             	mov    rdi,r13
  10bfff:	48 89 c6             	mov    rsi,rax
  10c002:	e8 89 02 00 00       	call   10c290 <_Bfree>
  10c007:	48 8b 74 24 20       	mov    rsi,QWORD PTR [rsp+0x20]
  10c00c:	4c 89 ef             	mov    rdi,r13
  10c00f:	e8 7c 02 00 00       	call   10c290 <_Bfree>
  10c014:	4c 89 ef             	mov    rdi,r13
  10c017:	4c 89 e6             	mov    rsi,r12
  10c01a:	e8 71 02 00 00       	call   10c290 <_Bfree>
  10c01f:	c6 03 00             	mov    BYTE PTR [rbx],0x0
  10c022:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  10c027:	ff c1                	inc    ecx
  10c029:	48 8b 84 24 a0 00 00 	mov    rax,QWORD PTR [rsp+0xa0]
  10c030:	00 
  10c031:	89 08                	mov    DWORD PTR [rax],ecx
  10c033:	4d 85 f6             	test   r14,r14
  10c036:	74 03                	je     10c03b <_dtoa_r+0x11bb>
  10c038:	49 89 1e             	mov    QWORD PTR [r14],rbx
  10c03b:	48 89 e8             	mov    rax,rbp
  10c03e:	48 81 c4 a8 00 00 00 	add    rsp,0xa8
  10c045:	5b                   	pop    rbx
  10c046:	41 5c                	pop    r12
  10c048:	41 5d                	pop    r13
  10c04a:	41 5e                	pop    r14
  10c04c:	41 5f                	pop    r15
  10c04e:	5d                   	pop    rbp
  10c04f:	c3                   	ret

000000000010c050 <quorem>:
  10c050:	55                   	push   rbp
  10c051:	41 57                	push   r15
  10c053:	41 56                	push   r14
  10c055:	41 55                	push   r13
  10c057:	41 54                	push   r12
  10c059:	53                   	push   rbx
  10c05a:	48 83 ec 18          	sub    rsp,0x18
  10c05e:	48 89 fb             	mov    rbx,rdi
  10c061:	48 63 7e 14          	movsxd rdi,DWORD PTR [rsi+0x14]
  10c065:	45 31 ed             	xor    r13d,r13d
  10c068:	39 7b 14             	cmp    DWORD PTR [rbx+0x14],edi
  10c06b:	0f 8c 76 01 00 00    	jl     10c1e7 <quorem+0x197>
  10c071:	4c 8d 76 18          	lea    r14,[rsi+0x18]
  10c075:	4c 8d 67 ff          	lea    r12,[rdi-0x1]
  10c079:	4c 8d 3c be          	lea    r15,[rsi+rdi*4]
  10c07d:	49 83 c7 14          	add    r15,0x14
  10c081:	4c 8d 53 18          	lea    r10,[rbx+0x18]
  10c085:	44 8b 44 bb 14       	mov    r8d,DWORD PTR [rbx+rdi*4+0x14]
  10c08a:	44 8b 4c be 14       	mov    r9d,DWORD PTR [rsi+rdi*4+0x14]
  10c08f:	41 ff c1             	inc    r9d
  10c092:	31 c9                	xor    ecx,ecx
  10c094:	44 89 c0             	mov    eax,r8d
  10c097:	31 d2                	xor    edx,edx
  10c099:	41 f7 f1             	div    r9d
  10c09c:	41 89 c5             	mov    r13d,eax
  10c09f:	45 39 c1             	cmp    r9d,r8d
  10c0a2:	4c 89 54 24 10       	mov    QWORD PTR [rsp+0x10],r10
  10c0a7:	0f 87 b0 00 00 00    	ja     10c15d <quorem+0x10d>
  10c0ad:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  10c0b2:	4c 8d 04 bb          	lea    r8,[rbx+rdi*4]
  10c0b6:	49 83 c0 14          	add    r8,0x14
  10c0ba:	31 c0                	xor    eax,eax
  10c0bc:	4c 89 f2             	mov    rdx,r14
  10c0bf:	90                   	nop
  10c0c0:	8b 2a                	mov    ebp,DWORD PTR [rdx]
  10c0c2:	48 83 c2 04          	add    rdx,0x4
  10c0c6:	0f b7 dd             	movzx  ebx,bp
  10c0c9:	41 0f af dd          	imul   ebx,r13d
  10c0cd:	01 c3                	add    ebx,eax
  10c0cf:	c1 ed 10             	shr    ebp,0x10
  10c0d2:	41 0f af ed          	imul   ebp,r13d
  10c0d6:	44 0f b7 cb          	movzx  r9d,bx
  10c0da:	c1 eb 10             	shr    ebx,0x10
  10c0dd:	01 eb                	add    ebx,ebp
  10c0df:	44 0f b7 db          	movzx  r11d,bx
  10c0e3:	89 d8                	mov    eax,ebx
  10c0e5:	c1 e8 10             	shr    eax,0x10
  10c0e8:	41 8b 3a             	mov    edi,DWORD PTR [r10]
  10c0eb:	0f b7 df             	movzx  ebx,di
  10c0ee:	44 29 cb             	sub    ebx,r9d
  10c0f1:	01 cb                	add    ebx,ecx
  10c0f3:	0f b7 eb             	movzx  ebp,bx
  10c0f6:	c1 fb 10             	sar    ebx,0x10
  10c0f9:	c1 ef 10             	shr    edi,0x10
  10c0fc:	44 29 df             	sub    edi,r11d
  10c0ff:	01 df                	add    edi,ebx
  10c101:	89 f9                	mov    ecx,edi
  10c103:	c1 f9 10             	sar    ecx,0x10
  10c106:	c1 e7 10             	shl    edi,0x10
  10c109:	09 fd                	or     ebp,edi
  10c10b:	41 89 2a             	mov    DWORD PTR [r10],ebp
  10c10e:	49 83 c2 04          	add    r10,0x4
  10c112:	4c 39 fa             	cmp    rdx,r15
  10c115:	76 a9                	jbe    10c0c0 <quorem+0x70>
  10c117:	41 83 38 00          	cmp    DWORD PTR [r8],0x0
  10c11b:	74 07                	je     10c124 <quorem+0xd4>
  10c11d:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
  10c122:	eb 39                	jmp    10c15d <quorem+0x10d>
  10c124:	49 83 c0 fc          	add    r8,0xfffffffffffffffc
  10c128:	48 8b 44 24 10       	mov    rax,QWORD PTR [rsp+0x10]
  10c12d:	49 39 c0             	cmp    r8,rax
  10c130:	76 22                	jbe    10c154 <quorem+0x104>
  10c132:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
  10c137:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  10c13e:	00 00 
  10c140:	41 83 38 00          	cmp    DWORD PTR [r8],0x0
  10c144:	75 13                	jne    10c159 <quorem+0x109>
  10c146:	41 ff cc             	dec    r12d
  10c149:	49 83 c0 fc          	add    r8,0xfffffffffffffffc
  10c14d:	49 39 c0             	cmp    r8,rax
  10c150:	77 ee                	ja     10c140 <quorem+0xf0>
  10c152:	eb 05                	jmp    10c159 <quorem+0x109>
  10c154:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
  10c159:	44 89 63 14          	mov    DWORD PTR [rbx+0x14],r12d
  10c15d:	48 89 df             	mov    rdi,rbx
  10c160:	e8 7b 0d 00 00       	call   10cee0 <__mcmp>
  10c165:	85 c0                	test   eax,eax
  10c167:	78 7e                	js     10c1e7 <quorem+0x197>
  10c169:	31 c9                	xor    ecx,ecx
  10c16b:	4c 8b 44 24 10       	mov    r8,QWORD PTR [rsp+0x10]
  10c170:	4c 89 c0             	mov    rax,r8
  10c173:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10c17a:	84 00 00 00 00 00 
  10c180:	41 8b 16             	mov    edx,DWORD PTR [r14]
  10c183:	49 83 c6 04          	add    r14,0x4
  10c187:	0f b7 f2             	movzx  esi,dx
  10c18a:	c1 ea 10             	shr    edx,0x10
  10c18d:	8b 38                	mov    edi,DWORD PTR [rax]
  10c18f:	0f b7 ef             	movzx  ebp,di
  10c192:	29 f5                	sub    ebp,esi
  10c194:	01 cd                	add    ebp,ecx
  10c196:	0f b7 f5             	movzx  esi,bp
  10c199:	c1 fd 10             	sar    ebp,0x10
  10c19c:	c1 ef 10             	shr    edi,0x10
  10c19f:	29 d7                	sub    edi,edx
  10c1a1:	01 ef                	add    edi,ebp
  10c1a3:	89 f9                	mov    ecx,edi
  10c1a5:	c1 f9 10             	sar    ecx,0x10
  10c1a8:	c1 e7 10             	shl    edi,0x10
  10c1ab:	09 fe                	or     esi,edi
  10c1ad:	89 30                	mov    DWORD PTR [rax],esi
  10c1af:	48 83 c0 04          	add    rax,0x4
  10c1b3:	4d 39 fe             	cmp    r14,r15
  10c1b6:	76 c8                	jbe    10c180 <quorem+0x130>
  10c1b8:	41 ff c5             	inc    r13d
  10c1bb:	49 63 c4             	movsxd rax,r12d
  10c1be:	41 83 3c 80 00       	cmp    DWORD PTR [r8+rax*4],0x0
  10c1c3:	75 22                	jne    10c1e7 <quorem+0x197>
  10c1c5:	49 8d 04 80          	lea    rax,[r8+rax*4]
  10c1c9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  10c1d0:	48 83 c0 fc          	add    rax,0xfffffffffffffffc
  10c1d4:	4c 39 c0             	cmp    rax,r8
  10c1d7:	76 0a                	jbe    10c1e3 <quorem+0x193>
  10c1d9:	83 38 00             	cmp    DWORD PTR [rax],0x0
  10c1dc:	75 05                	jne    10c1e3 <quorem+0x193>
  10c1de:	41 ff cc             	dec    r12d
  10c1e1:	eb ed                	jmp    10c1d0 <quorem+0x180>
  10c1e3:	44 89 63 14          	mov    DWORD PTR [rbx+0x14],r12d
  10c1e7:	44 89 e8             	mov    eax,r13d
  10c1ea:	48 83 c4 18          	add    rsp,0x18
  10c1ee:	5b                   	pop    rbx
  10c1ef:	41 5c                	pop    r12
  10c1f1:	41 5d                	pop    r13
  10c1f3:	41 5e                	pop    r14
  10c1f5:	41 5f                	pop    r15
  10c1f7:	5d                   	pop    rbp
  10c1f8:	c3                   	ret
  10c1f9:	cc                   	int3
  10c1fa:	cc                   	int3
  10c1fb:	cc                   	int3
  10c1fc:	cc                   	int3
  10c1fd:	cc                   	int3
  10c1fe:	cc                   	int3
  10c1ff:	cc                   	int3

000000000010c200 <_Balloc>:
  10c200:	55                   	push   rbp
  10c201:	41 56                	push   r14
  10c203:	53                   	push   rbx
  10c204:	41 89 f6             	mov    r14d,esi
  10c207:	48 89 fb             	mov    rbx,rdi
  10c20a:	48 8b 4f 78          	mov    rcx,QWORD PTR [rdi+0x78]
  10c20e:	48 85 c9             	test   rcx,rcx
  10c211:	75 1e                	jne    10c231 <_Balloc+0x31>
  10c213:	be 08 00 00 00       	mov    esi,0x8
  10c218:	ba 41 00 00 00       	mov    edx,0x41
  10c21d:	48 89 df             	mov    rdi,rbx
  10c220:	e8 9b 17 00 00       	call   10d9c0 <_calloc_r>
  10c225:	48 89 c1             	mov    rcx,rax
  10c228:	48 89 43 78          	mov    QWORD PTR [rbx+0x78],rax
  10c22c:	48 85 c0             	test   rax,rax
  10c22f:	74 4d                	je     10c27e <_Balloc+0x7e>
  10c231:	49 63 d6             	movsxd rdx,r14d
  10c234:	48 8b 04 d1          	mov    rax,QWORD PTR [rcx+rdx*8]
  10c238:	48 85 c0             	test   rax,rax
  10c23b:	74 09                	je     10c246 <_Balloc+0x46>
  10c23d:	48 8b 30             	mov    rsi,QWORD PTR [rax]
  10c240:	48 89 34 d1          	mov    QWORD PTR [rcx+rdx*8],rsi
  10c244:	eb 2e                	jmp    10c274 <_Balloc+0x74>
  10c246:	bd 01 00 00 00       	mov    ebp,0x1
  10c24b:	44 89 f1             	mov    ecx,r14d
  10c24e:	d3 e5                	shl    ebp,cl
  10c250:	48 63 c5             	movsxd rax,ebp
  10c253:	48 8d 14 85 1c 00 00 	lea    rdx,[rax*4+0x1c]
  10c25a:	00 
  10c25b:	be 01 00 00 00       	mov    esi,0x1
  10c260:	48 89 df             	mov    rdi,rbx
  10c263:	e8 58 17 00 00       	call   10d9c0 <_calloc_r>
  10c268:	48 85 c0             	test   rax,rax
  10c26b:	74 11                	je     10c27e <_Balloc+0x7e>
  10c26d:	44 89 70 08          	mov    DWORD PTR [rax+0x8],r14d
  10c271:	89 68 0c             	mov    DWORD PTR [rax+0xc],ebp
  10c274:	48 c7 40 10 00 00 00 	mov    QWORD PTR [rax+0x10],0x0
  10c27b:	00 
  10c27c:	eb 02                	jmp    10c280 <_Balloc+0x80>
  10c27e:	31 c0                	xor    eax,eax
  10c280:	5b                   	pop    rbx
  10c281:	41 5e                	pop    r14
  10c283:	5d                   	pop    rbp
  10c284:	c3                   	ret
  10c285:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  10c28c:	00 00 00 00 

000000000010c290 <_Bfree>:
  10c290:	48 85 f6             	test   rsi,rsi
  10c293:	74 13                	je     10c2a8 <_Bfree+0x18>
  10c295:	48 8b 47 78          	mov    rax,QWORD PTR [rdi+0x78]
  10c299:	48 63 4e 08          	movsxd rcx,DWORD PTR [rsi+0x8]
  10c29d:	48 8b 14 c8          	mov    rdx,QWORD PTR [rax+rcx*8]
  10c2a1:	48 89 16             	mov    QWORD PTR [rsi],rdx
  10c2a4:	48 89 34 c8          	mov    QWORD PTR [rax+rcx*8],rsi
  10c2a8:	c3                   	ret
  10c2a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

000000000010c2b0 <__multadd>:
  10c2b0:	55                   	push   rbp
  10c2b1:	41 57                	push   r15
  10c2b3:	41 56                	push   r14
  10c2b5:	41 55                	push   r13
  10c2b7:	41 54                	push   r12
  10c2b9:	53                   	push   rbx
  10c2ba:	50                   	push   rax
  10c2bb:	89 cd                	mov    ebp,ecx
  10c2bd:	49 89 f4             	mov    r12,rsi
  10c2c0:	49 89 fe             	mov    r14,rdi
  10c2c3:	4c 63 6e 14          	movsxd r13,DWORD PTR [rsi+0x14]
  10c2c7:	41 83 fd 02          	cmp    r13d,0x2
  10c2cb:	b8 01 00 00 00       	mov    eax,0x1
  10c2d0:	41 0f 4d c5          	cmovge eax,r13d
  10c2d4:	31 c9                	xor    ecx,ecx
  10c2d6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10c2dd:	00 00 00 
  10c2e0:	41 8b 7c 8c 18       	mov    edi,DWORD PTR [r12+rcx*4+0x18]
  10c2e5:	0f b7 f7             	movzx  esi,di
  10c2e8:	0f af f2             	imul   esi,edx
  10c2eb:	01 ee                	add    esi,ebp
  10c2ed:	c1 ef 10             	shr    edi,0x10
  10c2f0:	0f af fa             	imul   edi,edx
  10c2f3:	0f b7 de             	movzx  ebx,si
  10c2f6:	c1 ee 10             	shr    esi,0x10
  10c2f9:	01 fe                	add    esi,edi
  10c2fb:	89 f5                	mov    ebp,esi
  10c2fd:	c1 ed 10             	shr    ebp,0x10
  10c300:	89 f7                	mov    edi,esi
  10c302:	c1 e7 10             	shl    edi,0x10
  10c305:	09 fb                	or     ebx,edi
  10c307:	41 89 5c 8c 18       	mov    DWORD PTR [r12+rcx*4+0x18],ebx
  10c30c:	48 ff c1             	inc    rcx
  10c30f:	39 c8                	cmp    eax,ecx
  10c311:	75 cd                	jne    10c2e0 <__multadd+0x30>
  10c313:	81 fe 00 00 01 00    	cmp    esi,0x10000
  10c319:	0f 82 d0 00 00 00    	jb     10c3ef <__multadd+0x13f>
  10c31f:	45 3b 6c 24 0c       	cmp    r13d,DWORD PTR [r12+0xc]
  10c324:	0f 8c b7 00 00 00    	jl     10c3e1 <__multadd+0x131>
  10c32a:	4d 63 7c 24 08       	movsxd r15,DWORD PTR [r12+0x8]
  10c32f:	49 8b 46 78          	mov    rax,QWORD PTR [r14+0x78]
  10c333:	48 85 c0             	test   rax,rax
  10c336:	75 1b                	jne    10c353 <__multadd+0xa3>
  10c338:	be 08 00 00 00       	mov    esi,0x8
  10c33d:	ba 41 00 00 00       	mov    edx,0x41
  10c342:	4c 89 f7             	mov    rdi,r14
  10c345:	e8 76 16 00 00       	call   10d9c0 <_calloc_r>
  10c34a:	49 89 46 78          	mov    QWORD PTR [r14+0x78],rax
  10c34e:	48 85 c0             	test   rax,rax
  10c351:	74 59                	je     10c3ac <__multadd+0xfc>
  10c353:	4a 8b 5c f8 08       	mov    rbx,QWORD PTR [rax+r15*8+0x8]
  10c358:	48 85 db             	test   rbx,rbx
  10c35b:	74 0a                	je     10c367 <__multadd+0xb7>
  10c35d:	48 8b 0b             	mov    rcx,QWORD PTR [rbx]
  10c360:	4a 89 4c f8 08       	mov    QWORD PTR [rax+r15*8+0x8],rcx
  10c365:	eb 3b                	jmp    10c3a2 <__multadd+0xf2>
  10c367:	41 ff c7             	inc    r15d
  10c36a:	b8 01 00 00 00       	mov    eax,0x1
  10c36f:	44 89 f9             	mov    ecx,r15d
  10c372:	d3 e0                	shl    eax,cl
  10c374:	89 44 24 04          	mov    DWORD PTR [rsp+0x4],eax
  10c378:	48 98                	cdqe
  10c37a:	48 8d 14 85 1c 00 00 	lea    rdx,[rax*4+0x1c]
  10c381:	00 
  10c382:	be 01 00 00 00       	mov    esi,0x1
  10c387:	4c 89 f7             	mov    rdi,r14
  10c38a:	e8 31 16 00 00       	call   10d9c0 <_calloc_r>
  10c38f:	48 85 c0             	test   rax,rax
  10c392:	74 18                	je     10c3ac <__multadd+0xfc>
  10c394:	48 89 c3             	mov    rbx,rax
  10c397:	44 89 78 08          	mov    DWORD PTR [rax+0x8],r15d
  10c39b:	8b 44 24 04          	mov    eax,DWORD PTR [rsp+0x4]
  10c39f:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
  10c3a2:	48 c7 43 10 00 00 00 	mov    QWORD PTR [rbx+0x10],0x0
  10c3a9:	00 
  10c3aa:	eb 02                	jmp    10c3ae <__multadd+0xfe>
  10c3ac:	31 db                	xor    ebx,ebx
  10c3ae:	48 8d 7b 10          	lea    rdi,[rbx+0x10]
  10c3b2:	49 8d 74 24 10       	lea    rsi,[r12+0x10]
  10c3b7:	49 63 44 24 14       	movsxd rax,DWORD PTR [r12+0x14]
  10c3bc:	48 8d 14 85 08 00 00 	lea    rdx,[rax*4+0x8]
  10c3c3:	00 
  10c3c4:	e8 a7 e7 ff ff       	call   10ab70 <memcpy>
  10c3c9:	49 8b 46 78          	mov    rax,QWORD PTR [r14+0x78]
  10c3cd:	49 63 4c 24 08       	movsxd rcx,DWORD PTR [r12+0x8]
  10c3d2:	48 8b 14 c8          	mov    rdx,QWORD PTR [rax+rcx*8]
  10c3d6:	49 89 14 24          	mov    QWORD PTR [r12],rdx
  10c3da:	4c 89 24 c8          	mov    QWORD PTR [rax+rcx*8],r12
  10c3de:	49 89 dc             	mov    r12,rbx
  10c3e1:	41 8d 45 01          	lea    eax,[r13+0x1]
  10c3e5:	43 89 6c ac 18       	mov    DWORD PTR [r12+r13*4+0x18],ebp
  10c3ea:	41 89 44 24 14       	mov    DWORD PTR [r12+0x14],eax
  10c3ef:	4c 89 e0             	mov    rax,r12
  10c3f2:	48 83 c4 08          	add    rsp,0x8
  10c3f6:	5b                   	pop    rbx
  10c3f7:	41 5c                	pop    r12
  10c3f9:	41 5d                	pop    r13
  10c3fb:	41 5e                	pop    r14
  10c3fd:	41 5f                	pop    r15
  10c3ff:	5d                   	pop    rbp
  10c400:	c3                   	ret
  10c401:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10c408:	0f 1f 84 00 00 00 00 
  10c40f:	00 

000000000010c410 <__s2b>:
  10c410:	55                   	push   rbp
  10c411:	41 57                	push   r15
  10c413:	41 56                	push   r14
  10c415:	41 55                	push   r13
  10c417:	41 54                	push   r12
  10c419:	53                   	push   rbx
  10c41a:	50                   	push   rax
  10c41b:	45 89 c5             	mov    r13d,r8d
  10c41e:	41 89 ce             	mov    r14d,ecx
  10c421:	41 89 d4             	mov    r12d,edx
  10c424:	48 89 f3             	mov    rbx,rsi
  10c427:	49 89 ff             	mov    r15,rdi
  10c42a:	31 ed                	xor    ebp,ebp
  10c42c:	83 f9 0a             	cmp    ecx,0xa
  10c42f:	7c 37                	jl     10c468 <__s2b+0x58>
  10c431:	41 8d 46 08          	lea    eax,[r14+0x8]
  10c435:	48 98                	cdqe
  10c437:	48 69 c0 39 8e e3 38 	imul   rax,rax,0x38e38e39
  10c43e:	48 89 c1             	mov    rcx,rax
  10c441:	48 c1 e9 3f          	shr    rcx,0x3f
  10c445:	48 c1 f8 21          	sar    rax,0x21
  10c449:	01 c8                	add    eax,ecx
  10c44b:	31 ed                	xor    ebp,ebp
  10c44d:	b9 01 00 00 00       	mov    ecx,0x1
  10c452:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10c459:	1f 84 00 00 00 00 00 
  10c460:	01 c9                	add    ecx,ecx
  10c462:	ff c5                	inc    ebp
  10c464:	39 c8                	cmp    eax,ecx
  10c466:	7f f8                	jg     10c460 <__s2b+0x50>
  10c468:	49 8b 4f 78          	mov    rcx,QWORD PTR [r15+0x78]
  10c46c:	48 85 c9             	test   rcx,rcx
  10c46f:	75 19                	jne    10c48a <__s2b+0x7a>
  10c471:	be 08 00 00 00       	mov    esi,0x8
  10c476:	ba 41 00 00 00       	mov    edx,0x41
  10c47b:	4c 89 ff             	mov    rdi,r15
  10c47e:	e8 3d 15 00 00       	call   10d9c0 <_calloc_r>
  10c483:	48 89 c1             	mov    rcx,rax
  10c486:	49 89 47 78          	mov    QWORD PTR [r15+0x78],rax
  10c48a:	89 ea                	mov    edx,ebp
  10c48c:	48 8b 04 d1          	mov    rax,QWORD PTR [rcx+rdx*8]
  10c490:	48 85 c0             	test   rax,rax
  10c493:	74 09                	je     10c49e <__s2b+0x8e>
  10c495:	48 8b 30             	mov    rsi,QWORD PTR [rax]
  10c498:	48 89 34 d1          	mov    QWORD PTR [rcx+rdx*8],rsi
  10c49c:	eb 32                	jmp    10c4d0 <__s2b+0xc0>
  10c49e:	b8 01 00 00 00       	mov    eax,0x1
  10c4a3:	89 e9                	mov    ecx,ebp
  10c4a5:	d3 e0                	shl    eax,cl
  10c4a7:	44 89 6c 24 04       	mov    DWORD PTR [rsp+0x4],r13d
  10c4ac:	4c 63 e8             	movsxd r13,eax
  10c4af:	4a 8d 14 ad 1c 00 00 	lea    rdx,[r13*4+0x1c]
  10c4b6:	00 
  10c4b7:	be 01 00 00 00       	mov    esi,0x1
  10c4bc:	4c 89 ff             	mov    rdi,r15
  10c4bf:	e8 fc 14 00 00       	call   10d9c0 <_calloc_r>
  10c4c4:	89 68 08             	mov    DWORD PTR [rax+0x8],ebp
  10c4c7:	44 89 68 0c          	mov    DWORD PTR [rax+0xc],r13d
  10c4cb:	44 8b 6c 24 04       	mov    r13d,DWORD PTR [rsp+0x4]
  10c4d0:	44 89 68 18          	mov    DWORD PTR [rax+0x18],r13d
  10c4d4:	48 b9 00 00 00 00 01 	movabs rcx,0x100000000
  10c4db:	00 00 00 
  10c4de:	48 89 48 10          	mov    QWORD PTR [rax+0x10],rcx
  10c4e2:	41 83 fc 0a          	cmp    r12d,0xa
  10c4e6:	7c 3d                	jl     10c525 <__s2b+0x115>
  10c4e8:	41 8d 6c 24 f7       	lea    ebp,[r12-0x9]
  10c4ed:	48 83 c3 0a          	add    rbx,0xa
  10c4f1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10c4f8:	0f 1f 84 00 00 00 00 
  10c4ff:	00 
  10c500:	0f be 4b ff          	movsx  ecx,BYTE PTR [rbx-0x1]
  10c504:	83 c1 d0             	add    ecx,0xffffffd0
  10c507:	4c 89 ff             	mov    rdi,r15
  10c50a:	48 89 c6             	mov    rsi,rax
  10c50d:	ba 0a 00 00 00       	mov    edx,0xa
  10c512:	e8 99 fd ff ff       	call   10c2b0 <__multadd>
  10c517:	48 ff c3             	inc    rbx
  10c51a:	ff cd                	dec    ebp
  10c51c:	75 e2                	jne    10c500 <__s2b+0xf0>
  10c51e:	45 39 f4             	cmp    r12d,r14d
  10c521:	7c 11                	jl     10c534 <__s2b+0x124>
  10c523:	eb 3a                	jmp    10c55f <__s2b+0x14f>
  10c525:	48 83 c3 0a          	add    rbx,0xa
  10c529:	41 bc 09 00 00 00    	mov    r12d,0x9
  10c52f:	45 39 f4             	cmp    r12d,r14d
  10c532:	7d 2b                	jge    10c55f <__s2b+0x14f>
  10c534:	45 29 e6             	sub    r14d,r12d
  10c537:	31 ed                	xor    ebp,ebp
  10c539:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  10c540:	0f be 0c 2b          	movsx  ecx,BYTE PTR [rbx+rbp*1]
  10c544:	83 c1 d0             	add    ecx,0xffffffd0
  10c547:	4c 89 ff             	mov    rdi,r15
  10c54a:	48 89 c6             	mov    rsi,rax
  10c54d:	ba 0a 00 00 00       	mov    edx,0xa
  10c552:	e8 59 fd ff ff       	call   10c2b0 <__multadd>
  10c557:	48 ff c5             	inc    rbp
  10c55a:	41 39 ee             	cmp    r14d,ebp
  10c55d:	75 e1                	jne    10c540 <__s2b+0x130>
  10c55f:	48 83 c4 08          	add    rsp,0x8
  10c563:	5b                   	pop    rbx
  10c564:	41 5c                	pop    r12
  10c566:	41 5d                	pop    r13
  10c568:	41 5e                	pop    r14
  10c56a:	41 5f                	pop    r15
  10c56c:	5d                   	pop    rbp
  10c56d:	c3                   	ret
  10c56e:	66 90                	xchg   ax,ax

000000000010c570 <__hi0bits>:
  10c570:	89 f8                	mov    eax,edi
  10c572:	c1 e0 10             	shl    eax,0x10
  10c575:	31 c9                	xor    ecx,ecx
  10c577:	81 ff 00 00 01 00    	cmp    edi,0x10000
  10c57d:	0f 92 c1             	setb   cl
  10c580:	0f 43 c7             	cmovae eax,edi
  10c583:	c1 e1 04             	shl    ecx,0x4
  10c586:	8d 51 08             	lea    edx,[rcx+0x8]
  10c589:	89 c6                	mov    esi,eax
  10c58b:	c1 e6 08             	shl    esi,0x8
  10c58e:	3d 00 00 00 01       	cmp    eax,0x1000000
  10c593:	0f 43 f0             	cmovae esi,eax
  10c596:	0f 43 d1             	cmovae edx,ecx
  10c599:	8d 42 04             	lea    eax,[rdx+0x4]
  10c59c:	89 f1                	mov    ecx,esi
  10c59e:	c1 e1 04             	shl    ecx,0x4
  10c5a1:	81 fe 00 00 00 10    	cmp    esi,0x10000000
  10c5a7:	0f 43 ce             	cmovae ecx,esi
  10c5aa:	0f 43 c2             	cmovae eax,edx
  10c5ad:	8d 14 8d 00 00 00 00 	lea    edx,[rcx*4+0x0]
  10c5b4:	81 f9 00 00 00 40    	cmp    ecx,0x40000000
  10c5ba:	0f 43 d1             	cmovae edx,ecx
  10c5bd:	8d 48 02             	lea    ecx,[rax+0x2]
  10c5c0:	0f 43 c8             	cmovae ecx,eax
  10c5c3:	85 d2                	test   edx,edx
  10c5c5:	78 0f                	js     10c5d6 <__hi0bits+0x66>
  10c5c7:	b8 20 00 00 00       	mov    eax,0x20
  10c5cc:	f7 c2 00 00 00 40    	test   edx,0x40000000
  10c5d2:	74 04                	je     10c5d8 <__hi0bits+0x68>
  10c5d4:	ff c1                	inc    ecx
  10c5d6:	89 c8                	mov    eax,ecx
  10c5d8:	c3                   	ret
  10c5d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

000000000010c5e0 <__lo0bits>:
  10c5e0:	8b 0f                	mov    ecx,DWORD PTR [rdi]
  10c5e2:	f6 c1 07             	test   cl,0x7
  10c5e5:	74 16                	je     10c5fd <__lo0bits+0x1d>
  10c5e7:	31 c0                	xor    eax,eax
  10c5e9:	f6 c1 01             	test   cl,0x1
  10c5ec:	75 75                	jne    10c663 <__lo0bits+0x83>
  10c5ee:	f6 c1 02             	test   cl,0x2
  10c5f1:	75 65                	jne    10c658 <__lo0bits+0x78>
  10c5f3:	c1 e9 02             	shr    ecx,0x2
  10c5f6:	be 02 00 00 00       	mov    esi,0x2
  10c5fb:	eb 62                	jmp    10c65f <__lo0bits+0x7f>
  10c5fd:	89 c8                	mov    eax,ecx
  10c5ff:	c1 e8 10             	shr    eax,0x10
  10c602:	31 d2                	xor    edx,edx
  10c604:	66 85 c9             	test   cx,cx
  10c607:	0f 45 c1             	cmovne eax,ecx
  10c60a:	0f 94 c2             	sete   dl
  10c60d:	c1 e2 04             	shl    edx,0x4
  10c610:	8d 4a 08             	lea    ecx,[rdx+0x8]
  10c613:	89 c6                	mov    esi,eax
  10c615:	c1 ee 08             	shr    esi,0x8
  10c618:	84 c0                	test   al,al
  10c61a:	0f 45 ca             	cmovne ecx,edx
  10c61d:	0f 45 f0             	cmovne esi,eax
  10c620:	8d 41 04             	lea    eax,[rcx+0x4]
  10c623:	89 f2                	mov    edx,esi
  10c625:	c1 ea 04             	shr    edx,0x4
  10c628:	40 f6 c6 0f          	test   sil,0xf
  10c62c:	0f 45 c1             	cmovne eax,ecx
  10c62f:	0f 45 d6             	cmovne edx,esi
  10c632:	8d 70 02             	lea    esi,[rax+0x2]
  10c635:	89 d1                	mov    ecx,edx
  10c637:	c1 e9 02             	shr    ecx,0x2
  10c63a:	f6 c2 03             	test   dl,0x3
  10c63d:	0f 45 f0             	cmovne esi,eax
  10c640:	0f 45 ca             	cmovne ecx,edx
  10c643:	f6 c1 01             	test   cl,0x1
  10c646:	75 17                	jne    10c65f <__lo0bits+0x7f>
  10c648:	b8 20 00 00 00       	mov    eax,0x20
  10c64d:	83 f9 02             	cmp    ecx,0x2
  10c650:	72 11                	jb     10c663 <__lo0bits+0x83>
  10c652:	ff c6                	inc    esi
  10c654:	d1 e9                	shr    ecx,1
  10c656:	eb 07                	jmp    10c65f <__lo0bits+0x7f>
  10c658:	d1 e9                	shr    ecx,1
  10c65a:	be 01 00 00 00       	mov    esi,0x1
  10c65f:	89 0f                	mov    DWORD PTR [rdi],ecx
  10c661:	89 f0                	mov    eax,esi
  10c663:	c3                   	ret
  10c664:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10c66b:	00 00 00 00 00 

000000000010c670 <__i2b>:
  10c670:	55                   	push   rbp
  10c671:	53                   	push   rbx
  10c672:	50                   	push   rax
  10c673:	89 f5                	mov    ebp,esi
  10c675:	48 89 fb             	mov    rbx,rdi
  10c678:	48 8b 4f 78          	mov    rcx,QWORD PTR [rdi+0x78]
  10c67c:	48 85 c9             	test   rcx,rcx
  10c67f:	75 1e                	jne    10c69f <__i2b+0x2f>
  10c681:	be 08 00 00 00       	mov    esi,0x8
  10c686:	ba 41 00 00 00       	mov    edx,0x41
  10c68b:	48 89 df             	mov    rdi,rbx
  10c68e:	e8 2d 13 00 00       	call   10d9c0 <_calloc_r>
  10c693:	48 89 c1             	mov    rcx,rax
  10c696:	48 89 43 78          	mov    QWORD PTR [rbx+0x78],rax
  10c69a:	48 85 c0             	test   rax,rax
  10c69d:	74 41                	je     10c6e0 <__i2b+0x70>
  10c69f:	48 8b 41 08          	mov    rax,QWORD PTR [rcx+0x8]
  10c6a3:	48 85 c0             	test   rax,rax
  10c6a6:	74 09                	je     10c6b1 <__i2b+0x41>
  10c6a8:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  10c6ab:	48 89 51 08          	mov    QWORD PTR [rcx+0x8],rdx
  10c6af:	eb 25                	jmp    10c6d6 <__i2b+0x66>
  10c6b1:	be 01 00 00 00       	mov    esi,0x1
  10c6b6:	ba 24 00 00 00       	mov    edx,0x24
  10c6bb:	48 89 df             	mov    rdi,rbx
  10c6be:	e8 fd 12 00 00       	call   10d9c0 <_calloc_r>
  10c6c3:	48 85 c0             	test   rax,rax
  10c6c6:	74 18                	je     10c6e0 <__i2b+0x70>
  10c6c8:	48 b9 01 00 00 00 02 	movabs rcx,0x200000001
  10c6cf:	00 00 00 
  10c6d2:	48 89 48 08          	mov    QWORD PTR [rax+0x8],rcx
  10c6d6:	48 c7 40 10 00 00 00 	mov    QWORD PTR [rax+0x10],0x0
  10c6dd:	00 
  10c6de:	eb 02                	jmp    10c6e2 <__i2b+0x72>
  10c6e0:	31 c0                	xor    eax,eax
  10c6e2:	89 68 18             	mov    DWORD PTR [rax+0x18],ebp
  10c6e5:	c7 40 14 01 00 00 00 	mov    DWORD PTR [rax+0x14],0x1
  10c6ec:	48 83 c4 08          	add    rsp,0x8
  10c6f0:	5b                   	pop    rbx
  10c6f1:	5d                   	pop    rbp
  10c6f2:	c3                   	ret
  10c6f3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10c6fa:	84 00 00 00 00 00 

000000000010c700 <__multiply>:
  10c700:	55                   	push   rbp
  10c701:	41 57                	push   r15
  10c703:	41 56                	push   r14
  10c705:	41 55                	push   r13
  10c707:	41 54                	push   r12
  10c709:	53                   	push   rbx
  10c70a:	48 83 ec 18          	sub    rsp,0x18
  10c70e:	49 89 f6             	mov    r14,rsi
  10c711:	8b 46 14             	mov    eax,DWORD PTR [rsi+0x14]
  10c714:	3b 42 14             	cmp    eax,DWORD PTR [rdx+0x14]
  10c717:	48 89 fb             	mov    rbx,rdi
  10c71a:	49 89 d5             	mov    r13,rdx
  10c71d:	4c 0f 4c ee          	cmovl  r13,rsi
  10c721:	4c 0f 4c f2          	cmovl  r14,rdx
  10c725:	49 63 46 14          	movsxd rax,DWORD PTR [r14+0x14]
  10c729:	4d 63 5d 14          	movsxd r11,DWORD PTR [r13+0x14]
  10c72d:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  10c732:	4d 8d 24 03          	lea    r12,[r11+rax*1]
  10c736:	31 ed                	xor    ebp,ebp
  10c738:	45 3b 66 0c          	cmp    r12d,DWORD PTR [r14+0xc]
  10c73c:	4d 63 7e 08          	movsxd r15,DWORD PTR [r14+0x8]
  10c740:	0f 9f c0             	setg   al
  10c743:	48 8b 4f 78          	mov    rcx,QWORD PTR [rdi+0x78]
  10c747:	48 85 c9             	test   rcx,rcx
  10c74a:	75 35                	jne    10c781 <__multiply+0x81>
  10c74c:	be 08 00 00 00       	mov    esi,0x8
  10c751:	ba 41 00 00 00       	mov    edx,0x41
  10c756:	48 89 df             	mov    rdi,rbx
  10c759:	4c 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],r11
  10c75e:	88 44 24 07          	mov    BYTE PTR [rsp+0x7],al
  10c762:	e8 59 12 00 00       	call   10d9c0 <_calloc_r>
  10c767:	4c 8b 5c 24 08       	mov    r11,QWORD PTR [rsp+0x8]
  10c76c:	48 89 c1             	mov    rcx,rax
  10c76f:	0f b6 44 24 07       	movzx  eax,BYTE PTR [rsp+0x7]
  10c774:	48 89 4b 78          	mov    QWORD PTR [rbx+0x78],rcx
  10c778:	48 85 c9             	test   rcx,rcx
  10c77b:	0f 84 bc 02 00 00    	je     10ca3d <__multiply+0x33d>
  10c781:	40 88 c5             	mov    bpl,al
  10c784:	49 01 ef             	add    r15,rbp
  10c787:	4a 8b 04 f9          	mov    rax,QWORD PTR [rcx+r15*8]
  10c78b:	48 85 c0             	test   rax,rax
  10c78e:	74 09                	je     10c799 <__multiply+0x99>
  10c790:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  10c793:	4a 89 14 f9          	mov    QWORD PTR [rcx+r15*8],rdx
  10c797:	eb 3c                	jmp    10c7d5 <__multiply+0xd5>
  10c799:	4c 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],r11
  10c79e:	bd 01 00 00 00       	mov    ebp,0x1
  10c7a3:	44 89 f9             	mov    ecx,r15d
  10c7a6:	d3 e5                	shl    ebp,cl
  10c7a8:	48 63 c5             	movsxd rax,ebp
  10c7ab:	48 8d 14 85 1c 00 00 	lea    rdx,[rax*4+0x1c]
  10c7b2:	00 
  10c7b3:	be 01 00 00 00       	mov    esi,0x1
  10c7b8:	48 89 df             	mov    rdi,rbx
  10c7bb:	e8 00 12 00 00       	call   10d9c0 <_calloc_r>
  10c7c0:	48 85 c0             	test   rax,rax
  10c7c3:	0f 84 7b 02 00 00    	je     10ca44 <__multiply+0x344>
  10c7c9:	44 89 78 08          	mov    DWORD PTR [rax+0x8],r15d
  10c7cd:	89 68 0c             	mov    DWORD PTR [rax+0xc],ebp
  10c7d0:	4c 8b 5c 24 08       	mov    r11,QWORD PTR [rsp+0x8]
  10c7d5:	48 c7 40 10 00 00 00 	mov    QWORD PTR [rax+0x10],0x0
  10c7dc:	00 
  10c7dd:	4c 8d 50 18          	lea    r10,[rax+0x18]
  10c7e1:	45 85 e4             	test   r12d,r12d
  10c7e4:	0f 8e e5 00 00 00    	jle    10c8cf <__multiply+0x1cf>
  10c7ea:	4a 8d 14 a0          	lea    rdx,[rax+r12*4]
  10c7ee:	48 83 c2 18          	add    rdx,0x18
  10c7f2:	4c 8d 48 1c          	lea    r9,[rax+0x1c]
  10c7f6:	4c 39 ca             	cmp    rdx,r9
  10c7f9:	4c 0f 47 ca          	cmova  r9,rdx
  10c7fd:	49 29 c1             	sub    r9,rax
  10c800:	49 83 c1 e7          	add    r9,0xffffffffffffffe7
  10c804:	4c 89 d6             	mov    rsi,r10
  10c807:	49 83 f9 1c          	cmp    r9,0x1c
  10c80b:	0f 82 af 00 00 00    	jb     10c8c0 <__multiply+0x1c0>
  10c811:	49 c1 e9 02          	shr    r9,0x2
  10c815:	49 ff c1             	inc    r9
  10c818:	4d 89 c8             	mov    r8,r9
  10c81b:	49 83 e0 f8          	and    r8,0xfffffffffffffff8
  10c81f:	49 8d 70 f8          	lea    rsi,[r8-0x8]
  10c823:	48 89 f5             	mov    rbp,rsi
  10c826:	48 c1 ed 03          	shr    rbp,0x3
  10c82a:	48 ff c5             	inc    rbp
  10c82d:	89 ef                	mov    edi,ebp
  10c82f:	83 e7 03             	and    edi,0x3
  10c832:	48 83 fe 18          	cmp    rsi,0x18
  10c836:	73 04                	jae    10c83c <__multiply+0x13c>
  10c838:	31 f6                	xor    esi,esi
  10c83a:	eb 49                	jmp    10c885 <__multiply+0x185>
  10c83c:	48 83 e5 fc          	and    rbp,0xfffffffffffffffc
  10c840:	31 f6                	xor    esi,esi
  10c842:	0f 57 c0             	xorps  xmm0,xmm0
  10c845:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  10c84c:	00 00 00 00 
  10c850:	0f 11 44 b0 18       	movups XMMWORD PTR [rax+rsi*4+0x18],xmm0
  10c855:	0f 11 44 b0 28       	movups XMMWORD PTR [rax+rsi*4+0x28],xmm0
  10c85a:	0f 11 44 b0 38       	movups XMMWORD PTR [rax+rsi*4+0x38],xmm0
  10c85f:	0f 11 44 b0 48       	movups XMMWORD PTR [rax+rsi*4+0x48],xmm0
  10c864:	0f 11 44 b0 58       	movups XMMWORD PTR [rax+rsi*4+0x58],xmm0
  10c869:	0f 11 44 b0 68       	movups XMMWORD PTR [rax+rsi*4+0x68],xmm0
  10c86e:	0f 11 44 b0 78       	movups XMMWORD PTR [rax+rsi*4+0x78],xmm0
  10c873:	0f 11 84 b0 88 00 00 	movups XMMWORD PTR [rax+rsi*4+0x88],xmm0
  10c87a:	00 
  10c87b:	48 83 c6 20          	add    rsi,0x20
  10c87f:	48 83 c5 fc          	add    rbp,0xfffffffffffffffc
  10c883:	75 cb                	jne    10c850 <__multiply+0x150>
  10c885:	48 85 ff             	test   rdi,rdi
  10c888:	74 28                	je     10c8b2 <__multiply+0x1b2>
  10c88a:	48 8d 34 b0          	lea    rsi,[rax+rsi*4]
  10c88e:	48 83 c6 28          	add    rsi,0x28
  10c892:	48 c1 e7 05          	shl    rdi,0x5
  10c896:	31 ed                	xor    ebp,ebp
  10c898:	0f 57 c0             	xorps  xmm0,xmm0
  10c89b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  10c8a0:	0f 11 44 2e f0       	movups XMMWORD PTR [rsi+rbp*1-0x10],xmm0
  10c8a5:	0f 11 04 2e          	movups XMMWORD PTR [rsi+rbp*1],xmm0
  10c8a9:	48 83 c5 20          	add    rbp,0x20
  10c8ad:	48 39 ef             	cmp    rdi,rbp
  10c8b0:	75 ee                	jne    10c8a0 <__multiply+0x1a0>
  10c8b2:	4d 39 c1             	cmp    r9,r8
  10c8b5:	74 18                	je     10c8cf <__multiply+0x1cf>
  10c8b7:	4b 8d 34 82          	lea    rsi,[r10+r8*4]
  10c8bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  10c8c0:	c7 06 00 00 00 00    	mov    DWORD PTR [rsi],0x0
  10c8c6:	48 83 c6 04          	add    rsi,0x4
  10c8ca:	48 39 d6             	cmp    rsi,rdx
  10c8cd:	72 f1                	jb     10c8c0 <__multiply+0x1c0>
  10c8cf:	45 85 db             	test   r11d,r11d
  10c8d2:	0f 8e 1c 01 00 00    	jle    10c9f4 <__multiply+0x2f4>
  10c8d8:	48 8b 4c 24 10       	mov    rcx,QWORD PTR [rsp+0x10]
  10c8dd:	4d 8d 0c 8e          	lea    r9,[r14+rcx*4]
  10c8e1:	49 83 c1 18          	add    r9,0x18
  10c8e5:	49 83 c6 18          	add    r14,0x18
  10c8e9:	4e 8d 04 9d 18 00 00 	lea    r8,[r11*4+0x18]
  10c8f0:	00 
  10c8f1:	4d 01 e8             	add    r8,r13
  10c8f4:	49 83 c5 18          	add    r13,0x18
  10c8f8:	eb 17                	jmp    10c911 <__multiply+0x211>
  10c8fa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  10c900:	49 83 c5 04          	add    r13,0x4
  10c904:	49 83 c2 04          	add    r10,0x4
  10c908:	4d 39 c5             	cmp    r13,r8
  10c90b:	0f 83 e3 00 00 00    	jae    10c9f4 <__multiply+0x2f4>
  10c911:	41 8b 6d 00          	mov    ebp,DWORD PTR [r13+0x0]
  10c915:	41 89 eb             	mov    r11d,ebp
  10c918:	41 81 e3 ff ff 00 00 	and    r11d,0xffff
  10c91f:	74 60                	je     10c981 <__multiply+0x281>
  10c921:	31 ed                	xor    ebp,ebp
  10c923:	31 c9                	xor    ecx,ecx
  10c925:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  10c92c:	00 00 00 00 
  10c930:	41 8b 14 2e          	mov    edx,DWORD PTR [r14+rbp*1]
  10c934:	0f b7 da             	movzx  ebx,dx
  10c937:	41 0f af db          	imul   ebx,r11d
  10c93b:	41 8b 34 2a          	mov    esi,DWORD PTR [r10+rbp*1]
  10c93f:	0f b7 fe             	movzx  edi,si
  10c942:	01 cf                	add    edi,ecx
  10c944:	01 df                	add    edi,ebx
  10c946:	0f b7 df             	movzx  ebx,di
  10c949:	c1 ef 10             	shr    edi,0x10
  10c94c:	c1 ea 10             	shr    edx,0x10
  10c94f:	41 0f af d3          	imul   edx,r11d
  10c953:	c1 ee 10             	shr    esi,0x10
  10c956:	01 d6                	add    esi,edx
  10c958:	01 fe                	add    esi,edi
  10c95a:	89 f1                	mov    ecx,esi
  10c95c:	c1 e9 10             	shr    ecx,0x10
  10c95f:	c1 e6 10             	shl    esi,0x10
  10c962:	09 f3                	or     ebx,esi
  10c964:	41 89 1c 2a          	mov    DWORD PTR [r10+rbp*1],ebx
  10c968:	49 8d 14 2e          	lea    rdx,[r14+rbp*1]
  10c96c:	48 83 c2 04          	add    rdx,0x4
  10c970:	48 83 c5 04          	add    rbp,0x4
  10c974:	4c 39 ca             	cmp    rdx,r9
  10c977:	72 b7                	jb     10c930 <__multiply+0x230>
  10c979:	41 89 0c 2a          	mov    DWORD PTR [r10+rbp*1],ecx
  10c97d:	41 8b 6d 00          	mov    ebp,DWORD PTR [r13+0x0]
  10c981:	81 fd 00 00 01 00    	cmp    ebp,0x10000
  10c987:	0f 82 73 ff ff ff    	jb     10c900 <__multiply+0x200>
  10c98d:	c1 ed 10             	shr    ebp,0x10
  10c990:	41 8b 32             	mov    esi,DWORD PTR [r10]
  10c993:	31 ff                	xor    edi,edi
  10c995:	31 db                	xor    ebx,ebx
  10c997:	89 f2                	mov    edx,esi
  10c999:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  10c9a0:	41 0f b7 0c 3e       	movzx  ecx,WORD PTR [r14+rdi*1]
  10c9a5:	0f af cd             	imul   ecx,ebp
  10c9a8:	c1 ee 10             	shr    esi,0x10
  10c9ab:	01 de                	add    esi,ebx
  10c9ad:	01 ce                	add    esi,ecx
  10c9af:	89 f1                	mov    ecx,esi
  10c9b1:	c1 e9 10             	shr    ecx,0x10
  10c9b4:	c1 e6 10             	shl    esi,0x10
  10c9b7:	0f b7 d2             	movzx  edx,dx
  10c9ba:	09 f2                	or     edx,esi
  10c9bc:	41 89 14 3a          	mov    DWORD PTR [r10+rdi*1],edx
  10c9c0:	41 0f b7 5c 3e 02    	movzx  ebx,WORD PTR [r14+rdi*1+0x2]
  10c9c6:	0f af dd             	imul   ebx,ebp
  10c9c9:	41 8b 74 3a 04       	mov    esi,DWORD PTR [r10+rdi*1+0x4]
  10c9ce:	0f b7 d6             	movzx  edx,si
  10c9d1:	01 da                	add    edx,ebx
  10c9d3:	01 ca                	add    edx,ecx
  10c9d5:	89 d3                	mov    ebx,edx
  10c9d7:	c1 eb 10             	shr    ebx,0x10
  10c9da:	49 8d 0c 3e          	lea    rcx,[r14+rdi*1]
  10c9de:	48 83 c1 04          	add    rcx,0x4
  10c9e2:	48 83 c7 04          	add    rdi,0x4
  10c9e6:	4c 39 c9             	cmp    rcx,r9
  10c9e9:	72 b5                	jb     10c9a0 <__multiply+0x2a0>
  10c9eb:	41 89 14 3a          	mov    DWORD PTR [r10+rdi*1],edx
  10c9ef:	e9 0c ff ff ff       	jmp    10c900 <__multiply+0x200>
  10c9f4:	45 85 e4             	test   r12d,r12d
  10c9f7:	7e 31                	jle    10ca2a <__multiply+0x32a>
  10c9f9:	4a 8d 0c a0          	lea    rcx,[rax+r12*4]
  10c9fd:	48 83 c1 14          	add    rcx,0x14
  10ca01:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10ca08:	0f 1f 84 00 00 00 00 
  10ca0f:	00 
  10ca10:	83 39 00             	cmp    DWORD PTR [rcx],0x0
  10ca13:	75 15                	jne    10ca2a <__multiply+0x32a>
  10ca15:	41 8d 54 24 ff       	lea    edx,[r12-0x1]
  10ca1a:	48 83 c1 fc          	add    rcx,0xfffffffffffffffc
  10ca1e:	41 83 fc 01          	cmp    r12d,0x1
  10ca22:	41 89 d4             	mov    r12d,edx
  10ca25:	7f e9                	jg     10ca10 <__multiply+0x310>
  10ca27:	45 31 e4             	xor    r12d,r12d
  10ca2a:	44 89 60 14          	mov    DWORD PTR [rax+0x14],r12d
  10ca2e:	48 83 c4 18          	add    rsp,0x18
  10ca32:	5b                   	pop    rbx
  10ca33:	41 5c                	pop    r12
  10ca35:	41 5d                	pop    r13
  10ca37:	41 5e                	pop    r14
  10ca39:	41 5f                	pop    r15
  10ca3b:	5d                   	pop    rbp
  10ca3c:	c3                   	ret
  10ca3d:	31 c0                	xor    eax,eax
  10ca3f:	e9 99 fd ff ff       	jmp    10c7dd <__multiply+0xdd>
  10ca44:	31 c0                	xor    eax,eax
  10ca46:	4c 8b 5c 24 08       	mov    r11,QWORD PTR [rsp+0x8]
  10ca4b:	e9 8d fd ff ff       	jmp    10c7dd <__multiply+0xdd>

000000000010ca50 <__pow5mult>:
  10ca50:	55                   	push   rbp
  10ca51:	41 57                	push   r15
  10ca53:	41 56                	push   r14
  10ca55:	53                   	push   rbx
  10ca56:	50                   	push   rax
  10ca57:	89 d5                	mov    ebp,edx
  10ca59:	49 89 f6             	mov    r14,rsi
  10ca5c:	49 89 ff             	mov    r15,rdi
  10ca5f:	89 d0                	mov    eax,edx
  10ca61:	83 e0 03             	and    eax,0x3
  10ca64:	74 1c                	je     10ca82 <__pow5mult+0x32>
  10ca66:	ff c8                	dec    eax
  10ca68:	48 8d 0d 51 45 ff ff 	lea    rcx,[rip+0xffffffffffff4551]        # 100fc0 <__pow5mult.p05>
  10ca6f:	8b 14 81             	mov    edx,DWORD PTR [rcx+rax*4]
  10ca72:	4c 89 ff             	mov    rdi,r15
  10ca75:	4c 89 f6             	mov    rsi,r14
  10ca78:	31 c9                	xor    ecx,ecx
  10ca7a:	e8 31 f8 ff ff       	call   10c2b0 <__multadd>
  10ca7f:	49 89 c6             	mov    r14,rax
  10ca82:	83 fd 04             	cmp    ebp,0x4
  10ca85:	73 0e                	jae    10ca95 <__pow5mult+0x45>
  10ca87:	4c 89 f0             	mov    rax,r14
  10ca8a:	48 83 c4 08          	add    rsp,0x8
  10ca8e:	5b                   	pop    rbx
  10ca8f:	41 5e                	pop    r14
  10ca91:	41 5f                	pop    r15
  10ca93:	5d                   	pop    rbp
  10ca94:	c3                   	ret
  10ca95:	49 8b 47 70          	mov    rax,QWORD PTR [r15+0x70]
  10ca99:	48 85 c0             	test   rax,rax
  10ca9c:	0f 85 83 00 00 00    	jne    10cb25 <__pow5mult+0xd5>
  10caa2:	49 8b 4f 78          	mov    rcx,QWORD PTR [r15+0x78]
  10caa6:	48 85 c9             	test   rcx,rcx
  10caa9:	75 1e                	jne    10cac9 <__pow5mult+0x79>
  10caab:	be 08 00 00 00       	mov    esi,0x8
  10cab0:	ba 41 00 00 00       	mov    edx,0x41
  10cab5:	4c 89 ff             	mov    rdi,r15
  10cab8:	e8 03 0f 00 00       	call   10d9c0 <_calloc_r>
  10cabd:	48 89 c1             	mov    rcx,rax
  10cac0:	49 89 47 78          	mov    QWORD PTR [r15+0x78],rax
  10cac4:	48 85 c0             	test   rax,rax
  10cac7:	74 41                	je     10cb0a <__pow5mult+0xba>
  10cac9:	48 8b 41 08          	mov    rax,QWORD PTR [rcx+0x8]
  10cacd:	48 85 c0             	test   rax,rax
  10cad0:	74 09                	je     10cadb <__pow5mult+0x8b>
  10cad2:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  10cad5:	48 89 51 08          	mov    QWORD PTR [rcx+0x8],rdx
  10cad9:	eb 25                	jmp    10cb00 <__pow5mult+0xb0>
  10cadb:	be 01 00 00 00       	mov    esi,0x1
  10cae0:	ba 24 00 00 00       	mov    edx,0x24
  10cae5:	4c 89 ff             	mov    rdi,r15
  10cae8:	e8 d3 0e 00 00       	call   10d9c0 <_calloc_r>
  10caed:	48 85 c0             	test   rax,rax
  10caf0:	74 18                	je     10cb0a <__pow5mult+0xba>
  10caf2:	48 b9 01 00 00 00 02 	movabs rcx,0x200000001
  10caf9:	00 00 00 
  10cafc:	48 89 48 08          	mov    QWORD PTR [rax+0x8],rcx
  10cb00:	48 c7 40 10 00 00 00 	mov    QWORD PTR [rax+0x10],0x0
  10cb07:	00 
  10cb08:	eb 02                	jmp    10cb0c <__pow5mult+0xbc>
  10cb0a:	31 c0                	xor    eax,eax
  10cb0c:	48 b9 01 00 00 00 71 	movabs rcx,0x27100000001
  10cb13:	02 00 00 
  10cb16:	48 89 48 14          	mov    QWORD PTR [rax+0x14],rcx
  10cb1a:	49 89 47 70          	mov    QWORD PTR [r15+0x70],rax
  10cb1e:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
  10cb25:	c1 fd 02             	sar    ebp,0x2
  10cb28:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  10cb2f:	00 
  10cb30:	48 89 c3             	mov    rbx,rax
  10cb33:	40 f6 c5 01          	test   bpl,0x1
  10cb37:	74 29                	je     10cb62 <__pow5mult+0x112>
  10cb39:	4c 89 ff             	mov    rdi,r15
  10cb3c:	4c 89 f6             	mov    rsi,r14
  10cb3f:	48 89 da             	mov    rdx,rbx
  10cb42:	e8 b9 fb ff ff       	call   10c700 <__multiply>
  10cb47:	4d 85 f6             	test   r14,r14
  10cb4a:	74 13                	je     10cb5f <__pow5mult+0x10f>
  10cb4c:	49 8b 4f 78          	mov    rcx,QWORD PTR [r15+0x78]
  10cb50:	49 63 56 08          	movsxd rdx,DWORD PTR [r14+0x8]
  10cb54:	48 8b 34 d1          	mov    rsi,QWORD PTR [rcx+rdx*8]
  10cb58:	49 89 36             	mov    QWORD PTR [r14],rsi
  10cb5b:	4c 89 34 d1          	mov    QWORD PTR [rcx+rdx*8],r14
  10cb5f:	49 89 c6             	mov    r14,rax
  10cb62:	83 fd 02             	cmp    ebp,0x2
  10cb65:	0f 82 1c ff ff ff    	jb     10ca87 <__pow5mult+0x37>
  10cb6b:	d1 fd                	sar    ebp,1
  10cb6d:	48 8b 03             	mov    rax,QWORD PTR [rbx]
  10cb70:	48 85 c0             	test   rax,rax
  10cb73:	75 bb                	jne    10cb30 <__pow5mult+0xe0>
  10cb75:	4c 89 ff             	mov    rdi,r15
  10cb78:	48 89 de             	mov    rsi,rbx
  10cb7b:	48 89 da             	mov    rdx,rbx
  10cb7e:	e8 7d fb ff ff       	call   10c700 <__multiply>
  10cb83:	48 89 03             	mov    QWORD PTR [rbx],rax
  10cb86:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
  10cb8d:	eb a1                	jmp    10cb30 <__pow5mult+0xe0>
  10cb8f:	90                   	nop

000000000010cb90 <__lshift>:
  10cb90:	55                   	push   rbp
  10cb91:	41 57                	push   r15
  10cb93:	41 56                	push   r14
  10cb95:	41 55                	push   r13
  10cb97:	41 54                	push   r12
  10cb99:	53                   	push   rbx
  10cb9a:	48 83 ec 18          	sub    rsp,0x18
  10cb9e:	41 89 d6             	mov    r14d,edx
  10cba1:	49 89 f7             	mov    r15,rsi
  10cba4:	41 89 d5             	mov    r13d,edx
  10cba7:	41 c1 fd 05          	sar    r13d,0x5
  10cbab:	8b 5e 08             	mov    ebx,DWORD PTR [rsi+0x8]
  10cbae:	8b 46 0c             	mov    eax,DWORD PTR [rsi+0xc]
  10cbb1:	44 8b 5e 14          	mov    r11d,DWORD PTR [rsi+0x14]
  10cbb5:	47 8d 24 2b          	lea    r12d,[r11+r13*1]
  10cbb9:	41 39 c4             	cmp    r12d,eax
  10cbbc:	7c 0b                	jl     10cbc9 <__lshift+0x39>
  10cbbe:	66 90                	xchg   ax,ax
  10cbc0:	ff c3                	inc    ebx
  10cbc2:	01 c0                	add    eax,eax
  10cbc4:	41 39 c4             	cmp    r12d,eax
  10cbc7:	7d f7                	jge    10cbc0 <__lshift+0x30>
  10cbc9:	48 8b 4f 78          	mov    rcx,QWORD PTR [rdi+0x78]
  10cbcd:	48 85 c9             	test   rcx,rcx
  10cbd0:	75 35                	jne    10cc07 <__lshift+0x77>
  10cbd2:	be 08 00 00 00       	mov    esi,0x8
  10cbd7:	ba 41 00 00 00       	mov    edx,0x41
  10cbdc:	48 89 fd             	mov    rbp,rdi
  10cbdf:	4c 89 6c 24 08       	mov    QWORD PTR [rsp+0x8],r13
  10cbe4:	4d 89 dd             	mov    r13,r11
  10cbe7:	e8 d4 0d 00 00       	call   10d9c0 <_calloc_r>
  10cbec:	4d 89 eb             	mov    r11,r13
  10cbef:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10cbf4:	48 89 ef             	mov    rdi,rbp
  10cbf7:	48 89 c1             	mov    rcx,rax
  10cbfa:	48 89 45 78          	mov    QWORD PTR [rbp+0x78],rax
  10cbfe:	48 85 c0             	test   rax,rax
  10cc01:	0f 84 b3 00 00 00    	je     10ccba <__lshift+0x12a>
  10cc07:	48 63 d3             	movsxd rdx,ebx
  10cc0a:	48 8b 04 d1          	mov    rax,QWORD PTR [rcx+rdx*8]
  10cc0e:	48 85 c0             	test   rax,rax
  10cc11:	74 09                	je     10cc1c <__lshift+0x8c>
  10cc13:	48 8b 30             	mov    rsi,QWORD PTR [rax]
  10cc16:	48 89 34 d1          	mov    QWORD PTR [rcx+rdx*8],rsi
  10cc1a:	eb 41                	jmp    10cc5d <__lshift+0xcd>
  10cc1c:	4c 89 5c 24 10       	mov    QWORD PTR [rsp+0x10],r11
  10cc21:	bd 01 00 00 00       	mov    ebp,0x1
  10cc26:	89 d9                	mov    ecx,ebx
  10cc28:	d3 e5                	shl    ebp,cl
  10cc2a:	48 63 c5             	movsxd rax,ebp
  10cc2d:	48 8d 14 85 1c 00 00 	lea    rdx,[rax*4+0x1c]
  10cc34:	00 
  10cc35:	be 01 00 00 00       	mov    esi,0x1
  10cc3a:	48 89 7c 24 08       	mov    QWORD PTR [rsp+0x8],rdi
  10cc3f:	e8 7c 0d 00 00       	call   10d9c0 <_calloc_r>
  10cc44:	48 85 c0             	test   rax,rax
  10cc47:	0f 84 72 02 00 00    	je     10cebf <__lshift+0x32f>
  10cc4d:	89 58 08             	mov    DWORD PTR [rax+0x8],ebx
  10cc50:	89 68 0c             	mov    DWORD PTR [rax+0xc],ebp
  10cc53:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  10cc58:	4c 8b 5c 24 10       	mov    r11,QWORD PTR [rsp+0x10]
  10cc5d:	48 c7 40 10 00 00 00 	mov    QWORD PTR [rax+0x10],0x0
  10cc64:	00 
  10cc65:	48 8d 70 18          	lea    rsi,[rax+0x18]
  10cc69:	41 83 fe 20          	cmp    r14d,0x20
  10cc6d:	0f 8c db 00 00 00    	jl     10cd4e <__lshift+0x1be>
  10cc73:	41 83 fd 02          	cmp    r13d,0x2
  10cc77:	b9 01 00 00 00       	mov    ecx,0x1
  10cc7c:	41 0f 4d cd          	cmovge ecx,r13d
  10cc80:	44 8d 41 ff          	lea    r8d,[rcx-0x1]
  10cc84:	45 31 c9             	xor    r9d,r9d
  10cc87:	41 83 f8 07          	cmp    r8d,0x7
  10cc8b:	0f 82 aa 00 00 00    	jb     10cd3b <__lshift+0x1ab>
  10cc91:	49 ff c0             	inc    r8
  10cc94:	4d 89 c1             	mov    r9,r8
  10cc97:	49 83 e1 f8          	and    r9,0xfffffffffffffff8
  10cc9b:	49 8d 51 f8          	lea    rdx,[r9-0x8]
  10cc9f:	48 89 d3             	mov    rbx,rdx
  10cca2:	48 c1 eb 03          	shr    rbx,0x3
  10cca6:	48 ff c3             	inc    rbx
  10cca9:	41 89 da             	mov    r10d,ebx
  10ccac:	41 83 e2 03          	and    r10d,0x3
  10ccb0:	48 83 fa 18          	cmp    rdx,0x18
  10ccb4:	73 08                	jae    10ccbe <__lshift+0x12e>
  10ccb6:	31 d2                	xor    edx,edx
  10ccb8:	eb 4b                	jmp    10cd05 <__lshift+0x175>
  10ccba:	31 c0                	xor    eax,eax
  10ccbc:	eb a7                	jmp    10cc65 <__lshift+0xd5>
  10ccbe:	48 83 e3 fc          	and    rbx,0xfffffffffffffffc
  10ccc2:	31 d2                	xor    edx,edx
  10ccc4:	0f 57 c0             	xorps  xmm0,xmm0
  10ccc7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  10ccce:	00 00 
  10ccd0:	0f 11 44 90 18       	movups XMMWORD PTR [rax+rdx*4+0x18],xmm0
  10ccd5:	0f 11 44 90 28       	movups XMMWORD PTR [rax+rdx*4+0x28],xmm0
  10ccda:	0f 11 44 90 38       	movups XMMWORD PTR [rax+rdx*4+0x38],xmm0
  10ccdf:	0f 11 44 90 48       	movups XMMWORD PTR [rax+rdx*4+0x48],xmm0
  10cce4:	0f 11 44 90 58       	movups XMMWORD PTR [rax+rdx*4+0x58],xmm0
  10cce9:	0f 11 44 90 68       	movups XMMWORD PTR [rax+rdx*4+0x68],xmm0
  10ccee:	0f 11 44 90 78       	movups XMMWORD PTR [rax+rdx*4+0x78],xmm0
  10ccf3:	0f 11 84 90 88 00 00 	movups XMMWORD PTR [rax+rdx*4+0x88],xmm0
  10ccfa:	00 
  10ccfb:	48 83 c2 20          	add    rdx,0x20
  10ccff:	48 83 c3 fc          	add    rbx,0xfffffffffffffffc
  10cd03:	75 cb                	jne    10ccd0 <__lshift+0x140>
  10cd05:	4d 85 d2             	test   r10,r10
  10cd08:	74 28                	je     10cd32 <__lshift+0x1a2>
  10cd0a:	48 8d 14 90          	lea    rdx,[rax+rdx*4]
  10cd0e:	48 83 c2 28          	add    rdx,0x28
  10cd12:	49 c1 e2 05          	shl    r10,0x5
  10cd16:	31 ed                	xor    ebp,ebp
  10cd18:	0f 57 c0             	xorps  xmm0,xmm0
  10cd1b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  10cd20:	0f 11 44 2a f0       	movups XMMWORD PTR [rdx+rbp*1-0x10],xmm0
  10cd25:	0f 11 04 2a          	movups XMMWORD PTR [rdx+rbp*1],xmm0
  10cd29:	48 83 c5 20          	add    rbp,0x20
  10cd2d:	49 39 ea             	cmp    r10,rbp
  10cd30:	75 ee                	jne    10cd20 <__lshift+0x190>
  10cd32:	4a 8d 34 8e          	lea    rsi,[rsi+r9*4]
  10cd36:	4d 39 c8             	cmp    r8,r9
  10cd39:	74 13                	je     10cd4e <__lshift+0x1be>
  10cd3b:	44 29 c9             	sub    ecx,r9d
  10cd3e:	66 90                	xchg   ax,ax
  10cd40:	c7 06 00 00 00 00    	mov    DWORD PTR [rsi],0x0
  10cd46:	48 83 c6 04          	add    rsi,0x4
  10cd4a:	ff c9                	dec    ecx
  10cd4c:	75 f2                	jne    10cd40 <__lshift+0x1b0>
  10cd4e:	47 8d 04 2b          	lea    r8d,[r11+r13*1]
  10cd52:	41 ff c0             	inc    r8d
  10cd55:	49 8d 5f 18          	lea    rbx,[r15+0x18]
  10cd59:	49 63 4f 14          	movsxd rcx,DWORD PTR [r15+0x14]
  10cd5d:	4d 8d 1c 8f          	lea    r11,[r15+rcx*4]
  10cd61:	49 83 c3 18          	add    r11,0x18
  10cd65:	41 83 e6 1f          	and    r14d,0x1f
  10cd69:	74 45                	je     10cdb0 <__lshift+0x220>
  10cd6b:	41 b9 20 00 00 00    	mov    r9d,0x20
  10cd71:	45 29 f1             	sub    r9d,r14d
  10cd74:	31 ed                	xor    ebp,ebp
  10cd76:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10cd7d:	00 00 00 
  10cd80:	8b 13                	mov    edx,DWORD PTR [rbx]
  10cd82:	44 89 f1             	mov    ecx,r14d
  10cd85:	d3 e2                	shl    edx,cl
  10cd87:	09 ea                	or     edx,ebp
  10cd89:	89 16                	mov    DWORD PTR [rsi],edx
  10cd8b:	48 83 c6 04          	add    rsi,0x4
  10cd8f:	8b 2b                	mov    ebp,DWORD PTR [rbx]
  10cd91:	48 83 c3 04          	add    rbx,0x4
  10cd95:	44 89 c9             	mov    ecx,r9d
  10cd98:	d3 ed                	shr    ebp,cl
  10cd9a:	4c 39 db             	cmp    rbx,r11
  10cd9d:	72 e1                	jb     10cd80 <__lshift+0x1f0>
  10cd9f:	89 2e                	mov    DWORD PTR [rsi],ebp
  10cda1:	41 83 c4 02          	add    r12d,0x2
  10cda5:	85 ed                	test   ebp,ebp
  10cda7:	45 0f 45 c4          	cmovne r8d,r12d
  10cdab:	e9 e1 00 00 00       	jmp    10ce91 <__lshift+0x301>
  10cdb0:	49 8d 4f 1c          	lea    rcx,[r15+0x1c]
  10cdb4:	49 39 cb             	cmp    r11,rcx
  10cdb7:	49 0f 47 cb          	cmova  rcx,r11
  10cdbb:	4c 29 f9             	sub    rcx,r15
  10cdbe:	48 83 c1 e7          	add    rcx,0xffffffffffffffe7
  10cdc2:	48 83 f9 2c          	cmp    rcx,0x2c
  10cdc6:	0f 82 b4 00 00 00    	jb     10ce80 <__lshift+0x2f0>
  10cdcc:	48 89 f2             	mov    rdx,rsi
  10cdcf:	4c 29 fa             	sub    rdx,r15
  10cdd2:	48 83 c2 e8          	add    rdx,0xffffffffffffffe8
  10cdd6:	48 83 fa 20          	cmp    rdx,0x20
  10cdda:	0f 82 a0 00 00 00    	jb     10ce80 <__lshift+0x2f0>
  10cde0:	48 c1 e9 02          	shr    rcx,0x2
  10cde4:	48 ff c1             	inc    rcx
  10cde7:	49 89 c9             	mov    r9,rcx
  10cdea:	49 83 e1 f8          	and    r9,0xfffffffffffffff8
  10cdee:	49 8d 51 f8          	lea    rdx,[r9-0x8]
  10cdf2:	49 89 d2             	mov    r10,rdx
  10cdf5:	49 c1 ea 03          	shr    r10,0x3
  10cdf9:	49 ff c2             	inc    r10
  10cdfc:	48 85 d2             	test   rdx,rdx
  10cdff:	0f 84 cb 00 00 00    	je     10ced0 <__lshift+0x340>
  10ce05:	48 bd fc ff ff ff ff 	movabs rbp,0x3ffffffffffffffc
  10ce0c:	ff ff 3f 
  10ce0f:	48 83 cd 02          	or     rbp,0x2
  10ce13:	4c 21 d5             	and    rbp,r10
  10ce16:	31 d2                	xor    edx,edx
  10ce18:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  10ce1f:	00 
  10ce20:	41 0f 10 44 17 18    	movups xmm0,XMMWORD PTR [r15+rdx*1+0x18]
  10ce26:	41 0f 10 4c 17 28    	movups xmm1,XMMWORD PTR [r15+rdx*1+0x28]
  10ce2c:	0f 11 04 16          	movups XMMWORD PTR [rsi+rdx*1],xmm0
  10ce30:	0f 11 4c 16 10       	movups XMMWORD PTR [rsi+rdx*1+0x10],xmm1
  10ce35:	41 0f 10 44 17 38    	movups xmm0,XMMWORD PTR [r15+rdx*1+0x38]
  10ce3b:	41 0f 10 4c 17 48    	movups xmm1,XMMWORD PTR [r15+rdx*1+0x48]
  10ce41:	0f 11 44 16 20       	movups XMMWORD PTR [rsi+rdx*1+0x20],xmm0
  10ce46:	0f 11 4c 16 30       	movups XMMWORD PTR [rsi+rdx*1+0x30],xmm1
  10ce4b:	48 83 c2 40          	add    rdx,0x40
  10ce4f:	48 83 c5 fe          	add    rbp,0xfffffffffffffffe
  10ce53:	75 cb                	jne    10ce20 <__lshift+0x290>
  10ce55:	41 f6 c2 01          	test   r10b,0x1
  10ce59:	74 12                	je     10ce6d <__lshift+0x2dd>
  10ce5b:	0f 10 04 13          	movups xmm0,XMMWORD PTR [rbx+rdx*1]
  10ce5f:	0f 10 4c 13 10       	movups xmm1,XMMWORD PTR [rbx+rdx*1+0x10]
  10ce64:	0f 11 04 16          	movups XMMWORD PTR [rsi+rdx*1],xmm0
  10ce68:	0f 11 4c 16 10       	movups XMMWORD PTR [rsi+rdx*1+0x10],xmm1
  10ce6d:	4c 39 c9             	cmp    rcx,r9
  10ce70:	74 1f                	je     10ce91 <__lshift+0x301>
  10ce72:	4a 8d 1c 8b          	lea    rbx,[rbx+r9*4]
  10ce76:	4a 8d 34 8e          	lea    rsi,[rsi+r9*4]
  10ce7a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  10ce80:	8b 0b                	mov    ecx,DWORD PTR [rbx]
  10ce82:	48 83 c3 04          	add    rbx,0x4
  10ce86:	89 0e                	mov    DWORD PTR [rsi],ecx
  10ce88:	48 83 c6 04          	add    rsi,0x4
  10ce8c:	4c 39 db             	cmp    rbx,r11
  10ce8f:	72 ef                	jb     10ce80 <__lshift+0x2f0>
  10ce91:	41 ff c8             	dec    r8d
  10ce94:	44 89 40 14          	mov    DWORD PTR [rax+0x14],r8d
  10ce98:	4d 85 ff             	test   r15,r15
  10ce9b:	74 13                	je     10ceb0 <__lshift+0x320>
  10ce9d:	48 8b 4f 78          	mov    rcx,QWORD PTR [rdi+0x78]
  10cea1:	49 63 57 08          	movsxd rdx,DWORD PTR [r15+0x8]
  10cea5:	48 8b 34 d1          	mov    rsi,QWORD PTR [rcx+rdx*8]
  10cea9:	49 89 37             	mov    QWORD PTR [r15],rsi
  10ceac:	4c 89 3c d1          	mov    QWORD PTR [rcx+rdx*8],r15
  10ceb0:	48 83 c4 18          	add    rsp,0x18
  10ceb4:	5b                   	pop    rbx
  10ceb5:	41 5c                	pop    r12
  10ceb7:	41 5d                	pop    r13
  10ceb9:	41 5e                	pop    r14
  10cebb:	41 5f                	pop    r15
  10cebd:	5d                   	pop    rbp
  10cebe:	c3                   	ret
  10cebf:	31 c0                	xor    eax,eax
  10cec1:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  10cec6:	4c 8b 5c 24 10       	mov    r11,QWORD PTR [rsp+0x10]
  10cecb:	e9 95 fd ff ff       	jmp    10cc65 <__lshift+0xd5>
  10ced0:	31 d2                	xor    edx,edx
  10ced2:	41 f6 c2 01          	test   r10b,0x1
  10ced6:	75 83                	jne    10ce5b <__lshift+0x2cb>
  10ced8:	eb 93                	jmp    10ce6d <__lshift+0x2dd>
  10ceda:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

000000000010cee0 <__mcmp>:
  10cee0:	8b 47 14             	mov    eax,DWORD PTR [rdi+0x14]
  10cee3:	48 63 4e 14          	movsxd rcx,DWORD PTR [rsi+0x14]
  10cee7:	29 c8                	sub    eax,ecx
  10cee9:	74 01                	je     10ceec <__mcmp+0xc>
  10ceeb:	c3                   	ret
  10ceec:	48 8d 04 8f          	lea    rax,[rdi+rcx*4]
  10cef0:	48 83 c0 18          	add    rax,0x18
  10cef4:	48 83 c7 18          	add    rdi,0x18
  10cef8:	48 8d 0c 8e          	lea    rcx,[rsi+rcx*4]
  10cefc:	48 83 c1 14          	add    rcx,0x14
  10cf00:	8b 11                	mov    edx,DWORD PTR [rcx]
  10cf02:	39 50 fc             	cmp    DWORD PTR [rax-0x4],edx
  10cf05:	75 10                	jne    10cf17 <__mcmp+0x37>
  10cf07:	48 83 c0 fc          	add    rax,0xfffffffffffffffc
  10cf0b:	48 83 c1 fc          	add    rcx,0xfffffffffffffffc
  10cf0f:	48 39 f8             	cmp    rax,rdi
  10cf12:	77 ec                	ja     10cf00 <__mcmp+0x20>
  10cf14:	31 c0                	xor    eax,eax
  10cf16:	c3                   	ret
  10cf17:	0f 93 c0             	setae  al
  10cf1a:	0f b6 c0             	movzx  eax,al
  10cf1d:	01 c0                	add    eax,eax
  10cf1f:	ff c8                	dec    eax
  10cf21:	c3                   	ret
  10cf22:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10cf29:	1f 84 00 00 00 00 00 

000000000010cf30 <__mdiff>:
  10cf30:	55                   	push   rbp
  10cf31:	41 57                	push   r15
  10cf33:	41 56                	push   r14
  10cf35:	41 55                	push   r13
  10cf37:	41 54                	push   r12
  10cf39:	53                   	push   rbx
  10cf3a:	50                   	push   rax
  10cf3b:	49 89 f4             	mov    r12,rsi
  10cf3e:	48 89 fd             	mov    rbp,rdi
  10cf41:	8b 5e 14             	mov    ebx,DWORD PTR [rsi+0x14]
  10cf44:	48 63 72 14          	movsxd rsi,DWORD PTR [rdx+0x14]
  10cf48:	29 f3                	sub    ebx,esi
  10cf4a:	0f 85 82 00 00 00    	jne    10cfd2 <__mdiff+0xa2>
  10cf50:	49 8d 44 24 18       	lea    rax,[r12+0x18]
  10cf55:	49 8d 0c b4          	lea    rcx,[r12+rsi*4]
  10cf59:	48 83 c1 18          	add    rcx,0x18
  10cf5d:	48 8d 34 b2          	lea    rsi,[rdx+rsi*4]
  10cf61:	48 83 c6 14          	add    rsi,0x14
  10cf65:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  10cf6c:	00 00 00 00 
  10cf70:	8b 3e                	mov    edi,DWORD PTR [rsi]
  10cf72:	39 79 fc             	cmp    DWORD PTR [rcx-0x4],edi
  10cf75:	75 50                	jne    10cfc7 <__mdiff+0x97>
  10cf77:	48 83 c1 fc          	add    rcx,0xfffffffffffffffc
  10cf7b:	48 83 c6 fc          	add    rsi,0xfffffffffffffffc
  10cf7f:	48 39 c1             	cmp    rcx,rax
  10cf82:	77 ec                	ja     10cf70 <__mdiff+0x40>
  10cf84:	48 8b 4d 78          	mov    rcx,QWORD PTR [rbp+0x78]
  10cf88:	48 85 c9             	test   rcx,rcx
  10cf8b:	75 19                	jne    10cfa6 <__mdiff+0x76>
  10cf8d:	be 08 00 00 00       	mov    esi,0x8
  10cf92:	ba 41 00 00 00       	mov    edx,0x41
  10cf97:	48 89 ef             	mov    rdi,rbp
  10cf9a:	e8 21 0a 00 00       	call   10d9c0 <_calloc_r>
  10cf9f:	48 89 c1             	mov    rcx,rax
  10cfa2:	48 89 45 78          	mov    QWORD PTR [rbp+0x78],rax
  10cfa6:	48 8b 01             	mov    rax,QWORD PTR [rcx]
  10cfa9:	48 bb 00 00 00 00 01 	movabs rbx,0x100000000
  10cfb0:	00 00 00 
  10cfb3:	48 85 c0             	test   rax,rax
  10cfb6:	0f 84 73 01 00 00    	je     10d12f <__mdiff+0x1ff>
  10cfbc:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  10cfbf:	48 89 11             	mov    QWORD PTR [rcx],rdx
  10cfc2:	e9 7e 01 00 00       	jmp    10d145 <__mdiff+0x215>
  10cfc7:	0f 93 c0             	setae  al
  10cfca:	0f b6 c0             	movzx  eax,al
  10cfcd:	8d 1c 00             	lea    ebx,[rax+rax*1]
  10cfd0:	ff cb                	dec    ebx
  10cfd2:	85 db                	test   ebx,ebx
  10cfd4:	49 89 d6             	mov    r14,rdx
  10cfd7:	4d 0f 48 f4          	cmovs  r14,r12
  10cfdb:	4c 0f 48 e2          	cmovs  r12,rdx
  10cfdf:	45 8b 7c 24 08       	mov    r15d,DWORD PTR [r12+0x8]
  10cfe4:	4d 63 ef             	movsxd r13,r15d
  10cfe7:	48 8b 4d 78          	mov    rcx,QWORD PTR [rbp+0x78]
  10cfeb:	48 85 c9             	test   rcx,rcx
  10cfee:	75 19                	jne    10d009 <__mdiff+0xd9>
  10cff0:	be 08 00 00 00       	mov    esi,0x8
  10cff5:	ba 41 00 00 00       	mov    edx,0x41
  10cffa:	48 89 ef             	mov    rdi,rbp
  10cffd:	e8 be 09 00 00       	call   10d9c0 <_calloc_r>
  10d002:	48 89 c1             	mov    rcx,rax
  10d005:	48 89 45 78          	mov    QWORD PTR [rbp+0x78],rax
  10d009:	c1 eb 1f             	shr    ebx,0x1f
  10d00c:	4a 8b 04 e9          	mov    rax,QWORD PTR [rcx+r13*8]
  10d010:	48 85 c0             	test   rax,rax
  10d013:	74 09                	je     10d01e <__mdiff+0xee>
  10d015:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  10d018:	4a 89 14 e9          	mov    QWORD PTR [rcx+r13*8],rdx
  10d01c:	eb 2a                	jmp    10d048 <__mdiff+0x118>
  10d01e:	b8 01 00 00 00       	mov    eax,0x1
  10d023:	44 89 f9             	mov    ecx,r15d
  10d026:	d3 e0                	shl    eax,cl
  10d028:	4c 63 e8             	movsxd r13,eax
  10d02b:	4a 8d 14 ad 1c 00 00 	lea    rdx,[r13*4+0x1c]
  10d032:	00 
  10d033:	be 01 00 00 00       	mov    esi,0x1
  10d038:	48 89 ef             	mov    rdi,rbp
  10d03b:	e8 80 09 00 00       	call   10d9c0 <_calloc_r>
  10d040:	44 89 78 08          	mov    DWORD PTR [rax+0x8],r15d
  10d044:	44 89 68 0c          	mov    DWORD PTR [rax+0xc],r13d
  10d048:	c7 40 14 00 00 00 00 	mov    DWORD PTR [rax+0x14],0x0
  10d04f:	89 58 10             	mov    DWORD PTR [rax+0x10],ebx
  10d052:	4d 63 4c 24 14       	movsxd r9,DWORD PTR [r12+0x14]
  10d057:	49 83 c4 18          	add    r12,0x18
  10d05b:	49 63 56 14          	movsxd rdx,DWORD PTR [r14+0x14]
  10d05f:	4d 8d 04 96          	lea    r8,[r14+rdx*4]
  10d063:	49 83 c0 18          	add    r8,0x18
  10d067:	49 83 c6 18          	add    r14,0x18
  10d06b:	48 8d 50 18          	lea    rdx,[rax+0x18]
  10d06f:	31 ff                	xor    edi,edi
  10d071:	4c 89 e6             	mov    rsi,r12
  10d074:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10d07b:	00 00 00 00 00 
  10d080:	8b 1e                	mov    ebx,DWORD PTR [rsi]
  10d082:	0f b7 cb             	movzx  ecx,bx
  10d085:	45 8b 16             	mov    r10d,DWORD PTR [r14]
  10d088:	41 0f b7 ea          	movzx  ebp,r10w
  10d08c:	29 e9                	sub    ecx,ebp
  10d08e:	01 f9                	add    ecx,edi
  10d090:	0f b7 e9             	movzx  ebp,cx
  10d093:	c1 f9 10             	sar    ecx,0x10
  10d096:	48 83 c6 04          	add    rsi,0x4
  10d09a:	c1 eb 10             	shr    ebx,0x10
  10d09d:	49 83 c6 04          	add    r14,0x4
  10d0a1:	41 c1 ea 10          	shr    r10d,0x10
  10d0a5:	44 29 d3             	sub    ebx,r10d
  10d0a8:	01 cb                	add    ebx,ecx
  10d0aa:	89 df                	mov    edi,ebx
  10d0ac:	c1 ff 10             	sar    edi,0x10
  10d0af:	c1 e3 10             	shl    ebx,0x10
  10d0b2:	09 dd                	or     ebp,ebx
  10d0b4:	89 2a                	mov    DWORD PTR [rdx],ebp
  10d0b6:	48 83 c2 04          	add    rdx,0x4
  10d0ba:	4d 39 c6             	cmp    r14,r8
  10d0bd:	72 c1                	jb     10d080 <__mdiff+0x150>
  10d0bf:	4f 8d 04 8c          	lea    r8,[r12+r9*4]
  10d0c3:	4c 39 c6             	cmp    rsi,r8
  10d0c6:	73 33                	jae    10d0fb <__mdiff+0x1cb>
  10d0c8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  10d0cf:	00 
  10d0d0:	8b 0e                	mov    ecx,DWORD PTR [rsi]
  10d0d2:	0f b7 d9             	movzx  ebx,cx
  10d0d5:	01 fb                	add    ebx,edi
  10d0d7:	0f b7 eb             	movzx  ebp,bx
  10d0da:	c1 fb 10             	sar    ebx,0x10
  10d0dd:	48 83 c6 04          	add    rsi,0x4
  10d0e1:	c1 e9 10             	shr    ecx,0x10
  10d0e4:	01 d9                	add    ecx,ebx
  10d0e6:	89 cf                	mov    edi,ecx
  10d0e8:	c1 ff 10             	sar    edi,0x10
  10d0eb:	c1 e1 10             	shl    ecx,0x10
  10d0ee:	09 cd                	or     ebp,ecx
  10d0f0:	89 2a                	mov    DWORD PTR [rdx],ebp
  10d0f2:	48 83 c2 04          	add    rdx,0x4
  10d0f6:	4c 39 c6             	cmp    rsi,r8
  10d0f9:	72 d5                	jb     10d0d0 <__mdiff+0x1a0>
  10d0fb:	41 ff c1             	inc    r9d
  10d0fe:	48 83 c2 fc          	add    rdx,0xfffffffffffffffc
  10d102:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10d109:	1f 84 00 00 00 00 00 
  10d110:	41 ff c9             	dec    r9d
  10d113:	83 3a 00             	cmp    DWORD PTR [rdx],0x0
  10d116:	48 8d 52 fc          	lea    rdx,[rdx-0x4]
  10d11a:	74 f4                	je     10d110 <__mdiff+0x1e0>
  10d11c:	44 89 48 14          	mov    DWORD PTR [rax+0x14],r9d
  10d120:	48 83 c4 08          	add    rsp,0x8
  10d124:	5b                   	pop    rbx
  10d125:	41 5c                	pop    r12
  10d127:	41 5d                	pop    r13
  10d129:	41 5e                	pop    r14
  10d12b:	41 5f                	pop    r15
  10d12d:	5d                   	pop    rbp
  10d12e:	c3                   	ret
  10d12f:	be 01 00 00 00       	mov    esi,0x1
  10d134:	ba 20 00 00 00       	mov    edx,0x20
  10d139:	48 89 ef             	mov    rdi,rbp
  10d13c:	e8 7f 08 00 00       	call   10d9c0 <_calloc_r>
  10d141:	48 89 58 08          	mov    QWORD PTR [rax+0x8],rbx
  10d145:	48 89 58 10          	mov    QWORD PTR [rax+0x10],rbx
  10d149:	c7 40 18 00 00 00 00 	mov    DWORD PTR [rax+0x18],0x0
  10d150:	eb ce                	jmp    10d120 <__mdiff+0x1f0>
  10d152:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10d159:	1f 84 00 00 00 00 00 

000000000010d160 <__ulp>:
  10d160:	66 48 0f 7e c2       	movq   rdx,xmm0
  10d165:	48 c1 ea 20          	shr    rdx,0x20
  10d169:	81 e2 00 00 f0 7f    	and    edx,0x7ff00000
  10d16f:	81 fa 01 00 40 03    	cmp    edx,0x3400001
  10d175:	72 08                	jb     10d17f <__ulp+0x1f>
  10d177:	81 c2 00 00 c0 fc    	add    edx,0xfcc00000
  10d17d:	eb 19                	jmp    10d198 <__ulp+0x38>
  10d17f:	b9 00 00 40 03       	mov    ecx,0x3400000
  10d184:	29 d1                	sub    ecx,edx
  10d186:	c1 e9 14             	shr    ecx,0x14
  10d189:	81 fa 01 00 00 02    	cmp    edx,0x2000001
  10d18f:	72 11                	jb     10d1a2 <__ulp+0x42>
  10d191:	ba 00 00 08 00       	mov    edx,0x80000
  10d196:	d3 ea                	shr    edx,cl
  10d198:	48 c1 e2 20          	shl    rdx,0x20
  10d19c:	66 48 0f 6e c2       	movq   xmm0,rdx
  10d1a1:	c3                   	ret
  10d1a2:	b0 33                	mov    al,0x33
  10d1a4:	28 c8                	sub    al,cl
  10d1a6:	be 01 00 00 00       	mov    esi,0x1
  10d1ab:	bf 01 00 00 00       	mov    edi,0x1
  10d1b0:	89 c1                	mov    ecx,eax
  10d1b2:	d3 e7                	shl    edi,cl
  10d1b4:	81 fa 00 00 20 00    	cmp    edx,0x200000
  10d1ba:	0f 42 fe             	cmovb  edi,esi
  10d1bd:	66 48 0f 6e c7       	movq   xmm0,rdi
  10d1c2:	c3                   	ret
  10d1c3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10d1ca:	84 00 00 00 00 00 

000000000010d1d0 <__b2d>:
  10d1d0:	55                   	push   rbp
  10d1d1:	53                   	push   rbx
  10d1d2:	4c 8d 4f 18          	lea    r9,[rdi+0x18]
  10d1d6:	48 63 47 14          	movsxd rax,DWORD PTR [rdi+0x14]
  10d1da:	4c 8d 04 87          	lea    r8,[rdi+rax*4]
  10d1de:	49 83 c0 14          	add    r8,0x14
  10d1e2:	8b 6c 87 14          	mov    ebp,DWORD PTR [rdi+rax*4+0x14]
  10d1e6:	89 ef                	mov    edi,ebp
  10d1e8:	c1 e7 10             	shl    edi,0x10
  10d1eb:	31 c9                	xor    ecx,ecx
  10d1ed:	81 fd 00 00 01 00    	cmp    ebp,0x10000
  10d1f3:	0f 92 c1             	setb   cl
  10d1f6:	0f 43 fd             	cmovae edi,ebp
  10d1f9:	c1 e1 04             	shl    ecx,0x4
  10d1fc:	8d 51 08             	lea    edx,[rcx+0x8]
  10d1ff:	89 f8                	mov    eax,edi
  10d201:	c1 e0 08             	shl    eax,0x8
  10d204:	81 ff 00 00 00 01    	cmp    edi,0x1000000
  10d20a:	0f 43 c7             	cmovae eax,edi
  10d20d:	0f 43 d1             	cmovae edx,ecx
  10d210:	8d 7a 04             	lea    edi,[rdx+0x4]
  10d213:	89 c3                	mov    ebx,eax
  10d215:	c1 e3 04             	shl    ebx,0x4
  10d218:	3d 00 00 00 10       	cmp    eax,0x10000000
  10d21d:	0f 43 d8             	cmovae ebx,eax
  10d220:	0f 43 fa             	cmovae edi,edx
  10d223:	8d 0c 9d 00 00 00 00 	lea    ecx,[rbx*4+0x0]
  10d22a:	81 fb 00 00 00 40    	cmp    ebx,0x40000000
  10d230:	0f 43 cb             	cmovae ecx,ebx
  10d233:	8d 47 02             	lea    eax,[rdi+0x2]
  10d236:	0f 43 c7             	cmovae eax,edi
  10d239:	85 c9                	test   ecx,ecx
  10d23b:	78 17                	js     10d254 <__b2d+0x84>
  10d23d:	f7 c1 00 00 00 40    	test   ecx,0x40000000
  10d243:	75 0d                	jne    10d252 <__b2d+0x82>
  10d245:	c7 06 00 00 00 00    	mov    DWORD PTR [rsi],0x0
  10d24b:	b8 20 00 00 00       	mov    eax,0x20
  10d250:	eb 3a                	jmp    10d28c <__b2d+0xbc>
  10d252:	ff c0                	inc    eax
  10d254:	b9 20 00 00 00       	mov    ecx,0x20
  10d259:	29 c1                	sub    ecx,eax
  10d25b:	89 0e                	mov    DWORD PTR [rsi],ecx
  10d25d:	83 f8 0a             	cmp    eax,0xa
  10d260:	77 2a                	ja     10d28c <__b2d+0xbc>
  10d262:	41 ba 0b 00 00 00    	mov    r10d,0xb
  10d268:	41 29 c2             	sub    r10d,eax
  10d26b:	89 ea                	mov    edx,ebp
  10d26d:	44 89 d1             	mov    ecx,r10d
  10d270:	d3 ea                	shr    edx,cl
  10d272:	31 f6                	xor    esi,esi
  10d274:	4d 39 c8             	cmp    r8,r9
  10d277:	76 04                	jbe    10d27d <__b2d+0xad>
  10d279:	41 8b 70 fc          	mov    esi,DWORD PTR [r8-0x4]
  10d27d:	04 15                	add    al,0x15
  10d27f:	89 c1                	mov    ecx,eax
  10d281:	d3 e5                	shl    ebp,cl
  10d283:	44 89 d1             	mov    ecx,r10d
  10d286:	d3 ee                	shr    esi,cl
  10d288:	09 ee                	or     esi,ebp
  10d28a:	eb 47                	jmp    10d2d3 <__b2d+0x103>
  10d28c:	31 f6                	xor    esi,esi
  10d28e:	4d 39 c8             	cmp    r8,r9
  10d291:	76 08                	jbe    10d29b <__b2d+0xcb>
  10d293:	41 8b 70 fc          	mov    esi,DWORD PTR [r8-0x4]
  10d297:	49 83 c0 fc          	add    r8,0xfffffffffffffffc
  10d29b:	89 c2                	mov    edx,eax
  10d29d:	83 c2 f5             	add    edx,0xfffffff5
  10d2a0:	74 2f                	je     10d2d1 <__b2d+0x101>
  10d2a2:	89 d1                	mov    ecx,edx
  10d2a4:	d3 e5                	shl    ebp,cl
  10d2a6:	41 ba 2b 00 00 00    	mov    r10d,0x2b
  10d2ac:	41 29 c2             	sub    r10d,eax
  10d2af:	41 89 f3             	mov    r11d,esi
  10d2b2:	44 89 d1             	mov    ecx,r10d
  10d2b5:	41 d3 eb             	shr    r11d,cl
  10d2b8:	31 c0                	xor    eax,eax
  10d2ba:	4d 39 c8             	cmp    r8,r9
  10d2bd:	76 04                	jbe    10d2c3 <__b2d+0xf3>
  10d2bf:	41 8b 40 fc          	mov    eax,DWORD PTR [r8-0x4]
  10d2c3:	89 d1                	mov    ecx,edx
  10d2c5:	d3 e6                	shl    esi,cl
  10d2c7:	44 89 d1             	mov    ecx,r10d
  10d2ca:	d3 e8                	shr    eax,cl
  10d2cc:	44 09 dd             	or     ebp,r11d
  10d2cf:	09 c6                	or     esi,eax
  10d2d1:	89 ea                	mov    edx,ebp
  10d2d3:	81 ca 00 00 f0 3f    	or     edx,0x3ff00000
  10d2d9:	48 c1 e2 20          	shl    rdx,0x20
  10d2dd:	89 f0                	mov    eax,esi
  10d2df:	48 09 d0             	or     rax,rdx
  10d2e2:	66 48 0f 6e c0       	movq   xmm0,rax
  10d2e7:	5b                   	pop    rbx
  10d2e8:	5d                   	pop    rbp
  10d2e9:	c3                   	ret
  10d2ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

000000000010d2f0 <__d2b>:
  10d2f0:	41 57                	push   r15
  10d2f2:	41 56                	push   r14
  10d2f4:	53                   	push   rbx
  10d2f5:	48 83 ec 10          	sub    rsp,0x10
  10d2f9:	49 89 d6             	mov    r14,rdx
  10d2fc:	49 89 f7             	mov    r15,rsi
  10d2ff:	48 89 fb             	mov    rbx,rdi
  10d302:	48 8b 4f 78          	mov    rcx,QWORD PTR [rdi+0x78]
  10d306:	48 85 c9             	test   rcx,rcx
  10d309:	75 2e                	jne    10d339 <__d2b+0x49>
  10d30b:	be 08 00 00 00       	mov    esi,0x8
  10d310:	ba 41 00 00 00       	mov    edx,0x41
  10d315:	48 89 df             	mov    rdi,rbx
  10d318:	f2 0f 11 44 24 08    	movsd  QWORD PTR [rsp+0x8],xmm0
  10d31e:	e8 9d 06 00 00       	call   10d9c0 <_calloc_r>
  10d323:	f3 0f 7e 44 24 08    	movq   xmm0,QWORD PTR [rsp+0x8]
  10d329:	48 89 c1             	mov    rcx,rax
  10d32c:	48 89 43 78          	mov    QWORD PTR [rbx+0x78],rax
  10d330:	48 85 c0             	test   rax,rax
  10d333:	0f 84 50 01 00 00    	je     10d489 <__d2b+0x199>
  10d339:	48 8b 41 08          	mov    rax,QWORD PTR [rcx+0x8]
  10d33d:	48 85 c0             	test   rax,rax
  10d340:	74 09                	je     10d34b <__d2b+0x5b>
  10d342:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  10d345:	48 89 51 08          	mov    QWORD PTR [rcx+0x8],rdx
  10d349:	eb 35                	jmp    10d380 <__d2b+0x90>
  10d34b:	66 0f d6 44 24 08    	movq   QWORD PTR [rsp+0x8],xmm0
  10d351:	be 01 00 00 00       	mov    esi,0x1
  10d356:	ba 24 00 00 00       	mov    edx,0x24
  10d35b:	48 89 df             	mov    rdi,rbx
  10d35e:	e8 5d 06 00 00       	call   10d9c0 <_calloc_r>
  10d363:	48 85 c0             	test   rax,rax
  10d366:	0f 84 88 01 00 00    	je     10d4f4 <__d2b+0x204>
  10d36c:	48 b9 01 00 00 00 02 	movabs rcx,0x200000001
  10d373:	00 00 00 
  10d376:	48 89 48 08          	mov    QWORD PTR [rax+0x8],rcx
  10d37a:	f3 0f 7e 44 24 08    	movq   xmm0,QWORD PTR [rsp+0x8]
  10d380:	48 c7 40 10 00 00 00 	mov    QWORD PTR [rax+0x10],0x0
  10d387:	00 
  10d388:	66 48 0f 7e c6       	movq   rsi,xmm0
  10d38d:	48 89 f1             	mov    rcx,rsi
  10d390:	48 c1 e9 20          	shr    rcx,0x20
  10d394:	81 e1 ff ff 0f 00    	and    ecx,0xfffff
  10d39a:	49 89 f1             	mov    r9,rsi
  10d39d:	49 c1 e9 34          	shr    r9,0x34
  10d3a1:	44 8d 91 00 00 10 00 	lea    r10d,[rcx+0x100000]
  10d3a8:	41 81 e1 ff 07 00 00 	and    r9d,0x7ff
  10d3af:	44 0f 44 d1          	cmove  r10d,ecx
  10d3b3:	85 f6                	test   esi,esi
  10d3b5:	74 27                	je     10d3de <__d2b+0xee>
  10d3b7:	40 f6 c6 07          	test   sil,0x7
  10d3bb:	74 4f                	je     10d40c <__d2b+0x11c>
  10d3bd:	40 f6 c6 01          	test   sil,0x1
  10d3c1:	0f 85 b6 00 00 00    	jne    10d47d <__d2b+0x18d>
  10d3c7:	40 f6 c6 02          	test   sil,0x2
  10d3cb:	0f 85 3f 01 00 00    	jne    10d510 <__d2b+0x220>
  10d3d1:	c1 ee 02             	shr    esi,0x2
  10d3d4:	ba 02 00 00 00       	mov    edx,0x2
  10d3d9:	e9 39 01 00 00       	jmp    10d517 <__d2b+0x227>
  10d3de:	41 f6 c2 07          	test   r10b,0x7
  10d3e2:	0f 84 a8 00 00 00    	je     10d490 <__d2b+0x1a0>
  10d3e8:	31 d2                	xor    edx,edx
  10d3ea:	41 f6 c2 01          	test   r10b,0x1
  10d3ee:	0f 85 77 01 00 00    	jne    10d56b <__d2b+0x27b>
  10d3f4:	41 f6 c2 02          	test   r10b,0x2
  10d3f8:	0f 85 5d 01 00 00    	jne    10d55b <__d2b+0x26b>
  10d3fe:	41 c1 ea 02          	shr    r10d,0x2
  10d402:	b9 02 00 00 00       	mov    ecx,0x2
  10d407:	e9 57 01 00 00       	jmp    10d563 <__d2b+0x273>
  10d40c:	89 f3                	mov    ebx,esi
  10d40e:	c1 eb 10             	shr    ebx,0x10
  10d411:	31 d2                	xor    edx,edx
  10d413:	66 85 f6             	test   si,si
  10d416:	0f 45 de             	cmovne ebx,esi
  10d419:	0f 94 c2             	sete   dl
  10d41c:	c1 e2 04             	shl    edx,0x4
  10d41f:	44 8d 42 08          	lea    r8d,[rdx+0x8]
  10d423:	89 d9                	mov    ecx,ebx
  10d425:	c1 e9 08             	shr    ecx,0x8
  10d428:	84 db                	test   bl,bl
  10d42a:	44 0f 45 c2          	cmovne r8d,edx
  10d42e:	0f 45 cb             	cmovne ecx,ebx
  10d431:	41 8d 50 04          	lea    edx,[r8+0x4]
  10d435:	89 cb                	mov    ebx,ecx
  10d437:	c1 eb 04             	shr    ebx,0x4
  10d43a:	f6 c1 0f             	test   cl,0xf
  10d43d:	41 0f 45 d0          	cmovne edx,r8d
  10d441:	0f 45 d9             	cmovne ebx,ecx
  10d444:	44 8d 42 02          	lea    r8d,[rdx+0x2]
  10d448:	89 d9                	mov    ecx,ebx
  10d44a:	c1 e9 02             	shr    ecx,0x2
  10d44d:	f6 c3 03             	test   bl,0x3
  10d450:	44 0f 45 c2          	cmovne r8d,edx
  10d454:	0f 45 cb             	cmovne ecx,ebx
  10d457:	f6 c1 01             	test   cl,0x1
  10d45a:	0f 85 a1 00 00 00    	jne    10d501 <__d2b+0x211>
  10d460:	ba 20 00 00 00       	mov    edx,0x20
  10d465:	83 f9 02             	cmp    ecx,0x2
  10d468:	0f 82 a9 00 00 00    	jb     10d517 <__d2b+0x227>
  10d46e:	41 ff c0             	inc    r8d
  10d471:	d1 e9                	shr    ecx,1
  10d473:	89 ce                	mov    esi,ecx
  10d475:	44 89 c2             	mov    edx,r8d
  10d478:	e9 9a 00 00 00       	jmp    10d517 <__d2b+0x227>
  10d47d:	89 f1                	mov    ecx,esi
  10d47f:	89 48 18             	mov    DWORD PTR [rax+0x18],ecx
  10d482:	31 d2                	xor    edx,edx
  10d484:	e9 a1 00 00 00       	jmp    10d52a <__d2b+0x23a>
  10d489:	31 c0                	xor    eax,eax
  10d48b:	e9 f8 fe ff ff       	jmp    10d388 <__d2b+0x98>
  10d490:	44 89 d1             	mov    ecx,r10d
  10d493:	c1 e9 10             	shr    ecx,0x10
  10d496:	31 d2                	xor    edx,edx
  10d498:	66 45 85 d2          	test   r10w,r10w
  10d49c:	41 0f 45 ca          	cmovne ecx,r10d
  10d4a0:	0f 94 c2             	sete   dl
  10d4a3:	c1 e2 04             	shl    edx,0x4
  10d4a6:	8d 5a 08             	lea    ebx,[rdx+0x8]
  10d4a9:	89 cf                	mov    edi,ecx
  10d4ab:	c1 ef 08             	shr    edi,0x8
  10d4ae:	84 c9                	test   cl,cl
  10d4b0:	0f 45 da             	cmovne ebx,edx
  10d4b3:	0f 45 f9             	cmovne edi,ecx
  10d4b6:	8d 53 04             	lea    edx,[rbx+0x4]
  10d4b9:	89 fe                	mov    esi,edi
  10d4bb:	c1 ee 04             	shr    esi,0x4
  10d4be:	40 f6 c7 0f          	test   dil,0xf
  10d4c2:	0f 45 d3             	cmovne edx,ebx
  10d4c5:	0f 45 f7             	cmovne esi,edi
  10d4c8:	8d 4a 02             	lea    ecx,[rdx+0x2]
  10d4cb:	89 f7                	mov    edi,esi
  10d4cd:	c1 ef 02             	shr    edi,0x2
  10d4d0:	40 f6 c6 03          	test   sil,0x3
  10d4d4:	0f 45 ca             	cmovne ecx,edx
  10d4d7:	0f 45 fe             	cmovne edi,esi
  10d4da:	40 f6 c7 01          	test   dil,0x1
  10d4de:	0f 85 82 00 00 00    	jne    10d566 <__d2b+0x276>
  10d4e4:	ba 20 00 00 00       	mov    edx,0x20
  10d4e9:	83 ff 02             	cmp    edi,0x2
  10d4ec:	72 7d                	jb     10d56b <__d2b+0x27b>
  10d4ee:	ff c1                	inc    ecx
  10d4f0:	d1 ef                	shr    edi,1
  10d4f2:	eb 72                	jmp    10d566 <__d2b+0x276>
  10d4f4:	31 c0                	xor    eax,eax
  10d4f6:	f3 0f 7e 44 24 08    	movq   xmm0,QWORD PTR [rsp+0x8]
  10d4fc:	e9 87 fe ff ff       	jmp    10d388 <__d2b+0x98>
  10d501:	44 89 c2             	mov    edx,r8d
  10d504:	89 ce                	mov    esi,ecx
  10d506:	45 85 c0             	test   r8d,r8d
  10d509:	75 0c                	jne    10d517 <__d2b+0x227>
  10d50b:	e9 6f ff ff ff       	jmp    10d47f <__d2b+0x18f>
  10d510:	d1 ee                	shr    esi,1
  10d512:	ba 01 00 00 00       	mov    edx,0x1
  10d517:	89 d1                	mov    ecx,edx
  10d519:	f6 d9                	neg    cl
  10d51b:	44 89 d7             	mov    edi,r10d
  10d51e:	d3 e7                	shl    edi,cl
  10d520:	09 f7                	or     edi,esi
  10d522:	89 78 18             	mov    DWORD PTR [rax+0x18],edi
  10d525:	89 d1                	mov    ecx,edx
  10d527:	41 d3 ea             	shr    r10d,cl
  10d52a:	44 89 50 1c          	mov    DWORD PTR [rax+0x1c],r10d
  10d52e:	41 83 fa 01          	cmp    r10d,0x1
  10d532:	be 02 00 00 00       	mov    esi,0x2
  10d537:	83 de 00             	sbb    esi,0x0
  10d53a:	89 70 14             	mov    DWORD PTR [rax+0x14],esi
  10d53d:	45 85 c9             	test   r9d,r9d
  10d540:	74 41                	je     10d583 <__d2b+0x293>
  10d542:	41 8d 0c 11          	lea    ecx,[r9+rdx*1]
  10d546:	81 c1 cd fb ff ff    	add    ecx,0xfffffbcd
  10d54c:	41 89 0f             	mov    DWORD PTR [r15],ecx
  10d54f:	b9 35 00 00 00       	mov    ecx,0x35
  10d554:	29 d1                	sub    ecx,edx
  10d556:	e9 a8 00 00 00       	jmp    10d603 <__d2b+0x313>
  10d55b:	41 d1 ea             	shr    r10d,1
  10d55e:	b9 01 00 00 00       	mov    ecx,0x1
  10d563:	44 89 d7             	mov    edi,r10d
  10d566:	41 89 fa             	mov    r10d,edi
  10d569:	89 ca                	mov    edx,ecx
  10d56b:	44 89 50 18          	mov    DWORD PTR [rax+0x18],r10d
  10d56f:	c7 40 14 01 00 00 00 	mov    DWORD PTR [rax+0x14],0x1
  10d576:	83 c2 20             	add    edx,0x20
  10d579:	be 01 00 00 00       	mov    esi,0x1
  10d57e:	45 85 c9             	test   r9d,r9d
  10d581:	75 bf                	jne    10d542 <__d2b+0x252>
  10d583:	81 c2 ce fb ff ff    	add    edx,0xfffffbce
  10d589:	41 89 17             	mov    DWORD PTR [r15],edx
  10d58c:	89 f1                	mov    ecx,esi
  10d58e:	c1 e1 05             	shl    ecx,0x5
  10d591:	ff ce                	dec    esi
  10d593:	8b 74 b0 18          	mov    esi,DWORD PTR [rax+rsi*4+0x18]
  10d597:	89 f2                	mov    edx,esi
  10d599:	c1 e2 10             	shl    edx,0x10
  10d59c:	31 ff                	xor    edi,edi
  10d59e:	81 fe 00 00 01 00    	cmp    esi,0x10000
  10d5a4:	40 0f 92 c7          	setb   dil
  10d5a8:	0f 43 d6             	cmovae edx,esi
  10d5ab:	c1 e7 04             	shl    edi,0x4
  10d5ae:	8d 5f 08             	lea    ebx,[rdi+0x8]
  10d5b1:	89 d6                	mov    esi,edx
  10d5b3:	c1 e6 08             	shl    esi,0x8
  10d5b6:	81 fa 00 00 00 01    	cmp    edx,0x1000000
  10d5bc:	0f 43 f2             	cmovae esi,edx
  10d5bf:	0f 43 df             	cmovae ebx,edi
  10d5c2:	8d 7b 04             	lea    edi,[rbx+0x4]
  10d5c5:	89 f2                	mov    edx,esi
  10d5c7:	c1 e2 04             	shl    edx,0x4
  10d5ca:	81 fe 00 00 00 10    	cmp    esi,0x10000000
  10d5d0:	0f 43 d6             	cmovae edx,esi
  10d5d3:	0f 43 fb             	cmovae edi,ebx
  10d5d6:	8d 34 95 00 00 00 00 	lea    esi,[rdx*4+0x0]
  10d5dd:	81 fa 00 00 00 40    	cmp    edx,0x40000000
  10d5e3:	0f 43 f2             	cmovae esi,edx
  10d5e6:	8d 57 02             	lea    edx,[rdi+0x2]
  10d5e9:	0f 43 d7             	cmovae edx,edi
  10d5ec:	85 f6                	test   esi,esi
  10d5ee:	78 0f                	js     10d5ff <__d2b+0x30f>
  10d5f0:	bf 20 00 00 00       	mov    edi,0x20
  10d5f5:	f7 c6 00 00 00 40    	test   esi,0x40000000
  10d5fb:	74 04                	je     10d601 <__d2b+0x311>
  10d5fd:	ff c2                	inc    edx
  10d5ff:	89 d7                	mov    edi,edx
  10d601:	29 f9                	sub    ecx,edi
  10d603:	41 89 0e             	mov    DWORD PTR [r14],ecx
  10d606:	48 83 c4 10          	add    rsp,0x10
  10d60a:	5b                   	pop    rbx
  10d60b:	41 5e                	pop    r14
  10d60d:	41 5f                	pop    r15
  10d60f:	c3                   	ret

000000000010d610 <__ratio>:
  10d610:	41 56                	push   r14
  10d612:	53                   	push   rbx
  10d613:	48 83 ec 18          	sub    rsp,0x18
  10d617:	49 89 f6             	mov    r14,rsi
  10d61a:	48 89 fb             	mov    rbx,rdi
  10d61d:	48 8d 74 24 0c       	lea    rsi,[rsp+0xc]
  10d622:	e8 a9 fb ff ff       	call   10d1d0 <__b2d>
  10d627:	66 0f d6 44 24 10    	movq   QWORD PTR [rsp+0x10],xmm0
  10d62d:	48 8d 74 24 08       	lea    rsi,[rsp+0x8]
  10d632:	4c 89 f7             	mov    rdi,r14
  10d635:	e8 96 fb ff ff       	call   10d1d0 <__b2d>
  10d63a:	8b 4c 24 0c          	mov    ecx,DWORD PTR [rsp+0xc]
  10d63e:	2b 4c 24 08          	sub    ecx,DWORD PTR [rsp+0x8]
  10d642:	8b 43 14             	mov    eax,DWORD PTR [rbx+0x14]
  10d645:	41 2b 46 14          	sub    eax,DWORD PTR [r14+0x14]
  10d649:	c1 e0 05             	shl    eax,0x5
  10d64c:	01 c8                	add    eax,ecx
  10d64e:	7e 24                	jle    10d674 <__ratio+0x64>
  10d650:	c1 e0 14             	shl    eax,0x14
  10d653:	f3 0f 7e 4c 24 10    	movq   xmm1,QWORD PTR [rsp+0x10]
  10d659:	66 48 0f 7e c9       	movq   rcx,xmm1
  10d65e:	89 ca                	mov    edx,ecx
  10d660:	48 c1 e9 20          	shr    rcx,0x20
  10d664:	01 c1                	add    ecx,eax
  10d666:	48 c1 e1 20          	shl    rcx,0x20
  10d66a:	48 09 ca             	or     rdx,rcx
  10d66d:	66 48 0f 6e ca       	movq   xmm1,rdx
  10d672:	eb 22                	jmp    10d696 <__ratio+0x86>
  10d674:	66 48 0f 7e c1       	movq   rcx,xmm0
  10d679:	89 ca                	mov    edx,ecx
  10d67b:	48 c1 e9 20          	shr    rcx,0x20
  10d67f:	c1 e0 14             	shl    eax,0x14
  10d682:	29 c1                	sub    ecx,eax
  10d684:	48 c1 e1 20          	shl    rcx,0x20
  10d688:	48 09 ca             	or     rdx,rcx
  10d68b:	66 48 0f 6e c2       	movq   xmm0,rdx
  10d690:	f3 0f 7e 4c 24 10    	movq   xmm1,QWORD PTR [rsp+0x10]
  10d696:	f2 0f 5e c8          	divsd  xmm1,xmm0
  10d69a:	66 0f 28 c1          	movapd xmm0,xmm1
  10d69e:	48 83 c4 18          	add    rsp,0x18
  10d6a2:	5b                   	pop    rbx
  10d6a3:	41 5e                	pop    r14
  10d6a5:	c3                   	ret
  10d6a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10d6ad:	00 00 00 

000000000010d6b0 <_mprec_log10>:
  10d6b0:	83 ff 18             	cmp    edi,0x18
  10d6b3:	7d 10                	jge    10d6c5 <_mprec_log10+0x15>
  10d6b5:	48 63 c7             	movsxd rax,edi
  10d6b8:	48 8d 0d 11 39 ff ff 	lea    rcx,[rip+0xffffffffffff3911]        # 100fd0 <__mprec_tens>
  10d6bf:	f2 0f 10 04 c1       	movsd  xmm0,QWORD PTR [rcx+rax*8]
  10d6c4:	c3                   	ret
  10d6c5:	8d 47 ff             	lea    eax,[rdi-0x1]
  10d6c8:	89 f9                	mov    ecx,edi
  10d6ca:	83 e1 07             	and    ecx,0x7
  10d6cd:	74 34                	je     10d703 <_mprec_log10+0x53>
  10d6cf:	31 d2                	xor    edx,edx
  10d6d1:	f2 0f 10 05 bf 31 ff 	movsd  xmm0,QWORD PTR [rip+0xffffffffffff31bf]        # 100898 <_svfprintf_r.blanks-0x248>
  10d6d8:	ff 
  10d6d9:	f2 0f 10 0d 8f 31 ff 	movsd  xmm1,QWORD PTR [rip+0xffffffffffff318f]        # 100870 <_svfprintf_r.blanks-0x270>
  10d6e0:	ff 
  10d6e1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10d6e8:	0f 1f 84 00 00 00 00 
  10d6ef:	00 
  10d6f0:	f2 0f 59 c1          	mulsd  xmm0,xmm1
  10d6f4:	ff c2                	inc    edx
  10d6f6:	39 d1                	cmp    ecx,edx
  10d6f8:	75 f6                	jne    10d6f0 <_mprec_log10+0x40>
  10d6fa:	29 d7                	sub    edi,edx
  10d6fc:	83 f8 07             	cmp    eax,0x7
  10d6ff:	73 0f                	jae    10d710 <_mprec_log10+0x60>
  10d701:	eb 45                	jmp    10d748 <_mprec_log10+0x98>
  10d703:	f2 0f 10 05 8d 31 ff 	movsd  xmm0,QWORD PTR [rip+0xffffffffffff318d]        # 100898 <_svfprintf_r.blanks-0x248>
  10d70a:	ff 
  10d70b:	83 f8 07             	cmp    eax,0x7
  10d70e:	72 38                	jb     10d748 <_mprec_log10+0x98>
  10d710:	ff cf                	dec    edi
  10d712:	f2 0f 10 0d 56 31 ff 	movsd  xmm1,QWORD PTR [rip+0xffffffffffff3156]        # 100870 <_svfprintf_r.blanks-0x270>
  10d719:	ff 
  10d71a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  10d720:	f2 0f 59 c1          	mulsd  xmm0,xmm1
  10d724:	f2 0f 59 c1          	mulsd  xmm0,xmm1
  10d728:	f2 0f 59 c1          	mulsd  xmm0,xmm1
  10d72c:	f2 0f 59 c1          	mulsd  xmm0,xmm1
  10d730:	f2 0f 59 c1          	mulsd  xmm0,xmm1
  10d734:	f2 0f 59 c1          	mulsd  xmm0,xmm1
  10d738:	f2 0f 59 c1          	mulsd  xmm0,xmm1
  10d73c:	f2 0f 59 c1          	mulsd  xmm0,xmm1
  10d740:	83 c7 f8             	add    edi,0xfffffff8
  10d743:	83 ff fe             	cmp    edi,0xfffffffe
  10d746:	72 d8                	jb     10d720 <_mprec_log10+0x70>
  10d748:	c3                   	ret
  10d749:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

000000000010d750 <__copybits>:
  10d750:	41 56                	push   r14
  10d752:	53                   	push   rbx
  10d753:	ff ce                	dec    esi
  10d755:	c1 fe 05             	sar    esi,0x5
  10d758:	4c 63 ce             	movsxd r9,esi
  10d75b:	4e 8d 04 8f          	lea    r8,[rdi+r9*4]
  10d75f:	49 83 c0 04          	add    r8,0x4
  10d763:	48 63 4a 14          	movsxd rcx,DWORD PTR [rdx+0x14]
  10d767:	48 89 f8             	mov    rax,rdi
  10d76a:	48 85 c9             	test   rcx,rcx
  10d76d:	0f 8e ee 00 00 00    	jle    10d861 <__copybits+0x111>
  10d773:	48 8d 34 8a          	lea    rsi,[rdx+rcx*4]
  10d777:	48 83 c6 18          	add    rsi,0x18
  10d77b:	4c 8d 52 1c          	lea    r10,[rdx+0x1c]
  10d77f:	4c 39 d6             	cmp    rsi,r10
  10d782:	4c 0f 47 d6          	cmova  r10,rsi
  10d786:	48 8d 4a 18          	lea    rcx,[rdx+0x18]
  10d78a:	49 29 d2             	sub    r10,rdx
  10d78d:	49 83 c2 e7          	add    r10,0xffffffffffffffe7
  10d791:	48 89 f8             	mov    rax,rdi
  10d794:	49 83 fa 2c          	cmp    r10,0x2c
  10d798:	0f 82 b2 00 00 00    	jb     10d850 <__copybits+0x100>
  10d79e:	48 29 d0             	sub    rax,rdx
  10d7a1:	48 83 c0 e8          	add    rax,0xffffffffffffffe8
  10d7a5:	48 83 f8 20          	cmp    rax,0x20
  10d7a9:	73 08                	jae    10d7b3 <__copybits+0x63>
  10d7ab:	48 89 f8             	mov    rax,rdi
  10d7ae:	e9 9d 00 00 00       	jmp    10d850 <__copybits+0x100>
  10d7b3:	49 c1 ea 02          	shr    r10,0x2
  10d7b7:	49 ff c2             	inc    r10
  10d7ba:	4d 89 d3             	mov    r11,r10
  10d7bd:	49 83 e3 f8          	and    r11,0xfffffffffffffff8
  10d7c1:	49 8d 43 f8          	lea    rax,[r11-0x8]
  10d7c5:	49 89 c6             	mov    r14,rax
  10d7c8:	49 c1 ee 03          	shr    r14,0x3
  10d7cc:	49 ff c6             	inc    r14
  10d7cf:	48 85 c0             	test   rax,rax
  10d7d2:	0f 84 6c 01 00 00    	je     10d944 <__copybits+0x1f4>
  10d7d8:	48 b8 fc ff ff ff ff 	movabs rax,0x3ffffffffffffffc
  10d7df:	ff ff 3f 
  10d7e2:	48 83 c8 02          	or     rax,0x2
  10d7e6:	4c 21 f0             	and    rax,r14
  10d7e9:	31 db                	xor    ebx,ebx
  10d7eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  10d7f0:	0f 10 44 1a 18       	movups xmm0,XMMWORD PTR [rdx+rbx*1+0x18]
  10d7f5:	0f 10 4c 1a 28       	movups xmm1,XMMWORD PTR [rdx+rbx*1+0x28]
  10d7fa:	0f 11 04 1f          	movups XMMWORD PTR [rdi+rbx*1],xmm0
  10d7fe:	0f 11 4c 1f 10       	movups XMMWORD PTR [rdi+rbx*1+0x10],xmm1
  10d803:	0f 10 44 1a 38       	movups xmm0,XMMWORD PTR [rdx+rbx*1+0x38]
  10d808:	0f 10 4c 1a 48       	movups xmm1,XMMWORD PTR [rdx+rbx*1+0x48]
  10d80d:	0f 11 44 1f 20       	movups XMMWORD PTR [rdi+rbx*1+0x20],xmm0
  10d812:	0f 11 4c 1f 30       	movups XMMWORD PTR [rdi+rbx*1+0x30],xmm1
  10d817:	48 83 c3 40          	add    rbx,0x40
  10d81b:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  10d81f:	75 cf                	jne    10d7f0 <__copybits+0xa0>
  10d821:	41 f6 c6 01          	test   r14b,0x1
  10d825:	74 12                	je     10d839 <__copybits+0xe9>
  10d827:	0f 10 04 19          	movups xmm0,XMMWORD PTR [rcx+rbx*1]
  10d82b:	0f 10 4c 19 10       	movups xmm1,XMMWORD PTR [rcx+rbx*1+0x10]
  10d830:	0f 11 04 1f          	movups XMMWORD PTR [rdi+rbx*1],xmm0
  10d834:	0f 11 4c 1f 10       	movups XMMWORD PTR [rdi+rbx*1+0x10],xmm1
  10d839:	4a 8d 04 9f          	lea    rax,[rdi+r11*4]
  10d83d:	4d 39 da             	cmp    r10,r11
  10d840:	74 1f                	je     10d861 <__copybits+0x111>
  10d842:	4a 8d 0c 99          	lea    rcx,[rcx+r11*4]
  10d846:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10d84d:	00 00 00 
  10d850:	8b 11                	mov    edx,DWORD PTR [rcx]
  10d852:	48 83 c1 04          	add    rcx,0x4
  10d856:	89 10                	mov    DWORD PTR [rax],edx
  10d858:	48 83 c0 04          	add    rax,0x4
  10d85c:	48 39 f1             	cmp    rcx,rsi
  10d85f:	72 ef                	jb     10d850 <__copybits+0x100>
  10d861:	4c 39 c0             	cmp    rax,r8
  10d864:	0f 83 d6 00 00 00    	jae    10d940 <__copybits+0x1f0>
  10d86a:	4a 8d 0c 8f          	lea    rcx,[rdi+r9*4]
  10d86e:	31 d2                	xor    edx,edx
  10d870:	48 89 ce             	mov    rsi,rcx
  10d873:	48 29 c6             	sub    rsi,rax
  10d876:	48 0f 43 d6          	cmovae rdx,rsi
  10d87a:	48 83 c2 03          	add    rdx,0x3
  10d87e:	48 83 fa 1c          	cmp    rdx,0x1c
  10d882:	0f 82 a3 00 00 00    	jb     10d92b <__copybits+0x1db>
  10d888:	48 c1 ea 02          	shr    rdx,0x2
  10d88c:	48 ff c2             	inc    rdx
  10d88f:	49 89 d0             	mov    r8,rdx
  10d892:	49 83 e0 f8          	and    r8,0xfffffffffffffff8
  10d896:	49 8d 58 f8          	lea    rbx,[r8-0x8]
  10d89a:	48 89 df             	mov    rdi,rbx
  10d89d:	48 c1 ef 03          	shr    rdi,0x3
  10d8a1:	48 ff c7             	inc    rdi
  10d8a4:	89 fe                	mov    esi,edi
  10d8a6:	83 e6 03             	and    esi,0x3
  10d8a9:	48 83 fb 18          	cmp    rbx,0x18
  10d8ad:	73 04                	jae    10d8b3 <__copybits+0x163>
  10d8af:	31 db                	xor    ebx,ebx
  10d8b1:	eb 3e                	jmp    10d8f1 <__copybits+0x1a1>
  10d8b3:	48 83 e7 fc          	and    rdi,0xfffffffffffffffc
  10d8b7:	31 db                	xor    ebx,ebx
  10d8b9:	0f 57 c0             	xorps  xmm0,xmm0
  10d8bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  10d8c0:	0f 11 04 98          	movups XMMWORD PTR [rax+rbx*4],xmm0
  10d8c4:	0f 11 44 98 10       	movups XMMWORD PTR [rax+rbx*4+0x10],xmm0
  10d8c9:	0f 11 44 98 20       	movups XMMWORD PTR [rax+rbx*4+0x20],xmm0
  10d8ce:	0f 11 44 98 30       	movups XMMWORD PTR [rax+rbx*4+0x30],xmm0
  10d8d3:	0f 11 44 98 40       	movups XMMWORD PTR [rax+rbx*4+0x40],xmm0
  10d8d8:	0f 11 44 98 50       	movups XMMWORD PTR [rax+rbx*4+0x50],xmm0
  10d8dd:	0f 11 44 98 60       	movups XMMWORD PTR [rax+rbx*4+0x60],xmm0
  10d8e2:	0f 11 44 98 70       	movups XMMWORD PTR [rax+rbx*4+0x70],xmm0
  10d8e7:	48 83 c3 20          	add    rbx,0x20
  10d8eb:	48 83 c7 fc          	add    rdi,0xfffffffffffffffc
  10d8ef:	75 cf                	jne    10d8c0 <__copybits+0x170>
  10d8f1:	48 85 f6             	test   rsi,rsi
  10d8f4:	74 2c                	je     10d922 <__copybits+0x1d2>
  10d8f6:	48 8d 3c 98          	lea    rdi,[rax+rbx*4]
  10d8fa:	48 83 c7 10          	add    rdi,0x10
  10d8fe:	48 c1 e6 05          	shl    rsi,0x5
  10d902:	31 db                	xor    ebx,ebx
  10d904:	0f 57 c0             	xorps  xmm0,xmm0
  10d907:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  10d90e:	00 00 
  10d910:	0f 11 44 1f f0       	movups XMMWORD PTR [rdi+rbx*1-0x10],xmm0
  10d915:	0f 11 04 1f          	movups XMMWORD PTR [rdi+rbx*1],xmm0
  10d919:	48 83 c3 20          	add    rbx,0x20
  10d91d:	48 39 de             	cmp    rsi,rbx
  10d920:	75 ee                	jne    10d910 <__copybits+0x1c0>
  10d922:	4c 39 c2             	cmp    rdx,r8
  10d925:	74 19                	je     10d940 <__copybits+0x1f0>
  10d927:	4a 8d 04 80          	lea    rax,[rax+r8*4]
  10d92b:	48 83 c0 fc          	add    rax,0xfffffffffffffffc
  10d92f:	90                   	nop
  10d930:	c7 40 04 00 00 00 00 	mov    DWORD PTR [rax+0x4],0x0
  10d937:	48 83 c0 04          	add    rax,0x4
  10d93b:	48 39 c8             	cmp    rax,rcx
  10d93e:	72 f0                	jb     10d930 <__copybits+0x1e0>
  10d940:	5b                   	pop    rbx
  10d941:	41 5e                	pop    r14
  10d943:	c3                   	ret
  10d944:	31 db                	xor    ebx,ebx
  10d946:	41 f6 c6 01          	test   r14b,0x1
  10d94a:	0f 85 d7 fe ff ff    	jne    10d827 <__copybits+0xd7>
  10d950:	e9 e4 fe ff ff       	jmp    10d839 <__copybits+0xe9>
  10d955:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  10d95c:	00 00 00 00 

000000000010d960 <__any_on>:
  10d960:	8b 4f 14             	mov    ecx,DWORD PTR [rdi+0x14]
  10d963:	48 83 c7 18          	add    rdi,0x18
  10d967:	89 f2                	mov    edx,esi
  10d969:	c1 fa 05             	sar    edx,0x5
  10d96c:	39 ca                	cmp    edx,ecx
  10d96e:	7f 28                	jg     10d998 <__any_on+0x38>
  10d970:	7d 24                	jge    10d996 <__any_on+0x36>
  10d972:	83 e6 1f             	and    esi,0x1f
  10d975:	74 1f                	je     10d996 <__any_on+0x36>
  10d977:	4c 63 c2             	movsxd r8,edx
  10d97a:	41 b9 ff ff ff ff    	mov    r9d,0xffffffff
  10d980:	89 f1                	mov    ecx,esi
  10d982:	41 d3 e1             	shl    r9d,cl
  10d985:	41 f7 d1             	not    r9d
  10d988:	b8 01 00 00 00       	mov    eax,0x1
  10d98d:	89 d1                	mov    ecx,edx
  10d98f:	46 85 0c 87          	test   DWORD PTR [rdi+r8*4],r9d
  10d993:	74 03                	je     10d998 <__any_on+0x38>
  10d995:	c3                   	ret
  10d996:	89 d1                	mov    ecx,edx
  10d998:	48 63 c1             	movsxd rax,ecx
  10d99b:	48 8d 04 87          	lea    rax,[rdi+rax*4]
  10d99f:	90                   	nop
  10d9a0:	48 39 f8             	cmp    rax,rdi
  10d9a3:	76 10                	jbe    10d9b5 <__any_on+0x55>
  10d9a5:	83 78 fc 00          	cmp    DWORD PTR [rax-0x4],0x0
  10d9a9:	48 8d 40 fc          	lea    rax,[rax-0x4]
  10d9ad:	74 f1                	je     10d9a0 <__any_on+0x40>
  10d9af:	b8 01 00 00 00       	mov    eax,0x1
  10d9b4:	c3                   	ret
  10d9b5:	31 c0                	xor    eax,eax
  10d9b7:	c3                   	ret
  10d9b8:	cc                   	int3
  10d9b9:	cc                   	int3
  10d9ba:	cc                   	int3
  10d9bb:	cc                   	int3
  10d9bc:	cc                   	int3
  10d9bd:	cc                   	int3
  10d9be:	cc                   	int3
  10d9bf:	cc                   	int3

000000000010d9c0 <_calloc_r>:
  10d9c0:	53                   	push   rbx
  10d9c1:	48 0f af f2          	imul   rsi,rdx
  10d9c5:	e8 c6 a6 ff ff       	call   108090 <_malloc_r>
  10d9ca:	48 89 c3             	mov    rbx,rax
  10d9cd:	48 85 c0             	test   rax,rax
  10d9d0:	74 68                	je     10da3a <_calloc_r+0x7a>
  10d9d2:	48 8b 53 f8          	mov    rdx,QWORD PTR [rbx-0x8]
  10d9d6:	48 83 c2 f8          	add    rdx,0xfffffffffffffff8
  10d9da:	48 83 e2 fc          	and    rdx,0xfffffffffffffffc
  10d9de:	48 83 fa 48          	cmp    rdx,0x48
  10d9e2:	77 2f                	ja     10da13 <_calloc_r+0x53>
  10d9e4:	48 89 d8             	mov    rax,rbx
  10d9e7:	48 83 fa 28          	cmp    rdx,0x28
  10d9eb:	72 3f                	jb     10da2c <_calloc_r+0x6c>
  10d9ed:	0f 57 c0             	xorps  xmm0,xmm0
  10d9f0:	0f 11 03             	movups XMMWORD PTR [rbx],xmm0
  10d9f3:	48 83 fa 38          	cmp    rdx,0x38
  10d9f7:	72 26                	jb     10da1f <_calloc_r+0x5f>
  10d9f9:	0f 11 43 10          	movups XMMWORD PTR [rbx+0x10],xmm0
  10d9fd:	48 89 d8             	mov    rax,rbx
  10da00:	48 83 fa 48          	cmp    rdx,0x48
  10da04:	72 22                	jb     10da28 <_calloc_r+0x68>
  10da06:	48 83 c0 30          	add    rax,0x30
  10da0a:	0f 57 c0             	xorps  xmm0,xmm0
  10da0d:	0f 11 43 20          	movups XMMWORD PTR [rbx+0x20],xmm0
  10da11:	eb 19                	jmp    10da2c <_calloc_r+0x6c>
  10da13:	48 89 df             	mov    rdi,rbx
  10da16:	31 f6                	xor    esi,esi
  10da18:	e8 23 00 00 00       	call   10da40 <memset>
  10da1d:	eb 1b                	jmp    10da3a <_calloc_r+0x7a>
  10da1f:	48 89 d8             	mov    rax,rbx
  10da22:	48 83 c0 10          	add    rax,0x10
  10da26:	eb 04                	jmp    10da2c <_calloc_r+0x6c>
  10da28:	48 83 c0 20          	add    rax,0x20
  10da2c:	0f 57 c0             	xorps  xmm0,xmm0
  10da2f:	0f 11 00             	movups XMMWORD PTR [rax],xmm0
  10da32:	48 c7 40 10 00 00 00 	mov    QWORD PTR [rax+0x10],0x0
  10da39:	00 
  10da3a:	48 89 d8             	mov    rax,rbx
  10da3d:	5b                   	pop    rbx
  10da3e:	c3                   	ret
  10da3f:	cc                   	int3

000000000010da40 <memset>:
  10da40:	49 89 f9             	mov    r9,rdi
  10da43:	48 89 f0             	mov    rax,rsi
  10da46:	48 89 d1             	mov    rcx,rdx
  10da49:	48 83 fa 10          	cmp    rdx,0x10
  10da4d:	0f 82 a8 00 00 00    	jb     10dafb <byte_set>
  10da53:	49 89 f8             	mov    r8,rdi
  10da56:	49 83 e0 07          	and    r8,0x7
  10da5a:	74 12                	je     10da6e <quadword_aligned>
  10da5c:	48 c7 c1 08 00 00 00 	mov    rcx,0x8
  10da63:	4c 29 c1             	sub    rcx,r8
  10da66:	48 29 ca             	sub    rdx,rcx
  10da69:	f3 aa                	rep stos BYTE PTR es:[rdi],al
  10da6b:	48 89 d1             	mov    rcx,rdx

000000000010da6e <quadword_aligned>:
  10da6e:	49 b8 01 01 01 01 01 	movabs r8,0x101010101010101
  10da75:	01 01 01 
  10da78:	40 0f b6 c6          	movzx  eax,sil
  10da7c:	49 0f af c0          	imul   rax,r8
  10da80:	48 81 fa 00 01 00 00 	cmp    rdx,0x100
  10da87:	72 78                	jb     10db01 <quadword_set>
  10da89:	48 c1 e9 07          	shr    rcx,0x7
  10da8d:	0f 1f 00             	nop    DWORD PTR [rax]

000000000010da90 <loop>:
  10da90:	48 0f c3 07          	movnti QWORD PTR [rdi],rax
  10da94:	48 0f c3 47 08       	movnti QWORD PTR [rdi+0x8],rax
  10da99:	48 0f c3 47 10       	movnti QWORD PTR [rdi+0x10],rax
  10da9e:	48 0f c3 47 18       	movnti QWORD PTR [rdi+0x18],rax
  10daa3:	48 0f c3 47 20       	movnti QWORD PTR [rdi+0x20],rax
  10daa8:	48 0f c3 47 28       	movnti QWORD PTR [rdi+0x28],rax
  10daad:	48 0f c3 47 30       	movnti QWORD PTR [rdi+0x30],rax
  10dab2:	48 0f c3 47 38       	movnti QWORD PTR [rdi+0x38],rax
  10dab7:	48 0f c3 47 40       	movnti QWORD PTR [rdi+0x40],rax
  10dabc:	48 0f c3 47 48       	movnti QWORD PTR [rdi+0x48],rax
  10dac1:	48 0f c3 47 50       	movnti QWORD PTR [rdi+0x50],rax
  10dac6:	48 0f c3 47 58       	movnti QWORD PTR [rdi+0x58],rax
  10dacb:	48 0f c3 47 60       	movnti QWORD PTR [rdi+0x60],rax
  10dad0:	48 0f c3 47 68       	movnti QWORD PTR [rdi+0x68],rax
  10dad5:	48 0f c3 47 70       	movnti QWORD PTR [rdi+0x70],rax
  10dada:	48 0f c3 47 78       	movnti QWORD PTR [rdi+0x78],rax
  10dadf:	48 8d bf 80 00 00 00 	lea    rdi,[rdi+0x80]
  10dae6:	48 ff c9             	dec    rcx
  10dae9:	75 a5                	jne    10da90 <loop>
  10daeb:	0f ae f8             	sfence
  10daee:	48 89 d1             	mov    rcx,rdx
  10daf1:	48 83 e1 7f          	and    rcx,0x7f
  10daf5:	f3 aa                	rep stos BYTE PTR es:[rdi],al
  10daf7:	4c 89 c8             	mov    rax,r9
  10dafa:	c3                   	ret

000000000010dafb <byte_set>:
  10dafb:	f3 aa                	rep stos BYTE PTR es:[rdi],al
  10dafd:	4c 89 c8             	mov    rax,r9
  10db00:	c3                   	ret

000000000010db01 <quadword_set>:
  10db01:	48 c1 e9 03          	shr    rcx,0x3
  10db05:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10db0c:	00 00 00 
  10db0f:	90                   	nop
  10db10:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  10db13:	48 89 d1             	mov    rcx,rdx
  10db16:	48 83 e1 07          	and    rcx,0x7
  10db1a:	f3 aa                	rep stos BYTE PTR es:[rdi],al
  10db1c:	4c 89 c8             	mov    rax,r9
  10db1f:	c3                   	ret

000000000010db20 <_sprintf_r>:
  10db20:	48 81 ec 88 01 00 00 	sub    rsp,0x188
  10db27:	48 89 8c 24 e8 00 00 	mov    QWORD PTR [rsp+0xe8],rcx
  10db2e:	00 
  10db2f:	4c 89 84 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],r8
  10db36:	00 
  10db37:	4c 89 8c 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],r9
  10db3e:	00 
  10db3f:	84 c0                	test   al,al
  10db41:	74 40                	je     10db83 <_sprintf_r+0x63>
  10db43:	0f 29 84 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm0
  10db4a:	00 
  10db4b:	0f 29 8c 24 10 01 00 	movaps XMMWORD PTR [rsp+0x110],xmm1
  10db52:	00 
  10db53:	0f 29 94 24 20 01 00 	movaps XMMWORD PTR [rsp+0x120],xmm2
  10db5a:	00 
  10db5b:	0f 29 9c 24 30 01 00 	movaps XMMWORD PTR [rsp+0x130],xmm3
  10db62:	00 
  10db63:	0f 29 a4 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm4
  10db6a:	00 
  10db6b:	0f 29 ac 24 50 01 00 	movaps XMMWORD PTR [rsp+0x150],xmm5
  10db72:	00 
  10db73:	0f 29 b4 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm6
  10db7a:	00 
  10db7b:	0f 29 bc 24 70 01 00 	movaps XMMWORD PTR [rsp+0x170],xmm7
  10db82:	00 
  10db83:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
  10db88:	48 89 74 24 38       	mov    QWORD PTR [rsp+0x38],rsi
  10db8d:	48 b8 ff ff ff 7f 08 	movabs rax,0xffff02087fffffff
  10db94:	02 ff ff 
  10db97:	48 89 44 24 2c       	mov    QWORD PTR [rsp+0x2c],rax
  10db9c:	c7 44 24 40 ff ff ff 	mov    DWORD PTR [rsp+0x40],0x7fffffff
  10dba3:	7f 
  10dba4:	48 b8 18 00 00 00 30 	movabs rax,0x3000000018
  10dbab:	00 00 00 
  10dbae:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  10dbb2:	48 8d 84 24 90 01 00 	lea    rax,[rsp+0x190]
  10dbb9:	00 
  10dbba:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  10dbbf:	48 8d 84 24 d0 00 00 	lea    rax,[rsp+0xd0]
  10dbc6:	00 
  10dbc7:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  10dbcc:	48 8d 74 24 20       	lea    rsi,[rsp+0x20]
  10dbd1:	48 89 e1             	mov    rcx,rsp
  10dbd4:	e8 97 80 ff ff       	call   105c70 <_svfprintf_r>
  10dbd9:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  10dbde:	c6 01 00             	mov    BYTE PTR [rcx],0x0
  10dbe1:	48 81 c4 88 01 00 00 	add    rsp,0x188
  10dbe8:	c3                   	ret
  10dbe9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

000000000010dbf0 <sprintf>:
  10dbf0:	48 81 ec 88 01 00 00 	sub    rsp,0x188
  10dbf7:	49 89 f2             	mov    r10,rsi
  10dbfa:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
  10dbff:	48 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],rcx
  10dc04:	4c 89 44 24 40       	mov    QWORD PTR [rsp+0x40],r8
  10dc09:	4c 89 4c 24 48       	mov    QWORD PTR [rsp+0x48],r9
  10dc0e:	84 c0                	test   al,al
  10dc10:	74 37                	je     10dc49 <sprintf+0x59>
  10dc12:	0f 29 44 24 50       	movaps XMMWORD PTR [rsp+0x50],xmm0
  10dc17:	0f 29 4c 24 60       	movaps XMMWORD PTR [rsp+0x60],xmm1
  10dc1c:	0f 29 54 24 70       	movaps XMMWORD PTR [rsp+0x70],xmm2
  10dc21:	0f 29 9c 24 80 00 00 	movaps XMMWORD PTR [rsp+0x80],xmm3
  10dc28:	00 
  10dc29:	0f 29 a4 24 90 00 00 	movaps XMMWORD PTR [rsp+0x90],xmm4
  10dc30:	00 
  10dc31:	0f 29 ac 24 a0 00 00 	movaps XMMWORD PTR [rsp+0xa0],xmm5
  10dc38:	00 
  10dc39:	0f 29 b4 24 b0 00 00 	movaps XMMWORD PTR [rsp+0xb0],xmm6
  10dc40:	00 
  10dc41:	0f 29 bc 24 c0 00 00 	movaps XMMWORD PTR [rsp+0xc0],xmm7
  10dc48:	00 
  10dc49:	48 89 bc 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],rdi
  10dc50:	00 
  10dc51:	48 89 bc 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rdi
  10dc58:	00 
  10dc59:	48 b8 ff ff ff 7f 08 	movabs rax,0xffff02087fffffff
  10dc60:	02 ff ff 
  10dc63:	48 89 84 24 e4 00 00 	mov    QWORD PTR [rsp+0xe4],rax
  10dc6a:	00 
  10dc6b:	c7 84 24 f8 00 00 00 	mov    DWORD PTR [rsp+0xf8],0x7fffffff
  10dc72:	ff ff ff 7f 
  10dc76:	48 b8 10 00 00 00 30 	movabs rax,0x3000000010
  10dc7d:	00 00 00 
  10dc80:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  10dc84:	48 8d 84 24 90 01 00 	lea    rax,[rsp+0x190]
  10dc8b:	00 
  10dc8c:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  10dc91:	48 8d 44 24 20       	lea    rax,[rsp+0x20]
  10dc96:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  10dc9b:	48 8d 05 f6 7f 00 00 	lea    rax,[rip+0x7ff6]        # 115c98 <_impure_ptr>
  10dca2:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  10dca5:	48 8d b4 24 d8 00 00 	lea    rsi,[rsp+0xd8]
  10dcac:	00 
  10dcad:	48 89 e1             	mov    rcx,rsp
  10dcb0:	4c 89 d2             	mov    rdx,r10
  10dcb3:	e8 b8 7f ff ff       	call   105c70 <_svfprintf_r>
  10dcb8:	48 8b 8c 24 d8 00 00 	mov    rcx,QWORD PTR [rsp+0xd8]
  10dcbf:	00 
  10dcc0:	c6 01 00             	mov    BYTE PTR [rcx],0x0
  10dcc3:	48 81 c4 88 01 00 00 	add    rsp,0x188
  10dcca:	c3                   	ret
  10dccb:	cc                   	int3
  10dccc:	cc                   	int3
  10dccd:	cc                   	int3
  10dcce:	cc                   	int3
  10dccf:	cc                   	int3

000000000010dcd0 <IoOut32>:
  10dcd0:	66 89 fa             	mov    dx,di
  10dcd3:	89 f0                	mov    eax,esi
  10dcd5:	ef                   	out    dx,eax
  10dcd6:	c3                   	ret

000000000010dcd7 <IoIn32>:
  10dcd7:	66 89 fa             	mov    dx,di
  10dcda:	ed                   	in     eax,dx
  10dcdb:	c3                   	ret

000000000010dcdc <IoIn16>:
  10dcdc:	66 89 fa             	mov    dx,di
  10dcdf:	66 ed                	in     ax,dx
  10dce1:	c3                   	ret

000000000010dce2 <IoOut8>:
  10dce2:	66 89 fa             	mov    dx,di
  10dce5:	40 88 f0             	mov    al,sil
  10dce8:	ee                   	out    dx,al
  10dce9:	c3                   	ret

000000000010dcea <IoIn8>:
  10dcea:	66 89 fa             	mov    dx,di
  10dced:	ec                   	in     al,dx
  10dcee:	c3                   	ret

000000000010dcef <call_kernel_main>:
  10dcef:	48 8d a2 00 00 10 00 	lea    rsp,[rdx+0x100000]
  10dcf6:	48 8d aa 00 00 10 00 	lea    rbp,[rdx+0x100000]
  10dcfd:	ff d6                	call   rsi

000000000010dcff <_hlt>:
  10dcff:	f4                   	hlt
  10dd00:	eb fd                	jmp    10dcff <_hlt>

000000000010dd02 <LoadGDT>:
  10dd02:	55                   	push   rbp
  10dd03:	48 89 e5             	mov    rbp,rsp
  10dd06:	48 83 ec 0a          	sub    rsp,0xa
  10dd0a:	66 89 3c 24          	mov    WORD PTR [rsp],di
  10dd0e:	48 89 74 24 02       	mov    QWORD PTR [rsp+0x2],rsi
  10dd13:	0f 01 14 24          	lgdt   [rsp]
  10dd17:	48 89 ec             	mov    rsp,rbp
  10dd1a:	5d                   	pop    rbp
  10dd1b:	c3                   	ret

000000000010dd1c <SetDSAll>:
  10dd1c:	8e df                	mov    ds,edi
  10dd1e:	8e c7                	mov    es,edi
  10dd20:	8e e7                	mov    fs,edi
  10dd22:	8e ef                	mov    gs,edi
  10dd24:	c3                   	ret

000000000010dd25 <SetCSSS>:
  10dd25:	55                   	push   rbp
  10dd26:	48 89 e5             	mov    rbp,rsp
  10dd29:	8e d6                	mov    ss,esi
  10dd2b:	48 b8 39 dd 10 00 00 	movabs rax,0x10dd39
  10dd32:	00 00 00 
  10dd35:	57                   	push   rdi
  10dd36:	50                   	push   rax
  10dd37:	48 cb                	retfq

000000000010dd39 <SetCSSS.next>:
  10dd39:	48 89 ec             	mov    rsp,rbp
  10dd3c:	5d                   	pop    rbp
  10dd3d:	c3                   	ret

000000000010dd3e <SetCSSS.stop>:
  10dd3e:	f4                   	hlt
  10dd3f:	eb fd                	jmp    10dd3e <SetCSSS.stop>

000000000010dd41 <GetCS>:
  10dd41:	31 c0                	xor    eax,eax
  10dd43:	66 8c c8             	mov    ax,cs
  10dd46:	c3                   	ret

000000000010dd47 <LoadIDT>:
  10dd47:	55                   	push   rbp
  10dd48:	48 89 e5             	mov    rbp,rsp
  10dd4b:	48 83 ec 0a          	sub    rsp,0xa
  10dd4f:	66 89 3c 24          	mov    WORD PTR [rsp],di
  10dd53:	48 89 74 24 02       	mov    QWORD PTR [rsp+0x2],rsi
  10dd58:	0f 01 1c 24          	lidt   [rsp]
  10dd5c:	48 89 ec             	mov    rsp,rbp
  10dd5f:	5d                   	pop    rbp
  10dd60:	c3                   	ret

000000000010dd61 <SetCR3>:
  10dd61:	0f 22 df             	mov    cr3,rdi
  10dd64:	c3                   	ret

000000000010dd65 <NotifyEndOfInterrupt>:
  10dd65:	b8 b0 00 e0 fe       	mov    eax,0xfee000b0
  10dd6a:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
  10dd71:	fb                   	sti
  10dd72:	c3                   	ret

000000000010dd73 <rdtsc>:
  10dd73:	55                   	push   rbp
  10dd74:	48 89 e5             	mov    rbp,rsp
  10dd77:	b8 00 00 00 00       	mov    eax,0x0
  10dd7c:	ba 00 00 00 00       	mov    edx,0x0
  10dd81:	0f a2                	cpuid
  10dd83:	0f 31                	rdtsc
  10dd85:	48 c1 e2 20          	shl    rdx,0x20
  10dd89:	48 01 d0             	add    rax,rdx
  10dd8c:	48 89 ec             	mov    rsp,rbp
  10dd8f:	5d                   	pop    rbp
  10dd90:	c3                   	ret
  10dd91:	cc                   	int3
  10dd92:	cc                   	int3
  10dd93:	cc                   	int3
  10dd94:	cc                   	int3
  10dd95:	cc                   	int3
  10dd96:	cc                   	int3
  10dd97:	cc                   	int3
  10dd98:	cc                   	int3
  10dd99:	cc                   	int3
  10dd9a:	cc                   	int3
  10dd9b:	cc                   	int3
  10dd9c:	cc                   	int3
  10dd9d:	cc                   	int3
  10dd9e:	cc                   	int3
  10dd9f:	cc                   	int3

000000000010dda0 <_Z8MakeAddrhhhh>:
  10dda0:	55                   	push   rbp
  10dda1:	48 89 e5             	mov    rbp,rsp
  10dda4:	48 83 ec 04          	sub    rsp,0x4
  10dda8:	88 c8                	mov    al,cl
  10ddaa:	88 d1                	mov    cl,dl
  10ddac:	40 88 f2             	mov    dl,sil
  10ddaf:	40 88 fe             	mov    sil,dil
  10ddb2:	40 88 75 ff          	mov    BYTE PTR [rbp-0x1],sil
  10ddb6:	88 55 fe             	mov    BYTE PTR [rbp-0x2],dl
  10ddb9:	88 4d fd             	mov    BYTE PTR [rbp-0x3],cl
  10ddbc:	88 45 fc             	mov    BYTE PTR [rbp-0x4],al
  10ddbf:	0f b6 45 ff          	movzx  eax,BYTE PTR [rbp-0x1]
  10ddc3:	c1 e0 10             	shl    eax,0x10
  10ddc6:	0d 00 00 00 80       	or     eax,0x80000000
  10ddcb:	0f b6 4d fe          	movzx  ecx,BYTE PTR [rbp-0x2]
  10ddcf:	c1 e1 0b             	shl    ecx,0xb
  10ddd2:	09 c8                	or     eax,ecx
  10ddd4:	0f b6 4d fd          	movzx  ecx,BYTE PTR [rbp-0x3]
  10ddd8:	c1 e1 08             	shl    ecx,0x8
  10dddb:	09 c8                	or     eax,ecx
  10dddd:	0f b6 4d fc          	movzx  ecx,BYTE PTR [rbp-0x4]
  10dde1:	81 e1 fc 00 00 00    	and    ecx,0xfc
  10dde7:	09 c8                	or     eax,ecx
  10dde9:	48 83 c4 04          	add    rsp,0x4
  10dded:	5d                   	pop    rbp
  10ddee:	c3                   	ret
  10ddef:	90                   	nop

000000000010ddf0 <_Z9WriteAddrj>:
  10ddf0:	55                   	push   rbp
  10ddf1:	48 89 e5             	mov    rbp,rsp
  10ddf4:	48 83 ec 10          	sub    rsp,0x10
  10ddf8:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  10ddfb:	8b 75 fc             	mov    esi,DWORD PTR [rbp-0x4]
  10ddfe:	bf f8 0c 00 00       	mov    edi,0xcf8
  10de03:	e8 c8 fe ff ff       	call   10dcd0 <IoOut32>
  10de08:	48 83 c4 10          	add    rsp,0x10
  10de0c:	5d                   	pop    rbp
  10de0d:	c3                   	ret
  10de0e:	66 90                	xchg   ax,ax

000000000010de10 <_Z9WriteDataj>:
  10de10:	55                   	push   rbp
  10de11:	48 89 e5             	mov    rbp,rsp
  10de14:	48 83 ec 10          	sub    rsp,0x10
  10de18:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  10de1b:	8b 75 fc             	mov    esi,DWORD PTR [rbp-0x4]
  10de1e:	bf fc 0c 00 00       	mov    edi,0xcfc
  10de23:	e8 a8 fe ff ff       	call   10dcd0 <IoOut32>
  10de28:	48 83 c4 10          	add    rsp,0x10
  10de2c:	5d                   	pop    rbp
  10de2d:	c3                   	ret
  10de2e:	66 90                	xchg   ax,ax

000000000010de30 <_Z8ReadDatav>:
  10de30:	55                   	push   rbp
  10de31:	48 89 e5             	mov    rbp,rsp
  10de34:	bf fc 0c 00 00       	mov    edi,0xcfc
  10de39:	e8 99 fe ff ff       	call   10dcd7 <IoIn32>
  10de3e:	5d                   	pop    rbp
  10de3f:	c3                   	ret

000000000010de40 <_Z12ReadVendorIdhhh>:
  10de40:	55                   	push   rbp
  10de41:	48 89 e5             	mov    rbp,rsp
  10de44:	48 83 ec 10          	sub    rsp,0x10
  10de48:	88 d0                	mov    al,dl
  10de4a:	40 88 f1             	mov    cl,sil
  10de4d:	40 88 fa             	mov    dl,dil
  10de50:	88 55 ff             	mov    BYTE PTR [rbp-0x1],dl
  10de53:	88 4d fe             	mov    BYTE PTR [rbp-0x2],cl
  10de56:	88 45 fd             	mov    BYTE PTR [rbp-0x3],al
  10de59:	8a 55 ff             	mov    dl,BYTE PTR [rbp-0x1]
  10de5c:	8a 45 fe             	mov    al,BYTE PTR [rbp-0x2]
  10de5f:	31 c9                	xor    ecx,ecx
  10de61:	0f b6 fa             	movzx  edi,dl
  10de64:	0f b6 f0             	movzx  esi,al
  10de67:	0f b6 55 fd          	movzx  edx,BYTE PTR [rbp-0x3]
  10de6b:	e8 30 ff ff ff       	call   10dda0 <_Z8MakeAddrhhhh>
  10de70:	89 c7                	mov    edi,eax
  10de72:	e8 79 ff ff ff       	call   10ddf0 <_Z9WriteAddrj>
  10de77:	e8 b4 ff ff ff       	call   10de30 <_Z8ReadDatav>
  10de7c:	25 ff ff 00 00       	and    eax,0xffff
  10de81:	0f b7 c0             	movzx  eax,ax
  10de84:	48 83 c4 10          	add    rsp,0x10
  10de88:	5d                   	pop    rbp
  10de89:	c3                   	ret
  10de8a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

000000000010de90 <_Z12ReadVendorId6Device>:
  10de90:	55                   	push   rbp
  10de91:	48 89 e5             	mov    rbp,rsp
  10de94:	48 83 ec 10          	sub    rsp,0x10
  10de98:	48 89 f8             	mov    rax,rdi
  10de9b:	48 c1 e8 30          	shr    rax,0x30
  10de9f:	88 45 f6             	mov    BYTE PTR [rbp-0xa],al
  10dea2:	48 89 f8             	mov    rax,rdi
  10dea5:	48 c1 e8 20          	shr    rax,0x20
  10dea9:	66 89 45 f4          	mov    WORD PTR [rbp-0xc],ax
  10dead:	89 f8                	mov    eax,edi
  10deaf:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
  10deb2:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  10deb5:	89 45 f8             	mov    DWORD PTR [rbp-0x8],eax
  10deb8:	66 8b 45 f4          	mov    ax,WORD PTR [rbp-0xc]
  10debc:	66 89 45 fc          	mov    WORD PTR [rbp-0x4],ax
  10dec0:	8a 45 f6             	mov    al,BYTE PTR [rbp-0xa]
  10dec3:	88 45 fe             	mov    BYTE PTR [rbp-0x2],al
  10dec6:	8a 55 f8             	mov    dl,BYTE PTR [rbp-0x8]
  10dec9:	8a 45 f9             	mov    al,BYTE PTR [rbp-0x7]
  10decc:	31 c9                	xor    ecx,ecx
  10dece:	0f b6 fa             	movzx  edi,dl
  10ded1:	0f b6 f0             	movzx  esi,al
  10ded4:	0f b6 55 fa          	movzx  edx,BYTE PTR [rbp-0x6]
  10ded8:	e8 c3 fe ff ff       	call   10dda0 <_Z8MakeAddrhhhh>
  10dedd:	89 c7                	mov    edi,eax
  10dedf:	e8 0c ff ff ff       	call   10ddf0 <_Z9WriteAddrj>
  10dee4:	e8 47 ff ff ff       	call   10de30 <_Z8ReadDatav>
  10dee9:	25 ff ff 00 00       	and    eax,0xffff
  10deee:	0f b7 c0             	movzx  eax,ax
  10def1:	48 83 c4 10          	add    rsp,0x10
  10def5:	5d                   	pop    rbp
  10def6:	c3                   	ret
  10def7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  10defe:	00 00 

000000000010df00 <_Z14ReadHeaderTypehhh>:
  10df00:	55                   	push   rbp
  10df01:	48 89 e5             	mov    rbp,rsp
  10df04:	48 83 ec 10          	sub    rsp,0x10
  10df08:	88 d0                	mov    al,dl
  10df0a:	40 88 f1             	mov    cl,sil
  10df0d:	40 88 fa             	mov    dl,dil
  10df10:	88 55 ff             	mov    BYTE PTR [rbp-0x1],dl
  10df13:	88 4d fe             	mov    BYTE PTR [rbp-0x2],cl
  10df16:	88 45 fd             	mov    BYTE PTR [rbp-0x3],al
  10df19:	8a 55 ff             	mov    dl,BYTE PTR [rbp-0x1]
  10df1c:	8a 45 fe             	mov    al,BYTE PTR [rbp-0x2]
  10df1f:	b9 0c 00 00 00       	mov    ecx,0xc
  10df24:	0f b6 fa             	movzx  edi,dl
  10df27:	0f b6 f0             	movzx  esi,al
  10df2a:	0f b6 55 fd          	movzx  edx,BYTE PTR [rbp-0x3]
  10df2e:	e8 6d fe ff ff       	call   10dda0 <_Z8MakeAddrhhhh>
  10df33:	89 c7                	mov    edi,eax
  10df35:	e8 b6 fe ff ff       	call   10ddf0 <_Z9WriteAddrj>
  10df3a:	e8 f1 fe ff ff       	call   10de30 <_Z8ReadDatav>
  10df3f:	c1 e8 10             	shr    eax,0x10
  10df42:	25 ff 00 00 00       	and    eax,0xff
  10df47:	0f b6 c0             	movzx  eax,al
  10df4a:	48 83 c4 10          	add    rsp,0x10
  10df4e:	5d                   	pop    rbp
  10df4f:	c3                   	ret

000000000010df50 <_Z7ReadBar6Devicei>:
  10df50:	55                   	push   rbp
  10df51:	48 89 e5             	mov    rbp,rsp
  10df54:	48 83 ec 20          	sub    rsp,0x20
  10df58:	48 89 f8             	mov    rax,rdi
  10df5b:	48 c1 e8 30          	shr    rax,0x30
  10df5f:	88 45 f6             	mov    BYTE PTR [rbp-0xa],al
  10df62:	48 89 f8             	mov    rax,rdi
  10df65:	48 c1 e8 20          	shr    rax,0x20
  10df69:	66 89 45 f4          	mov    WORD PTR [rbp-0xc],ax
  10df6d:	89 f8                	mov    eax,edi
  10df6f:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
  10df72:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  10df75:	89 45 f8             	mov    DWORD PTR [rbp-0x8],eax
  10df78:	66 8b 45 f4          	mov    ax,WORD PTR [rbp-0xc]
  10df7c:	66 89 45 fc          	mov    WORD PTR [rbp-0x4],ax
  10df80:	8a 45 f6             	mov    al,BYTE PTR [rbp-0xa]
  10df83:	88 45 fe             	mov    BYTE PTR [rbp-0x2],al
  10df86:	89 75 ec             	mov    DWORD PTR [rbp-0x14],esi
  10df89:	40 8a 75 f8          	mov    sil,BYTE PTR [rbp-0x8]
  10df8d:	8a 55 f9             	mov    dl,BYTE PTR [rbp-0x7]
  10df90:	8a 4d fa             	mov    cl,BYTE PTR [rbp-0x6]
  10df93:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  10df96:	c1 e0 02             	shl    eax,0x2
  10df99:	83 c0 10             	add    eax,0x10
  10df9c:	40 0f b6 fe          	movzx  edi,sil
  10dfa0:	0f b6 f2             	movzx  esi,dl
  10dfa3:	0f b6 d1             	movzx  edx,cl
  10dfa6:	0f b6 c8             	movzx  ecx,al
  10dfa9:	e8 f2 fd ff ff       	call   10dda0 <_Z8MakeAddrhhhh>
  10dfae:	89 c7                	mov    edi,eax
  10dfb0:	e8 3b fe ff ff       	call   10ddf0 <_Z9WriteAddrj>
  10dfb5:	e8 76 fe ff ff       	call   10de30 <_Z8ReadDatav>
  10dfba:	48 83 c4 20          	add    rsp,0x20
  10dfbe:	5d                   	pop    rbp
  10dfbf:	c3                   	ret

000000000010dfc0 <_Z13ReadClassCodehhh>:
  10dfc0:	55                   	push   rbp
  10dfc1:	48 89 e5             	mov    rbp,rsp
  10dfc4:	48 83 ec 20          	sub    rsp,0x20
  10dfc8:	88 d0                	mov    al,dl
  10dfca:	40 88 f1             	mov    cl,sil
  10dfcd:	40 88 fa             	mov    dl,dil
  10dfd0:	88 55 f7             	mov    BYTE PTR [rbp-0x9],dl
  10dfd3:	88 4d f6             	mov    BYTE PTR [rbp-0xa],cl
  10dfd6:	88 45 f5             	mov    BYTE PTR [rbp-0xb],al
  10dfd9:	0f b6 7d f7          	movzx  edi,BYTE PTR [rbp-0x9]
  10dfdd:	0f b6 75 f6          	movzx  esi,BYTE PTR [rbp-0xa]
  10dfe1:	0f b6 55 f5          	movzx  edx,BYTE PTR [rbp-0xb]
  10dfe5:	b9 08 00 00 00       	mov    ecx,0x8
  10dfea:	e8 b1 fd ff ff       	call   10dda0 <_Z8MakeAddrhhhh>
  10dfef:	89 c7                	mov    edi,eax
  10dff1:	e8 fa fd ff ff       	call   10ddf0 <_Z9WriteAddrj>
  10dff6:	e8 35 fe ff ff       	call   10de30 <_Z8ReadDatav>
  10dffb:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
  10dffe:	8a 45 f3             	mov    al,BYTE PTR [rbp-0xd]
  10e001:	88 45 f8             	mov    BYTE PTR [rbp-0x8],al
  10e004:	8a 45 f2             	mov    al,BYTE PTR [rbp-0xe]
  10e007:	88 45 f9             	mov    BYTE PTR [rbp-0x7],al
  10e00a:	8a 45 f1             	mov    al,BYTE PTR [rbp-0xf]
  10e00d:	88 45 fa             	mov    BYTE PTR [rbp-0x6],al
  10e010:	8a 45 fa             	mov    al,BYTE PTR [rbp-0x6]
  10e013:	88 45 ee             	mov    BYTE PTR [rbp-0x12],al
  10e016:	66 8b 45 f8          	mov    ax,WORD PTR [rbp-0x8]
  10e01a:	66 89 45 ec          	mov    WORD PTR [rbp-0x14],ax
  10e01e:	0f b6 4d ee          	movzx  ecx,BYTE PTR [rbp-0x12]
  10e022:	c1 e1 10             	shl    ecx,0x10
  10e025:	0f b7 45 ec          	movzx  eax,WORD PTR [rbp-0x14]
  10e029:	09 c8                	or     eax,ecx
  10e02b:	48 83 c4 20          	add    rsp,0x20
  10e02f:	5d                   	pop    rbp
  10e030:	c3                   	ret
  10e031:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10e038:	0f 1f 84 00 00 00 00 
  10e03f:	00 

000000000010e040 <_Z14ReadBusNumbershhh>:
  10e040:	55                   	push   rbp
  10e041:	48 89 e5             	mov    rbp,rsp
  10e044:	48 83 ec 10          	sub    rsp,0x10
  10e048:	88 d0                	mov    al,dl
  10e04a:	40 88 f1             	mov    cl,sil
  10e04d:	40 88 fa             	mov    dl,dil
  10e050:	88 55 ff             	mov    BYTE PTR [rbp-0x1],dl
  10e053:	88 4d fe             	mov    BYTE PTR [rbp-0x2],cl
  10e056:	88 45 fd             	mov    BYTE PTR [rbp-0x3],al
  10e059:	8a 55 ff             	mov    dl,BYTE PTR [rbp-0x1]
  10e05c:	8a 45 fe             	mov    al,BYTE PTR [rbp-0x2]
  10e05f:	b9 18 00 00 00       	mov    ecx,0x18
  10e064:	0f b6 fa             	movzx  edi,dl
  10e067:	0f b6 f0             	movzx  esi,al
  10e06a:	0f b6 55 fd          	movzx  edx,BYTE PTR [rbp-0x3]
  10e06e:	e8 2d fd ff ff       	call   10dda0 <_Z8MakeAddrhhhh>
  10e073:	89 c7                	mov    edi,eax
  10e075:	e8 76 fd ff ff       	call   10ddf0 <_Z9WriteAddrj>
  10e07a:	e8 b1 fd ff ff       	call   10de30 <_Z8ReadDatav>
  10e07f:	48 83 c4 10          	add    rsp,0x10
  10e083:	5d                   	pop    rbp
  10e084:	c3                   	ret
  10e085:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  10e08c:	00 00 00 00 

000000000010e090 <_Z9AddDevicehhhh>:
  10e090:	55                   	push   rbp
  10e091:	48 89 e5             	mov    rbp,rsp
  10e094:	48 83 ec 10          	sub    rsp,0x10
  10e098:	88 c8                	mov    al,cl
  10e09a:	88 d1                	mov    cl,dl
  10e09c:	40 88 f2             	mov    dl,sil
  10e09f:	40 88 fe             	mov    sil,dil
  10e0a2:	40 88 75 fb          	mov    BYTE PTR [rbp-0x5],sil
  10e0a6:	88 55 fa             	mov    BYTE PTR [rbp-0x6],dl
  10e0a9:	88 4d f9             	mov    BYTE PTR [rbp-0x7],cl
  10e0ac:	88 45 f8             	mov    BYTE PTR [rbp-0x8],al
  10e0af:	83 3d fa e9 50 00 20 	cmp    DWORD PTR [rip+0x50e9fa],0x20        # 61cab0 <num_device>
  10e0b6:	0f 85 18 00 00 00    	jne    10e0d4 <_Z9AddDevicehhhh+0x44>
  10e0bc:	48 8d 3d ad 20 ff ff 	lea    rdi,[rip+0xffffffffffff20ad]        # 100170 <_svfprintf_r.blanks-0x970>
  10e0c3:	e8 88 6f ff ff       	call   105050 <Print>
  10e0c8:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [rbp-0x4],0x1
  10e0cf:	e9 62 00 00 00       	jmp    10e136 <_Z9AddDevicehhhh+0xa6>
  10e0d4:	8a 45 fb             	mov    al,BYTE PTR [rbp-0x5]
  10e0d7:	88 45 f0             	mov    BYTE PTR [rbp-0x10],al
  10e0da:	8a 45 fa             	mov    al,BYTE PTR [rbp-0x6]
  10e0dd:	88 45 f1             	mov    BYTE PTR [rbp-0xf],al
  10e0e0:	8a 45 f9             	mov    al,BYTE PTR [rbp-0x7]
  10e0e3:	88 45 f2             	mov    BYTE PTR [rbp-0xe],al
  10e0e6:	8a 45 f8             	mov    al,BYTE PTR [rbp-0x8]
  10e0e9:	88 45 f3             	mov    BYTE PTR [rbp-0xd],al
  10e0ec:	c6 45 f4 00          	mov    BYTE PTR [rbp-0xc],0x0
  10e0f0:	c6 45 f5 00          	mov    BYTE PTR [rbp-0xb],0x0
  10e0f4:	c6 45 f6 00          	mov    BYTE PTR [rbp-0xa],0x0
  10e0f8:	48 63 0d b1 e9 50 00 	movsxd rcx,DWORD PTR [rip+0x50e9b1]        # 61cab0 <num_device>
  10e0ff:	48 8d 05 ba e9 50 00 	lea    rax,[rip+0x50e9ba]        # 61cac0 <devices>
  10e106:	48 6b c9 07          	imul   rcx,rcx,0x7
  10e10a:	48 01 c8             	add    rax,rcx
  10e10d:	8b 4d f0             	mov    ecx,DWORD PTR [rbp-0x10]
  10e110:	89 08                	mov    DWORD PTR [rax],ecx
  10e112:	66 8b 4d f4          	mov    cx,WORD PTR [rbp-0xc]
  10e116:	66 89 48 04          	mov    WORD PTR [rax+0x4],cx
  10e11a:	8a 4d f6             	mov    cl,BYTE PTR [rbp-0xa]
  10e11d:	88 48 06             	mov    BYTE PTR [rax+0x6],cl
  10e120:	8b 05 8a e9 50 00    	mov    eax,DWORD PTR [rip+0x50e98a]        # 61cab0 <num_device>
  10e126:	83 c0 01             	add    eax,0x1
  10e129:	89 05 81 e9 50 00    	mov    DWORD PTR [rip+0x50e981],eax        # 61cab0 <num_device>
  10e12f:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  10e136:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  10e139:	48 83 c4 10          	add    rsp,0x10
  10e13d:	5d                   	pop    rbp
  10e13e:	c3                   	ret
  10e13f:	90                   	nop

000000000010e140 <_Z22IsSingleFunctionDeviceh>:
  10e140:	55                   	push   rbp
  10e141:	48 89 e5             	mov    rbp,rsp
  10e144:	48 83 ec 01          	sub    rsp,0x1
  10e148:	40 88 f8             	mov    al,dil
  10e14b:	88 45 ff             	mov    BYTE PTR [rbp-0x1],al
  10e14e:	0f b6 45 ff          	movzx  eax,BYTE PTR [rbp-0x1]
  10e152:	25 80 00 00 00       	and    eax,0x80
  10e157:	83 f8 00             	cmp    eax,0x0
  10e15a:	0f 94 c0             	sete   al
  10e15d:	24 01                	and    al,0x1
  10e15f:	0f b6 c0             	movzx  eax,al
  10e162:	48 83 c4 01          	add    rsp,0x1
  10e166:	5d                   	pop    rbp
  10e167:	c3                   	ret
  10e168:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  10e16f:	00 

000000000010e170 <_Z10ScanAllBusv>:
  10e170:	55                   	push   rbp
  10e171:	48 89 e5             	mov    rbp,rsp
  10e174:	48 81 ec 80 00 00 00 	sub    rsp,0x80
  10e17b:	c7 05 2b e9 50 00 00 	mov    DWORD PTR [rip+0x50e92b],0x0        # 61cab0 <num_device>
  10e182:	00 00 00 
  10e185:	31 d2                	xor    edx,edx
  10e187:	89 d7                	mov    edi,edx
  10e189:	89 d6                	mov    esi,edx
  10e18b:	e8 70 fd ff ff       	call   10df00 <_Z14ReadHeaderTypehhh>
  10e190:	88 45 8f             	mov    BYTE PTR [rbp-0x71],al
  10e193:	0f b6 7d 8f          	movzx  edi,BYTE PTR [rbp-0x71]
  10e197:	e8 a4 ff ff ff       	call   10e140 <_Z22IsSingleFunctionDeviceh>
  10e19c:	83 f8 00             	cmp    eax,0x0
  10e19f:	0f 84 34 00 00 00    	je     10e1d9 <_Z10ScanAllBusv+0x69>
  10e1a5:	48 8d 3d f9 1f ff ff 	lea    rdi,[rip+0xffffffffffff1ff9]        # 1001a5 <_svfprintf_r.blanks-0x93b>
  10e1ac:	e8 9f 6e ff ff       	call   105050 <Print>
  10e1b1:	31 d2                	xor    edx,edx
  10e1b3:	89 d7                	mov    edi,edx
  10e1b5:	89 d6                	mov    esi,edx
  10e1b7:	e8 44 fd ff ff       	call   10df00 <_Z14ReadHeaderTypehhh>
  10e1bc:	31 d2                	xor    edx,edx
  10e1be:	89 d7                	mov    edi,edx
  10e1c0:	89 d6                	mov    esi,edx
  10e1c2:	0f b6 c8             	movzx  ecx,al
  10e1c5:	e8 c6 fe ff ff       	call   10e090 <_Z9AddDevicehhhh>
  10e1ca:	31 ff                	xor    edi,edi
  10e1cc:	e8 df 00 00 00       	call   10e2b0 <_Z7ScanBush>
  10e1d1:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  10e1d4:	e9 ca 00 00 00       	jmp    10e2a3 <_Z10ScanAllBusv+0x133>
  10e1d9:	48 8d 3d 16 26 ff ff 	lea    rdi,[rip+0xffffffffffff2616]        # 1007f6 <_svfprintf_r.blanks-0x2ea>
  10e1e0:	e8 6b 6e ff ff       	call   105050 <Print>
  10e1e5:	31 d2                	xor    edx,edx
  10e1e7:	89 d7                	mov    edi,edx
  10e1e9:	89 d6                	mov    esi,edx
  10e1eb:	e8 10 fd ff ff       	call   10df00 <_Z14ReadHeaderTypehhh>
  10e1f0:	31 d2                	xor    edx,edx
  10e1f2:	89 d7                	mov    edi,edx
  10e1f4:	89 d6                	mov    esi,edx
  10e1f6:	0f b6 c8             	movzx  ecx,al
  10e1f9:	e8 92 fe ff ff       	call   10e090 <_Z9AddDevicehhhh>
  10e1fe:	c6 45 8e 01          	mov    BYTE PTR [rbp-0x72],0x1
  10e202:	0f b6 45 8e          	movzx  eax,BYTE PTR [rbp-0x72]
  10e206:	83 f8 08             	cmp    eax,0x8
  10e209:	0f 8d 8d 00 00 00    	jge    10e29c <_Z10ScanAllBusv+0x12c>
  10e20f:	31 f6                	xor    esi,esi
  10e211:	89 f7                	mov    edi,esi
  10e213:	0f b6 55 8e          	movzx  edx,BYTE PTR [rbp-0x72]
  10e217:	e8 24 fc ff ff       	call   10de40 <_Z12ReadVendorIdhhh>
  10e21c:	0f b7 c0             	movzx  eax,ax
  10e21f:	3d ff ff 00 00       	cmp    eax,0xffff
  10e224:	0f 85 24 00 00 00    	jne    10e24e <_Z10ScanAllBusv+0xde>
  10e22a:	0f b6 75 8e          	movzx  esi,BYTE PTR [rbp-0x72]
  10e22e:	48 8d 3d 85 1f ff ff 	lea    rdi,[rip+0xffffffffffff1f85]        # 1001ba <_svfprintf_r.blanks-0x926>
  10e235:	e8 46 73 ff ff       	call   105580 <_Z6dPrintPci>
  10e23a:	8b 05 74 e8 50 00    	mov    eax,DWORD PTR [rip+0x50e874]        # 61cab4 <invdev>
  10e240:	83 c0 01             	add    eax,0x1
  10e243:	89 05 6b e8 50 00    	mov    DWORD PTR [rip+0x50e86b],eax        # 61cab4 <invdev>
  10e249:	e9 41 00 00 00       	jmp    10e28f <_Z10ScanAllBusv+0x11f>
  10e24e:	0f b6 75 8e          	movzx  esi,BYTE PTR [rbp-0x72]
  10e252:	48 8d 3d 1a 22 ff ff 	lea    rdi,[rip+0xffffffffffff221a]        # 100473 <_svfprintf_r.blanks-0x66d>
  10e259:	e8 22 73 ff ff       	call   105580 <_Z6dPrintPci>
  10e25e:	0f b6 7d 8e          	movzx  edi,BYTE PTR [rbp-0x72]
  10e262:	e8 49 00 00 00       	call   10e2b0 <_Z7ScanBush>
  10e267:	89 45 88             	mov    DWORD PTR [rbp-0x78],eax
  10e26a:	83 7d 88 00          	cmp    DWORD PTR [rbp-0x78],0x0
  10e26e:	0f 84 0b 00 00 00    	je     10e27f <_Z10ScanAllBusv+0x10f>
  10e274:	8b 45 88             	mov    eax,DWORD PTR [rbp-0x78]
  10e277:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  10e27a:	e9 24 00 00 00       	jmp    10e2a3 <_Z10ScanAllBusv+0x133>
  10e27f:	0f b6 75 8e          	movzx  esi,BYTE PTR [rbp-0x72]
  10e283:	48 8d 3d 69 23 ff ff 	lea    rdi,[rip+0xffffffffffff2369]        # 1005f3 <_svfprintf_r.blanks-0x4ed>
  10e28a:	e8 f1 72 ff ff       	call   105580 <_Z6dPrintPci>
  10e28f:	8a 45 8e             	mov    al,BYTE PTR [rbp-0x72]
  10e292:	04 01                	add    al,0x1
  10e294:	88 45 8e             	mov    BYTE PTR [rbp-0x72],al
  10e297:	e9 66 ff ff ff       	jmp    10e202 <_Z10ScanAllBusv+0x92>
  10e29c:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  10e2a3:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  10e2a6:	48 81 c4 80 00 00 00 	add    rsp,0x80
  10e2ad:	5d                   	pop    rbp
  10e2ae:	c3                   	ret
  10e2af:	90                   	nop

000000000010e2b0 <_Z7ScanBush>:
  10e2b0:	55                   	push   rbp
  10e2b1:	48 89 e5             	mov    rbp,rsp
  10e2b4:	48 83 ec 10          	sub    rsp,0x10
  10e2b8:	40 88 f8             	mov    al,dil
  10e2bb:	88 45 fb             	mov    BYTE PTR [rbp-0x5],al
  10e2be:	c6 45 fa 00          	mov    BYTE PTR [rbp-0x6],0x0
  10e2c2:	0f b6 45 fa          	movzx  eax,BYTE PTR [rbp-0x6]
  10e2c6:	83 f8 20             	cmp    eax,0x20
  10e2c9:	0f 8d 88 00 00 00    	jge    10e357 <_Z7ScanBush+0xa7>
  10e2cf:	8a 45 fb             	mov    al,BYTE PTR [rbp-0x5]
  10e2d2:	31 d2                	xor    edx,edx
  10e2d4:	0f b6 f8             	movzx  edi,al
  10e2d7:	0f b6 75 fa          	movzx  esi,BYTE PTR [rbp-0x6]
  10e2db:	e8 60 fb ff ff       	call   10de40 <_Z12ReadVendorIdhhh>
  10e2e0:	0f b7 c0             	movzx  eax,ax
  10e2e3:	3d ff ff 00 00       	cmp    eax,0xffff
  10e2e8:	0f 85 15 00 00 00    	jne    10e303 <_Z7ScanBush+0x53>
  10e2ee:	0f b6 75 fa          	movzx  esi,BYTE PTR [rbp-0x6]
  10e2f2:	48 8d 3d 95 21 ff ff 	lea    rdi,[rip+0xffffffffffff2195]        # 10048e <_svfprintf_r.blanks-0x652>
  10e2f9:	e8 82 72 ff ff       	call   105580 <_Z6dPrintPci>
  10e2fe:	e9 47 00 00 00       	jmp    10e34a <_Z7ScanBush+0x9a>
  10e303:	0f b6 75 fa          	movzx  esi,BYTE PTR [rbp-0x6]
  10e307:	48 8d 3d 82 1e ff ff 	lea    rdi,[rip+0xffffffffffff1e82]        # 100190 <_svfprintf_r.blanks-0x950>
  10e30e:	e8 6d 72 ff ff       	call   105580 <_Z6dPrintPci>
  10e313:	8a 45 fb             	mov    al,BYTE PTR [rbp-0x5]
  10e316:	0f b6 f8             	movzx  edi,al
  10e319:	0f b6 75 fa          	movzx  esi,BYTE PTR [rbp-0x6]
  10e31d:	e8 4e 00 00 00       	call   10e370 <_Z10ScanDevicehh>
  10e322:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
  10e325:	83 7d f4 00          	cmp    DWORD PTR [rbp-0xc],0x0
  10e329:	0f 84 0b 00 00 00    	je     10e33a <_Z7ScanBush+0x8a>
  10e32f:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  10e332:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  10e335:	e9 24 00 00 00       	jmp    10e35e <_Z7ScanBush+0xae>
  10e33a:	0f b6 75 fa          	movzx  esi,BYTE PTR [rbp-0x6]
  10e33e:	48 8d 3d 85 1e ff ff 	lea    rdi,[rip+0xffffffffffff1e85]        # 1001ca <_svfprintf_r.blanks-0x916>
  10e345:	e8 36 72 ff ff       	call   105580 <_Z6dPrintPci>
  10e34a:	8a 45 fa             	mov    al,BYTE PTR [rbp-0x6]
  10e34d:	04 01                	add    al,0x1
  10e34f:	88 45 fa             	mov    BYTE PTR [rbp-0x6],al
  10e352:	e9 6b ff ff ff       	jmp    10e2c2 <_Z7ScanBush+0x12>
  10e357:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  10e35e:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  10e361:	48 83 c4 10          	add    rsp,0x10
  10e365:	5d                   	pop    rbp
  10e366:	c3                   	ret
  10e367:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  10e36e:	00 00 

000000000010e370 <_Z10ScanDevicehh>:
  10e370:	55                   	push   rbp
  10e371:	48 89 e5             	mov    rbp,rsp
  10e374:	48 83 ec 20          	sub    rsp,0x20
  10e378:	40 88 f0             	mov    al,sil
  10e37b:	40 88 f9             	mov    cl,dil
  10e37e:	88 4d fb             	mov    BYTE PTR [rbp-0x5],cl
  10e381:	88 45 fa             	mov    BYTE PTR [rbp-0x6],al
  10e384:	8a 45 fb             	mov    al,BYTE PTR [rbp-0x5]
  10e387:	31 d2                	xor    edx,edx
  10e389:	0f b6 f8             	movzx  edi,al
  10e38c:	0f b6 75 fa          	movzx  esi,BYTE PTR [rbp-0x6]
  10e390:	e8 0b 01 00 00       	call   10e4a0 <_Z12ScanFunctionhhh>
  10e395:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
  10e398:	83 7d f4 00          	cmp    DWORD PTR [rbp-0xc],0x0
  10e39c:	0f 84 0b 00 00 00    	je     10e3ad <_Z10ScanDevicehh+0x3d>
  10e3a2:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  10e3a5:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  10e3a8:	e9 e0 00 00 00       	jmp    10e48d <_Z10ScanDevicehh+0x11d>
  10e3ad:	8a 45 fb             	mov    al,BYTE PTR [rbp-0x5]
  10e3b0:	31 d2                	xor    edx,edx
  10e3b2:	0f b6 f8             	movzx  edi,al
  10e3b5:	0f b6 75 fa          	movzx  esi,BYTE PTR [rbp-0x6]
  10e3b9:	e8 42 fb ff ff       	call   10df00 <_Z14ReadHeaderTypehhh>
  10e3be:	0f b6 f8             	movzx  edi,al
  10e3c1:	e8 7a fd ff ff       	call   10e140 <_Z22IsSingleFunctionDeviceh>
  10e3c6:	83 f8 00             	cmp    eax,0x0
  10e3c9:	0f 84 18 00 00 00    	je     10e3e7 <_Z10ScanDevicehh+0x77>
  10e3cf:	48 8d 3d 2f 22 ff ff 	lea    rdi,[rip+0xffffffffffff222f]        # 100605 <_svfprintf_r.blanks-0x4db>
  10e3d6:	e8 75 6c ff ff       	call   105050 <Print>
  10e3db:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  10e3e2:	e9 a6 00 00 00       	jmp    10e48d <_Z10ScanDevicehh+0x11d>
  10e3e7:	48 8d 3d a1 21 ff ff 	lea    rdi,[rip+0xffffffffffff21a1]        # 10058f <_svfprintf_r.blanks-0x551>
  10e3ee:	e8 5d 6c ff ff       	call   105050 <Print>
  10e3f3:	c6 45 f3 01          	mov    BYTE PTR [rbp-0xd],0x1
  10e3f7:	0f b6 45 f3          	movzx  eax,BYTE PTR [rbp-0xd]
  10e3fb:	83 f8 08             	cmp    eax,0x8
  10e3fe:	0f 8d 82 00 00 00    	jge    10e486 <_Z10ScanDevicehh+0x116>
  10e404:	8a 4d fb             	mov    cl,BYTE PTR [rbp-0x5]
  10e407:	8a 45 fa             	mov    al,BYTE PTR [rbp-0x6]
  10e40a:	0f b6 f9             	movzx  edi,cl
  10e40d:	0f b6 f0             	movzx  esi,al
  10e410:	0f b6 55 f3          	movzx  edx,BYTE PTR [rbp-0xd]
  10e414:	e8 27 fa ff ff       	call   10de40 <_Z12ReadVendorIdhhh>
  10e419:	0f b7 c0             	movzx  eax,ax
  10e41c:	3d ff ff 00 00       	cmp    eax,0xffff
  10e421:	0f 85 05 00 00 00    	jne    10e42c <_Z10ScanDevicehh+0xbc>
  10e427:	e9 4d 00 00 00       	jmp    10e479 <_Z10ScanDevicehh+0x109>
  10e42c:	0f b6 75 f3          	movzx  esi,BYTE PTR [rbp-0xd]
  10e430:	48 8d 3d df 20 ff ff 	lea    rdi,[rip+0xffffffffffff20df]        # 100516 <_svfprintf_r.blanks-0x5ca>
  10e437:	e8 44 71 ff ff       	call   105580 <_Z6dPrintPci>
  10e43c:	8a 4d fb             	mov    cl,BYTE PTR [rbp-0x5]
  10e43f:	8a 45 fa             	mov    al,BYTE PTR [rbp-0x6]
  10e442:	0f b6 f9             	movzx  edi,cl
  10e445:	0f b6 f0             	movzx  esi,al
  10e448:	0f b6 55 f3          	movzx  edx,BYTE PTR [rbp-0xd]
  10e44c:	e8 4f 00 00 00       	call   10e4a0 <_Z12ScanFunctionhhh>
  10e451:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
  10e454:	83 7d ec 00          	cmp    DWORD PTR [rbp-0x14],0x0
  10e458:	0f 84 0b 00 00 00    	je     10e469 <_Z10ScanDevicehh+0xf9>
  10e45e:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  10e461:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  10e464:	e9 24 00 00 00       	jmp    10e48d <_Z10ScanDevicehh+0x11d>
  10e469:	0f b6 75 f3          	movzx  esi,BYTE PTR [rbp-0xd]
  10e46d:	48 8d 3d 3e 23 ff ff 	lea    rdi,[rip+0xffffffffffff233e]        # 1007b2 <_svfprintf_r.blanks-0x32e>
  10e474:	e8 07 71 ff ff       	call   105580 <_Z6dPrintPci>
  10e479:	8a 45 f3             	mov    al,BYTE PTR [rbp-0xd]
  10e47c:	04 01                	add    al,0x1
  10e47e:	88 45 f3             	mov    BYTE PTR [rbp-0xd],al
  10e481:	e9 71 ff ff ff       	jmp    10e3f7 <_Z10ScanDevicehh+0x87>
  10e486:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  10e48d:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  10e490:	48 83 c4 20          	add    rsp,0x20
  10e494:	5d                   	pop    rbp
  10e495:	c3                   	ret
  10e496:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10e49d:	00 00 00 

000000000010e4a0 <_Z12ScanFunctionhhh>:
  10e4a0:	55                   	push   rbp
  10e4a1:	48 89 e5             	mov    rbp,rsp
  10e4a4:	48 83 ec 20          	sub    rsp,0x20
  10e4a8:	88 d0                	mov    al,dl
  10e4aa:	40 88 f1             	mov    cl,sil
  10e4ad:	40 88 fa             	mov    dl,dil
  10e4b0:	88 55 fb             	mov    BYTE PTR [rbp-0x5],dl
  10e4b3:	88 4d fa             	mov    BYTE PTR [rbp-0x6],cl
  10e4b6:	88 45 f9             	mov    BYTE PTR [rbp-0x7],al
  10e4b9:	8a 4d fb             	mov    cl,BYTE PTR [rbp-0x5]
  10e4bc:	8a 45 fa             	mov    al,BYTE PTR [rbp-0x6]
  10e4bf:	0f b6 f9             	movzx  edi,cl
  10e4c2:	0f b6 f0             	movzx  esi,al
  10e4c5:	0f b6 55 f9          	movzx  edx,BYTE PTR [rbp-0x7]
  10e4c9:	e8 32 fa ff ff       	call   10df00 <_Z14ReadHeaderTypehhh>
  10e4ce:	88 45 f8             	mov    BYTE PTR [rbp-0x8],al
  10e4d1:	8a 55 fb             	mov    dl,BYTE PTR [rbp-0x5]
  10e4d4:	8a 4d fa             	mov    cl,BYTE PTR [rbp-0x6]
  10e4d7:	8a 45 f9             	mov    al,BYTE PTR [rbp-0x7]
  10e4da:	0f b6 fa             	movzx  edi,dl
  10e4dd:	0f b6 f1             	movzx  esi,cl
  10e4e0:	0f b6 d0             	movzx  edx,al
  10e4e3:	0f b6 4d f8          	movzx  ecx,BYTE PTR [rbp-0x8]
  10e4e7:	e8 a4 fb ff ff       	call   10e090 <_Z9AddDevicehhhh>
  10e4ec:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
  10e4ef:	83 7d f4 00          	cmp    DWORD PTR [rbp-0xc],0x0
  10e4f3:	0f 84 0b 00 00 00    	je     10e504 <_Z12ScanFunctionhhh+0x64>
  10e4f9:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  10e4fc:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  10e4ff:	e9 9c 00 00 00       	jmp    10e5a0 <_Z12ScanFunctionhhh+0x100>
  10e504:	0f b6 7d fb          	movzx  edi,BYTE PTR [rbp-0x5]
  10e508:	0f b6 75 fa          	movzx  esi,BYTE PTR [rbp-0x6]
  10e50c:	0f b6 55 f9          	movzx  edx,BYTE PTR [rbp-0x7]
  10e510:	e8 ab fa ff ff       	call   10dfc0 <_Z13ReadClassCodehhh>
  10e515:	66 89 c1             	mov    cx,ax
  10e518:	66 89 4d ec          	mov    WORD PTR [rbp-0x14],cx
  10e51c:	c1 e8 10             	shr    eax,0x10
  10e51f:	88 45 ee             	mov    BYTE PTR [rbp-0x12],al
  10e522:	66 8b 45 ec          	mov    ax,WORD PTR [rbp-0x14]
  10e526:	66 89 45 f0          	mov    WORD PTR [rbp-0x10],ax
  10e52a:	8a 45 ee             	mov    al,BYTE PTR [rbp-0x12]
  10e52d:	88 45 f2             	mov    BYTE PTR [rbp-0xe],al
  10e530:	8a 45 f0             	mov    al,BYTE PTR [rbp-0x10]
  10e533:	88 45 eb             	mov    BYTE PTR [rbp-0x15],al
  10e536:	8a 45 f1             	mov    al,BYTE PTR [rbp-0xf]
  10e539:	88 45 ea             	mov    BYTE PTR [rbp-0x16],al
  10e53c:	0f b6 45 eb          	movzx  eax,BYTE PTR [rbp-0x15]
  10e540:	83 f8 06             	cmp    eax,0x6
  10e543:	0f 85 50 00 00 00    	jne    10e599 <_Z12ScanFunctionhhh+0xf9>
  10e549:	0f b6 45 ea          	movzx  eax,BYTE PTR [rbp-0x16]
  10e54d:	83 f8 04             	cmp    eax,0x4
  10e550:	0f 85 43 00 00 00    	jne    10e599 <_Z12ScanFunctionhhh+0xf9>
  10e556:	48 8d 3d ca 1e ff ff 	lea    rdi,[rip+0xffffffffffff1eca]        # 100427 <_svfprintf_r.blanks-0x6b9>
  10e55d:	e8 ee 6a ff ff       	call   105050 <Print>
  10e562:	8a 4d fb             	mov    cl,BYTE PTR [rbp-0x5]
  10e565:	8a 45 fa             	mov    al,BYTE PTR [rbp-0x6]
  10e568:	0f b6 f9             	movzx  edi,cl
  10e56b:	0f b6 f0             	movzx  esi,al
  10e56e:	0f b6 55 f9          	movzx  edx,BYTE PTR [rbp-0x7]
  10e572:	e8 c9 fa ff ff       	call   10e040 <_Z14ReadBusNumbershhh>
  10e577:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
  10e57a:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  10e57d:	c1 e8 08             	shr    eax,0x8
  10e580:	25 ff 00 00 00       	and    eax,0xff
  10e585:	88 45 e3             	mov    BYTE PTR [rbp-0x1d],al
  10e588:	0f b6 7d e3          	movzx  edi,BYTE PTR [rbp-0x1d]
  10e58c:	e8 1f fd ff ff       	call   10e2b0 <_Z7ScanBush>
  10e591:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  10e594:	e9 07 00 00 00       	jmp    10e5a0 <_Z12ScanFunctionhhh+0x100>
  10e599:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  10e5a0:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  10e5a3:	48 83 c4 20          	add    rsp,0x20
  10e5a7:	5d                   	pop    rbp
  10e5a8:	c3                   	ret
  10e5a9:	cc                   	int3
  10e5aa:	cc                   	int3
  10e5ab:	cc                   	int3
  10e5ac:	cc                   	int3
  10e5ad:	cc                   	int3
  10e5ae:	cc                   	int3
  10e5af:	cc                   	int3

000000000010e5b0 <_Z12show_memdesci>:
  10e5b0:	55                   	push   rbp
  10e5b1:	48 89 e5             	mov    rbp,rsp
  10e5b4:	48 83 ec 10          	sub    rsp,0x10
  10e5b8:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  10e5bb:	48 8b 05 de e5 50 00 	mov    rax,QWORD PTR [rip+0x50e5de]        # 61cba0 <mmap>
  10e5c2:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  10e5c6:	48 63 4d fc          	movsxd rcx,DWORD PTR [rbp-0x4]
  10e5ca:	48 8b 15 cf e5 50 00 	mov    rdx,QWORD PTR [rip+0x50e5cf]        # 61cba0 <mmap>
  10e5d1:	48 0f af 4a 20       	imul   rcx,QWORD PTR [rdx+0x20]
  10e5d6:	48 01 c8             	add    rax,rcx
  10e5d9:	8b 30                	mov    esi,DWORD PTR [rax]
  10e5db:	48 8b 05 be e5 50 00 	mov    rax,QWORD PTR [rip+0x50e5be]        # 61cba0 <mmap>
  10e5e2:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  10e5e6:	48 63 4d fc          	movsxd rcx,DWORD PTR [rbp-0x4]
  10e5ea:	48 8b 15 af e5 50 00 	mov    rdx,QWORD PTR [rip+0x50e5af]        # 61cba0 <mmap>
  10e5f1:	48 0f af 4a 20       	imul   rcx,QWORD PTR [rdx+0x20]
  10e5f6:	48 01 c8             	add    rax,rcx
  10e5f9:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
  10e5fd:	48 8b 05 9c e5 50 00 	mov    rax,QWORD PTR [rip+0x50e59c]        # 61cba0 <mmap>
  10e604:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  10e608:	48 63 4d fc          	movsxd rcx,DWORD PTR [rbp-0x4]
  10e60c:	48 8b 3d 8d e5 50 00 	mov    rdi,QWORD PTR [rip+0x50e58d]        # 61cba0 <mmap>
  10e613:	48 0f af 4f 20       	imul   rcx,QWORD PTR [rdi+0x20]
  10e618:	48 01 c8             	add    rax,rcx
  10e61b:	48 8b 48 18          	mov    rcx,QWORD PTR [rax+0x18]
  10e61f:	48 8d 3d e9 21 ff ff 	lea    rdi,[rip+0xffffffffffff21e9]        # 10080f <_svfprintf_r.blanks-0x2d1>
  10e626:	b0 00                	mov    al,0x0
  10e628:	e8 93 6e ff ff       	call   1054c0 <Printf>
  10e62d:	48 83 c4 10          	add    rsp,0x10
  10e631:	5d                   	pop    rbp
  10e632:	c3                   	ret
  10e633:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10e63a:	84 00 00 00 00 00 

000000000010e640 <_Z15show_memory_mapv>:
  10e640:	55                   	push   rbp
  10e641:	48 89 e5             	mov    rbp,rsp
  10e644:	48 81 ec 00 01 00 00 	sub    rsp,0x100
  10e64b:	c7 85 0c ff ff ff 00 	mov    DWORD PTR [rbp-0xf4],0x0
  10e652:	00 00 00 
  10e655:	48 8b 05 44 e5 50 00 	mov    rax,QWORD PTR [rip+0x50e544]        # 61cba0 <mmap>
  10e65c:	48 8b 70 10          	mov    rsi,QWORD PTR [rax+0x10]
  10e660:	48 8d 3d d2 1f ff ff 	lea    rdi,[rip+0xffffffffffff1fd2]        # 100639 <_svfprintf_r.blanks-0x4a7>
  10e667:	b0 00                	mov    al,0x0
  10e669:	e8 52 6e ff ff       	call   1054c0 <Printf>
  10e66e:	48 8b 05 2b e5 50 00 	mov    rax,QWORD PTR [rip+0x50e52b]        # 61cba0 <mmap>
  10e675:	48 8b 30             	mov    rsi,QWORD PTR [rax]
  10e678:	48 8d 3d 30 20 ff ff 	lea    rdi,[rip+0xffffffffffff2030]        # 1006af <_svfprintf_r.blanks-0x431>
  10e67f:	b0 00                	mov    al,0x0
  10e681:	e8 3a 6e ff ff       	call   1054c0 <Printf>
  10e686:	48 8b 05 13 e5 50 00 	mov    rax,QWORD PTR [rip+0x50e513]        # 61cba0 <mmap>
  10e68d:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
  10e691:	48 8b 0d 08 e5 50 00 	mov    rcx,QWORD PTR [rip+0x50e508]        # 61cba0 <mmap>
  10e698:	31 d2                	xor    edx,edx
  10e69a:	48 f7 71 20          	div    QWORD PTR [rcx+0x20]
  10e69e:	48 89 c6             	mov    rsi,rax
  10e6a1:	48 8d 3d 74 1f ff ff 	lea    rdi,[rip+0xffffffffffff1f74]        # 10061c <_svfprintf_r.blanks-0x4c4>
  10e6a8:	b0 00                	mov    al,0x0
  10e6aa:	e8 11 6e ff ff       	call   1054c0 <Printf>
  10e6af:	48 8b 05 ea e4 50 00 	mov    rax,QWORD PTR [rip+0x50e4ea]        # 61cba0 <mmap>
  10e6b6:	48 8b 70 20          	mov    rsi,QWORD PTR [rax+0x20]
  10e6ba:	48 8d 3d bd 1d ff ff 	lea    rdi,[rip+0xffffffffffff1dbd]        # 10047e <_svfprintf_r.blanks-0x662>
  10e6c1:	b0 00                	mov    al,0x0
  10e6c3:	e8 f8 6d ff ff       	call   1054c0 <Printf>
  10e6c8:	48 8d 3d 25 20 ff ff 	lea    rdi,[rip+0xffffffffffff2025]        # 1006f4 <_svfprintf_r.blanks-0x3ec>
  10e6cf:	be 28 00 00 00       	mov    esi,0x28
  10e6d4:	b0 00                	mov    al,0x0
  10e6d6:	e8 e5 6d ff ff       	call   1054c0 <Printf>
  10e6db:	c7 85 08 ff ff ff 00 	mov    DWORD PTR [rbp-0xf8],0x0
  10e6e2:	00 00 00 
  10e6e5:	c7 85 0c ff ff ff 00 	mov    DWORD PTR [rbp-0xf4],0x0
  10e6ec:	00 00 00 
  10e6ef:	83 bd 0c ff ff ff 0a 	cmp    DWORD PTR [rbp-0xf4],0xa
  10e6f6:	0f 8d 54 00 00 00    	jge    10e750 <_Z15show_memory_mapv+0x110>
  10e6fc:	8b bd 0c ff ff ff    	mov    edi,DWORD PTR [rbp-0xf4]
  10e702:	e8 a9 fe ff ff       	call   10e5b0 <_Z12show_memdesci>
  10e707:	48 8b 05 92 e4 50 00 	mov    rax,QWORD PTR [rip+0x50e492]        # 61cba0 <mmap>
  10e70e:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  10e712:	48 63 8d 0c ff ff ff 	movsxd rcx,DWORD PTR [rbp-0xf4]
  10e719:	48 8b 15 80 e4 50 00 	mov    rdx,QWORD PTR [rip+0x50e480]        # 61cba0 <mmap>
  10e720:	48 0f af 4a 20       	imul   rcx,QWORD PTR [rdx+0x20]
  10e725:	48 01 c8             	add    rax,rcx
  10e728:	48 8b 48 18          	mov    rcx,QWORD PTR [rax+0x18]
  10e72c:	48 63 85 08 ff ff ff 	movsxd rax,DWORD PTR [rbp-0xf8]
  10e733:	48 01 c8             	add    rax,rcx
  10e736:	89 85 08 ff ff ff    	mov    DWORD PTR [rbp-0xf8],eax
  10e73c:	8b 85 0c ff ff ff    	mov    eax,DWORD PTR [rbp-0xf4]
  10e742:	83 c0 01             	add    eax,0x1
  10e745:	89 85 0c ff ff ff    	mov    DWORD PTR [rbp-0xf4],eax
  10e74b:	e9 9f ff ff ff       	jmp    10e6ef <_Z15show_memory_mapv+0xaf>
  10e750:	8b b5 08 ff ff ff    	mov    esi,DWORD PTR [rbp-0xf8]
  10e756:	48 8d 3d eb 1e ff ff 	lea    rdi,[rip+0xffffffffffff1eeb]        # 100648 <_svfprintf_r.blanks-0x498>
  10e75d:	b0 00                	mov    al,0x0
  10e75f:	e8 5c 6d ff ff       	call   1054c0 <Printf>
  10e764:	48 81 c4 00 01 00 00 	add    rsp,0x100
  10e76b:	5d                   	pop    rbp
  10e76c:	c3                   	ret
  10e76d:	0f 1f 00             	nop    DWORD PTR [rax]

000000000010e770 <_Z15search_mem_typem>:
  10e770:	55                   	push   rbp
  10e771:	48 89 e5             	mov    rbp,rsp
  10e774:	48 83 ec 20          	sub    rsp,0x20
  10e778:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  10e77c:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
  10e783:	48 63 45 ec          	movsxd rax,DWORD PTR [rbp-0x14]
  10e787:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  10e78b:	48 8b 05 0e e4 50 00 	mov    rax,QWORD PTR [rip+0x50e40e]        # 61cba0 <mmap>
  10e792:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
  10e796:	48 8b 0d 03 e4 50 00 	mov    rcx,QWORD PTR [rip+0x50e403]        # 61cba0 <mmap>
  10e79d:	31 d2                	xor    edx,edx
  10e79f:	48 f7 71 20          	div    QWORD PTR [rcx+0x20]
  10e7a3:	48 89 c1             	mov    rcx,rax
  10e7a6:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  10e7aa:	48 39 c8             	cmp    rax,rcx
  10e7ad:	0f 83 6c 00 00 00    	jae    10e81f <_Z15search_mem_typem+0xaf>
  10e7b3:	48 8b 05 e6 e3 50 00 	mov    rax,QWORD PTR [rip+0x50e3e6]        # 61cba0 <mmap>
  10e7ba:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  10e7be:	48 63 4d ec          	movsxd rcx,DWORD PTR [rbp-0x14]
  10e7c2:	48 8b 15 d7 e3 50 00 	mov    rdx,QWORD PTR [rip+0x50e3d7]        # 61cba0 <mmap>
  10e7c9:	48 0f af 4a 20       	imul   rcx,QWORD PTR [rdx+0x20]
  10e7ce:	48 01 c8             	add    rax,rcx
  10e7d1:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  10e7d5:	48 3b 45 f0          	cmp    rax,QWORD PTR [rbp-0x10]
  10e7d9:	0f 82 2d 00 00 00    	jb     10e80c <_Z15search_mem_typem+0x9c>
  10e7df:	48 8b 05 ba e3 50 00 	mov    rax,QWORD PTR [rip+0x50e3ba]        # 61cba0 <mmap>
  10e7e6:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  10e7ea:	8b 4d ec             	mov    ecx,DWORD PTR [rbp-0x14]
  10e7ed:	83 e9 01             	sub    ecx,0x1
  10e7f0:	48 63 c9             	movsxd rcx,ecx
  10e7f3:	48 8b 15 a6 e3 50 00 	mov    rdx,QWORD PTR [rip+0x50e3a6]        # 61cba0 <mmap>
  10e7fa:	48 0f af 4a 20       	imul   rcx,QWORD PTR [rdx+0x20]
  10e7ff:	48 01 c8             	add    rax,rcx
  10e802:	8b 00                	mov    eax,DWORD PTR [rax]
  10e804:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  10e807:	e9 1a 00 00 00       	jmp    10e826 <_Z15search_mem_typem+0xb6>
  10e80c:	e9 00 00 00 00       	jmp    10e811 <_Z15search_mem_typem+0xa1>
  10e811:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  10e814:	83 c0 01             	add    eax,0x1
  10e817:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
  10e81a:	e9 64 ff ff ff       	jmp    10e783 <_Z15search_mem_typem+0x13>
  10e81f:	c7 45 fc 15 00 00 00 	mov    DWORD PTR [rbp-0x4],0x15
  10e826:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  10e829:	48 83 c4 20          	add    rsp,0x20
  10e82d:	5d                   	pop    rbp
  10e82e:	c3                   	ret
  10e82f:	cc                   	int3

000000000010e830 <sbrk>:
  10e830:	55                   	push   rbp
  10e831:	48 89 e5             	mov    rbp,rsp
  10e834:	48 83 ec 18          	sub    rsp,0x18
  10e838:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  10e83c:	48 83 3d 64 e3 50 00 	cmp    QWORD PTR [rip+0x50e364],0x0        # 61cba8 <program_break>
  10e843:	00 
  10e844:	0f 84 18 00 00 00    	je     10e862 <sbrk+0x32>
  10e84a:	48 8b 05 57 e3 50 00 	mov    rax,QWORD PTR [rip+0x50e357]        # 61cba8 <program_break>
  10e851:	48 03 45 f0          	add    rax,QWORD PTR [rbp-0x10]
  10e855:	48 3b 05 54 e3 50 00 	cmp    rax,QWORD PTR [rip+0x50e354]        # 61cbb0 <program_break_end>
  10e85c:	0f 82 1d 00 00 00    	jb     10e87f <sbrk+0x4f>
  10e862:	48 8d 05 37 e2 50 00 	lea    rax,[rip+0x50e237]        # 61caa0 <errno>
  10e869:	c7 00 0c 00 00 00    	mov    DWORD PTR [rax],0xc
  10e86f:	48 c7 c0 ff ff ff ff 	mov    rax,0xffffffffffffffff
  10e876:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  10e87a:	e9 25 00 00 00       	jmp    10e8a4 <sbrk+0x74>
  10e87f:	48 8b 05 22 e3 50 00 	mov    rax,QWORD PTR [rip+0x50e322]        # 61cba8 <program_break>
  10e886:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  10e88a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  10e88e:	48 03 05 13 e3 50 00 	add    rax,QWORD PTR [rip+0x50e313]        # 61cba8 <program_break>
  10e895:	48 89 05 0c e3 50 00 	mov    QWORD PTR [rip+0x50e30c],rax        # 61cba8 <program_break>
  10e89c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  10e8a0:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  10e8a4:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10e8a8:	48 83 c4 18          	add    rsp,0x18
  10e8ac:	5d                   	pop    rbp
  10e8ad:	c3                   	ret
  10e8ae:	66 90                	xchg   ax,ax

000000000010e8b0 <_exit>:
  10e8b0:	55                   	push   rbp
  10e8b1:	48 89 e5             	mov    rbp,rsp
  10e8b4:	48 83 ec 10          	sub    rsp,0x10
  10e8b8:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  10e8bb:	48 8d 3d c3 19 ff ff 	lea    rdi,[rip+0xffffffffffff19c3]        # 100285 <_svfprintf_r.blanks-0x85b>
  10e8c2:	e8 89 67 ff ff       	call   105050 <Print>
  10e8c7:	f4                   	hlt
  10e8c8:	e9 fa ff ff ff       	jmp    10e8c7 <_exit+0x17>
  10e8cd:	0f 1f 00             	nop    DWORD PTR [rax]

000000000010e8d0 <lseek>:
  10e8d0:	55                   	push   rbp
  10e8d1:	48 89 e5             	mov    rbp,rsp
  10e8d4:	48 83 ec 20          	sub    rsp,0x20
  10e8d8:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  10e8db:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  10e8df:	89 55 ec             	mov    DWORD PTR [rbp-0x14],edx
  10e8e2:	48 8d 3d ab 19 ff ff 	lea    rdi,[rip+0xffffffffffff19ab]        # 100294 <_svfprintf_r.blanks-0x84c>
  10e8e9:	e8 62 67 ff ff       	call   105050 <Print>
  10e8ee:	f4                   	hlt
  10e8ef:	e9 fa ff ff ff       	jmp    10e8ee <lseek+0x1e>
  10e8f4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10e8fb:	00 00 00 00 00 

000000000010e900 <close>:
  10e900:	55                   	push   rbp
  10e901:	48 89 e5             	mov    rbp,rsp
  10e904:	48 83 ec 10          	sub    rsp,0x10
  10e908:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  10e90b:	48 8d 3d 91 19 ff ff 	lea    rdi,[rip+0xffffffffffff1991]        # 1002a3 <_svfprintf_r.blanks-0x83d>
  10e912:	e8 39 67 ff ff       	call   105050 <Print>
  10e917:	f4                   	hlt
  10e918:	e9 fa ff ff ff       	jmp    10e917 <close+0x17>
  10e91d:	0f 1f 00             	nop    DWORD PTR [rax]

000000000010e920 <kill>:
  10e920:	55                   	push   rbp
  10e921:	48 89 e5             	mov    rbp,rsp
  10e924:	48 83 ec 10          	sub    rsp,0x10
  10e928:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  10e92b:	89 75 f8             	mov    DWORD PTR [rbp-0x8],esi
  10e92e:	48 8d 3d bb 19 ff ff 	lea    rdi,[rip+0xffffffffffff19bb]        # 1002f0 <_svfprintf_r.blanks-0x7f0>
  10e935:	e8 16 67 ff ff       	call   105050 <Print>
  10e93a:	48 8d 05 5f e1 50 00 	lea    rax,[rip+0x50e15f]        # 61caa0 <errno>
  10e941:	c7 00 16 00 00 00    	mov    DWORD PTR [rax],0x16
  10e947:	f4                   	hlt
  10e948:	e9 fa ff ff ff       	jmp    10e947 <kill+0x27>
  10e94d:	0f 1f 00             	nop    DWORD PTR [rax]

000000000010e950 <getpid>:
  10e950:	55                   	push   rbp
  10e951:	48 89 e5             	mov    rbp,rsp
  10e954:	48 8d 3d 80 18 ff ff 	lea    rdi,[rip+0xffffffffffff1880]        # 1001db <_svfprintf_r.blanks-0x905>
  10e95b:	e8 f0 66 ff ff       	call   105050 <Print>
  10e960:	f4                   	hlt
  10e961:	e9 fa ff ff ff       	jmp    10e960 <getpid+0x10>
  10e966:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10e96d:	00 00 00 

000000000010e970 <fstat>:
  10e970:	55                   	push   rbp
  10e971:	48 89 e5             	mov    rbp,rsp
  10e974:	48 83 ec 10          	sub    rsp,0x10
  10e978:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  10e97b:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  10e97f:	48 8d 3d 94 19 ff ff 	lea    rdi,[rip+0xffffffffffff1994]        # 10031a <_svfprintf_r.blanks-0x7c6>
  10e986:	e8 c5 66 ff ff       	call   105050 <Print>
  10e98b:	f4                   	hlt
  10e98c:	e9 fa ff ff ff       	jmp    10e98b <fstat+0x1b>
  10e991:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10e998:	0f 1f 84 00 00 00 00 
  10e99f:	00 

000000000010e9a0 <isatty>:
  10e9a0:	55                   	push   rbp
  10e9a1:	48 89 e5             	mov    rbp,rsp
  10e9a4:	48 83 ec 10          	sub    rsp,0x10
  10e9a8:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  10e9ab:	48 8d 3d 4c 19 ff ff 	lea    rdi,[rip+0xffffffffffff194c]        # 1002fe <_svfprintf_r.blanks-0x7e2>
  10e9b2:	e8 99 66 ff ff       	call   105050 <Print>
  10e9b7:	f4                   	hlt
  10e9b8:	e9 fa ff ff ff       	jmp    10e9b7 <isatty+0x17>
  10e9bd:	cc                   	int3
  10e9be:	cc                   	int3
  10e9bf:	cc                   	int3

000000000010e9c0 <_Z14SetCodeSegmentP17SegmentDescriptor14DescriptorTypejjj>:
  10e9c0:	55                   	push   rbp
  10e9c1:	48 89 e5             	mov    rbp,rsp
  10e9c4:	48 83 ec 18          	sub    rsp,0x18
  10e9c8:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  10e9cc:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi
  10e9cf:	89 55 f0             	mov    DWORD PTR [rbp-0x10],edx
  10e9d2:	89 4d ec             	mov    DWORD PTR [rbp-0x14],ecx
  10e9d5:	44 89 45 e8          	mov    DWORD PTR [rbp-0x18],r8d
  10e9d9:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10e9dd:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
  10e9e4:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  10e9e7:	25 ff ff 00 00       	and    eax,0xffff
  10e9ec:	89 c0                	mov    eax,eax
  10e9ee:	89 c2                	mov    edx,eax
  10e9f0:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10e9f4:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  10e9f7:	48 81 e2 ff ff 00 00 	and    rdx,0xffff
  10e9fe:	48 c1 e2 10          	shl    rdx,0x10
  10ea02:	48 be ff ff 00 00 ff 	movabs rsi,0xffffffff0000ffff
  10ea09:	ff ff ff 
  10ea0c:	48 21 f1             	and    rcx,rsi
  10ea0f:	48 09 d1             	or     rcx,rdx
  10ea12:	48 89 08             	mov    QWORD PTR [rax],rcx
  10ea15:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  10ea18:	c1 e8 10             	shr    eax,0x10
  10ea1b:	25 ff 00 00 00       	and    eax,0xff
  10ea20:	89 c0                	mov    eax,eax
  10ea22:	89 c2                	mov    edx,eax
  10ea24:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10ea28:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  10ea2b:	48 81 e2 ff 00 00 00 	and    rdx,0xff
  10ea32:	48 c1 e2 20          	shl    rdx,0x20
  10ea36:	48 be ff ff ff ff 00 	movabs rsi,0xffffff00ffffffff
  10ea3d:	ff ff ff 
  10ea40:	48 21 f1             	and    rcx,rsi
  10ea43:	48 09 d1             	or     rcx,rdx
  10ea46:	48 89 08             	mov    QWORD PTR [rax],rcx
  10ea49:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  10ea4c:	c1 e8 18             	shr    eax,0x18
  10ea4f:	25 ff 00 00 00       	and    eax,0xff
  10ea54:	89 c0                	mov    eax,eax
  10ea56:	89 c2                	mov    edx,eax
  10ea58:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10ea5c:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  10ea5f:	48 81 e2 ff 00 00 00 	and    rdx,0xff
  10ea66:	48 c1 e2 38          	shl    rdx,0x38
  10ea6a:	48 be ff ff ff ff ff 	movabs rsi,0xffffffffffffff
  10ea71:	ff ff 00 
  10ea74:	48 21 f1             	and    rcx,rsi
  10ea77:	48 09 d1             	or     rcx,rdx
  10ea7a:	48 89 08             	mov    QWORD PTR [rax],rcx
  10ea7d:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
  10ea80:	25 ff ff 00 00       	and    eax,0xffff
  10ea85:	89 c0                	mov    eax,eax
  10ea87:	89 c2                	mov    edx,eax
  10ea89:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10ea8d:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  10ea90:	48 81 e2 ff ff 00 00 	and    rdx,0xffff
  10ea97:	48 81 e1 00 00 ff ff 	and    rcx,0xffffffffffff0000
  10ea9e:	48 09 d1             	or     rcx,rdx
  10eaa1:	48 89 08             	mov    QWORD PTR [rax],rcx
  10eaa4:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
  10eaa7:	c1 e8 10             	shr    eax,0x10
  10eaaa:	83 e0 0f             	and    eax,0xf
  10eaad:	89 c0                	mov    eax,eax
  10eaaf:	89 c2                	mov    edx,eax
  10eab1:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10eab5:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  10eab8:	48 83 e2 0f          	and    rdx,0xf
  10eabc:	48 c1 e2 30          	shl    rdx,0x30
  10eac0:	48 be ff ff ff ff ff 	movabs rsi,0xfff0ffffffffffff
  10eac7:	ff f0 ff 
  10eaca:	48 21 f1             	and    rcx,rsi
  10eacd:	48 09 d1             	or     rcx,rdx
  10ead0:	48 89 08             	mov    QWORD PTR [rax],rcx
  10ead3:	8b 4d f4             	mov    ecx,DWORD PTR [rbp-0xc]
  10ead6:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10eada:	89 c9                	mov    ecx,ecx
  10eadc:	89 ca                	mov    edx,ecx
  10eade:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  10eae1:	48 83 e2 0f          	and    rdx,0xf
  10eae5:	48 c1 e2 28          	shl    rdx,0x28
  10eae9:	48 be ff ff ff ff ff 	movabs rsi,0xfffff0ffffffffff
  10eaf0:	f0 ff ff 
  10eaf3:	48 21 f1             	and    rcx,rsi
  10eaf6:	48 09 d1             	or     rcx,rdx
  10eaf9:	48 89 08             	mov    QWORD PTR [rax],rcx
  10eafc:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10eb00:	48 b9 ff ff ff ff ff 	movabs rcx,0xffffefffffffffff
  10eb07:	ef ff ff 
  10eb0a:	48 23 08             	and    rcx,QWORD PTR [rax]
  10eb0d:	48 ba 00 00 00 00 00 	movabs rdx,0x100000000000
  10eb14:	10 00 00 
  10eb17:	48 09 d1             	or     rcx,rdx
  10eb1a:	48 89 08             	mov    QWORD PTR [rax],rcx
  10eb1d:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  10eb20:	89 c2                	mov    edx,eax
  10eb22:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10eb26:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  10eb29:	48 83 e2 03          	and    rdx,0x3
  10eb2d:	48 c1 e2 2d          	shl    rdx,0x2d
  10eb31:	48 be ff ff ff ff ff 	movabs rsi,0xffff9fffffffffff
  10eb38:	9f ff ff 
  10eb3b:	48 21 f1             	and    rcx,rsi
  10eb3e:	48 09 d1             	or     rcx,rdx
  10eb41:	48 89 08             	mov    QWORD PTR [rax],rcx
  10eb44:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10eb48:	48 b9 ff ff ff ff ff 	movabs rcx,0xffff7fffffffffff
  10eb4f:	7f ff ff 
  10eb52:	48 23 08             	and    rcx,QWORD PTR [rax]
  10eb55:	48 ba 00 00 00 00 00 	movabs rdx,0x800000000000
  10eb5c:	80 00 00 
  10eb5f:	48 09 d1             	or     rcx,rdx
  10eb62:	48 89 08             	mov    QWORD PTR [rax],rcx
  10eb65:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10eb69:	48 b9 ff ff ff ff ff 	movabs rcx,0xffefffffffffffff
  10eb70:	ff ef ff 
  10eb73:	48 23 08             	and    rcx,QWORD PTR [rax]
  10eb76:	48 83 c9 00          	or     rcx,0x0
  10eb7a:	48 89 08             	mov    QWORD PTR [rax],rcx
  10eb7d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10eb81:	48 b9 ff ff ff ff ff 	movabs rcx,0xffdfffffffffffff
  10eb88:	ff df ff 
  10eb8b:	48 23 08             	and    rcx,QWORD PTR [rax]
  10eb8e:	48 ba 00 00 00 00 00 	movabs rdx,0x20000000000000
  10eb95:	00 20 00 
  10eb98:	48 09 d1             	or     rcx,rdx
  10eb9b:	48 89 08             	mov    QWORD PTR [rax],rcx
  10eb9e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10eba2:	48 b9 ff ff ff ff ff 	movabs rcx,0xffbfffffffffffff
  10eba9:	ff bf ff 
  10ebac:	48 23 08             	and    rcx,QWORD PTR [rax]
  10ebaf:	48 83 c9 00          	or     rcx,0x0
  10ebb3:	48 89 08             	mov    QWORD PTR [rax],rcx
  10ebb6:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10ebba:	48 b9 ff ff ff ff ff 	movabs rcx,0xff7fffffffffffff
  10ebc1:	ff 7f ff 
  10ebc4:	48 23 08             	and    rcx,QWORD PTR [rax]
  10ebc7:	48 ba 00 00 00 00 00 	movabs rdx,0x80000000000000
  10ebce:	00 80 00 
  10ebd1:	48 09 d1             	or     rcx,rdx
  10ebd4:	48 89 08             	mov    QWORD PTR [rax],rcx
  10ebd7:	48 83 c4 18          	add    rsp,0x18
  10ebdb:	5d                   	pop    rbp
  10ebdc:	c3                   	ret
  10ebdd:	0f 1f 00             	nop    DWORD PTR [rax]

000000000010ebe0 <_Z14SetDataSegmentP17SegmentDescriptor14DescriptorTypejjj>:
  10ebe0:	55                   	push   rbp
  10ebe1:	48 89 e5             	mov    rbp,rsp
  10ebe4:	48 83 ec 20          	sub    rsp,0x20
  10ebe8:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  10ebec:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi
  10ebef:	89 55 f0             	mov    DWORD PTR [rbp-0x10],edx
  10ebf2:	89 4d ec             	mov    DWORD PTR [rbp-0x14],ecx
  10ebf5:	44 89 45 e8          	mov    DWORD PTR [rbp-0x18],r8d
  10ebf9:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
  10ebfd:	8b 75 f4             	mov    esi,DWORD PTR [rbp-0xc]
  10ec00:	8b 55 f0             	mov    edx,DWORD PTR [rbp-0x10]
  10ec03:	8b 4d ec             	mov    ecx,DWORD PTR [rbp-0x14]
  10ec06:	44 8b 45 e8          	mov    r8d,DWORD PTR [rbp-0x18]
  10ec0a:	e8 b1 fd ff ff       	call   10e9c0 <_Z14SetCodeSegmentP17SegmentDescriptor14DescriptorTypejjj>
  10ec0f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10ec13:	48 b9 ff ff ff ff ff 	movabs rcx,0xffdfffffffffffff
  10ec1a:	ff df ff 
  10ec1d:	48 23 08             	and    rcx,QWORD PTR [rax]
  10ec20:	48 ba 00 00 00 00 00 	movabs rdx,0x20000000000000
  10ec27:	00 20 00 
  10ec2a:	48 09 d1             	or     rcx,rdx
  10ec2d:	48 89 08             	mov    QWORD PTR [rax],rcx
  10ec30:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10ec34:	48 b9 ff ff ff ff ff 	movabs rcx,0xffbfffffffffffff
  10ec3b:	ff bf ff 
  10ec3e:	48 23 08             	and    rcx,QWORD PTR [rax]
  10ec41:	48 ba 00 00 00 00 00 	movabs rdx,0x40000000000000
  10ec48:	00 40 00 
  10ec4b:	48 09 d1             	or     rcx,rdx
  10ec4e:	48 89 08             	mov    QWORD PTR [rax],rcx
  10ec51:	48 83 c4 20          	add    rsp,0x20
  10ec55:	5d                   	pop    rbp
  10ec56:	c3                   	ret
  10ec57:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  10ec5e:	00 00 

000000000010ec60 <_Z13SetupSegmentsv>:
  10ec60:	55                   	push   rbp
  10ec61:	48 89 e5             	mov    rbp,rsp
  10ec64:	48 c7 05 41 81 00 00 	mov    QWORD PTR [rip+0x8141],0x0        # 116db0 <gdt>
  10ec6b:	00 00 00 00 
  10ec6f:	48 8d 3d 3a 81 00 00 	lea    rdi,[rip+0x813a]        # 116db0 <gdt>
  10ec76:	48 83 c7 08          	add    rdi,0x8
  10ec7a:	be 0a 00 00 00       	mov    esi,0xa
  10ec7f:	31 c9                	xor    ecx,ecx
  10ec81:	41 b8 ff ff 0f 00    	mov    r8d,0xfffff
  10ec87:	89 ca                	mov    edx,ecx
  10ec89:	e8 32 fd ff ff       	call   10e9c0 <_Z14SetCodeSegmentP17SegmentDescriptor14DescriptorTypejjj>
  10ec8e:	48 8d 3d 1b 81 00 00 	lea    rdi,[rip+0x811b]        # 116db0 <gdt>
  10ec95:	48 83 c7 10          	add    rdi,0x10
  10ec99:	be 02 00 00 00       	mov    esi,0x2
  10ec9e:	31 c9                	xor    ecx,ecx
  10eca0:	41 b8 ff ff 0f 00    	mov    r8d,0xfffff
  10eca6:	89 ca                	mov    edx,ecx
  10eca8:	e8 33 ff ff ff       	call   10ebe0 <_Z14SetDataSegmentP17SegmentDescriptor14DescriptorTypejjj>
  10ecad:	bf 17 00 00 00       	mov    edi,0x17
  10ecb2:	48 8d 35 f7 80 00 00 	lea    rsi,[rip+0x80f7]        # 116db0 <gdt>
  10ecb9:	e8 44 f0 ff ff       	call   10dd02 <LoadGDT>
  10ecbe:	48 8d 05 eb 80 00 00 	lea    rax,[rip+0x80eb]        # 116db0 <gdt>
  10ecc5:	5d                   	pop    rbp
  10ecc6:	c3                   	ret
  10ecc7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  10ecce:	00 00 

000000000010ecd0 <_Z17InitializeSegmenttt>:
  10ecd0:	55                   	push   rbp
  10ecd1:	48 89 e5             	mov    rbp,rsp
  10ecd4:	48 83 ec 10          	sub    rsp,0x10
  10ecd8:	66 89 f0             	mov    ax,si
  10ecdb:	66 89 f9             	mov    cx,di
  10ecde:	66 89 4d fe          	mov    WORD PTR [rbp-0x2],cx
  10ece2:	66 89 45 fc          	mov    WORD PTR [rbp-0x4],ax
  10ece6:	e8 75 ff ff ff       	call   10ec60 <_Z13SetupSegmentsv>
  10eceb:	31 ff                	xor    edi,edi
  10eced:	e8 2a f0 ff ff       	call   10dd1c <SetDSAll>
  10ecf2:	66 8b 45 fe          	mov    ax,WORD PTR [rbp-0x2]
  10ecf6:	0f b7 f8             	movzx  edi,ax
  10ecf9:	0f b7 75 fc          	movzx  esi,WORD PTR [rbp-0x4]
  10ecfd:	e8 23 f0 ff ff       	call   10dd25 <SetCSSS>
  10ed02:	48 83 c4 10          	add    rsp,0x10
  10ed06:	5d                   	pop    rbp
  10ed07:	c3                   	ret
  10ed08:	cc                   	int3
  10ed09:	cc                   	int3
  10ed0a:	cc                   	int3
  10ed0b:	cc                   	int3
  10ed0c:	cc                   	int3
  10ed0d:	cc                   	int3
  10ed0e:	cc                   	int3
  10ed0f:	cc                   	int3

000000000010ed10 <_Z11Interrupt_1P14InterruptFrame>:
  10ed10:	55                   	push   rbp
  10ed11:	48 89 e5             	mov    rbp,rsp
  10ed14:	50                   	push   rax
  10ed15:	41 53                	push   r11
  10ed17:	41 52                	push   r10
  10ed19:	41 51                	push   r9
  10ed1b:	41 50                	push   r8
  10ed1d:	57                   	push   rdi
  10ed1e:	56                   	push   rsi
  10ed1f:	52                   	push   rdx
  10ed20:	51                   	push   rcx
  10ed21:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  10ed28:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  10ed2d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  10ed32:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  10ed37:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  10ed3e:	ff 
  10ed3f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  10ed46:	ff 
  10ed47:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  10ed4e:	ff 
  10ed4f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  10ed56:	ff 
  10ed57:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  10ed5e:	ff 
  10ed5f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  10ed66:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  10ed6d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  10ed74:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  10ed7b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  10ed82:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  10ed89:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  10ed90:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  10ed97:	fc                   	cld
  10ed98:	48 8d 45 08          	lea    rax,[rbp+0x8]
  10ed9c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  10eda3:	48 8b 05 1e 80 00 00 	mov    rax,QWORD PTR [rip+0x801e]        # 116dc8 <InterruptMessagePosition>
  10edaa:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  10edb1:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  10edb8:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  10edbf:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  10edc6:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  10edcd:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  10edd3:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  10edd9:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  10ede0:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  10ede7:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  10edee:	c1 e0 10             	shl    eax,0x10
  10edf1:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  10edf8:	09 c2                	or     edx,eax
  10edfa:	48 8d 3d c4 19 ff ff 	lea    rdi,[rip+0xffffffffffff19c4]        # 1007c5 <_svfprintf_r.blanks-0x31b>
  10ee01:	e8 aa 60 ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  10ee06:	e8 f5 56 ff ff       	call   104500 <_Z4stopv>
  10ee0b:	e8 55 ef ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  10ee10:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  10ee17:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  10ee1e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  10ee25:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  10ee2c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  10ee33:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  10ee3a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  10ee41:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  10ee48:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  10ee4f:	ff 
  10ee50:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  10ee57:	ff 
  10ee58:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  10ee5f:	ff 
  10ee60:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  10ee67:	ff 
  10ee68:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  10ee6f:	ff 
  10ee70:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  10ee75:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  10ee7a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  10ee7f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  10ee86:	59                   	pop    rcx
  10ee87:	5a                   	pop    rdx
  10ee88:	5e                   	pop    rsi
  10ee89:	5f                   	pop    rdi
  10ee8a:	41 58                	pop    r8
  10ee8c:	41 59                	pop    r9
  10ee8e:	41 5a                	pop    r10
  10ee90:	41 5b                	pop    r11
  10ee92:	58                   	pop    rax
  10ee93:	5d                   	pop    rbp
  10ee94:	48 cf                	iretq
  10ee96:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10ee9d:	00 00 00 

000000000010eea0 <_Z11Interrupt_2P14InterruptFrame>:
  10eea0:	55                   	push   rbp
  10eea1:	48 89 e5             	mov    rbp,rsp
  10eea4:	50                   	push   rax
  10eea5:	41 53                	push   r11
  10eea7:	41 52                	push   r10
  10eea9:	41 51                	push   r9
  10eeab:	41 50                	push   r8
  10eead:	57                   	push   rdi
  10eeae:	56                   	push   rsi
  10eeaf:	52                   	push   rdx
  10eeb0:	51                   	push   rcx
  10eeb1:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  10eeb8:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  10eebd:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  10eec2:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  10eec7:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  10eece:	ff 
  10eecf:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  10eed6:	ff 
  10eed7:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  10eede:	ff 
  10eedf:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  10eee6:	ff 
  10eee7:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  10eeee:	ff 
  10eeef:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  10eef6:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  10eefd:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  10ef04:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  10ef0b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  10ef12:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  10ef19:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  10ef20:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  10ef27:	fc                   	cld
  10ef28:	48 8d 45 08          	lea    rax,[rbp+0x8]
  10ef2c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  10ef33:	48 8b 05 8e 7e 00 00 	mov    rax,QWORD PTR [rip+0x7e8e]        # 116dc8 <InterruptMessagePosition>
  10ef3a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  10ef41:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  10ef48:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  10ef4f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  10ef56:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  10ef5d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  10ef63:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  10ef69:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  10ef70:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  10ef77:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  10ef7e:	c1 e0 10             	shl    eax,0x10
  10ef81:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  10ef88:	09 c2                	or     edx,eax
  10ef8a:	48 8d 3d d9 13 ff ff 	lea    rdi,[rip+0xffffffffffff13d9]        # 10036a <_svfprintf_r.blanks-0x776>
  10ef91:	e8 1a 5f ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  10ef96:	e8 65 55 ff ff       	call   104500 <_Z4stopv>
  10ef9b:	e8 c5 ed ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  10efa0:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  10efa7:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  10efae:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  10efb5:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  10efbc:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  10efc3:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  10efca:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  10efd1:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  10efd8:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  10efdf:	ff 
  10efe0:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  10efe7:	ff 
  10efe8:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  10efef:	ff 
  10eff0:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  10eff7:	ff 
  10eff8:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  10efff:	ff 
  10f000:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  10f005:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  10f00a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  10f00f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  10f016:	59                   	pop    rcx
  10f017:	5a                   	pop    rdx
  10f018:	5e                   	pop    rsi
  10f019:	5f                   	pop    rdi
  10f01a:	41 58                	pop    r8
  10f01c:	41 59                	pop    r9
  10f01e:	41 5a                	pop    r10
  10f020:	41 5b                	pop    r11
  10f022:	58                   	pop    rax
  10f023:	5d                   	pop    rbp
  10f024:	48 cf                	iretq
  10f026:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10f02d:	00 00 00 

000000000010f030 <_Z11Interrupt_4P14InterruptFrame>:
  10f030:	55                   	push   rbp
  10f031:	48 89 e5             	mov    rbp,rsp
  10f034:	50                   	push   rax
  10f035:	41 53                	push   r11
  10f037:	41 52                	push   r10
  10f039:	41 51                	push   r9
  10f03b:	41 50                	push   r8
  10f03d:	57                   	push   rdi
  10f03e:	56                   	push   rsi
  10f03f:	52                   	push   rdx
  10f040:	51                   	push   rcx
  10f041:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  10f048:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  10f04d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  10f052:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  10f057:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  10f05e:	ff 
  10f05f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  10f066:	ff 
  10f067:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  10f06e:	ff 
  10f06f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  10f076:	ff 
  10f077:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  10f07e:	ff 
  10f07f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  10f086:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  10f08d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  10f094:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  10f09b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  10f0a2:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  10f0a9:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  10f0b0:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  10f0b7:	fc                   	cld
  10f0b8:	48 8d 45 08          	lea    rax,[rbp+0x8]
  10f0bc:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  10f0c3:	48 8b 05 fe 7c 00 00 	mov    rax,QWORD PTR [rip+0x7cfe]        # 116dc8 <InterruptMessagePosition>
  10f0ca:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  10f0d1:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  10f0d8:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  10f0df:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  10f0e6:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  10f0ed:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  10f0f3:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  10f0f9:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  10f100:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  10f107:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  10f10e:	c1 e0 10             	shl    eax,0x10
  10f111:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  10f118:	09 c2                	or     edx,eax
  10f11a:	48 8d 3d 54 12 ff ff 	lea    rdi,[rip+0xffffffffffff1254]        # 100375 <_svfprintf_r.blanks-0x76b>
  10f121:	e8 8a 5d ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  10f126:	e8 d5 53 ff ff       	call   104500 <_Z4stopv>
  10f12b:	e8 35 ec ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  10f130:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  10f137:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  10f13e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  10f145:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  10f14c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  10f153:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  10f15a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  10f161:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  10f168:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  10f16f:	ff 
  10f170:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  10f177:	ff 
  10f178:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  10f17f:	ff 
  10f180:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  10f187:	ff 
  10f188:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  10f18f:	ff 
  10f190:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  10f195:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  10f19a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  10f19f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  10f1a6:	59                   	pop    rcx
  10f1a7:	5a                   	pop    rdx
  10f1a8:	5e                   	pop    rsi
  10f1a9:	5f                   	pop    rdi
  10f1aa:	41 58                	pop    r8
  10f1ac:	41 59                	pop    r9
  10f1ae:	41 5a                	pop    r10
  10f1b0:	41 5b                	pop    r11
  10f1b2:	58                   	pop    rax
  10f1b3:	5d                   	pop    rbp
  10f1b4:	48 cf                	iretq
  10f1b6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10f1bd:	00 00 00 

000000000010f1c0 <_Z11Interrupt_5P14InterruptFrame>:
  10f1c0:	55                   	push   rbp
  10f1c1:	48 89 e5             	mov    rbp,rsp
  10f1c4:	50                   	push   rax
  10f1c5:	41 53                	push   r11
  10f1c7:	41 52                	push   r10
  10f1c9:	41 51                	push   r9
  10f1cb:	41 50                	push   r8
  10f1cd:	57                   	push   rdi
  10f1ce:	56                   	push   rsi
  10f1cf:	52                   	push   rdx
  10f1d0:	51                   	push   rcx
  10f1d1:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  10f1d8:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  10f1dd:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  10f1e2:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  10f1e7:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  10f1ee:	ff 
  10f1ef:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  10f1f6:	ff 
  10f1f7:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  10f1fe:	ff 
  10f1ff:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  10f206:	ff 
  10f207:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  10f20e:	ff 
  10f20f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  10f216:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  10f21d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  10f224:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  10f22b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  10f232:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  10f239:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  10f240:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  10f247:	fc                   	cld
  10f248:	48 8d 45 08          	lea    rax,[rbp+0x8]
  10f24c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  10f253:	48 8b 05 6e 7b 00 00 	mov    rax,QWORD PTR [rip+0x7b6e]        # 116dc8 <InterruptMessagePosition>
  10f25a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  10f261:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  10f268:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  10f26f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  10f276:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  10f27d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  10f283:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  10f289:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  10f290:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  10f297:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  10f29e:	c1 e0 10             	shl    eax,0x10
  10f2a1:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  10f2a8:	09 c2                	or     edx,eax
  10f2aa:	48 8d 3d 3a 0f ff ff 	lea    rdi,[rip+0xffffffffffff0f3a]        # 1001eb <_svfprintf_r.blanks-0x8f5>
  10f2b1:	e8 fa 5b ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  10f2b6:	e8 45 52 ff ff       	call   104500 <_Z4stopv>
  10f2bb:	e8 a5 ea ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  10f2c0:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  10f2c7:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  10f2ce:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  10f2d5:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  10f2dc:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  10f2e3:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  10f2ea:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  10f2f1:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  10f2f8:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  10f2ff:	ff 
  10f300:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  10f307:	ff 
  10f308:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  10f30f:	ff 
  10f310:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  10f317:	ff 
  10f318:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  10f31f:	ff 
  10f320:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  10f325:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  10f32a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  10f32f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  10f336:	59                   	pop    rcx
  10f337:	5a                   	pop    rdx
  10f338:	5e                   	pop    rsi
  10f339:	5f                   	pop    rdi
  10f33a:	41 58                	pop    r8
  10f33c:	41 59                	pop    r9
  10f33e:	41 5a                	pop    r10
  10f340:	41 5b                	pop    r11
  10f342:	58                   	pop    rax
  10f343:	5d                   	pop    rbp
  10f344:	48 cf                	iretq
  10f346:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10f34d:	00 00 00 

000000000010f350 <_Z11Interrupt_6P14InterruptFrame>:
  10f350:	55                   	push   rbp
  10f351:	48 89 e5             	mov    rbp,rsp
  10f354:	50                   	push   rax
  10f355:	41 53                	push   r11
  10f357:	41 52                	push   r10
  10f359:	41 51                	push   r9
  10f35b:	41 50                	push   r8
  10f35d:	57                   	push   rdi
  10f35e:	56                   	push   rsi
  10f35f:	52                   	push   rdx
  10f360:	51                   	push   rcx
  10f361:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  10f368:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  10f36d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  10f372:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  10f377:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  10f37e:	ff 
  10f37f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  10f386:	ff 
  10f387:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  10f38e:	ff 
  10f38f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  10f396:	ff 
  10f397:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  10f39e:	ff 
  10f39f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  10f3a6:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  10f3ad:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  10f3b4:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  10f3bb:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  10f3c2:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  10f3c9:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  10f3d0:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  10f3d7:	fc                   	cld
  10f3d8:	48 8d 45 08          	lea    rax,[rbp+0x8]
  10f3dc:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  10f3e3:	48 8b 05 de 79 00 00 	mov    rax,QWORD PTR [rip+0x79de]        # 116dc8 <InterruptMessagePosition>
  10f3ea:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  10f3f1:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  10f3f8:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  10f3ff:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  10f406:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  10f40d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  10f413:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  10f419:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  10f420:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  10f427:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  10f42e:	c1 e0 10             	shl    eax,0x10
  10f431:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  10f438:	09 c2                	or     edx,eax
  10f43a:	48 8d 3d 9b 13 ff ff 	lea    rdi,[rip+0xffffffffffff139b]        # 1007dc <_svfprintf_r.blanks-0x304>
  10f441:	e8 6a 5a ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  10f446:	e8 b5 50 ff ff       	call   104500 <_Z4stopv>
  10f44b:	e8 15 e9 ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  10f450:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  10f457:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  10f45e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  10f465:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  10f46c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  10f473:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  10f47a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  10f481:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  10f488:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  10f48f:	ff 
  10f490:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  10f497:	ff 
  10f498:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  10f49f:	ff 
  10f4a0:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  10f4a7:	ff 
  10f4a8:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  10f4af:	ff 
  10f4b0:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  10f4b5:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  10f4ba:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  10f4bf:	48 81 c4 28 01 00 00 	add    rsp,0x128
  10f4c6:	59                   	pop    rcx
  10f4c7:	5a                   	pop    rdx
  10f4c8:	5e                   	pop    rsi
  10f4c9:	5f                   	pop    rdi
  10f4ca:	41 58                	pop    r8
  10f4cc:	41 59                	pop    r9
  10f4ce:	41 5a                	pop    r10
  10f4d0:	41 5b                	pop    r11
  10f4d2:	58                   	pop    rax
  10f4d3:	5d                   	pop    rbp
  10f4d4:	48 cf                	iretq
  10f4d6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10f4dd:	00 00 00 

000000000010f4e0 <_Z11Interrupt_7P14InterruptFrame>:
  10f4e0:	55                   	push   rbp
  10f4e1:	48 89 e5             	mov    rbp,rsp
  10f4e4:	50                   	push   rax
  10f4e5:	41 53                	push   r11
  10f4e7:	41 52                	push   r10
  10f4e9:	41 51                	push   r9
  10f4eb:	41 50                	push   r8
  10f4ed:	57                   	push   rdi
  10f4ee:	56                   	push   rsi
  10f4ef:	52                   	push   rdx
  10f4f0:	51                   	push   rcx
  10f4f1:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  10f4f8:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  10f4fd:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  10f502:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  10f507:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  10f50e:	ff 
  10f50f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  10f516:	ff 
  10f517:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  10f51e:	ff 
  10f51f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  10f526:	ff 
  10f527:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  10f52e:	ff 
  10f52f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  10f536:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  10f53d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  10f544:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  10f54b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  10f552:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  10f559:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  10f560:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  10f567:	fc                   	cld
  10f568:	48 8d 45 08          	lea    rax,[rbp+0x8]
  10f56c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  10f573:	48 8b 05 4e 78 00 00 	mov    rax,QWORD PTR [rip+0x784e]        # 116dc8 <InterruptMessagePosition>
  10f57a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  10f581:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  10f588:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  10f58f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  10f596:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  10f59d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  10f5a3:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  10f5a9:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  10f5b0:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  10f5b7:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  10f5be:	c1 e0 10             	shl    eax,0x10
  10f5c1:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  10f5c8:	09 c2                	or     edx,eax
  10f5ca:	48 8d 3d 8b 0e ff ff 	lea    rdi,[rip+0xffffffffffff0e8b]        # 10045c <_svfprintf_r.blanks-0x684>
  10f5d1:	e8 da 58 ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  10f5d6:	e8 25 4f ff ff       	call   104500 <_Z4stopv>
  10f5db:	e8 85 e7 ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  10f5e0:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  10f5e7:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  10f5ee:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  10f5f5:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  10f5fc:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  10f603:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  10f60a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  10f611:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  10f618:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  10f61f:	ff 
  10f620:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  10f627:	ff 
  10f628:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  10f62f:	ff 
  10f630:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  10f637:	ff 
  10f638:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  10f63f:	ff 
  10f640:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  10f645:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  10f64a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  10f64f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  10f656:	59                   	pop    rcx
  10f657:	5a                   	pop    rdx
  10f658:	5e                   	pop    rsi
  10f659:	5f                   	pop    rdi
  10f65a:	41 58                	pop    r8
  10f65c:	41 59                	pop    r9
  10f65e:	41 5a                	pop    r10
  10f660:	41 5b                	pop    r11
  10f662:	58                   	pop    rax
  10f663:	5d                   	pop    rbp
  10f664:	48 cf                	iretq
  10f666:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10f66d:	00 00 00 

000000000010f670 <_Z11Interrupt_8P14InterruptFrame>:
  10f670:	55                   	push   rbp
  10f671:	48 89 e5             	mov    rbp,rsp
  10f674:	50                   	push   rax
  10f675:	41 53                	push   r11
  10f677:	41 52                	push   r10
  10f679:	41 51                	push   r9
  10f67b:	41 50                	push   r8
  10f67d:	57                   	push   rdi
  10f67e:	56                   	push   rsi
  10f67f:	52                   	push   rdx
  10f680:	51                   	push   rcx
  10f681:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  10f688:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  10f68d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  10f692:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  10f697:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  10f69e:	ff 
  10f69f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  10f6a6:	ff 
  10f6a7:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  10f6ae:	ff 
  10f6af:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  10f6b6:	ff 
  10f6b7:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  10f6be:	ff 
  10f6bf:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  10f6c6:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  10f6cd:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  10f6d4:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  10f6db:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  10f6e2:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  10f6e9:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  10f6f0:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  10f6f7:	fc                   	cld
  10f6f8:	48 8d 45 08          	lea    rax,[rbp+0x8]
  10f6fc:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  10f703:	48 8b 05 be 76 00 00 	mov    rax,QWORD PTR [rip+0x76be]        # 116dc8 <InterruptMessagePosition>
  10f70a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  10f711:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  10f718:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  10f71f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  10f726:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  10f72d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  10f733:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  10f739:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  10f740:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  10f747:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  10f74e:	c1 e0 10             	shl    eax,0x10
  10f751:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  10f758:	09 c2                	or     edx,eax
  10f75a:	48 8d 3d 95 0a ff ff 	lea    rdi,[rip+0xffffffffffff0a95]        # 1001f6 <_svfprintf_r.blanks-0x8ea>
  10f761:	e8 4a 57 ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  10f766:	e8 95 4d ff ff       	call   104500 <_Z4stopv>
  10f76b:	e8 f5 e5 ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  10f770:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  10f777:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  10f77e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  10f785:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  10f78c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  10f793:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  10f79a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  10f7a1:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  10f7a8:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  10f7af:	ff 
  10f7b0:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  10f7b7:	ff 
  10f7b8:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  10f7bf:	ff 
  10f7c0:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  10f7c7:	ff 
  10f7c8:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  10f7cf:	ff 
  10f7d0:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  10f7d5:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  10f7da:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  10f7df:	48 81 c4 28 01 00 00 	add    rsp,0x128
  10f7e6:	59                   	pop    rcx
  10f7e7:	5a                   	pop    rdx
  10f7e8:	5e                   	pop    rsi
  10f7e9:	5f                   	pop    rdi
  10f7ea:	41 58                	pop    r8
  10f7ec:	41 59                	pop    r9
  10f7ee:	41 5a                	pop    r10
  10f7f0:	41 5b                	pop    r11
  10f7f2:	58                   	pop    rax
  10f7f3:	5d                   	pop    rbp
  10f7f4:	48 cf                	iretq
  10f7f6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10f7fd:	00 00 00 

000000000010f800 <_Z11Interrupt_9P14InterruptFrame>:
  10f800:	55                   	push   rbp
  10f801:	48 89 e5             	mov    rbp,rsp
  10f804:	50                   	push   rax
  10f805:	41 53                	push   r11
  10f807:	41 52                	push   r10
  10f809:	41 51                	push   r9
  10f80b:	41 50                	push   r8
  10f80d:	57                   	push   rdi
  10f80e:	56                   	push   rsi
  10f80f:	52                   	push   rdx
  10f810:	51                   	push   rcx
  10f811:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  10f818:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  10f81d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  10f822:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  10f827:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  10f82e:	ff 
  10f82f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  10f836:	ff 
  10f837:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  10f83e:	ff 
  10f83f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  10f846:	ff 
  10f847:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  10f84e:	ff 
  10f84f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  10f856:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  10f85d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  10f864:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  10f86b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  10f872:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  10f879:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  10f880:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  10f887:	fc                   	cld
  10f888:	48 8d 45 08          	lea    rax,[rbp+0x8]
  10f88c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  10f893:	48 8b 05 2e 75 00 00 	mov    rax,QWORD PTR [rip+0x752e]        # 116dc8 <InterruptMessagePosition>
  10f89a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  10f8a1:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  10f8a8:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  10f8af:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  10f8b6:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  10f8bd:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  10f8c3:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  10f8c9:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  10f8d0:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  10f8d7:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  10f8de:	c1 e0 10             	shl    eax,0x10
  10f8e1:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  10f8e8:	09 c2                	or     edx,eax
  10f8ea:	48 8d 3d c8 0b ff ff 	lea    rdi,[rip+0xffffffffffff0bc8]        # 1004b9 <_svfprintf_r.blanks-0x627>
  10f8f1:	e8 ba 55 ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  10f8f6:	e8 05 4c ff ff       	call   104500 <_Z4stopv>
  10f8fb:	e8 65 e4 ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  10f900:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  10f907:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  10f90e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  10f915:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  10f91c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  10f923:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  10f92a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  10f931:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  10f938:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  10f93f:	ff 
  10f940:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  10f947:	ff 
  10f948:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  10f94f:	ff 
  10f950:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  10f957:	ff 
  10f958:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  10f95f:	ff 
  10f960:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  10f965:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  10f96a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  10f96f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  10f976:	59                   	pop    rcx
  10f977:	5a                   	pop    rdx
  10f978:	5e                   	pop    rsi
  10f979:	5f                   	pop    rdi
  10f97a:	41 58                	pop    r8
  10f97c:	41 59                	pop    r9
  10f97e:	41 5a                	pop    r10
  10f980:	41 5b                	pop    r11
  10f982:	58                   	pop    rax
  10f983:	5d                   	pop    rbp
  10f984:	48 cf                	iretq
  10f986:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10f98d:	00 00 00 

000000000010f990 <_Z12Interrupt_10P14InterruptFrame>:
  10f990:	55                   	push   rbp
  10f991:	48 89 e5             	mov    rbp,rsp
  10f994:	50                   	push   rax
  10f995:	41 53                	push   r11
  10f997:	41 52                	push   r10
  10f999:	41 51                	push   r9
  10f99b:	41 50                	push   r8
  10f99d:	57                   	push   rdi
  10f99e:	56                   	push   rsi
  10f99f:	52                   	push   rdx
  10f9a0:	51                   	push   rcx
  10f9a1:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  10f9a8:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  10f9ad:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  10f9b2:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  10f9b7:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  10f9be:	ff 
  10f9bf:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  10f9c6:	ff 
  10f9c7:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  10f9ce:	ff 
  10f9cf:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  10f9d6:	ff 
  10f9d7:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  10f9de:	ff 
  10f9df:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  10f9e6:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  10f9ed:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  10f9f4:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  10f9fb:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  10fa02:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  10fa09:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  10fa10:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  10fa17:	fc                   	cld
  10fa18:	48 8d 45 08          	lea    rax,[rbp+0x8]
  10fa1c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  10fa23:	48 8b 05 9e 73 00 00 	mov    rax,QWORD PTR [rip+0x739e]        # 116dc8 <InterruptMessagePosition>
  10fa2a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  10fa31:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  10fa38:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  10fa3f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  10fa46:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  10fa4d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  10fa53:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  10fa59:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  10fa60:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  10fa67:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  10fa6e:	c1 e0 10             	shl    eax,0x10
  10fa71:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  10fa78:	09 c2                	or     edx,eax
  10fa7a:	48 8d 3d be 09 ff ff 	lea    rdi,[rip+0xffffffffffff09be]        # 10043f <_svfprintf_r.blanks-0x6a1>
  10fa81:	e8 2a 54 ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  10fa86:	e8 75 4a ff ff       	call   104500 <_Z4stopv>
  10fa8b:	e8 d5 e2 ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  10fa90:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  10fa97:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  10fa9e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  10faa5:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  10faac:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  10fab3:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  10faba:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  10fac1:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  10fac8:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  10facf:	ff 
  10fad0:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  10fad7:	ff 
  10fad8:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  10fadf:	ff 
  10fae0:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  10fae7:	ff 
  10fae8:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  10faef:	ff 
  10faf0:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  10faf5:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  10fafa:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  10faff:	48 81 c4 28 01 00 00 	add    rsp,0x128
  10fb06:	59                   	pop    rcx
  10fb07:	5a                   	pop    rdx
  10fb08:	5e                   	pop    rsi
  10fb09:	5f                   	pop    rdi
  10fb0a:	41 58                	pop    r8
  10fb0c:	41 59                	pop    r9
  10fb0e:	41 5a                	pop    r10
  10fb10:	41 5b                	pop    r11
  10fb12:	58                   	pop    rax
  10fb13:	5d                   	pop    rbp
  10fb14:	48 cf                	iretq
  10fb16:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10fb1d:	00 00 00 

000000000010fb20 <_Z12Interrupt_11P14InterruptFrame>:
  10fb20:	55                   	push   rbp
  10fb21:	48 89 e5             	mov    rbp,rsp
  10fb24:	50                   	push   rax
  10fb25:	41 53                	push   r11
  10fb27:	41 52                	push   r10
  10fb29:	41 51                	push   r9
  10fb2b:	41 50                	push   r8
  10fb2d:	57                   	push   rdi
  10fb2e:	56                   	push   rsi
  10fb2f:	52                   	push   rdx
  10fb30:	51                   	push   rcx
  10fb31:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  10fb38:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  10fb3d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  10fb42:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  10fb47:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  10fb4e:	ff 
  10fb4f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  10fb56:	ff 
  10fb57:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  10fb5e:	ff 
  10fb5f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  10fb66:	ff 
  10fb67:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  10fb6e:	ff 
  10fb6f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  10fb76:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  10fb7d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  10fb84:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  10fb8b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  10fb92:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  10fb99:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  10fba0:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  10fba7:	fc                   	cld
  10fba8:	48 8d 45 08          	lea    rax,[rbp+0x8]
  10fbac:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  10fbb3:	48 8b 05 0e 72 00 00 	mov    rax,QWORD PTR [rip+0x720e]        # 116dc8 <InterruptMessagePosition>
  10fbba:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  10fbc1:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  10fbc8:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  10fbcf:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  10fbd6:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  10fbdd:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  10fbe3:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  10fbe9:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  10fbf0:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  10fbf7:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  10fbfe:	c1 e0 10             	shl    eax,0x10
  10fc01:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  10fc08:	09 c2                	or     edx,eax
  10fc0a:	48 8d 3d f0 05 ff ff 	lea    rdi,[rip+0xffffffffffff05f0]        # 100201 <_svfprintf_r.blanks-0x8df>
  10fc11:	e8 9a 52 ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  10fc16:	e8 e5 48 ff ff       	call   104500 <_Z4stopv>
  10fc1b:	e8 45 e1 ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  10fc20:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  10fc27:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  10fc2e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  10fc35:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  10fc3c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  10fc43:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  10fc4a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  10fc51:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  10fc58:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  10fc5f:	ff 
  10fc60:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  10fc67:	ff 
  10fc68:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  10fc6f:	ff 
  10fc70:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  10fc77:	ff 
  10fc78:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  10fc7f:	ff 
  10fc80:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  10fc85:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  10fc8a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  10fc8f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  10fc96:	59                   	pop    rcx
  10fc97:	5a                   	pop    rdx
  10fc98:	5e                   	pop    rsi
  10fc99:	5f                   	pop    rdi
  10fc9a:	41 58                	pop    r8
  10fc9c:	41 59                	pop    r9
  10fc9e:	41 5a                	pop    r10
  10fca0:	41 5b                	pop    r11
  10fca2:	58                   	pop    rax
  10fca3:	5d                   	pop    rbp
  10fca4:	48 cf                	iretq
  10fca6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10fcad:	00 00 00 

000000000010fcb0 <_Z12Interrupt_15P14InterruptFrame>:
  10fcb0:	55                   	push   rbp
  10fcb1:	48 89 e5             	mov    rbp,rsp
  10fcb4:	50                   	push   rax
  10fcb5:	41 53                	push   r11
  10fcb7:	41 52                	push   r10
  10fcb9:	41 51                	push   r9
  10fcbb:	41 50                	push   r8
  10fcbd:	57                   	push   rdi
  10fcbe:	56                   	push   rsi
  10fcbf:	52                   	push   rdx
  10fcc0:	51                   	push   rcx
  10fcc1:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  10fcc8:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  10fccd:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  10fcd2:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  10fcd7:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  10fcde:	ff 
  10fcdf:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  10fce6:	ff 
  10fce7:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  10fcee:	ff 
  10fcef:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  10fcf6:	ff 
  10fcf7:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  10fcfe:	ff 
  10fcff:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  10fd06:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  10fd0d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  10fd14:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  10fd1b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  10fd22:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  10fd29:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  10fd30:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  10fd37:	fc                   	cld
  10fd38:	48 8d 45 08          	lea    rax,[rbp+0x8]
  10fd3c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  10fd43:	48 8b 05 7e 70 00 00 	mov    rax,QWORD PTR [rip+0x707e]        # 116dc8 <InterruptMessagePosition>
  10fd4a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  10fd51:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  10fd58:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  10fd5f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  10fd66:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  10fd6d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  10fd73:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  10fd79:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  10fd80:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  10fd87:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  10fd8e:	c1 e0 10             	shl    eax,0x10
  10fd91:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  10fd98:	09 c2                	or     edx,eax
  10fd9a:	48 8d 3d 6d 05 ff ff 	lea    rdi,[rip+0xffffffffffff056d]        # 10030e <_svfprintf_r.blanks-0x7d2>
  10fda1:	e8 0a 51 ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  10fda6:	e8 55 47 ff ff       	call   104500 <_Z4stopv>
  10fdab:	e8 b5 df ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  10fdb0:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  10fdb7:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  10fdbe:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  10fdc5:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  10fdcc:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  10fdd3:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  10fdda:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  10fde1:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  10fde8:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  10fdef:	ff 
  10fdf0:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  10fdf7:	ff 
  10fdf8:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  10fdff:	ff 
  10fe00:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  10fe07:	ff 
  10fe08:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  10fe0f:	ff 
  10fe10:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  10fe15:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  10fe1a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  10fe1f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  10fe26:	59                   	pop    rcx
  10fe27:	5a                   	pop    rdx
  10fe28:	5e                   	pop    rsi
  10fe29:	5f                   	pop    rdi
  10fe2a:	41 58                	pop    r8
  10fe2c:	41 59                	pop    r9
  10fe2e:	41 5a                	pop    r10
  10fe30:	41 5b                	pop    r11
  10fe32:	58                   	pop    rax
  10fe33:	5d                   	pop    rbp
  10fe34:	48 cf                	iretq
  10fe36:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10fe3d:	00 00 00 

000000000010fe40 <_Z12Interrupt_16P14InterruptFrame>:
  10fe40:	55                   	push   rbp
  10fe41:	48 89 e5             	mov    rbp,rsp
  10fe44:	50                   	push   rax
  10fe45:	41 53                	push   r11
  10fe47:	41 52                	push   r10
  10fe49:	41 51                	push   r9
  10fe4b:	41 50                	push   r8
  10fe4d:	57                   	push   rdi
  10fe4e:	56                   	push   rsi
  10fe4f:	52                   	push   rdx
  10fe50:	51                   	push   rcx
  10fe51:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  10fe58:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  10fe5d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  10fe62:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  10fe67:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  10fe6e:	ff 
  10fe6f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  10fe76:	ff 
  10fe77:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  10fe7e:	ff 
  10fe7f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  10fe86:	ff 
  10fe87:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  10fe8e:	ff 
  10fe8f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  10fe96:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  10fe9d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  10fea4:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  10feab:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  10feb2:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  10feb9:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  10fec0:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  10fec7:	fc                   	cld
  10fec8:	48 8d 45 08          	lea    rax,[rbp+0x8]
  10fecc:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  10fed3:	48 8b 05 ee 6e 00 00 	mov    rax,QWORD PTR [rip+0x6eee]        # 116dc8 <InterruptMessagePosition>
  10feda:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  10fee1:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  10fee8:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  10feef:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  10fef6:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  10fefd:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  10ff03:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  10ff09:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  10ff10:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  10ff17:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  10ff1e:	c1 e0 10             	shl    eax,0x10
  10ff21:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  10ff28:	09 c2                	or     edx,eax
  10ff2a:	48 8d 3d b9 04 ff ff 	lea    rdi,[rip+0xffffffffffff04b9]        # 1003ea <_svfprintf_r.blanks-0x6f6>
  10ff31:	e8 7a 4f ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  10ff36:	e8 c5 45 ff ff       	call   104500 <_Z4stopv>
  10ff3b:	e8 25 de ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  10ff40:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  10ff47:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  10ff4e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  10ff55:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  10ff5c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  10ff63:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  10ff6a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  10ff71:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  10ff78:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  10ff7f:	ff 
  10ff80:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  10ff87:	ff 
  10ff88:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  10ff8f:	ff 
  10ff90:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  10ff97:	ff 
  10ff98:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  10ff9f:	ff 
  10ffa0:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  10ffa5:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  10ffaa:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  10ffaf:	48 81 c4 28 01 00 00 	add    rsp,0x128
  10ffb6:	59                   	pop    rcx
  10ffb7:	5a                   	pop    rdx
  10ffb8:	5e                   	pop    rsi
  10ffb9:	5f                   	pop    rdi
  10ffba:	41 58                	pop    r8
  10ffbc:	41 59                	pop    r9
  10ffbe:	41 5a                	pop    r10
  10ffc0:	41 5b                	pop    r11
  10ffc2:	58                   	pop    rax
  10ffc3:	5d                   	pop    rbp
  10ffc4:	48 cf                	iretq
  10ffc6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10ffcd:	00 00 00 

000000000010ffd0 <_Z12Interrupt_17P14InterruptFrame>:
  10ffd0:	55                   	push   rbp
  10ffd1:	48 89 e5             	mov    rbp,rsp
  10ffd4:	50                   	push   rax
  10ffd5:	41 53                	push   r11
  10ffd7:	41 52                	push   r10
  10ffd9:	41 51                	push   r9
  10ffdb:	41 50                	push   r8
  10ffdd:	57                   	push   rdi
  10ffde:	56                   	push   rsi
  10ffdf:	52                   	push   rdx
  10ffe0:	51                   	push   rcx
  10ffe1:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  10ffe8:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  10ffed:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  10fff2:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  10fff7:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  10fffe:	ff 
  10ffff:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  110006:	ff 
  110007:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  11000e:	ff 
  11000f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  110016:	ff 
  110017:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  11001e:	ff 
  11001f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  110026:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  11002d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  110034:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  11003b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  110042:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  110049:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  110050:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  110057:	fc                   	cld
  110058:	48 8d 45 08          	lea    rax,[rbp+0x8]
  11005c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  110063:	48 8b 05 5e 6d 00 00 	mov    rax,QWORD PTR [rip+0x6d5e]        # 116dc8 <InterruptMessagePosition>
  11006a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  110071:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  110078:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  11007f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  110086:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  11008d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  110093:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  110099:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  1100a0:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  1100a7:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  1100ae:	c1 e0 10             	shl    eax,0x10
  1100b1:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  1100b8:	09 c2                	or     edx,eax
  1100ba:	48 8d 3d f5 02 ff ff 	lea    rdi,[rip+0xffffffffffff02f5]        # 1003b6 <_svfprintf_r.blanks-0x72a>
  1100c1:	e8 ea 4d ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  1100c6:	e8 35 44 ff ff       	call   104500 <_Z4stopv>
  1100cb:	e8 95 dc ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  1100d0:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  1100d7:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  1100de:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  1100e5:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  1100ec:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  1100f3:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  1100fa:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  110101:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  110108:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  11010f:	ff 
  110110:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  110117:	ff 
  110118:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  11011f:	ff 
  110120:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  110127:	ff 
  110128:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  11012f:	ff 
  110130:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  110135:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  11013a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  11013f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  110146:	59                   	pop    rcx
  110147:	5a                   	pop    rdx
  110148:	5e                   	pop    rsi
  110149:	5f                   	pop    rdi
  11014a:	41 58                	pop    r8
  11014c:	41 59                	pop    r9
  11014e:	41 5a                	pop    r10
  110150:	41 5b                	pop    r11
  110152:	58                   	pop    rax
  110153:	5d                   	pop    rbp
  110154:	48 cf                	iretq
  110156:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  11015d:	00 00 00 

0000000000110160 <_Z12Interrupt_18P14InterruptFrame>:
  110160:	55                   	push   rbp
  110161:	48 89 e5             	mov    rbp,rsp
  110164:	50                   	push   rax
  110165:	41 53                	push   r11
  110167:	41 52                	push   r10
  110169:	41 51                	push   r9
  11016b:	41 50                	push   r8
  11016d:	57                   	push   rdi
  11016e:	56                   	push   rsi
  11016f:	52                   	push   rdx
  110170:	51                   	push   rcx
  110171:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  110178:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  11017d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  110182:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  110187:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  11018e:	ff 
  11018f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  110196:	ff 
  110197:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  11019e:	ff 
  11019f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  1101a6:	ff 
  1101a7:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  1101ae:	ff 
  1101af:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  1101b6:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  1101bd:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  1101c4:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  1101cb:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  1101d2:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  1101d9:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  1101e0:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  1101e7:	fc                   	cld
  1101e8:	48 8d 45 08          	lea    rax,[rbp+0x8]
  1101ec:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  1101f3:	48 8b 05 ce 6b 00 00 	mov    rax,QWORD PTR [rip+0x6bce]        # 116dc8 <InterruptMessagePosition>
  1101fa:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  110201:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  110208:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  11020f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  110216:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  11021d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  110223:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  110229:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  110230:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  110237:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  11023e:	c1 e0 10             	shl    eax,0x10
  110241:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  110248:	09 c2                	or     edx,eax
  11024a:	48 8d 3d ed 02 ff ff 	lea    rdi,[rip+0xffffffffffff02ed]        # 10053e <_svfprintf_r.blanks-0x5a2>
  110251:	e8 5a 4c ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  110256:	e8 a5 42 ff ff       	call   104500 <_Z4stopv>
  11025b:	e8 05 db ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  110260:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  110267:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  11026e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  110275:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  11027c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  110283:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  11028a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  110291:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  110298:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  11029f:	ff 
  1102a0:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  1102a7:	ff 
  1102a8:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  1102af:	ff 
  1102b0:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  1102b7:	ff 
  1102b8:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  1102bf:	ff 
  1102c0:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  1102c5:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  1102ca:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  1102cf:	48 81 c4 28 01 00 00 	add    rsp,0x128
  1102d6:	59                   	pop    rcx
  1102d7:	5a                   	pop    rdx
  1102d8:	5e                   	pop    rsi
  1102d9:	5f                   	pop    rdi
  1102da:	41 58                	pop    r8
  1102dc:	41 59                	pop    r9
  1102de:	41 5a                	pop    r10
  1102e0:	41 5b                	pop    r11
  1102e2:	58                   	pop    rax
  1102e3:	5d                   	pop    rbp
  1102e4:	48 cf                	iretq
  1102e6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  1102ed:	00 00 00 

00000000001102f0 <_Z12Interrupt_19P14InterruptFrame>:
  1102f0:	55                   	push   rbp
  1102f1:	48 89 e5             	mov    rbp,rsp
  1102f4:	50                   	push   rax
  1102f5:	41 53                	push   r11
  1102f7:	41 52                	push   r10
  1102f9:	41 51                	push   r9
  1102fb:	41 50                	push   r8
  1102fd:	57                   	push   rdi
  1102fe:	56                   	push   rsi
  1102ff:	52                   	push   rdx
  110300:	51                   	push   rcx
  110301:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  110308:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  11030d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  110312:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  110317:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  11031e:	ff 
  11031f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  110326:	ff 
  110327:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  11032e:	ff 
  11032f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  110336:	ff 
  110337:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  11033e:	ff 
  11033f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  110346:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  11034d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  110354:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  11035b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  110362:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  110369:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  110370:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  110377:	fc                   	cld
  110378:	48 8d 45 08          	lea    rax,[rbp+0x8]
  11037c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  110383:	48 8b 05 3e 6a 00 00 	mov    rax,QWORD PTR [rip+0x6a3e]        # 116dc8 <InterruptMessagePosition>
  11038a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  110391:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  110398:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  11039f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  1103a6:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  1103ad:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  1103b3:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  1103b9:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  1103c0:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  1103c7:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  1103ce:	c1 e0 10             	shl    eax,0x10
  1103d1:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  1103d8:	09 c2                	or     edx,eax
  1103da:	48 8d 3d 5c fe fe ff 	lea    rdi,[rip+0xfffffffffffefe5c]        # 10023d <_svfprintf_r.blanks-0x8a3>
  1103e1:	e8 ca 4a ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  1103e6:	e8 15 41 ff ff       	call   104500 <_Z4stopv>
  1103eb:	e8 75 d9 ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  1103f0:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  1103f7:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  1103fe:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  110405:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  11040c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  110413:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  11041a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  110421:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  110428:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  11042f:	ff 
  110430:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  110437:	ff 
  110438:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  11043f:	ff 
  110440:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  110447:	ff 
  110448:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  11044f:	ff 
  110450:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  110455:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  11045a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  11045f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  110466:	59                   	pop    rcx
  110467:	5a                   	pop    rdx
  110468:	5e                   	pop    rsi
  110469:	5f                   	pop    rdi
  11046a:	41 58                	pop    r8
  11046c:	41 59                	pop    r9
  11046e:	41 5a                	pop    r10
  110470:	41 5b                	pop    r11
  110472:	58                   	pop    rax
  110473:	5d                   	pop    rbp
  110474:	48 cf                	iretq
  110476:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  11047d:	00 00 00 

0000000000110480 <_Z12Interrupt_20P14InterruptFrame>:
  110480:	55                   	push   rbp
  110481:	48 89 e5             	mov    rbp,rsp
  110484:	50                   	push   rax
  110485:	41 53                	push   r11
  110487:	41 52                	push   r10
  110489:	41 51                	push   r9
  11048b:	41 50                	push   r8
  11048d:	57                   	push   rdi
  11048e:	56                   	push   rsi
  11048f:	52                   	push   rdx
  110490:	51                   	push   rcx
  110491:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  110498:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  11049d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  1104a2:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  1104a7:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  1104ae:	ff 
  1104af:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  1104b6:	ff 
  1104b7:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  1104be:	ff 
  1104bf:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  1104c6:	ff 
  1104c7:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  1104ce:	ff 
  1104cf:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  1104d6:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  1104dd:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  1104e4:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  1104eb:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  1104f2:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  1104f9:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  110500:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  110507:	fc                   	cld
  110508:	48 8d 45 08          	lea    rax,[rbp+0x8]
  11050c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  110513:	48 8b 05 ae 68 00 00 	mov    rax,QWORD PTR [rip+0x68ae]        # 116dc8 <InterruptMessagePosition>
  11051a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  110521:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  110528:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  11052f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  110536:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  11053d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  110543:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  110549:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  110550:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  110557:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  11055e:	c1 e0 10             	shl    eax,0x10
  110561:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  110568:	09 c2                	or     edx,eax
  11056a:	48 8d 3d 2f ff fe ff 	lea    rdi,[rip+0xfffffffffffeff2f]        # 1004a0 <_svfprintf_r.blanks-0x640>
  110571:	e8 3a 49 ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  110576:	e8 85 3f ff ff       	call   104500 <_Z4stopv>
  11057b:	e8 e5 d7 ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  110580:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  110587:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  11058e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  110595:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  11059c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  1105a3:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  1105aa:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  1105b1:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  1105b8:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  1105bf:	ff 
  1105c0:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  1105c7:	ff 
  1105c8:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  1105cf:	ff 
  1105d0:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  1105d7:	ff 
  1105d8:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  1105df:	ff 
  1105e0:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  1105e5:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  1105ea:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  1105ef:	48 81 c4 28 01 00 00 	add    rsp,0x128
  1105f6:	59                   	pop    rcx
  1105f7:	5a                   	pop    rdx
  1105f8:	5e                   	pop    rsi
  1105f9:	5f                   	pop    rdi
  1105fa:	41 58                	pop    r8
  1105fc:	41 59                	pop    r9
  1105fe:	41 5a                	pop    r10
  110600:	41 5b                	pop    r11
  110602:	58                   	pop    rax
  110603:	5d                   	pop    rbp
  110604:	48 cf                	iretq
  110606:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  11060d:	00 00 00 

0000000000110610 <_Z12Interrupt_21P14InterruptFrame>:
  110610:	55                   	push   rbp
  110611:	48 89 e5             	mov    rbp,rsp
  110614:	50                   	push   rax
  110615:	41 53                	push   r11
  110617:	41 52                	push   r10
  110619:	41 51                	push   r9
  11061b:	41 50                	push   r8
  11061d:	57                   	push   rdi
  11061e:	56                   	push   rsi
  11061f:	52                   	push   rdx
  110620:	51                   	push   rcx
  110621:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  110628:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  11062d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  110632:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  110637:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  11063e:	ff 
  11063f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  110646:	ff 
  110647:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  11064e:	ff 
  11064f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  110656:	ff 
  110657:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  11065e:	ff 
  11065f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  110666:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  11066d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  110674:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  11067b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  110682:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  110689:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  110690:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  110697:	fc                   	cld
  110698:	48 8d 45 08          	lea    rax,[rbp+0x8]
  11069c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  1106a3:	48 8b 05 1e 67 00 00 	mov    rax,QWORD PTR [rip+0x671e]        # 116dc8 <InterruptMessagePosition>
  1106aa:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  1106b1:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  1106b8:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  1106bf:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  1106c6:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  1106cd:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  1106d3:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  1106d9:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  1106e0:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  1106e7:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  1106ee:	c1 e0 10             	shl    eax,0x10
  1106f1:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  1106f8:	09 c2                	or     edx,eax
  1106fa:	48 8d 3d 81 fa fe ff 	lea    rdi,[rip+0xfffffffffffefa81]        # 100182 <_svfprintf_r.blanks-0x95e>
  110701:	e8 aa 47 ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  110706:	e8 f5 3d ff ff       	call   104500 <_Z4stopv>
  11070b:	e8 55 d6 ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  110710:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  110717:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  11071e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  110725:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  11072c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  110733:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  11073a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  110741:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  110748:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  11074f:	ff 
  110750:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  110757:	ff 
  110758:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  11075f:	ff 
  110760:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  110767:	ff 
  110768:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  11076f:	ff 
  110770:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  110775:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  11077a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  11077f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  110786:	59                   	pop    rcx
  110787:	5a                   	pop    rdx
  110788:	5e                   	pop    rsi
  110789:	5f                   	pop    rdi
  11078a:	41 58                	pop    r8
  11078c:	41 59                	pop    r9
  11078e:	41 5a                	pop    r10
  110790:	41 5b                	pop    r11
  110792:	58                   	pop    rax
  110793:	5d                   	pop    rbp
  110794:	48 cf                	iretq
  110796:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  11079d:	00 00 00 

00000000001107a0 <_Z12Interrupt_22P14InterruptFrame>:
  1107a0:	55                   	push   rbp
  1107a1:	48 89 e5             	mov    rbp,rsp
  1107a4:	50                   	push   rax
  1107a5:	41 53                	push   r11
  1107a7:	41 52                	push   r10
  1107a9:	41 51                	push   r9
  1107ab:	41 50                	push   r8
  1107ad:	57                   	push   rdi
  1107ae:	56                   	push   rsi
  1107af:	52                   	push   rdx
  1107b0:	51                   	push   rcx
  1107b1:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  1107b8:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  1107bd:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  1107c2:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  1107c7:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  1107ce:	ff 
  1107cf:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  1107d6:	ff 
  1107d7:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  1107de:	ff 
  1107df:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  1107e6:	ff 
  1107e7:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  1107ee:	ff 
  1107ef:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  1107f6:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  1107fd:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  110804:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  11080b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  110812:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  110819:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  110820:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  110827:	fc                   	cld
  110828:	48 8d 45 08          	lea    rax,[rbp+0x8]
  11082c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  110833:	48 8b 05 8e 65 00 00 	mov    rax,QWORD PTR [rip+0x658e]        # 116dc8 <InterruptMessagePosition>
  11083a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  110841:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  110848:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  11084f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  110856:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  11085d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  110863:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  110869:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  110870:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  110877:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  11087e:	c1 e0 10             	shl    eax,0x10
  110881:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  110888:	09 c2                	or     edx,eax
  11088a:	48 8d 3d cf fe fe ff 	lea    rdi,[rip+0xfffffffffffefecf]        # 100760 <_svfprintf_r.blanks-0x380>
  110891:	e8 1a 46 ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  110896:	e8 65 3c ff ff       	call   104500 <_Z4stopv>
  11089b:	e8 c5 d4 ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  1108a0:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  1108a7:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  1108ae:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  1108b5:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  1108bc:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  1108c3:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  1108ca:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  1108d1:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  1108d8:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  1108df:	ff 
  1108e0:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  1108e7:	ff 
  1108e8:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  1108ef:	ff 
  1108f0:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  1108f7:	ff 
  1108f8:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  1108ff:	ff 
  110900:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  110905:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  11090a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  11090f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  110916:	59                   	pop    rcx
  110917:	5a                   	pop    rdx
  110918:	5e                   	pop    rsi
  110919:	5f                   	pop    rdi
  11091a:	41 58                	pop    r8
  11091c:	41 59                	pop    r9
  11091e:	41 5a                	pop    r10
  110920:	41 5b                	pop    r11
  110922:	58                   	pop    rax
  110923:	5d                   	pop    rbp
  110924:	48 cf                	iretq
  110926:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  11092d:	00 00 00 

0000000000110930 <_Z12Interrupt_23P14InterruptFrame>:
  110930:	55                   	push   rbp
  110931:	48 89 e5             	mov    rbp,rsp
  110934:	50                   	push   rax
  110935:	41 53                	push   r11
  110937:	41 52                	push   r10
  110939:	41 51                	push   r9
  11093b:	41 50                	push   r8
  11093d:	57                   	push   rdi
  11093e:	56                   	push   rsi
  11093f:	52                   	push   rdx
  110940:	51                   	push   rcx
  110941:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  110948:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  11094d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  110952:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  110957:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  11095e:	ff 
  11095f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  110966:	ff 
  110967:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  11096e:	ff 
  11096f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  110976:	ff 
  110977:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  11097e:	ff 
  11097f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  110986:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  11098d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  110994:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  11099b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  1109a2:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  1109a9:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  1109b0:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  1109b7:	fc                   	cld
  1109b8:	48 8d 45 08          	lea    rax,[rbp+0x8]
  1109bc:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  1109c3:	48 8b 05 fe 63 00 00 	mov    rax,QWORD PTR [rip+0x63fe]        # 116dc8 <InterruptMessagePosition>
  1109ca:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  1109d1:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  1109d8:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  1109df:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  1109e6:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  1109ed:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  1109f3:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  1109f9:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  110a00:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  110a07:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  110a0e:	c1 e0 10             	shl    eax,0x10
  110a11:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  110a18:	09 c2                	or     edx,eax
  110a1a:	48 8d 3d 91 f8 fe ff 	lea    rdi,[rip+0xfffffffffffef891]        # 1002b2 <_svfprintf_r.blanks-0x82e>
  110a21:	e8 8a 44 ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  110a26:	e8 d5 3a ff ff       	call   104500 <_Z4stopv>
  110a2b:	e8 35 d3 ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  110a30:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  110a37:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  110a3e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  110a45:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  110a4c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  110a53:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  110a5a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  110a61:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  110a68:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  110a6f:	ff 
  110a70:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  110a77:	ff 
  110a78:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  110a7f:	ff 
  110a80:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  110a87:	ff 
  110a88:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  110a8f:	ff 
  110a90:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  110a95:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  110a9a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  110a9f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  110aa6:	59                   	pop    rcx
  110aa7:	5a                   	pop    rdx
  110aa8:	5e                   	pop    rsi
  110aa9:	5f                   	pop    rdi
  110aaa:	41 58                	pop    r8
  110aac:	41 59                	pop    r9
  110aae:	41 5a                	pop    r10
  110ab0:	41 5b                	pop    r11
  110ab2:	58                   	pop    rax
  110ab3:	5d                   	pop    rbp
  110ab4:	48 cf                	iretq
  110ab6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  110abd:	00 00 00 

0000000000110ac0 <_Z12Interrupt_24P14InterruptFrame>:
  110ac0:	55                   	push   rbp
  110ac1:	48 89 e5             	mov    rbp,rsp
  110ac4:	50                   	push   rax
  110ac5:	41 53                	push   r11
  110ac7:	41 52                	push   r10
  110ac9:	41 51                	push   r9
  110acb:	41 50                	push   r8
  110acd:	57                   	push   rdi
  110ace:	56                   	push   rsi
  110acf:	52                   	push   rdx
  110ad0:	51                   	push   rcx
  110ad1:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  110ad8:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  110add:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  110ae2:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  110ae7:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  110aee:	ff 
  110aef:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  110af6:	ff 
  110af7:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  110afe:	ff 
  110aff:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  110b06:	ff 
  110b07:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  110b0e:	ff 
  110b0f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  110b16:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  110b1d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  110b24:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  110b2b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  110b32:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  110b39:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  110b40:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  110b47:	fc                   	cld
  110b48:	48 8d 45 08          	lea    rax,[rbp+0x8]
  110b4c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  110b53:	48 8b 05 6e 62 00 00 	mov    rax,QWORD PTR [rip+0x626e]        # 116dc8 <InterruptMessagePosition>
  110b5a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  110b61:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  110b68:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  110b6f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  110b76:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  110b7d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  110b83:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  110b89:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  110b90:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  110b97:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  110b9e:	c1 e0 10             	shl    eax,0x10
  110ba1:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  110ba8:	09 c2                	or     edx,eax
  110baa:	48 8d 3d 62 fb fe ff 	lea    rdi,[rip+0xfffffffffffefb62]        # 100713 <_svfprintf_r.blanks-0x3cd>
  110bb1:	e8 fa 42 ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  110bb6:	e8 45 39 ff ff       	call   104500 <_Z4stopv>
  110bbb:	e8 a5 d1 ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  110bc0:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  110bc7:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  110bce:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  110bd5:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  110bdc:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  110be3:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  110bea:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  110bf1:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  110bf8:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  110bff:	ff 
  110c00:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  110c07:	ff 
  110c08:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  110c0f:	ff 
  110c10:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  110c17:	ff 
  110c18:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  110c1f:	ff 
  110c20:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  110c25:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  110c2a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  110c2f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  110c36:	59                   	pop    rcx
  110c37:	5a                   	pop    rdx
  110c38:	5e                   	pop    rsi
  110c39:	5f                   	pop    rdi
  110c3a:	41 58                	pop    r8
  110c3c:	41 59                	pop    r9
  110c3e:	41 5a                	pop    r10
  110c40:	41 5b                	pop    r11
  110c42:	58                   	pop    rax
  110c43:	5d                   	pop    rbp
  110c44:	48 cf                	iretq
  110c46:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  110c4d:	00 00 00 

0000000000110c50 <_Z12Interrupt_25P14InterruptFrame>:
  110c50:	55                   	push   rbp
  110c51:	48 89 e5             	mov    rbp,rsp
  110c54:	50                   	push   rax
  110c55:	41 53                	push   r11
  110c57:	41 52                	push   r10
  110c59:	41 51                	push   r9
  110c5b:	41 50                	push   r8
  110c5d:	57                   	push   rdi
  110c5e:	56                   	push   rsi
  110c5f:	52                   	push   rdx
  110c60:	51                   	push   rcx
  110c61:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  110c68:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  110c6d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  110c72:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  110c77:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  110c7e:	ff 
  110c7f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  110c86:	ff 
  110c87:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  110c8e:	ff 
  110c8f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  110c96:	ff 
  110c97:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  110c9e:	ff 
  110c9f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  110ca6:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  110cad:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  110cb4:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  110cbb:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  110cc2:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  110cc9:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  110cd0:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  110cd7:	fc                   	cld
  110cd8:	48 8d 45 08          	lea    rax,[rbp+0x8]
  110cdc:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  110ce3:	48 8b 05 de 60 00 00 	mov    rax,QWORD PTR [rip+0x60de]        # 116dc8 <InterruptMessagePosition>
  110cea:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  110cf1:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  110cf8:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  110cff:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  110d06:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  110d0d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  110d13:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  110d19:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  110d20:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  110d27:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  110d2e:	c1 e0 10             	shl    eax,0x10
  110d31:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  110d38:	09 c2                	or     edx,eax
  110d3a:	48 8d 3d 26 f7 fe ff 	lea    rdi,[rip+0xfffffffffffef726]        # 100467 <_svfprintf_r.blanks-0x679>
  110d41:	e8 6a 41 ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  110d46:	e8 b5 37 ff ff       	call   104500 <_Z4stopv>
  110d4b:	e8 15 d0 ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  110d50:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  110d57:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  110d5e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  110d65:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  110d6c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  110d73:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  110d7a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  110d81:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  110d88:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  110d8f:	ff 
  110d90:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  110d97:	ff 
  110d98:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  110d9f:	ff 
  110da0:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  110da7:	ff 
  110da8:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  110daf:	ff 
  110db0:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  110db5:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  110dba:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  110dbf:	48 81 c4 28 01 00 00 	add    rsp,0x128
  110dc6:	59                   	pop    rcx
  110dc7:	5a                   	pop    rdx
  110dc8:	5e                   	pop    rsi
  110dc9:	5f                   	pop    rdi
  110dca:	41 58                	pop    r8
  110dcc:	41 59                	pop    r9
  110dce:	41 5a                	pop    r10
  110dd0:	41 5b                	pop    r11
  110dd2:	58                   	pop    rax
  110dd3:	5d                   	pop    rbp
  110dd4:	48 cf                	iretq
  110dd6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  110ddd:	00 00 00 

0000000000110de0 <_Z12Interrupt_26P14InterruptFrame>:
  110de0:	55                   	push   rbp
  110de1:	48 89 e5             	mov    rbp,rsp
  110de4:	50                   	push   rax
  110de5:	41 53                	push   r11
  110de7:	41 52                	push   r10
  110de9:	41 51                	push   r9
  110deb:	41 50                	push   r8
  110ded:	57                   	push   rdi
  110dee:	56                   	push   rsi
  110def:	52                   	push   rdx
  110df0:	51                   	push   rcx
  110df1:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  110df8:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  110dfd:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  110e02:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  110e07:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  110e0e:	ff 
  110e0f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  110e16:	ff 
  110e17:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  110e1e:	ff 
  110e1f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  110e26:	ff 
  110e27:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  110e2e:	ff 
  110e2f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  110e36:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  110e3d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  110e44:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  110e4b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  110e52:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  110e59:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  110e60:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  110e67:	fc                   	cld
  110e68:	48 8d 45 08          	lea    rax,[rbp+0x8]
  110e6c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  110e73:	48 8b 05 4e 5f 00 00 	mov    rax,QWORD PTR [rip+0x5f4e]        # 116dc8 <InterruptMessagePosition>
  110e7a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  110e81:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  110e88:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  110e8f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  110e96:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  110e9d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  110ea3:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  110ea9:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  110eb0:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  110eb7:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  110ebe:	c1 e0 10             	shl    eax,0x10
  110ec1:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  110ec8:	09 c2                	or     edx,eax
  110eca:	48 8d 3d 58 f4 fe ff 	lea    rdi,[rip+0xfffffffffffef458]        # 100329 <_svfprintf_r.blanks-0x7b7>
  110ed1:	e8 da 3f ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  110ed6:	e8 25 36 ff ff       	call   104500 <_Z4stopv>
  110edb:	e8 85 ce ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  110ee0:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  110ee7:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  110eee:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  110ef5:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  110efc:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  110f03:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  110f0a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  110f11:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  110f18:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  110f1f:	ff 
  110f20:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  110f27:	ff 
  110f28:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  110f2f:	ff 
  110f30:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  110f37:	ff 
  110f38:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  110f3f:	ff 
  110f40:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  110f45:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  110f4a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  110f4f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  110f56:	59                   	pop    rcx
  110f57:	5a                   	pop    rdx
  110f58:	5e                   	pop    rsi
  110f59:	5f                   	pop    rdi
  110f5a:	41 58                	pop    r8
  110f5c:	41 59                	pop    r9
  110f5e:	41 5a                	pop    r10
  110f60:	41 5b                	pop    r11
  110f62:	58                   	pop    rax
  110f63:	5d                   	pop    rbp
  110f64:	48 cf                	iretq
  110f66:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  110f6d:	00 00 00 

0000000000110f70 <_Z12Interrupt_27P14InterruptFrame>:
  110f70:	55                   	push   rbp
  110f71:	48 89 e5             	mov    rbp,rsp
  110f74:	50                   	push   rax
  110f75:	41 53                	push   r11
  110f77:	41 52                	push   r10
  110f79:	41 51                	push   r9
  110f7b:	41 50                	push   r8
  110f7d:	57                   	push   rdi
  110f7e:	56                   	push   rsi
  110f7f:	52                   	push   rdx
  110f80:	51                   	push   rcx
  110f81:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  110f88:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  110f8d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  110f92:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  110f97:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  110f9e:	ff 
  110f9f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  110fa6:	ff 
  110fa7:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  110fae:	ff 
  110faf:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  110fb6:	ff 
  110fb7:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  110fbe:	ff 
  110fbf:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  110fc6:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  110fcd:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  110fd4:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  110fdb:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  110fe2:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  110fe9:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  110ff0:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  110ff7:	fc                   	cld
  110ff8:	48 8d 45 08          	lea    rax,[rbp+0x8]
  110ffc:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  111003:	48 8b 05 be 5d 00 00 	mov    rax,QWORD PTR [rip+0x5dbe]        # 116dc8 <InterruptMessagePosition>
  11100a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  111011:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  111018:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  11101f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  111026:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  11102d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  111033:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  111039:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  111040:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  111047:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  11104e:	c1 e0 10             	shl    eax,0x10
  111051:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  111058:	09 c2                	or     edx,eax
  11105a:	48 8d 3d 7d f3 fe ff 	lea    rdi,[rip+0xfffffffffffef37d]        # 1003de <_svfprintf_r.blanks-0x702>
  111061:	e8 4a 3e ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  111066:	e8 95 34 ff ff       	call   104500 <_Z4stopv>
  11106b:	e8 f5 cc ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  111070:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  111077:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  11107e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  111085:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  11108c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  111093:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  11109a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  1110a1:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  1110a8:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  1110af:	ff 
  1110b0:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  1110b7:	ff 
  1110b8:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  1110bf:	ff 
  1110c0:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  1110c7:	ff 
  1110c8:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  1110cf:	ff 
  1110d0:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  1110d5:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  1110da:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  1110df:	48 81 c4 28 01 00 00 	add    rsp,0x128
  1110e6:	59                   	pop    rcx
  1110e7:	5a                   	pop    rdx
  1110e8:	5e                   	pop    rsi
  1110e9:	5f                   	pop    rdi
  1110ea:	41 58                	pop    r8
  1110ec:	41 59                	pop    r9
  1110ee:	41 5a                	pop    r10
  1110f0:	41 5b                	pop    r11
  1110f2:	58                   	pop    rax
  1110f3:	5d                   	pop    rbp
  1110f4:	48 cf                	iretq
  1110f6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  1110fd:	00 00 00 

0000000000111100 <_Z12Interrupt_28P14InterruptFrame>:
  111100:	55                   	push   rbp
  111101:	48 89 e5             	mov    rbp,rsp
  111104:	50                   	push   rax
  111105:	41 53                	push   r11
  111107:	41 52                	push   r10
  111109:	41 51                	push   r9
  11110b:	41 50                	push   r8
  11110d:	57                   	push   rdi
  11110e:	56                   	push   rsi
  11110f:	52                   	push   rdx
  111110:	51                   	push   rcx
  111111:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  111118:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  11111d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  111122:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  111127:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  11112e:	ff 
  11112f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  111136:	ff 
  111137:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  11113e:	ff 
  11113f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  111146:	ff 
  111147:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  11114e:	ff 
  11114f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  111156:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  11115d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  111164:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  11116b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  111172:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  111179:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  111180:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  111187:	fc                   	cld
  111188:	48 8d 45 08          	lea    rax,[rbp+0x8]
  11118c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  111193:	48 8b 05 2e 5c 00 00 	mov    rax,QWORD PTR [rip+0x5c2e]        # 116dc8 <InterruptMessagePosition>
  11119a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  1111a1:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  1111a8:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  1111af:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  1111b6:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  1111bd:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  1111c3:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  1111c9:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  1111d0:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  1111d7:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  1111de:	c1 e0 10             	shl    eax,0x10
  1111e1:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  1111e8:	09 c2                	or     edx,eax
  1111ea:	48 8d 3d b9 f3 fe ff 	lea    rdi,[rip+0xfffffffffffef3b9]        # 1005aa <_svfprintf_r.blanks-0x536>
  1111f1:	e8 ba 3c ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  1111f6:	e8 05 33 ff ff       	call   104500 <_Z4stopv>
  1111fb:	e8 65 cb ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  111200:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  111207:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  11120e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  111215:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  11121c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  111223:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  11122a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  111231:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  111238:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  11123f:	ff 
  111240:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  111247:	ff 
  111248:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  11124f:	ff 
  111250:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  111257:	ff 
  111258:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  11125f:	ff 
  111260:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  111265:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  11126a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  11126f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  111276:	59                   	pop    rcx
  111277:	5a                   	pop    rdx
  111278:	5e                   	pop    rsi
  111279:	5f                   	pop    rdi
  11127a:	41 58                	pop    r8
  11127c:	41 59                	pop    r9
  11127e:	41 5a                	pop    r10
  111280:	41 5b                	pop    r11
  111282:	58                   	pop    rax
  111283:	5d                   	pop    rbp
  111284:	48 cf                	iretq
  111286:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  11128d:	00 00 00 

0000000000111290 <_Z12Interrupt_29P14InterruptFrame>:
  111290:	55                   	push   rbp
  111291:	48 89 e5             	mov    rbp,rsp
  111294:	50                   	push   rax
  111295:	41 53                	push   r11
  111297:	41 52                	push   r10
  111299:	41 51                	push   r9
  11129b:	41 50                	push   r8
  11129d:	57                   	push   rdi
  11129e:	56                   	push   rsi
  11129f:	52                   	push   rdx
  1112a0:	51                   	push   rcx
  1112a1:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  1112a8:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  1112ad:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  1112b2:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  1112b7:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  1112be:	ff 
  1112bf:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  1112c6:	ff 
  1112c7:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  1112ce:	ff 
  1112cf:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  1112d6:	ff 
  1112d7:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  1112de:	ff 
  1112df:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  1112e6:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  1112ed:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  1112f4:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  1112fb:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  111302:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  111309:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  111310:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  111317:	fc                   	cld
  111318:	48 8d 45 08          	lea    rax,[rbp+0x8]
  11131c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  111323:	48 8b 05 9e 5a 00 00 	mov    rax,QWORD PTR [rip+0x5a9e]        # 116dc8 <InterruptMessagePosition>
  11132a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  111331:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  111338:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  11133f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  111346:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  11134d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  111353:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  111359:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  111360:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  111367:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  11136e:	c1 e0 10             	shl    eax,0x10
  111371:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  111378:	09 c2                	or     edx,eax
  11137a:	48 8d 3d aa f2 fe ff 	lea    rdi,[rip+0xfffffffffffef2aa]        # 10062b <_svfprintf_r.blanks-0x4b5>
  111381:	e8 2a 3b ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  111386:	e8 75 31 ff ff       	call   104500 <_Z4stopv>
  11138b:	e8 d5 c9 ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  111390:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  111397:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  11139e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  1113a5:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  1113ac:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  1113b3:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  1113ba:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  1113c1:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  1113c8:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  1113cf:	ff 
  1113d0:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  1113d7:	ff 
  1113d8:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  1113df:	ff 
  1113e0:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  1113e7:	ff 
  1113e8:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  1113ef:	ff 
  1113f0:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  1113f5:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  1113fa:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  1113ff:	48 81 c4 28 01 00 00 	add    rsp,0x128
  111406:	59                   	pop    rcx
  111407:	5a                   	pop    rdx
  111408:	5e                   	pop    rsi
  111409:	5f                   	pop    rdi
  11140a:	41 58                	pop    r8
  11140c:	41 59                	pop    r9
  11140e:	41 5a                	pop    r10
  111410:	41 5b                	pop    r11
  111412:	58                   	pop    rax
  111413:	5d                   	pop    rbp
  111414:	48 cf                	iretq
  111416:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  11141d:	00 00 00 

0000000000111420 <_Z12Interrupt_30P14InterruptFrame>:
  111420:	55                   	push   rbp
  111421:	48 89 e5             	mov    rbp,rsp
  111424:	50                   	push   rax
  111425:	41 53                	push   r11
  111427:	41 52                	push   r10
  111429:	41 51                	push   r9
  11142b:	41 50                	push   r8
  11142d:	57                   	push   rdi
  11142e:	56                   	push   rsi
  11142f:	52                   	push   rdx
  111430:	51                   	push   rcx
  111431:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  111438:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  11143d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  111442:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  111447:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  11144e:	ff 
  11144f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  111456:	ff 
  111457:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  11145e:	ff 
  11145f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  111466:	ff 
  111467:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  11146e:	ff 
  11146f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  111476:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  11147d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  111484:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  11148b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  111492:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  111499:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  1114a0:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  1114a7:	fc                   	cld
  1114a8:	48 8d 45 08          	lea    rax,[rbp+0x8]
  1114ac:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  1114b3:	48 8b 05 0e 59 00 00 	mov    rax,QWORD PTR [rip+0x590e]        # 116dc8 <InterruptMessagePosition>
  1114ba:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  1114c1:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  1114c8:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  1114cf:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  1114d6:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  1114dd:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  1114e3:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  1114e9:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  1114f0:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  1114f7:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  1114fe:	c1 e0 10             	shl    eax,0x10
  111501:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  111508:	09 c2                	or     edx,eax
  11150a:	48 8d 3d b1 ee fe ff 	lea    rdi,[rip+0xfffffffffffeeeb1]        # 1003c2 <_svfprintf_r.blanks-0x71e>
  111511:	e8 9a 39 ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  111516:	e8 e5 2f ff ff       	call   104500 <_Z4stopv>
  11151b:	e8 45 c8 ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  111520:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  111527:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  11152e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  111535:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  11153c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  111543:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  11154a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  111551:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  111558:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  11155f:	ff 
  111560:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  111567:	ff 
  111568:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  11156f:	ff 
  111570:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  111577:	ff 
  111578:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  11157f:	ff 
  111580:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  111585:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  11158a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  11158f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  111596:	59                   	pop    rcx
  111597:	5a                   	pop    rdx
  111598:	5e                   	pop    rsi
  111599:	5f                   	pop    rdi
  11159a:	41 58                	pop    r8
  11159c:	41 59                	pop    r9
  11159e:	41 5a                	pop    r10
  1115a0:	41 5b                	pop    r11
  1115a2:	58                   	pop    rax
  1115a3:	5d                   	pop    rbp
  1115a4:	48 cf                	iretq
  1115a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  1115ad:	00 00 00 

00000000001115b0 <_Z12Interrupt_31P14InterruptFrame>:
  1115b0:	55                   	push   rbp
  1115b1:	48 89 e5             	mov    rbp,rsp
  1115b4:	50                   	push   rax
  1115b5:	41 53                	push   r11
  1115b7:	41 52                	push   r10
  1115b9:	41 51                	push   r9
  1115bb:	41 50                	push   r8
  1115bd:	57                   	push   rdi
  1115be:	56                   	push   rsi
  1115bf:	52                   	push   rdx
  1115c0:	51                   	push   rcx
  1115c1:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  1115c8:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  1115cd:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  1115d2:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  1115d7:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  1115de:	ff 
  1115df:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  1115e6:	ff 
  1115e7:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  1115ee:	ff 
  1115ef:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  1115f6:	ff 
  1115f7:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  1115fe:	ff 
  1115ff:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  111606:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  11160d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  111614:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  11161b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  111622:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  111629:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  111630:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  111637:	fc                   	cld
  111638:	48 8d 45 08          	lea    rax,[rbp+0x8]
  11163c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  111643:	48 8b 05 7e 57 00 00 	mov    rax,QWORD PTR [rip+0x577e]        # 116dc8 <InterruptMessagePosition>
  11164a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  111651:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  111658:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  11165f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  111666:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  11166d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  111673:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  111679:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  111680:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  111687:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  11168e:	c1 e0 10             	shl    eax,0x10
  111691:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  111698:	09 c2                	or     edx,eax
  11169a:	48 8d 3d 23 ee fe ff 	lea    rdi,[rip+0xfffffffffffeee23]        # 1004c4 <_svfprintf_r.blanks-0x61c>
  1116a1:	e8 0a 38 ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  1116a6:	e8 55 2e ff ff       	call   104500 <_Z4stopv>
  1116ab:	e8 b5 c6 ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  1116b0:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  1116b7:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  1116be:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  1116c5:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  1116cc:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  1116d3:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  1116da:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  1116e1:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  1116e8:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  1116ef:	ff 
  1116f0:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  1116f7:	ff 
  1116f8:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  1116ff:	ff 
  111700:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  111707:	ff 
  111708:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  11170f:	ff 
  111710:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  111715:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  11171a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  11171f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  111726:	59                   	pop    rcx
  111727:	5a                   	pop    rdx
  111728:	5e                   	pop    rsi
  111729:	5f                   	pop    rdi
  11172a:	41 58                	pop    r8
  11172c:	41 59                	pop    r9
  11172e:	41 5a                	pop    r10
  111730:	41 5b                	pop    r11
  111732:	58                   	pop    rax
  111733:	5d                   	pop    rbp
  111734:	48 cf                	iretq
  111736:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  11173d:	00 00 00 

0000000000111740 <_Z19BreakpointInterruptP14InterruptFrame>:
  111740:	55                   	push   rbp
  111741:	48 89 e5             	mov    rbp,rsp
  111744:	50                   	push   rax
  111745:	41 53                	push   r11
  111747:	41 52                	push   r10
  111749:	41 51                	push   r9
  11174b:	41 50                	push   r8
  11174d:	57                   	push   rdi
  11174e:	56                   	push   rsi
  11174f:	52                   	push   rdx
  111750:	51                   	push   rcx
  111751:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  111758:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  11175d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  111762:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  111767:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  11176e:	ff 
  11176f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  111776:	ff 
  111777:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  11177e:	ff 
  11177f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  111786:	ff 
  111787:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  11178e:	ff 
  11178f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  111796:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  11179d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  1117a4:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  1117ab:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  1117b2:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  1117b9:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  1117c0:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  1117c7:	fc                   	cld
  1117c8:	48 8d 45 08          	lea    rax,[rbp+0x8]
  1117cc:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  1117d3:	48 8b 85 a8 fe ff ff 	mov    rax,QWORD PTR [rbp-0x158]
  1117da:	48 8b 30             	mov    rsi,QWORD PTR [rax]
  1117dd:	48 8d 3d da ea fe ff 	lea    rdi,[rip+0xfffffffffffeeada]        # 1002be <_svfprintf_r.blanks-0x822>
  1117e4:	31 c0                	xor    eax,eax
  1117e6:	e8 d5 3c ff ff       	call   1054c0 <Printf>
  1117eb:	48 8b 05 d6 55 00 00 	mov    rax,QWORD PTR [rip+0x55d6]        # 116dc8 <InterruptMessagePosition>
  1117f2:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  1117f9:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  111800:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  111807:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  11180e:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  111815:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  11181b:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  111821:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  111828:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  11182f:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  111836:	c1 e0 10             	shl    eax,0x10
  111839:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  111840:	09 c2                	or     edx,eax
  111842:	48 8d 3d 9e ef fe ff 	lea    rdi,[rip+0xfffffffffffeef9e]        # 1007e7 <_svfprintf_r.blanks-0x2f9>
  111849:	e8 62 36 ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  11184e:	e8 ad 2c ff ff       	call   104500 <_Z4stopv>
  111853:	e8 0d c5 ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  111858:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  11185f:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  111866:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  11186d:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  111874:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  11187b:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  111882:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  111889:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  111890:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  111897:	ff 
  111898:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  11189f:	ff 
  1118a0:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  1118a7:	ff 
  1118a8:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  1118af:	ff 
  1118b0:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  1118b7:	ff 
  1118b8:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  1118bd:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  1118c2:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  1118c7:	48 81 c4 28 01 00 00 	add    rsp,0x128
  1118ce:	59                   	pop    rcx
  1118cf:	5a                   	pop    rdx
  1118d0:	5e                   	pop    rsi
  1118d1:	5f                   	pop    rdi
  1118d2:	41 58                	pop    r8
  1118d4:	41 59                	pop    r9
  1118d6:	41 5a                	pop    r10
  1118d8:	41 5b                	pop    r11
  1118da:	58                   	pop    rax
  1118db:	5d                   	pop    rbp
  1118dc:	48 cf                	iretq
  1118de:	66 90                	xchg   ax,ax

00000000001118e0 <_Z17SegFaultInterruptP14InterruptFrame>:
  1118e0:	55                   	push   rbp
  1118e1:	48 89 e5             	mov    rbp,rsp
  1118e4:	50                   	push   rax
  1118e5:	41 53                	push   r11
  1118e7:	41 52                	push   r10
  1118e9:	41 51                	push   r9
  1118eb:	41 50                	push   r8
  1118ed:	57                   	push   rdi
  1118ee:	56                   	push   rsi
  1118ef:	52                   	push   rdx
  1118f0:	51                   	push   rcx
  1118f1:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  1118f8:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  1118fd:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  111902:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  111907:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  11190e:	ff 
  11190f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  111916:	ff 
  111917:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  11191e:	ff 
  11191f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  111926:	ff 
  111927:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  11192e:	ff 
  11192f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  111936:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  11193d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  111944:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  11194b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  111952:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  111959:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  111960:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  111967:	fc                   	cld
  111968:	48 8d 45 08          	lea    rax,[rbp+0x8]
  11196c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  111973:	48 8b 05 4e 54 00 00 	mov    rax,QWORD PTR [rip+0x544e]        # 116dc8 <InterruptMessagePosition>
  11197a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  111981:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  111988:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  11198f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  111996:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  11199d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  1119a3:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  1119a9:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  1119b0:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  1119b7:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  1119be:	c1 e0 10             	shl    eax,0x10
  1119c1:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  1119c8:	09 c2                	or     edx,eax
  1119ca:	48 8d 3d 4e ed fe ff 	lea    rdi,[rip+0xfffffffffffeed4e]        # 10071f <_svfprintf_r.blanks-0x3c1>
  1119d1:	e8 da 34 ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  1119d6:	e8 25 2b ff ff       	call   104500 <_Z4stopv>
  1119db:	e8 85 c3 ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  1119e0:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  1119e7:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  1119ee:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  1119f5:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  1119fc:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  111a03:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  111a0a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  111a11:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  111a18:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  111a1f:	ff 
  111a20:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  111a27:	ff 
  111a28:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  111a2f:	ff 
  111a30:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  111a37:	ff 
  111a38:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  111a3f:	ff 
  111a40:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  111a45:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  111a4a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  111a4f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  111a56:	59                   	pop    rcx
  111a57:	5a                   	pop    rdx
  111a58:	5e                   	pop    rsi
  111a59:	5f                   	pop    rdi
  111a5a:	41 58                	pop    r8
  111a5c:	41 59                	pop    r9
  111a5e:	41 5a                	pop    r10
  111a60:	41 5b                	pop    r11
  111a62:	58                   	pop    rax
  111a63:	5d                   	pop    rbp
  111a64:	48 cf                	iretq
  111a66:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  111a6d:	00 00 00 

0000000000111a70 <_Z18PageFaultInterruptP14InterruptFrame>:
  111a70:	55                   	push   rbp
  111a71:	48 89 e5             	mov    rbp,rsp
  111a74:	50                   	push   rax
  111a75:	41 53                	push   r11
  111a77:	41 52                	push   r10
  111a79:	41 51                	push   r9
  111a7b:	41 50                	push   r8
  111a7d:	57                   	push   rdi
  111a7e:	56                   	push   rsi
  111a7f:	52                   	push   rdx
  111a80:	51                   	push   rcx
  111a81:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  111a88:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  111a8d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  111a92:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  111a97:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  111a9e:	ff 
  111a9f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  111aa6:	ff 
  111aa7:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  111aae:	ff 
  111aaf:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  111ab6:	ff 
  111ab7:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  111abe:	ff 
  111abf:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  111ac6:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  111acd:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  111ad4:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  111adb:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  111ae2:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  111ae9:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  111af0:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  111af7:	fc                   	cld
  111af8:	48 8d 45 08          	lea    rax,[rbp+0x8]
  111afc:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  111b03:	48 8b 05 be 52 00 00 	mov    rax,QWORD PTR [rip+0x52be]        # 116dc8 <InterruptMessagePosition>
  111b0a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  111b11:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  111b18:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  111b1f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  111b26:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  111b2d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  111b33:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  111b39:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  111b40:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  111b47:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  111b4e:	c1 e0 10             	shl    eax,0x10
  111b51:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  111b58:	09 c2                	or     edx,eax
  111b5a:	48 8d 3d ba e6 fe ff 	lea    rdi,[rip+0xfffffffffffee6ba]        # 10021b <_svfprintf_r.blanks-0x8c5>
  111b61:	e8 4a 33 ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  111b66:	e8 95 29 ff ff       	call   104500 <_Z4stopv>
  111b6b:	e8 f5 c1 ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  111b70:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  111b77:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  111b7e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  111b85:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  111b8c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  111b93:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  111b9a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  111ba1:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  111ba8:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  111baf:	ff 
  111bb0:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  111bb7:	ff 
  111bb8:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  111bbf:	ff 
  111bc0:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  111bc7:	ff 
  111bc8:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  111bcf:	ff 
  111bd0:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  111bd5:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  111bda:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  111bdf:	48 81 c4 28 01 00 00 	add    rsp,0x128
  111be6:	59                   	pop    rcx
  111be7:	5a                   	pop    rdx
  111be8:	5e                   	pop    rsi
  111be9:	5f                   	pop    rdi
  111bea:	41 58                	pop    r8
  111bec:	41 59                	pop    r9
  111bee:	41 5a                	pop    r10
  111bf0:	41 5b                	pop    r11
  111bf2:	58                   	pop    rax
  111bf3:	5d                   	pop    rbp
  111bf4:	48 cf                	iretq
  111bf6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  111bfd:	00 00 00 

0000000000111c00 <_Z26GeneralProtectionInterruptP14InterruptFrame>:
  111c00:	55                   	push   rbp
  111c01:	48 89 e5             	mov    rbp,rsp
  111c04:	50                   	push   rax
  111c05:	41 53                	push   r11
  111c07:	41 52                	push   r10
  111c09:	41 51                	push   r9
  111c0b:	41 50                	push   r8
  111c0d:	57                   	push   rdi
  111c0e:	56                   	push   rsi
  111c0f:	52                   	push   rdx
  111c10:	51                   	push   rcx
  111c11:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  111c18:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  111c1d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  111c22:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  111c27:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  111c2e:	ff 
  111c2f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  111c36:	ff 
  111c37:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  111c3e:	ff 
  111c3f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  111c46:	ff 
  111c47:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  111c4e:	ff 
  111c4f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  111c56:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  111c5d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  111c64:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  111c6b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  111c72:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  111c79:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  111c80:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  111c87:	fc                   	cld
  111c88:	48 8d 45 08          	lea    rax,[rbp+0x8]
  111c8c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  111c93:	48 8b 05 2e 51 00 00 	mov    rax,QWORD PTR [rip+0x512e]        # 116dc8 <InterruptMessagePosition>
  111c9a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  111ca1:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  111ca8:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  111caf:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  111cb6:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  111cbd:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  111cc3:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  111cc9:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  111cd0:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  111cd7:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  111cde:	c1 e0 10             	shl    eax,0x10
  111ce1:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  111ce8:	09 c2                	or     edx,eax
  111cea:	48 8d 3d 41 ea fe ff 	lea    rdi,[rip+0xfffffffffffeea41]        # 100732 <_svfprintf_r.blanks-0x3ae>
  111cf1:	e8 ba 31 ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  111cf6:	e8 05 28 ff ff       	call   104500 <_Z4stopv>
  111cfb:	e8 65 c0 ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  111d00:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  111d07:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  111d0e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  111d15:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  111d1c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  111d23:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  111d2a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  111d31:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  111d38:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  111d3f:	ff 
  111d40:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  111d47:	ff 
  111d48:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  111d4f:	ff 
  111d50:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  111d57:	ff 
  111d58:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  111d5f:	ff 
  111d60:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  111d65:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  111d6a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  111d6f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  111d76:	59                   	pop    rcx
  111d77:	5a                   	pop    rdx
  111d78:	5e                   	pop    rsi
  111d79:	5f                   	pop    rdi
  111d7a:	41 58                	pop    r8
  111d7c:	41 59                	pop    r9
  111d7e:	41 5a                	pop    r10
  111d80:	41 5b                	pop    r11
  111d82:	58                   	pop    rax
  111d83:	5d                   	pop    rbp
  111d84:	48 cf                	iretq
  111d86:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  111d8d:	00 00 00 

0000000000111d90 <_Z17KeyboardInterruptP14InterruptFrame>:
  111d90:	55                   	push   rbp
  111d91:	48 89 e5             	mov    rbp,rsp
  111d94:	50                   	push   rax
  111d95:	41 53                	push   r11
  111d97:	41 52                	push   r10
  111d99:	41 51                	push   r9
  111d9b:	41 50                	push   r8
  111d9d:	57                   	push   rdi
  111d9e:	56                   	push   rsi
  111d9f:	52                   	push   rdx
  111da0:	51                   	push   rcx
  111da1:	48 81 ec 18 01 00 00 	sub    rsp,0x118
  111da8:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  111dad:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  111db2:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  111db7:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  111dbe:	ff 
  111dbf:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  111dc6:	ff 
  111dc7:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  111dce:	ff 
  111dcf:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  111dd6:	ff 
  111dd7:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  111dde:	ff 
  111ddf:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  111de6:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  111ded:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  111df4:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  111dfb:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  111e02:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  111e09:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  111e10:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  111e17:	fc                   	cld
  111e18:	48 8d 45 08          	lea    rax,[rbp+0x8]
  111e1c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  111e23:	bf 20 00 00 00       	mov    edi,0x20
  111e28:	be 61 00 00 00       	mov    esi,0x61
  111e2d:	e8 b0 be ff ff       	call   10dce2 <IoOut8>
  111e32:	bf 60 00 00 00       	mov    edi,0x60
  111e37:	e8 ae be ff ff       	call   10dcea <IoIn8>
  111e3c:	0f b6 c0             	movzx  eax,al
  111e3f:	89 85 a4 fe ff ff    	mov    DWORD PTR [rbp-0x15c],eax
  111e45:	83 bd a4 fe ff ff 2a 	cmp    DWORD PTR [rbp-0x15c],0x2a
  111e4c:	0f 84 0d 00 00 00    	je     111e5f <_Z17KeyboardInterruptP14InterruptFrame+0xcf>
  111e52:	83 bd a4 fe ff ff 36 	cmp    DWORD PTR [rbp-0x15c],0x36
  111e59:	0f 85 0c 00 00 00    	jne    111e6b <_Z17KeyboardInterruptP14InterruptFrame+0xdb>
  111e5f:	c6 05 5a bd 50 00 01 	mov    BYTE PTR [rip+0x50bd5a],0x1        # 61dbc0 <_ZZ17KeyboardInterruptP14InterruptFrameE7isShift>
  111e66:	e9 a2 00 00 00       	jmp    111f0d <_Z17KeyboardInterruptP14InterruptFrame+0x17d>
  111e6b:	81 bd a4 fe ff ff aa 	cmp    DWORD PTR [rbp-0x15c],0xaa
  111e72:	00 00 00 
  111e75:	0f 84 10 00 00 00    	je     111e8b <_Z17KeyboardInterruptP14InterruptFrame+0xfb>
  111e7b:	81 bd a4 fe ff ff b6 	cmp    DWORD PTR [rbp-0x15c],0xb6
  111e82:	00 00 00 
  111e85:	0f 85 0c 00 00 00    	jne    111e97 <_Z17KeyboardInterruptP14InterruptFrame+0x107>
  111e8b:	c6 05 2e bd 50 00 00 	mov    BYTE PTR [rip+0x50bd2e],0x0        # 61dbc0 <_ZZ17KeyboardInterruptP14InterruptFrameE7isShift>
  111e92:	e9 76 00 00 00       	jmp    111f0d <_Z17KeyboardInterruptP14InterruptFrame+0x17d>
  111e97:	8b 85 a4 fe ff ff    	mov    eax,DWORD PTR [rbp-0x15c]
  111e9d:	89 c1                	mov    ecx,eax
  111e9f:	48 8d 05 2a 4f 00 00 	lea    rax,[rip+0x4f2a]        # 116dd0 <keycode>
  111ea6:	8a 04 08             	mov    al,BYTE PTR [rax+rcx*1]
  111ea9:	88 85 a3 fe ff ff    	mov    BYTE PTR [rbp-0x15d],al
  111eaf:	0f be bd a3 fe ff ff 	movsx  edi,BYTE PTR [rbp-0x15d]
  111eb6:	e8 f5 0c 00 00       	call   112bb0 <_Z10isAlphabetc>
  111ebb:	a8 01                	test   al,0x1
  111ebd:	0f 85 05 00 00 00    	jne    111ec8 <_Z17KeyboardInterruptP14InterruptFrame+0x138>
  111ec3:	e9 1d 00 00 00       	jmp    111ee5 <_Z17KeyboardInterruptP14InterruptFrame+0x155>
  111ec8:	f6 05 f1 bc 50 00 01 	test   BYTE PTR [rip+0x50bcf1],0x1        # 61dbc0 <_ZZ17KeyboardInterruptP14InterruptFrameE7isShift>
  111ecf:	0f 84 10 00 00 00    	je     111ee5 <_Z17KeyboardInterruptP14InterruptFrame+0x155>
  111ed5:	0f b6 85 a3 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x15d]
  111edc:	83 e8 20             	sub    eax,0x20
  111edf:	88 85 a3 fe ff ff    	mov    BYTE PTR [rbp-0x15d],al
  111ee5:	81 bd a4 fe ff ff 80 	cmp    DWORD PTR [rbp-0x15c],0x80
  111eec:	00 00 00 
  111eef:	0f 83 13 00 00 00    	jae    111f08 <_Z17KeyboardInterruptP14InterruptFrame+0x178>
  111ef5:	48 8d 3d 14 51 10 00 	lea    rdi,[rip+0x105114]        # 217010 <Input_Buffer>
  111efc:	0f be b5 a3 fe ff ff 	movsx  esi,BYTE PTR [rbp-0x15d]
  111f03:	e8 c8 0f 00 00       	call   112ed0 <_ZN11InputBuffer3addEc>
  111f08:	e8 58 be ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  111f0d:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  111f14:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  111f1b:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  111f22:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  111f29:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  111f30:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  111f37:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  111f3e:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  111f45:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  111f4c:	ff 
  111f4d:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  111f54:	ff 
  111f55:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  111f5c:	ff 
  111f5d:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  111f64:	ff 
  111f65:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  111f6c:	ff 
  111f6d:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  111f72:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  111f77:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  111f7c:	48 81 c4 18 01 00 00 	add    rsp,0x118
  111f83:	59                   	pop    rcx
  111f84:	5a                   	pop    rdx
  111f85:	5e                   	pop    rsi
  111f86:	5f                   	pop    rdi
  111f87:	41 58                	pop    r8
  111f89:	41 59                	pop    r9
  111f8b:	41 5a                	pop    r10
  111f8d:	41 5b                	pop    r11
  111f8f:	58                   	pop    rax
  111f90:	5d                   	pop    rbp
  111f91:	48 cf                	iretq
  111f93:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  111f9a:	84 00 00 00 00 00 

0000000000111fa0 <_Z20ShowKeycodeInterruptP14InterruptFrame>:
  111fa0:	55                   	push   rbp
  111fa1:	48 89 e5             	mov    rbp,rsp
  111fa4:	50                   	push   rax
  111fa5:	41 53                	push   r11
  111fa7:	41 52                	push   r10
  111fa9:	41 51                	push   r9
  111fab:	41 50                	push   r8
  111fad:	57                   	push   rdi
  111fae:	56                   	push   rsi
  111faf:	52                   	push   rdx
  111fb0:	51                   	push   rcx
  111fb1:	48 81 ec 18 01 00 00 	sub    rsp,0x118
  111fb8:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  111fbd:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  111fc2:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  111fc7:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  111fce:	ff 
  111fcf:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  111fd6:	ff 
  111fd7:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  111fde:	ff 
  111fdf:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  111fe6:	ff 
  111fe7:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  111fee:	ff 
  111fef:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  111ff6:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  111ffd:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  112004:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  11200b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  112012:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  112019:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  112020:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  112027:	fc                   	cld
  112028:	48 8d 45 08          	lea    rax,[rbp+0x8]
  11202c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  112033:	bf 20 00 00 00       	mov    edi,0x20
  112038:	be 61 00 00 00       	mov    esi,0x61
  11203d:	e8 a0 bc ff ff       	call   10dce2 <IoOut8>
  112042:	bf 60 00 00 00       	mov    edi,0x60
  112047:	e8 9e bc ff ff       	call   10dcea <IoIn8>
  11204c:	0f b6 c0             	movzx  eax,al
  11204f:	89 85 a4 fe ff ff    	mov    DWORD PTR [rbp-0x15c],eax
  112055:	8b 85 a4 fe ff ff    	mov    eax,DWORD PTR [rbp-0x15c]
  11205b:	89 c1                	mov    ecx,eax
  11205d:	89 ce                	mov    esi,ecx
  11205f:	48 8d 05 6a 4d 00 00 	lea    rax,[rip+0x4d6a]        # 116dd0 <keycode>
  112066:	0f be 14 08          	movsx  edx,BYTE PTR [rax+rcx*1]
  11206a:	48 8d 3d fb e6 fe ff 	lea    rdi,[rip+0xfffffffffffee6fb]        # 10076c <_svfprintf_r.blanks-0x374>
  112071:	31 c0                	xor    eax,eax
  112073:	e8 48 34 ff ff       	call   1054c0 <Printf>
  112078:	e8 e8 bc ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  11207d:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  112084:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  11208b:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  112092:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  112099:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  1120a0:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  1120a7:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  1120ae:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  1120b5:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  1120bc:	ff 
  1120bd:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  1120c4:	ff 
  1120c5:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  1120cc:	ff 
  1120cd:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  1120d4:	ff 
  1120d5:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  1120dc:	ff 
  1120dd:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  1120e2:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  1120e7:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  1120ec:	48 81 c4 18 01 00 00 	add    rsp,0x118
  1120f3:	59                   	pop    rcx
  1120f4:	5a                   	pop    rdx
  1120f5:	5e                   	pop    rsi
  1120f6:	5f                   	pop    rdi
  1120f7:	41 58                	pop    r8
  1120f9:	41 59                	pop    r9
  1120fb:	41 5a                	pop    r10
  1120fd:	41 5b                	pop    r11
  1120ff:	58                   	pop    rax
  112100:	5d                   	pop    rbp
  112101:	48 cf                	iretq
  112103:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  11210a:	84 00 00 00 00 00 

0000000000112110 <_Z16DefaultInterruptP14InterruptFrame>:
  112110:	55                   	push   rbp
  112111:	48 89 e5             	mov    rbp,rsp
  112114:	48 81 ec b0 00 00 00 	sub    rsp,0xb0
  11211b:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  11211f:	48 8b 05 a2 4c 00 00 	mov    rax,QWORD PTR [rip+0x4ca2]        # 116dc8 <InterruptMessagePosition>
  112126:	48 89 45 88          	mov    QWORD PTR [rbp-0x78],rax
  11212a:	c6 45 80 ff          	mov    BYTE PTR [rbp-0x80],0xff
  11212e:	c6 45 81 00          	mov    BYTE PTR [rbp-0x7f],0x0
  112132:	c6 45 82 00          	mov    BYTE PTR [rbp-0x7e],0x0
  112136:	48 8b 75 88          	mov    rsi,QWORD PTR [rbp-0x78]
  11213a:	8a 45 82             	mov    al,BYTE PTR [rbp-0x7e]
  11213d:	88 85 7e ff ff ff    	mov    BYTE PTR [rbp-0x82],al
  112143:	66 8b 45 80          	mov    ax,WORD PTR [rbp-0x80]
  112147:	66 89 85 7c ff ff ff 	mov    WORD PTR [rbp-0x84],ax
  11214e:	0f b6 85 7e ff ff ff 	movzx  eax,BYTE PTR [rbp-0x82]
  112155:	c1 e0 10             	shl    eax,0x10
  112158:	0f b7 95 7c ff ff ff 	movzx  edx,WORD PTR [rbp-0x84]
  11215f:	09 c2                	or     edx,eax
  112161:	48 8d 3d be e3 fe ff 	lea    rdi,[rip+0xfffffffffffee3be]        # 100526 <_svfprintf_r.blanks-0x5ba>
  112168:	e8 43 2d ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  11216d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  112171:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  112174:	48 8d 35 55 e3 fe ff 	lea    rsi,[rip+0xfffffffffffee355]        # 1004d0 <_svfprintf_r.blanks-0x610>
  11217b:	31 c0                	xor    eax,eax
  11217d:	48 8d 7d 90          	lea    rdi,[rbp-0x70]
  112181:	48 89 bd 58 ff ff ff 	mov    QWORD PTR [rbp-0xa8],rdi
  112188:	e8 63 ba ff ff       	call   10dbf0 <sprintf>
  11218d:	48 8b bd 58 ff ff ff 	mov    rdi,QWORD PTR [rbp-0xa8]
  112194:	c7 85 70 ff ff ff 90 	mov    DWORD PTR [rbp-0x90],0x190
  11219b:	01 00 00 
  11219e:	c7 85 74 ff ff ff 3d 	mov    DWORD PTR [rbp-0x8c],0x13d
  1121a5:	01 00 00 
  1121a8:	c6 85 68 ff ff ff ff 	mov    BYTE PTR [rbp-0x98],0xff
  1121af:	c6 85 69 ff ff ff 00 	mov    BYTE PTR [rbp-0x97],0x0
  1121b6:	c6 85 6a ff ff ff 00 	mov    BYTE PTR [rbp-0x96],0x0
  1121bd:	48 8b b5 70 ff ff ff 	mov    rsi,QWORD PTR [rbp-0x90]
  1121c4:	8a 85 6a ff ff ff    	mov    al,BYTE PTR [rbp-0x96]
  1121ca:	88 85 66 ff ff ff    	mov    BYTE PTR [rbp-0x9a],al
  1121d0:	66 8b 85 68 ff ff ff 	mov    ax,WORD PTR [rbp-0x98]
  1121d7:	66 89 85 64 ff ff ff 	mov    WORD PTR [rbp-0x9c],ax
  1121de:	0f b6 85 66 ff ff ff 	movzx  eax,BYTE PTR [rbp-0x9a]
  1121e5:	c1 e0 10             	shl    eax,0x10
  1121e8:	0f b7 95 64 ff ff ff 	movzx  edx,WORD PTR [rbp-0x9c]
  1121ef:	09 c2                	or     edx,eax
  1121f1:	e8 ba 2c ff ff       	call   104eb0 <_Z9PrintLinePKc6Vector5Color>
  1121f6:	e8 05 23 ff ff       	call   104500 <_Z4stopv>
  1121fb:	e8 65 bb ff ff       	call   10dd65 <NotifyEndOfInterrupt>
  112200:	48 81 c4 b0 00 00 00 	add    rsp,0xb0
  112207:	5d                   	pop    rbp
  112208:	c3                   	ret
  112209:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>:
  112210:	55                   	push   rbp
  112211:	48 89 e5             	mov    rbp,rsp
  112214:	48 83 ec 20          	sub    rsp,0x20
  112218:	66 89 f0             	mov    ax,si
  11221b:	66 89 45 f8          	mov    WORD PTR [rbp-0x8],ax
  11221f:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  112223:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
  112227:	48 89 4d e0          	mov    QWORD PTR [rbp-0x20],rcx
  11222b:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  11222f:	66 8b 4d f8          	mov    cx,WORD PTR [rbp-0x8]
  112233:	66 89 48 04          	mov    WORD PTR [rax+0x4],cx
  112237:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  11223b:	48 25 ff ff 00 00    	and    rax,0xffff
  112241:	66 89 c1             	mov    cx,ax
  112244:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  112248:	66 89 08             	mov    WORD PTR [rax],cx
  11224b:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  11224f:	48 c1 e8 10          	shr    rax,0x10
  112253:	48 25 ff 00 00 00    	and    rax,0xff
  112259:	66 89 c1             	mov    cx,ax
  11225c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  112260:	66 89 48 06          	mov    WORD PTR [rax+0x6],cx
  112264:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  112268:	48 c1 e8 20          	shr    rax,0x20
  11226c:	89 c1                	mov    ecx,eax
  11226e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  112272:	89 48 08             	mov    DWORD PTR [rax+0x8],ecx
  112275:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  112279:	66 89 c1             	mov    cx,ax
  11227c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  112280:	66 89 48 02          	mov    WORD PTR [rax+0x2],cx
  112284:	48 83 c4 20          	add    rsp,0x20
  112288:	5d                   	pop    rbp
  112289:	c3                   	ret
  11228a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000112290 <_Z13InitializePICv>:
  112290:	55                   	push   rbp
  112291:	48 89 e5             	mov    rbp,rsp
  112294:	bf 21 00 00 00       	mov    edi,0x21
  112299:	be ff 00 00 00       	mov    esi,0xff
  11229e:	e8 3f ba ff ff       	call   10dce2 <IoOut8>
  1122a3:	bf a1 00 00 00       	mov    edi,0xa1
  1122a8:	be ff 00 00 00       	mov    esi,0xff
  1122ad:	e8 30 ba ff ff       	call   10dce2 <IoOut8>
  1122b2:	bf 20 00 00 00       	mov    edi,0x20
  1122b7:	be 11 00 00 00       	mov    esi,0x11
  1122bc:	e8 21 ba ff ff       	call   10dce2 <IoOut8>
  1122c1:	bf 21 00 00 00       	mov    edi,0x21
  1122c6:	be 20 00 00 00       	mov    esi,0x20
  1122cb:	e8 12 ba ff ff       	call   10dce2 <IoOut8>
  1122d0:	bf 21 00 00 00       	mov    edi,0x21
  1122d5:	be 04 00 00 00       	mov    esi,0x4
  1122da:	e8 03 ba ff ff       	call   10dce2 <IoOut8>
  1122df:	bf 21 00 00 00       	mov    edi,0x21
  1122e4:	be 01 00 00 00       	mov    esi,0x1
  1122e9:	e8 f4 b9 ff ff       	call   10dce2 <IoOut8>
  1122ee:	bf a0 00 00 00       	mov    edi,0xa0
  1122f3:	be 11 00 00 00       	mov    esi,0x11
  1122f8:	e8 e5 b9 ff ff       	call   10dce2 <IoOut8>
  1122fd:	bf a1 00 00 00       	mov    edi,0xa1
  112302:	be 28 00 00 00       	mov    esi,0x28
  112307:	e8 d6 b9 ff ff       	call   10dce2 <IoOut8>
  11230c:	bf a1 00 00 00       	mov    edi,0xa1
  112311:	be 02 00 00 00       	mov    esi,0x2
  112316:	e8 c7 b9 ff ff       	call   10dce2 <IoOut8>
  11231b:	bf a1 00 00 00       	mov    edi,0xa1
  112320:	be 01 00 00 00       	mov    esi,0x1
  112325:	e8 b8 b9 ff ff       	call   10dce2 <IoOut8>
  11232a:	bf 21 00 00 00       	mov    edi,0x21
  11232f:	be f9 00 00 00       	mov    esi,0xf9
  112334:	e8 a9 b9 ff ff       	call   10dce2 <IoOut8>
  112339:	bf a1 00 00 00       	mov    edi,0xa1
  11233e:	be f7 00 00 00       	mov    esi,0xf7
  112343:	e8 9a b9 ff ff       	call   10dce2 <IoOut8>
  112348:	5d                   	pop    rbp
  112349:	c3                   	ret
  11234a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000112350 <_Z19InitializeInterruptv>:
  112350:	55                   	push   rbp
  112351:	48 89 e5             	mov    rbp,rsp
  112354:	48 81 ec 20 01 00 00 	sub    rsp,0x120
  11235b:	e8 e1 b9 ff ff       	call   10dd41 <GetCS>
  112360:	66 89 45 fe          	mov    WORD PTR [rbp-0x2],ax
  112364:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
  11236b:	81 7d f8 00 01 00 00 	cmp    DWORD PTR [rbp-0x8],0x100
  112372:	0f 8d 5b 00 00 00    	jge    1123d3 <_Z19InitializeInterruptv+0x83>
  112378:	48 63 4d f8          	movsxd rcx,DWORD PTR [rbp-0x8]
  11237c:	48 8d 05 3d a8 50 00 	lea    rax,[rip+0x50a83d]        # 61cbc0 <idt>
  112383:	48 c1 e1 04          	shl    rcx,0x4
  112387:	48 01 c8             	add    rax,rcx
  11238a:	48 89 85 e8 fe ff ff 	mov    QWORD PTR [rbp-0x118],rax
  112391:	bf 0e 00 00 00       	mov    edi,0xe
  112396:	31 c9                	xor    ecx,ecx
  112398:	ba 01 00 00 00       	mov    edx,0x1
  11239d:	89 ce                	mov    esi,ecx
  11239f:	e8 6c 08 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  1123a4:	48 8b bd e8 fe ff ff 	mov    rdi,QWORD PTR [rbp-0x118]
  1123ab:	66 89 45 f0          	mov    WORD PTR [rbp-0x10],ax
  1123af:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  1123b3:	89 c1                	mov    ecx,eax
  1123b5:	48 8d 15 54 fd ff ff 	lea    rdx,[rip+0xfffffffffffffd54]        # 112110 <_Z16DefaultInterruptP14InterruptFrame>
  1123bc:	0f b7 75 f0          	movzx  esi,WORD PTR [rbp-0x10]
  1123c0:	e8 4b fe ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  1123c5:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  1123c8:	83 c0 01             	add    eax,0x1
  1123cb:	89 45 f8             	mov    DWORD PTR [rbp-0x8],eax
  1123ce:	e9 98 ff ff ff       	jmp    11236b <_Z19InitializeInterruptv+0x1b>
  1123d3:	bf 0e 00 00 00       	mov    edi,0xe
  1123d8:	31 c9                	xor    ecx,ecx
  1123da:	ba 01 00 00 00       	mov    edx,0x1
  1123df:	89 ce                	mov    esi,ecx
  1123e1:	e8 2a 08 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  1123e6:	66 89 45 e8          	mov    WORD PTR [rbp-0x18],ax
  1123ea:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  1123ee:	89 c1                	mov    ecx,eax
  1123f0:	48 8d 3d c9 a7 50 00 	lea    rdi,[rip+0x50a7c9]        # 61cbc0 <idt>
  1123f7:	48 83 c7 30          	add    rdi,0x30
  1123fb:	48 8d 15 3e f3 ff ff 	lea    rdx,[rip+0xfffffffffffff33e]        # 111740 <_Z19BreakpointInterruptP14InterruptFrame>
  112402:	0f b7 75 e8          	movzx  esi,WORD PTR [rbp-0x18]
  112406:	e8 05 fe ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  11240b:	bf 0e 00 00 00       	mov    edi,0xe
  112410:	31 c9                	xor    ecx,ecx
  112412:	ba 01 00 00 00       	mov    edx,0x1
  112417:	89 ce                	mov    esi,ecx
  112419:	e8 f2 07 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  11241e:	66 89 45 e0          	mov    WORD PTR [rbp-0x20],ax
  112422:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  112426:	89 c1                	mov    ecx,eax
  112428:	48 8d 3d 91 a7 50 00 	lea    rdi,[rip+0x50a791]        # 61cbc0 <idt>
  11242f:	48 81 c7 10 02 00 00 	add    rdi,0x210
  112436:	48 8d 15 53 f9 ff ff 	lea    rdx,[rip+0xfffffffffffff953]        # 111d90 <_Z17KeyboardInterruptP14InterruptFrame>
  11243d:	0f b7 75 e0          	movzx  esi,WORD PTR [rbp-0x20]
  112441:	e8 ca fd ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  112446:	bf 0e 00 00 00       	mov    edi,0xe
  11244b:	31 c9                	xor    ecx,ecx
  11244d:	ba 01 00 00 00       	mov    edx,0x1
  112452:	89 ce                	mov    esi,ecx
  112454:	e8 b7 07 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  112459:	66 89 45 d8          	mov    WORD PTR [rbp-0x28],ax
  11245d:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  112461:	89 c1                	mov    ecx,eax
  112463:	48 8d 3d 56 a7 50 00 	lea    rdi,[rip+0x50a756]        # 61cbc0 <idt>
  11246a:	48 81 c7 c0 00 00 00 	add    rdi,0xc0
  112471:	48 8d 15 68 f4 ff ff 	lea    rdx,[rip+0xfffffffffffff468]        # 1118e0 <_Z17SegFaultInterruptP14InterruptFrame>
  112478:	0f b7 75 d8          	movzx  esi,WORD PTR [rbp-0x28]
  11247c:	e8 8f fd ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  112481:	bf 0e 00 00 00       	mov    edi,0xe
  112486:	31 c9                	xor    ecx,ecx
  112488:	ba 01 00 00 00       	mov    edx,0x1
  11248d:	89 ce                	mov    esi,ecx
  11248f:	e8 7c 07 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  112494:	66 89 45 d0          	mov    WORD PTR [rbp-0x30],ax
  112498:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  11249c:	89 c1                	mov    ecx,eax
  11249e:	48 8d 3d 1b a7 50 00 	lea    rdi,[rip+0x50a71b]        # 61cbc0 <idt>
  1124a5:	48 81 c7 d0 00 00 00 	add    rdi,0xd0
  1124ac:	48 8d 15 4d f7 ff ff 	lea    rdx,[rip+0xfffffffffffff74d]        # 111c00 <_Z26GeneralProtectionInterruptP14InterruptFrame>
  1124b3:	0f b7 75 d0          	movzx  esi,WORD PTR [rbp-0x30]
  1124b7:	e8 54 fd ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  1124bc:	bf 0e 00 00 00       	mov    edi,0xe
  1124c1:	31 c9                	xor    ecx,ecx
  1124c3:	ba 01 00 00 00       	mov    edx,0x1
  1124c8:	89 ce                	mov    esi,ecx
  1124ca:	e8 41 07 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  1124cf:	66 89 45 c8          	mov    WORD PTR [rbp-0x38],ax
  1124d3:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  1124d7:	89 c1                	mov    ecx,eax
  1124d9:	48 8d 3d e0 a6 50 00 	lea    rdi,[rip+0x50a6e0]        # 61cbc0 <idt>
  1124e0:	48 81 c7 e0 00 00 00 	add    rdi,0xe0
  1124e7:	48 8d 15 82 f5 ff ff 	lea    rdx,[rip+0xfffffffffffff582]        # 111a70 <_Z18PageFaultInterruptP14InterruptFrame>
  1124ee:	0f b7 75 c8          	movzx  esi,WORD PTR [rbp-0x38]
  1124f2:	e8 19 fd ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  1124f7:	bf 0e 00 00 00       	mov    edi,0xe
  1124fc:	31 c9                	xor    ecx,ecx
  1124fe:	ba 01 00 00 00       	mov    edx,0x1
  112503:	89 ce                	mov    esi,ecx
  112505:	e8 06 07 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  11250a:	66 89 45 c0          	mov    WORD PTR [rbp-0x40],ax
  11250e:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  112512:	89 c1                	mov    ecx,eax
  112514:	48 8d 3d a5 a6 50 00 	lea    rdi,[rip+0x50a6a5]        # 61cbc0 <idt>
  11251b:	48 83 c7 10          	add    rdi,0x10
  11251f:	48 8d 15 ea c7 ff ff 	lea    rdx,[rip+0xffffffffffffc7ea]        # 10ed10 <_Z11Interrupt_1P14InterruptFrame>
  112526:	0f b7 75 c0          	movzx  esi,WORD PTR [rbp-0x40]
  11252a:	e8 e1 fc ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  11252f:	bf 0e 00 00 00       	mov    edi,0xe
  112534:	31 c9                	xor    ecx,ecx
  112536:	ba 01 00 00 00       	mov    edx,0x1
  11253b:	89 ce                	mov    esi,ecx
  11253d:	e8 ce 06 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  112542:	66 89 45 b8          	mov    WORD PTR [rbp-0x48],ax
  112546:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  11254a:	89 c1                	mov    ecx,eax
  11254c:	48 8d 3d 6d a6 50 00 	lea    rdi,[rip+0x50a66d]        # 61cbc0 <idt>
  112553:	48 83 c7 20          	add    rdi,0x20
  112557:	48 8d 15 42 c9 ff ff 	lea    rdx,[rip+0xffffffffffffc942]        # 10eea0 <_Z11Interrupt_2P14InterruptFrame>
  11255e:	0f b7 75 b8          	movzx  esi,WORD PTR [rbp-0x48]
  112562:	e8 a9 fc ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  112567:	bf 0e 00 00 00       	mov    edi,0xe
  11256c:	31 c9                	xor    ecx,ecx
  11256e:	ba 01 00 00 00       	mov    edx,0x1
  112573:	89 ce                	mov    esi,ecx
  112575:	e8 96 06 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  11257a:	66 89 45 b0          	mov    WORD PTR [rbp-0x50],ax
  11257e:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  112582:	89 c1                	mov    ecx,eax
  112584:	48 8d 3d 35 a6 50 00 	lea    rdi,[rip+0x50a635]        # 61cbc0 <idt>
  11258b:	48 83 c7 40          	add    rdi,0x40
  11258f:	48 8d 15 9a ca ff ff 	lea    rdx,[rip+0xffffffffffffca9a]        # 10f030 <_Z11Interrupt_4P14InterruptFrame>
  112596:	0f b7 75 b0          	movzx  esi,WORD PTR [rbp-0x50]
  11259a:	e8 71 fc ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  11259f:	bf 0e 00 00 00       	mov    edi,0xe
  1125a4:	31 c9                	xor    ecx,ecx
  1125a6:	ba 01 00 00 00       	mov    edx,0x1
  1125ab:	89 ce                	mov    esi,ecx
  1125ad:	e8 5e 06 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  1125b2:	66 89 45 a8          	mov    WORD PTR [rbp-0x58],ax
  1125b6:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  1125ba:	89 c1                	mov    ecx,eax
  1125bc:	48 8d 3d fd a5 50 00 	lea    rdi,[rip+0x50a5fd]        # 61cbc0 <idt>
  1125c3:	48 83 c7 50          	add    rdi,0x50
  1125c7:	48 8d 15 f2 cb ff ff 	lea    rdx,[rip+0xffffffffffffcbf2]        # 10f1c0 <_Z11Interrupt_5P14InterruptFrame>
  1125ce:	0f b7 75 a8          	movzx  esi,WORD PTR [rbp-0x58]
  1125d2:	e8 39 fc ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  1125d7:	bf 0e 00 00 00       	mov    edi,0xe
  1125dc:	31 c9                	xor    ecx,ecx
  1125de:	ba 01 00 00 00       	mov    edx,0x1
  1125e3:	89 ce                	mov    esi,ecx
  1125e5:	e8 26 06 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  1125ea:	66 89 45 a0          	mov    WORD PTR [rbp-0x60],ax
  1125ee:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  1125f2:	89 c1                	mov    ecx,eax
  1125f4:	48 8d 3d c5 a5 50 00 	lea    rdi,[rip+0x50a5c5]        # 61cbc0 <idt>
  1125fb:	48 83 c7 60          	add    rdi,0x60
  1125ff:	48 8d 15 4a cd ff ff 	lea    rdx,[rip+0xffffffffffffcd4a]        # 10f350 <_Z11Interrupt_6P14InterruptFrame>
  112606:	0f b7 75 a0          	movzx  esi,WORD PTR [rbp-0x60]
  11260a:	e8 01 fc ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  11260f:	bf 0e 00 00 00       	mov    edi,0xe
  112614:	31 c9                	xor    ecx,ecx
  112616:	ba 01 00 00 00       	mov    edx,0x1
  11261b:	89 ce                	mov    esi,ecx
  11261d:	e8 ee 05 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  112622:	66 89 45 98          	mov    WORD PTR [rbp-0x68],ax
  112626:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  11262a:	89 c1                	mov    ecx,eax
  11262c:	48 8d 3d 8d a5 50 00 	lea    rdi,[rip+0x50a58d]        # 61cbc0 <idt>
  112633:	48 83 c7 70          	add    rdi,0x70
  112637:	48 8d 15 a2 ce ff ff 	lea    rdx,[rip+0xffffffffffffcea2]        # 10f4e0 <_Z11Interrupt_7P14InterruptFrame>
  11263e:	0f b7 75 98          	movzx  esi,WORD PTR [rbp-0x68]
  112642:	e8 c9 fb ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  112647:	bf 0e 00 00 00       	mov    edi,0xe
  11264c:	31 c9                	xor    ecx,ecx
  11264e:	ba 01 00 00 00       	mov    edx,0x1
  112653:	89 ce                	mov    esi,ecx
  112655:	e8 b6 05 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  11265a:	66 89 45 90          	mov    WORD PTR [rbp-0x70],ax
  11265e:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  112662:	89 c1                	mov    ecx,eax
  112664:	48 8d 3d 55 a5 50 00 	lea    rdi,[rip+0x50a555]        # 61cbc0 <idt>
  11266b:	48 81 c7 80 00 00 00 	add    rdi,0x80
  112672:	48 8d 15 f7 cf ff ff 	lea    rdx,[rip+0xffffffffffffcff7]        # 10f670 <_Z11Interrupt_8P14InterruptFrame>
  112679:	0f b7 75 90          	movzx  esi,WORD PTR [rbp-0x70]
  11267d:	e8 8e fb ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  112682:	bf 0e 00 00 00       	mov    edi,0xe
  112687:	31 c9                	xor    ecx,ecx
  112689:	ba 01 00 00 00       	mov    edx,0x1
  11268e:	89 ce                	mov    esi,ecx
  112690:	e8 7b 05 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  112695:	66 89 45 88          	mov    WORD PTR [rbp-0x78],ax
  112699:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  11269d:	89 c1                	mov    ecx,eax
  11269f:	48 8d 3d 1a a5 50 00 	lea    rdi,[rip+0x50a51a]        # 61cbc0 <idt>
  1126a6:	48 81 c7 90 00 00 00 	add    rdi,0x90
  1126ad:	48 8d 15 4c d1 ff ff 	lea    rdx,[rip+0xffffffffffffd14c]        # 10f800 <_Z11Interrupt_9P14InterruptFrame>
  1126b4:	0f b7 75 88          	movzx  esi,WORD PTR [rbp-0x78]
  1126b8:	e8 53 fb ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  1126bd:	bf 0e 00 00 00       	mov    edi,0xe
  1126c2:	31 c9                	xor    ecx,ecx
  1126c4:	ba 01 00 00 00       	mov    edx,0x1
  1126c9:	89 ce                	mov    esi,ecx
  1126cb:	e8 40 05 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  1126d0:	66 89 45 80          	mov    WORD PTR [rbp-0x80],ax
  1126d4:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  1126d8:	89 c1                	mov    ecx,eax
  1126da:	48 8d 3d df a4 50 00 	lea    rdi,[rip+0x50a4df]        # 61cbc0 <idt>
  1126e1:	48 81 c7 a0 00 00 00 	add    rdi,0xa0
  1126e8:	48 8d 15 a1 d2 ff ff 	lea    rdx,[rip+0xffffffffffffd2a1]        # 10f990 <_Z12Interrupt_10P14InterruptFrame>
  1126ef:	0f b7 75 80          	movzx  esi,WORD PTR [rbp-0x80]
  1126f3:	e8 18 fb ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  1126f8:	bf 0e 00 00 00       	mov    edi,0xe
  1126fd:	31 c9                	xor    ecx,ecx
  1126ff:	ba 01 00 00 00       	mov    edx,0x1
  112704:	89 ce                	mov    esi,ecx
  112706:	e8 05 05 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  11270b:	66 89 85 78 ff ff ff 	mov    WORD PTR [rbp-0x88],ax
  112712:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  112716:	89 c1                	mov    ecx,eax
  112718:	48 8d 3d a1 a4 50 00 	lea    rdi,[rip+0x50a4a1]        # 61cbc0 <idt>
  11271f:	48 81 c7 b0 00 00 00 	add    rdi,0xb0
  112726:	48 8d 15 f3 d3 ff ff 	lea    rdx,[rip+0xffffffffffffd3f3]        # 10fb20 <_Z12Interrupt_11P14InterruptFrame>
  11272d:	0f b7 b5 78 ff ff ff 	movzx  esi,WORD PTR [rbp-0x88]
  112734:	e8 d7 fa ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  112739:	bf 0e 00 00 00       	mov    edi,0xe
  11273e:	31 c9                	xor    ecx,ecx
  112740:	ba 01 00 00 00       	mov    edx,0x1
  112745:	89 ce                	mov    esi,ecx
  112747:	e8 c4 04 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  11274c:	66 89 85 70 ff ff ff 	mov    WORD PTR [rbp-0x90],ax
  112753:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  112757:	89 c1                	mov    ecx,eax
  112759:	48 8d 3d 60 a4 50 00 	lea    rdi,[rip+0x50a460]        # 61cbc0 <idt>
  112760:	48 81 c7 f0 00 00 00 	add    rdi,0xf0
  112767:	48 8d 15 42 d5 ff ff 	lea    rdx,[rip+0xffffffffffffd542]        # 10fcb0 <_Z12Interrupt_15P14InterruptFrame>
  11276e:	0f b7 b5 70 ff ff ff 	movzx  esi,WORD PTR [rbp-0x90]
  112775:	e8 96 fa ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  11277a:	bf 0e 00 00 00       	mov    edi,0xe
  11277f:	31 c9                	xor    ecx,ecx
  112781:	ba 01 00 00 00       	mov    edx,0x1
  112786:	89 ce                	mov    esi,ecx
  112788:	e8 83 04 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  11278d:	66 89 85 68 ff ff ff 	mov    WORD PTR [rbp-0x98],ax
  112794:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  112798:	89 c1                	mov    ecx,eax
  11279a:	48 8d 3d 1f a4 50 00 	lea    rdi,[rip+0x50a41f]        # 61cbc0 <idt>
  1127a1:	48 81 c7 00 01 00 00 	add    rdi,0x100
  1127a8:	48 8d 15 91 d6 ff ff 	lea    rdx,[rip+0xffffffffffffd691]        # 10fe40 <_Z12Interrupt_16P14InterruptFrame>
  1127af:	0f b7 b5 68 ff ff ff 	movzx  esi,WORD PTR [rbp-0x98]
  1127b6:	e8 55 fa ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  1127bb:	bf 0e 00 00 00       	mov    edi,0xe
  1127c0:	31 c9                	xor    ecx,ecx
  1127c2:	ba 01 00 00 00       	mov    edx,0x1
  1127c7:	89 ce                	mov    esi,ecx
  1127c9:	e8 42 04 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  1127ce:	66 89 85 60 ff ff ff 	mov    WORD PTR [rbp-0xa0],ax
  1127d5:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  1127d9:	89 c1                	mov    ecx,eax
  1127db:	48 8d 3d de a3 50 00 	lea    rdi,[rip+0x50a3de]        # 61cbc0 <idt>
  1127e2:	48 81 c7 10 01 00 00 	add    rdi,0x110
  1127e9:	48 8d 15 e0 d7 ff ff 	lea    rdx,[rip+0xffffffffffffd7e0]        # 10ffd0 <_Z12Interrupt_17P14InterruptFrame>
  1127f0:	0f b7 b5 60 ff ff ff 	movzx  esi,WORD PTR [rbp-0xa0]
  1127f7:	e8 14 fa ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  1127fc:	bf 0e 00 00 00       	mov    edi,0xe
  112801:	31 c9                	xor    ecx,ecx
  112803:	ba 01 00 00 00       	mov    edx,0x1
  112808:	89 ce                	mov    esi,ecx
  11280a:	e8 01 04 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  11280f:	66 89 85 58 ff ff ff 	mov    WORD PTR [rbp-0xa8],ax
  112816:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  11281a:	89 c1                	mov    ecx,eax
  11281c:	48 8d 3d 9d a3 50 00 	lea    rdi,[rip+0x50a39d]        # 61cbc0 <idt>
  112823:	48 81 c7 20 01 00 00 	add    rdi,0x120
  11282a:	48 8d 15 2f d9 ff ff 	lea    rdx,[rip+0xffffffffffffd92f]        # 110160 <_Z12Interrupt_18P14InterruptFrame>
  112831:	0f b7 b5 58 ff ff ff 	movzx  esi,WORD PTR [rbp-0xa8]
  112838:	e8 d3 f9 ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  11283d:	bf 0e 00 00 00       	mov    edi,0xe
  112842:	31 c9                	xor    ecx,ecx
  112844:	ba 01 00 00 00       	mov    edx,0x1
  112849:	89 ce                	mov    esi,ecx
  11284b:	e8 c0 03 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  112850:	66 89 85 50 ff ff ff 	mov    WORD PTR [rbp-0xb0],ax
  112857:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  11285b:	89 c1                	mov    ecx,eax
  11285d:	48 8d 3d 5c a3 50 00 	lea    rdi,[rip+0x50a35c]        # 61cbc0 <idt>
  112864:	48 81 c7 30 01 00 00 	add    rdi,0x130
  11286b:	48 8d 15 7e da ff ff 	lea    rdx,[rip+0xffffffffffffda7e]        # 1102f0 <_Z12Interrupt_19P14InterruptFrame>
  112872:	0f b7 b5 50 ff ff ff 	movzx  esi,WORD PTR [rbp-0xb0]
  112879:	e8 92 f9 ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  11287e:	bf 0e 00 00 00       	mov    edi,0xe
  112883:	31 c9                	xor    ecx,ecx
  112885:	ba 01 00 00 00       	mov    edx,0x1
  11288a:	89 ce                	mov    esi,ecx
  11288c:	e8 7f 03 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  112891:	66 89 85 48 ff ff ff 	mov    WORD PTR [rbp-0xb8],ax
  112898:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  11289c:	89 c1                	mov    ecx,eax
  11289e:	48 8d 3d 1b a3 50 00 	lea    rdi,[rip+0x50a31b]        # 61cbc0 <idt>
  1128a5:	48 81 c7 40 01 00 00 	add    rdi,0x140
  1128ac:	48 8d 15 cd db ff ff 	lea    rdx,[rip+0xffffffffffffdbcd]        # 110480 <_Z12Interrupt_20P14InterruptFrame>
  1128b3:	0f b7 b5 48 ff ff ff 	movzx  esi,WORD PTR [rbp-0xb8]
  1128ba:	e8 51 f9 ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  1128bf:	bf 0e 00 00 00       	mov    edi,0xe
  1128c4:	31 c9                	xor    ecx,ecx
  1128c6:	ba 01 00 00 00       	mov    edx,0x1
  1128cb:	89 ce                	mov    esi,ecx
  1128cd:	e8 3e 03 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  1128d2:	66 89 85 40 ff ff ff 	mov    WORD PTR [rbp-0xc0],ax
  1128d9:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  1128dd:	89 c1                	mov    ecx,eax
  1128df:	48 8d 3d da a2 50 00 	lea    rdi,[rip+0x50a2da]        # 61cbc0 <idt>
  1128e6:	48 81 c7 50 01 00 00 	add    rdi,0x150
  1128ed:	48 8d 15 1c dd ff ff 	lea    rdx,[rip+0xffffffffffffdd1c]        # 110610 <_Z12Interrupt_21P14InterruptFrame>
  1128f4:	0f b7 b5 40 ff ff ff 	movzx  esi,WORD PTR [rbp-0xc0]
  1128fb:	e8 10 f9 ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  112900:	bf 0e 00 00 00       	mov    edi,0xe
  112905:	31 c9                	xor    ecx,ecx
  112907:	ba 01 00 00 00       	mov    edx,0x1
  11290c:	89 ce                	mov    esi,ecx
  11290e:	e8 fd 02 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  112913:	66 89 85 38 ff ff ff 	mov    WORD PTR [rbp-0xc8],ax
  11291a:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  11291e:	89 c1                	mov    ecx,eax
  112920:	48 8d 3d 99 a2 50 00 	lea    rdi,[rip+0x50a299]        # 61cbc0 <idt>
  112927:	48 81 c7 60 01 00 00 	add    rdi,0x160
  11292e:	48 8d 15 6b de ff ff 	lea    rdx,[rip+0xffffffffffffde6b]        # 1107a0 <_Z12Interrupt_22P14InterruptFrame>
  112935:	0f b7 b5 38 ff ff ff 	movzx  esi,WORD PTR [rbp-0xc8]
  11293c:	e8 cf f8 ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  112941:	bf 0e 00 00 00       	mov    edi,0xe
  112946:	31 c9                	xor    ecx,ecx
  112948:	ba 01 00 00 00       	mov    edx,0x1
  11294d:	89 ce                	mov    esi,ecx
  11294f:	e8 bc 02 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  112954:	66 89 85 30 ff ff ff 	mov    WORD PTR [rbp-0xd0],ax
  11295b:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  11295f:	89 c1                	mov    ecx,eax
  112961:	48 8d 3d 58 a2 50 00 	lea    rdi,[rip+0x50a258]        # 61cbc0 <idt>
  112968:	48 81 c7 70 01 00 00 	add    rdi,0x170
  11296f:	48 8d 15 ba df ff ff 	lea    rdx,[rip+0xffffffffffffdfba]        # 110930 <_Z12Interrupt_23P14InterruptFrame>
  112976:	0f b7 b5 30 ff ff ff 	movzx  esi,WORD PTR [rbp-0xd0]
  11297d:	e8 8e f8 ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  112982:	bf 0e 00 00 00       	mov    edi,0xe
  112987:	31 c9                	xor    ecx,ecx
  112989:	ba 01 00 00 00       	mov    edx,0x1
  11298e:	89 ce                	mov    esi,ecx
  112990:	e8 7b 02 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  112995:	66 89 85 28 ff ff ff 	mov    WORD PTR [rbp-0xd8],ax
  11299c:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  1129a0:	89 c1                	mov    ecx,eax
  1129a2:	48 8d 3d 17 a2 50 00 	lea    rdi,[rip+0x50a217]        # 61cbc0 <idt>
  1129a9:	48 81 c7 80 01 00 00 	add    rdi,0x180
  1129b0:	48 8d 15 09 e1 ff ff 	lea    rdx,[rip+0xffffffffffffe109]        # 110ac0 <_Z12Interrupt_24P14InterruptFrame>
  1129b7:	0f b7 b5 28 ff ff ff 	movzx  esi,WORD PTR [rbp-0xd8]
  1129be:	e8 4d f8 ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  1129c3:	bf 0e 00 00 00       	mov    edi,0xe
  1129c8:	31 c9                	xor    ecx,ecx
  1129ca:	ba 01 00 00 00       	mov    edx,0x1
  1129cf:	89 ce                	mov    esi,ecx
  1129d1:	e8 3a 02 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  1129d6:	66 89 85 20 ff ff ff 	mov    WORD PTR [rbp-0xe0],ax
  1129dd:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  1129e1:	89 c1                	mov    ecx,eax
  1129e3:	48 8d 3d d6 a1 50 00 	lea    rdi,[rip+0x50a1d6]        # 61cbc0 <idt>
  1129ea:	48 81 c7 90 01 00 00 	add    rdi,0x190
  1129f1:	48 8d 15 58 e2 ff ff 	lea    rdx,[rip+0xffffffffffffe258]        # 110c50 <_Z12Interrupt_25P14InterruptFrame>
  1129f8:	0f b7 b5 20 ff ff ff 	movzx  esi,WORD PTR [rbp-0xe0]
  1129ff:	e8 0c f8 ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  112a04:	bf 0e 00 00 00       	mov    edi,0xe
  112a09:	31 c9                	xor    ecx,ecx
  112a0b:	ba 01 00 00 00       	mov    edx,0x1
  112a10:	89 ce                	mov    esi,ecx
  112a12:	e8 f9 01 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  112a17:	66 89 85 18 ff ff ff 	mov    WORD PTR [rbp-0xe8],ax
  112a1e:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  112a22:	89 c1                	mov    ecx,eax
  112a24:	48 8d 3d 95 a1 50 00 	lea    rdi,[rip+0x50a195]        # 61cbc0 <idt>
  112a2b:	48 81 c7 a0 01 00 00 	add    rdi,0x1a0
  112a32:	48 8d 15 a7 e3 ff ff 	lea    rdx,[rip+0xffffffffffffe3a7]        # 110de0 <_Z12Interrupt_26P14InterruptFrame>
  112a39:	0f b7 b5 18 ff ff ff 	movzx  esi,WORD PTR [rbp-0xe8]
  112a40:	e8 cb f7 ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  112a45:	bf 0e 00 00 00       	mov    edi,0xe
  112a4a:	31 c9                	xor    ecx,ecx
  112a4c:	ba 01 00 00 00       	mov    edx,0x1
  112a51:	89 ce                	mov    esi,ecx
  112a53:	e8 b8 01 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  112a58:	66 89 85 10 ff ff ff 	mov    WORD PTR [rbp-0xf0],ax
  112a5f:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  112a63:	89 c1                	mov    ecx,eax
  112a65:	48 8d 3d 54 a1 50 00 	lea    rdi,[rip+0x50a154]        # 61cbc0 <idt>
  112a6c:	48 81 c7 b0 01 00 00 	add    rdi,0x1b0
  112a73:	48 8d 15 f6 e4 ff ff 	lea    rdx,[rip+0xffffffffffffe4f6]        # 110f70 <_Z12Interrupt_27P14InterruptFrame>
  112a7a:	0f b7 b5 10 ff ff ff 	movzx  esi,WORD PTR [rbp-0xf0]
  112a81:	e8 8a f7 ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  112a86:	bf 0e 00 00 00       	mov    edi,0xe
  112a8b:	31 c9                	xor    ecx,ecx
  112a8d:	ba 01 00 00 00       	mov    edx,0x1
  112a92:	89 ce                	mov    esi,ecx
  112a94:	e8 77 01 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  112a99:	66 89 85 08 ff ff ff 	mov    WORD PTR [rbp-0xf8],ax
  112aa0:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  112aa4:	89 c1                	mov    ecx,eax
  112aa6:	48 8d 3d 13 a1 50 00 	lea    rdi,[rip+0x50a113]        # 61cbc0 <idt>
  112aad:	48 81 c7 c0 01 00 00 	add    rdi,0x1c0
  112ab4:	48 8d 15 45 e6 ff ff 	lea    rdx,[rip+0xffffffffffffe645]        # 111100 <_Z12Interrupt_28P14InterruptFrame>
  112abb:	0f b7 b5 08 ff ff ff 	movzx  esi,WORD PTR [rbp-0xf8]
  112ac2:	e8 49 f7 ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  112ac7:	bf 0e 00 00 00       	mov    edi,0xe
  112acc:	31 c9                	xor    ecx,ecx
  112ace:	ba 01 00 00 00       	mov    edx,0x1
  112ad3:	89 ce                	mov    esi,ecx
  112ad5:	e8 36 01 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  112ada:	66 89 85 00 ff ff ff 	mov    WORD PTR [rbp-0x100],ax
  112ae1:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  112ae5:	89 c1                	mov    ecx,eax
  112ae7:	48 8d 3d d2 a0 50 00 	lea    rdi,[rip+0x50a0d2]        # 61cbc0 <idt>
  112aee:	48 81 c7 d0 01 00 00 	add    rdi,0x1d0
  112af5:	48 8d 15 94 e7 ff ff 	lea    rdx,[rip+0xffffffffffffe794]        # 111290 <_Z12Interrupt_29P14InterruptFrame>
  112afc:	0f b7 b5 00 ff ff ff 	movzx  esi,WORD PTR [rbp-0x100]
  112b03:	e8 08 f7 ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  112b08:	bf 0e 00 00 00       	mov    edi,0xe
  112b0d:	31 c9                	xor    ecx,ecx
  112b0f:	ba 01 00 00 00       	mov    edx,0x1
  112b14:	89 ce                	mov    esi,ecx
  112b16:	e8 f5 00 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  112b1b:	66 89 85 f8 fe ff ff 	mov    WORD PTR [rbp-0x108],ax
  112b22:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  112b26:	89 c1                	mov    ecx,eax
  112b28:	48 8d 3d 91 a0 50 00 	lea    rdi,[rip+0x50a091]        # 61cbc0 <idt>
  112b2f:	48 81 c7 e0 01 00 00 	add    rdi,0x1e0
  112b36:	48 8d 15 e3 e8 ff ff 	lea    rdx,[rip+0xffffffffffffe8e3]        # 111420 <_Z12Interrupt_30P14InterruptFrame>
  112b3d:	0f b7 b5 f8 fe ff ff 	movzx  esi,WORD PTR [rbp-0x108]
  112b44:	e8 c7 f6 ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  112b49:	bf 0e 00 00 00       	mov    edi,0xe
  112b4e:	31 c9                	xor    ecx,ecx
  112b50:	ba 01 00 00 00       	mov    edx,0x1
  112b55:	89 ce                	mov    esi,ecx
  112b57:	e8 b4 00 00 00       	call   112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>
  112b5c:	66 89 85 f0 fe ff ff 	mov    WORD PTR [rbp-0x110],ax
  112b63:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  112b67:	89 c1                	mov    ecx,eax
  112b69:	48 8d 3d 50 a0 50 00 	lea    rdi,[rip+0x50a050]        # 61cbc0 <idt>
  112b70:	48 81 c7 f0 01 00 00 	add    rdi,0x1f0
  112b77:	48 8d 15 32 ea ff ff 	lea    rdx,[rip+0xffffffffffffea32]        # 1115b0 <_Z12Interrupt_31P14InterruptFrame>
  112b7e:	0f b7 b5 f0 fe ff ff 	movzx  esi,WORD PTR [rbp-0x110]
  112b85:	e8 86 f6 ff ff       	call   112210 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  112b8a:	bf ff 0f 00 00       	mov    edi,0xfff
  112b8f:	48 8d 35 2a a0 50 00 	lea    rsi,[rip+0x50a02a]        # 61cbc0 <idt>
  112b96:	e8 ac b1 ff ff       	call   10dd47 <LoadIDT>
  112b9b:	48 81 c4 20 01 00 00 	add    rsp,0x120
  112ba2:	5d                   	pop    rbp
  112ba3:	c3                   	ret
  112ba4:	cc                   	int3
  112ba5:	cc                   	int3
  112ba6:	cc                   	int3
  112ba7:	cc                   	int3
  112ba8:	cc                   	int3
  112ba9:	cc                   	int3
  112baa:	cc                   	int3
  112bab:	cc                   	int3
  112bac:	cc                   	int3
  112bad:	cc                   	int3
  112bae:	cc                   	int3
  112baf:	cc                   	int3

0000000000112bb0 <_Z10isAlphabetc>:
  112bb0:	55                   	push   rbp
  112bb1:	48 89 e5             	mov    rbp,rsp
  112bb4:	48 83 ec 03          	sub    rsp,0x3
  112bb8:	40 88 f8             	mov    al,dil
  112bbb:	88 45 ff             	mov    BYTE PTR [rbp-0x1],al
  112bbe:	0f be 45 ff          	movsx  eax,BYTE PTR [rbp-0x1]
  112bc2:	83 f8 61             	cmp    eax,0x61
  112bc5:	0f 8c 12 00 00 00    	jl     112bdd <_Z10isAlphabetc+0x2d>
  112bcb:	0f be 4d ff          	movsx  ecx,BYTE PTR [rbp-0x1]
  112bcf:	b0 01                	mov    al,0x1
  112bd1:	83 f9 7a             	cmp    ecx,0x7a
  112bd4:	88 45 fe             	mov    BYTE PTR [rbp-0x2],al
  112bd7:	0f 8e 25 00 00 00    	jle    112c02 <_Z10isAlphabetc+0x52>
  112bdd:	0f be 4d ff          	movsx  ecx,BYTE PTR [rbp-0x1]
  112be1:	31 c0                	xor    eax,eax
  112be3:	83 f9 41             	cmp    ecx,0x41
  112be6:	88 45 fd             	mov    BYTE PTR [rbp-0x3],al
  112be9:	0f 8f 0d 00 00 00    	jg     112bfc <_Z10isAlphabetc+0x4c>
  112bef:	0f be 45 ff          	movsx  eax,BYTE PTR [rbp-0x1]
  112bf3:	83 f8 5a             	cmp    eax,0x5a
  112bf6:	0f 9d c0             	setge  al
  112bf9:	88 45 fd             	mov    BYTE PTR [rbp-0x3],al
  112bfc:	8a 45 fd             	mov    al,BYTE PTR [rbp-0x3]
  112bff:	88 45 fe             	mov    BYTE PTR [rbp-0x2],al
  112c02:	8a 45 fe             	mov    al,BYTE PTR [rbp-0x2]
  112c05:	24 01                	and    al,0x1
  112c07:	0f b6 c0             	movzx  eax,al
  112c0a:	48 83 c4 03          	add    rsp,0x3
  112c0e:	5d                   	pop    rbp
  112c0f:	c3                   	ret

0000000000112c10 <_Z11MakeIDTAttr14DescriptorTypehbh>:
  112c10:	55                   	push   rbp
  112c11:	48 89 e5             	mov    rbp,rsp
  112c14:	48 83 ec 10          	sub    rsp,0x10
  112c18:	88 c8                	mov    al,cl
  112c1a:	88 d1                	mov    cl,dl
  112c1c:	40 88 f2             	mov    dl,sil
  112c1f:	89 7d f4             	mov    DWORD PTR [rbp-0xc],edi
  112c22:	88 55 f3             	mov    BYTE PTR [rbp-0xd],dl
  112c25:	80 e1 01             	and    cl,0x1
  112c28:	88 4d f2             	mov    BYTE PTR [rbp-0xe],cl
  112c2b:	88 45 f1             	mov    BYTE PTR [rbp-0xf],al
  112c2e:	48 8d 7d f8          	lea    rdi,[rbp-0x8]
  112c32:	31 f6                	xor    esi,esi
  112c34:	ba 02 00 00 00       	mov    edx,0x2
  112c39:	e8 02 ae ff ff       	call   10da40 <memset>
  112c3e:	0f b6 45 f1          	movzx  eax,BYTE PTR [rbp-0xf]
  112c42:	66 89 c1             	mov    cx,ax
  112c45:	66 8b 45 f8          	mov    ax,WORD PTR [rbp-0x8]
  112c49:	66 83 e1 07          	and    cx,0x7
  112c4d:	66 83 e0 f8          	and    ax,0xfff8
  112c51:	66 09 c8             	or     ax,cx
  112c54:	66 89 45 f8          	mov    WORD PTR [rbp-0x8],ax
  112c58:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  112c5b:	66 89 c1             	mov    cx,ax
  112c5e:	66 8b 45 f8          	mov    ax,WORD PTR [rbp-0x8]
  112c62:	66 83 e1 0f          	and    cx,0xf
  112c66:	66 c1 e1 08          	shl    cx,0x8
  112c6a:	66 25 ff f0          	and    ax,0xf0ff
  112c6e:	66 09 c8             	or     ax,cx
  112c71:	66 89 45 f8          	mov    WORD PTR [rbp-0x8],ax
  112c75:	0f b6 45 f3          	movzx  eax,BYTE PTR [rbp-0xd]
  112c79:	66 89 c1             	mov    cx,ax
  112c7c:	66 8b 45 f8          	mov    ax,WORD PTR [rbp-0x8]
  112c80:	66 83 e1 03          	and    cx,0x3
  112c84:	66 c1 e1 0d          	shl    cx,0xd
  112c88:	66 25 ff 9f          	and    ax,0x9fff
  112c8c:	66 09 c8             	or     ax,cx
  112c8f:	66 89 45 f8          	mov    WORD PTR [rbp-0x8],ax
  112c93:	8a 45 f2             	mov    al,BYTE PTR [rbp-0xe]
  112c96:	24 01                	and    al,0x1
  112c98:	0f b6 c0             	movzx  eax,al
  112c9b:	66 89 c1             	mov    cx,ax
  112c9e:	66 8b 45 f8          	mov    ax,WORD PTR [rbp-0x8]
  112ca2:	66 83 e1 01          	and    cx,0x1
  112ca6:	66 c1 e1 0f          	shl    cx,0xf
  112caa:	66 25 ff 7f          	and    ax,0x7fff
  112cae:	66 09 c8             	or     ax,cx
  112cb1:	66 89 45 f8          	mov    WORD PTR [rbp-0x8],ax
  112cb5:	66 8b 45 f8          	mov    ax,WORD PTR [rbp-0x8]
  112cb9:	48 83 c4 10          	add    rsp,0x10
  112cbd:	5d                   	pop    rbp
  112cbe:	c3                   	ret
  112cbf:	cc                   	int3

0000000000112cc0 <_Z22SetupIdentityPageTablev>:
  112cc0:	55                   	push   rbp
  112cc1:	48 89 e5             	mov    rbp,rsp
  112cc4:	48 83 ec 30          	sub    rsp,0x30
  112cc8:	48 8d 3d 31 b3 50 00 	lea    rdi,[rip+0x50b331]        # 61e000 <_ZN12_GLOBAL__N_19pdp_tableE>
  112ccf:	31 c0                	xor    eax,eax
  112cd1:	89 c6                	mov    esi,eax
  112cd3:	e8 08 01 00 00       	call   112de0 <_ZNSt3__15arrayImLm512EEixEm>
  112cd8:	48 83 c8 03          	or     rax,0x3
  112cdc:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  112ce0:	48 8d 3d 19 c3 50 00 	lea    rdi,[rip+0x50c319]        # 61f000 <_ZN12_GLOBAL__N_110pml4_tableE>
  112ce7:	31 c0                	xor    eax,eax
  112ce9:	89 c6                	mov    esi,eax
  112ceb:	e8 f0 00 00 00       	call   112de0 <_ZNSt3__15arrayImLm512EEixEm>
  112cf0:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  112cf4:	48 89 08             	mov    QWORD PTR [rax],rcx
  112cf7:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  112cfe:	48 63 45 fc          	movsxd rax,DWORD PTR [rbp-0x4]
  112d02:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  112d06:	48 8d 3d f3 d2 50 00 	lea    rdi,[rip+0x50d2f3]        # 620000 <_ZN12_GLOBAL__N_114page_directoryE>
  112d0d:	e8 fe 00 00 00       	call   112e10 <_ZNKSt3__15arrayINS0_ImLm512EEELm64EE4sizeEv>
  112d12:	48 89 c1             	mov    rcx,rax
  112d15:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  112d19:	48 39 c8             	cmp    rax,rcx
  112d1c:	0f 83 a4 00 00 00    	jae    112dc6 <_Z22SetupIdentityPageTablev+0x106>
  112d22:	48 63 75 fc          	movsxd rsi,DWORD PTR [rbp-0x4]
  112d26:	48 8d 3d d3 d2 50 00 	lea    rdi,[rip+0x50d2d3]        # 620000 <_ZN12_GLOBAL__N_114page_directoryE>
  112d2d:	e8 fe 00 00 00       	call   112e30 <_ZNSt3__15arrayINS0_ImLm512EEELm64EEixEm>
  112d32:	48 83 c8 03          	or     rax,0x3
  112d36:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  112d3a:	48 63 75 fc          	movsxd rsi,DWORD PTR [rbp-0x4]
  112d3e:	48 8d 3d bb b2 50 00 	lea    rdi,[rip+0x50b2bb]        # 61e000 <_ZN12_GLOBAL__N_19pdp_tableE>
  112d45:	e8 96 00 00 00       	call   112de0 <_ZNSt3__15arrayImLm512EEixEm>
  112d4a:	48 8b 4d e0          	mov    rcx,QWORD PTR [rbp-0x20]
  112d4e:	48 89 08             	mov    QWORD PTR [rax],rcx
  112d51:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
  112d58:	81 7d f8 00 02 00 00 	cmp    DWORD PTR [rbp-0x8],0x200
  112d5f:	0f 8d 4e 00 00 00    	jge    112db3 <_Z22SetupIdentityPageTablev+0xf3>
  112d65:	48 63 45 fc          	movsxd rax,DWORD PTR [rbp-0x4]
  112d69:	48 c1 e0 1e          	shl    rax,0x1e
  112d6d:	48 63 4d f8          	movsxd rcx,DWORD PTR [rbp-0x8]
  112d71:	48 c1 e1 15          	shl    rcx,0x15
  112d75:	48 01 c8             	add    rax,rcx
  112d78:	48 0d 83 00 00 00    	or     rax,0x83
  112d7e:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
  112d82:	48 63 75 fc          	movsxd rsi,DWORD PTR [rbp-0x4]
  112d86:	48 8d 3d 73 d2 50 00 	lea    rdi,[rip+0x50d273]        # 620000 <_ZN12_GLOBAL__N_114page_directoryE>
  112d8d:	e8 9e 00 00 00       	call   112e30 <_ZNSt3__15arrayINS0_ImLm512EEELm64EEixEm>
  112d92:	48 89 c7             	mov    rdi,rax
  112d95:	48 63 75 f8          	movsxd rsi,DWORD PTR [rbp-0x8]
  112d99:	e8 42 00 00 00       	call   112de0 <_ZNSt3__15arrayImLm512EEixEm>
  112d9e:	48 8b 4d d8          	mov    rcx,QWORD PTR [rbp-0x28]
  112da2:	48 89 08             	mov    QWORD PTR [rax],rcx
  112da5:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  112da8:	83 c0 01             	add    eax,0x1
  112dab:	89 45 f8             	mov    DWORD PTR [rbp-0x8],eax
  112dae:	e9 a5 ff ff ff       	jmp    112d58 <_Z22SetupIdentityPageTablev+0x98>
  112db3:	e9 00 00 00 00       	jmp    112db8 <_Z22SetupIdentityPageTablev+0xf8>
  112db8:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  112dbb:	83 c0 01             	add    eax,0x1
  112dbe:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  112dc1:	e9 38 ff ff ff       	jmp    112cfe <_Z22SetupIdentityPageTablev+0x3e>
  112dc6:	48 8d 3d 33 c2 50 00 	lea    rdi,[rip+0x50c233]        # 61f000 <_ZN12_GLOBAL__N_110pml4_tableE>
  112dcd:	e8 8f af ff ff       	call   10dd61 <SetCR3>
  112dd2:	48 83 c4 30          	add    rsp,0x30
  112dd6:	5d                   	pop    rbp
  112dd7:	c3                   	ret
  112dd8:	cc                   	int3
  112dd9:	cc                   	int3
  112dda:	cc                   	int3
  112ddb:	cc                   	int3
  112ddc:	cc                   	int3
  112ddd:	cc                   	int3
  112dde:	cc                   	int3
  112ddf:	cc                   	int3

0000000000112de0 <_ZNSt3__15arrayImLm512EEixEm>:
  112de0:	55                   	push   rbp
  112de1:	48 89 e5             	mov    rbp,rsp
  112de4:	48 83 ec 10          	sub    rsp,0x10
  112de8:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  112dec:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  112df0:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  112df4:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  112df8:	48 c1 e1 03          	shl    rcx,0x3
  112dfc:	48 01 c8             	add    rax,rcx
  112dff:	48 83 c4 10          	add    rsp,0x10
  112e03:	5d                   	pop    rbp
  112e04:	c3                   	ret
  112e05:	cc                   	int3
  112e06:	cc                   	int3
  112e07:	cc                   	int3
  112e08:	cc                   	int3
  112e09:	cc                   	int3
  112e0a:	cc                   	int3
  112e0b:	cc                   	int3
  112e0c:	cc                   	int3
  112e0d:	cc                   	int3
  112e0e:	cc                   	int3
  112e0f:	cc                   	int3

0000000000112e10 <_ZNKSt3__15arrayINS0_ImLm512EEELm64EE4sizeEv>:
  112e10:	55                   	push   rbp
  112e11:	48 89 e5             	mov    rbp,rsp
  112e14:	50                   	push   rax
  112e15:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  112e19:	b8 40 00 00 00       	mov    eax,0x40
  112e1e:	48 83 c4 08          	add    rsp,0x8
  112e22:	5d                   	pop    rbp
  112e23:	c3                   	ret
  112e24:	cc                   	int3
  112e25:	cc                   	int3
  112e26:	cc                   	int3
  112e27:	cc                   	int3
  112e28:	cc                   	int3
  112e29:	cc                   	int3
  112e2a:	cc                   	int3
  112e2b:	cc                   	int3
  112e2c:	cc                   	int3
  112e2d:	cc                   	int3
  112e2e:	cc                   	int3
  112e2f:	cc                   	int3

0000000000112e30 <_ZNSt3__15arrayINS0_ImLm512EEELm64EEixEm>:
  112e30:	55                   	push   rbp
  112e31:	48 89 e5             	mov    rbp,rsp
  112e34:	48 83 ec 10          	sub    rsp,0x10
  112e38:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  112e3c:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  112e40:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  112e44:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  112e48:	48 c1 e1 0c          	shl    rcx,0xc
  112e4c:	48 01 c8             	add    rax,rcx
  112e4f:	48 83 c4 10          	add    rsp,0x10
  112e53:	5d                   	pop    rbp
  112e54:	c3                   	ret
  112e55:	cc                   	int3
  112e56:	cc                   	int3
  112e57:	cc                   	int3
  112e58:	cc                   	int3
  112e59:	cc                   	int3
  112e5a:	cc                   	int3
  112e5b:	cc                   	int3
  112e5c:	cc                   	int3
  112e5d:	cc                   	int3
  112e5e:	cc                   	int3
  112e5f:	cc                   	int3

0000000000112e60 <_Z17InitializeKeycodev>:
  112e60:	55                   	push   rbp
  112e61:	48 89 e5             	mov    rbp,rsp
  112e64:	48 83 ec 04          	sub    rsp,0x4
  112e68:	c7 45 fc 36 00 00 00 	mov    DWORD PTR [rbp-0x4],0x36
  112e6f:	81 7d fc 00 01 00 00 	cmp    DWORD PTR [rbp-0x4],0x100
  112e76:	0f 8d 1d 00 00 00    	jge    112e99 <_Z17InitializeKeycodev+0x39>
  112e7c:	48 63 4d fc          	movsxd rcx,DWORD PTR [rbp-0x4]
  112e80:	48 8d 05 49 3f 00 00 	lea    rax,[rip+0x3f49]        # 116dd0 <keycode>
  112e87:	c6 04 08 00          	mov    BYTE PTR [rax+rcx*1],0x0
  112e8b:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  112e8e:	83 c0 01             	add    eax,0x1
  112e91:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  112e94:	e9 d6 ff ff ff       	jmp    112e6f <_Z17InitializeKeycodev+0xf>
  112e99:	c6 05 5b 3f 00 00 5d 	mov    BYTE PTR [rip+0x3f5b],0x5d        # 116dfb <keycode+0x2b>
  112ea0:	c6 05 45 3f 00 00 0a 	mov    BYTE PTR [rip+0x3f45],0xa        # 116dec <keycode+0x1c>
  112ea7:	c6 05 5b 3f 00 00 20 	mov    BYTE PTR [rip+0x3f5b],0x20        # 116e09 <keycode+0x39>
  112eae:	c6 05 8e 3f 00 00 5c 	mov    BYTE PTR [rip+0x3f8e],0x5c        # 116e43 <keycode+0x73>
  112eb5:	c6 05 91 3f 00 00 5c 	mov    BYTE PTR [rip+0x3f91],0x5c        # 116e4d <keycode+0x7d>
  112ebc:	48 83 c4 04          	add    rsp,0x4
  112ec0:	5d                   	pop    rbp
  112ec1:	c3                   	ret
  112ec2:	cc                   	int3
  112ec3:	cc                   	int3
  112ec4:	cc                   	int3
  112ec5:	cc                   	int3
  112ec6:	cc                   	int3
  112ec7:	cc                   	int3
  112ec8:	cc                   	int3
  112ec9:	cc                   	int3
  112eca:	cc                   	int3
  112ecb:	cc                   	int3
  112ecc:	cc                   	int3
  112ecd:	cc                   	int3
  112ece:	cc                   	int3
  112ecf:	cc                   	int3

0000000000112ed0 <_ZN11InputBuffer3addEc>:
  112ed0:	55                   	push   rbp
  112ed1:	48 89 e5             	mov    rbp,rsp
  112ed4:	48 83 ec 20          	sub    rsp,0x20
  112ed8:	40 88 f0             	mov    al,sil
  112edb:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  112edf:	88 45 ef             	mov    BYTE PTR [rbp-0x11],al
  112ee2:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  112ee6:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  112eea:	0f be 45 ef          	movsx  eax,BYTE PTR [rbp-0x11]
  112eee:	83 f8 08             	cmp    eax,0x8
  112ef1:	0f 85 8b 00 00 00    	jne    112f82 <_ZN11InputBuffer3addEc+0xb2>
  112ef7:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  112efb:	83 b8 fc 03 00 00 00 	cmp    DWORD PTR [rax+0x3fc],0x0
  112f02:	0f 8e 7a 00 00 00    	jle    112f82 <_ZN11InputBuffer3addEc+0xb2>
  112f08:	48 8b 4d e0          	mov    rcx,QWORD PTR [rbp-0x20]
  112f0c:	8b 81 f0 03 00 00    	mov    eax,DWORD PTR [rcx+0x3f0]
  112f12:	3b 81 f4 03 00 00    	cmp    eax,DWORD PTR [rcx+0x3f4]
  112f18:	0f 85 1f 00 00 00    	jne    112f3d <_ZN11InputBuffer3addEc+0x6d>
  112f1e:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  112f22:	8b 80 f0 03 00 00    	mov    eax,DWORD PTR [rax+0x3f0]
  112f28:	83 e8 01             	sub    eax,0x1
  112f2b:	b9 e8 03 00 00       	mov    ecx,0x3e8
  112f30:	99                   	cdq
  112f31:	f7 f9                	idiv   ecx
  112f33:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  112f37:	89 90 f0 03 00 00    	mov    DWORD PTR [rax+0x3f0],edx
  112f3d:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  112f41:	8b 80 f4 03 00 00    	mov    eax,DWORD PTR [rax+0x3f4]
  112f47:	83 e8 01             	sub    eax,0x1
  112f4a:	b9 e8 03 00 00       	mov    ecx,0x3e8
  112f4f:	99                   	cdq
  112f50:	f7 f9                	idiv   ecx
  112f52:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  112f56:	89 90 f4 03 00 00    	mov    DWORD PTR [rax+0x3f4],edx
  112f5c:	48 63 88 f4 03 00 00 	movsxd rcx,DWORD PTR [rax+0x3f4]
  112f63:	c6 04 08 00          	mov    BYTE PTR [rax+rcx*1],0x0
  112f67:	8b 88 fc 03 00 00    	mov    ecx,DWORD PTR [rax+0x3fc]
  112f6d:	83 c1 ff             	add    ecx,0xffffffff
  112f70:	89 88 fc 03 00 00    	mov    DWORD PTR [rax+0x3fc],ecx
  112f76:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  112f7d:	e9 8d 00 00 00       	jmp    11300f <_ZN11InputBuffer3addEc+0x13f>
  112f82:	0f be 45 ef          	movsx  eax,BYTE PTR [rbp-0x11]
  112f86:	83 f8 08             	cmp    eax,0x8
  112f89:	0f 85 1d 00 00 00    	jne    112fac <_ZN11InputBuffer3addEc+0xdc>
  112f8f:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  112f93:	83 b8 fc 03 00 00 00 	cmp    DWORD PTR [rax+0x3fc],0x0
  112f9a:	0f 85 0c 00 00 00    	jne    112fac <_ZN11InputBuffer3addEc+0xdc>
  112fa0:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  112fa7:	e9 63 00 00 00       	jmp    11300f <_ZN11InputBuffer3addEc+0x13f>
  112fac:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  112fb0:	81 b8 fc 03 00 00 e8 	cmp    DWORD PTR [rax+0x3fc],0x3e8
  112fb7:	03 00 00 
  112fba:	0f 8d 47 00 00 00    	jge    113007 <_ZN11InputBuffer3addEc+0x137>
  112fc0:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  112fc4:	8a 55 ef             	mov    dl,BYTE PTR [rbp-0x11]
  112fc7:	48 63 88 f4 03 00 00 	movsxd rcx,DWORD PTR [rax+0x3f4]
  112fce:	88 14 08             	mov    BYTE PTR [rax+rcx*1],dl
  112fd1:	8b 80 f4 03 00 00    	mov    eax,DWORD PTR [rax+0x3f4]
  112fd7:	83 c0 01             	add    eax,0x1
  112fda:	b9 e8 03 00 00       	mov    ecx,0x3e8
  112fdf:	99                   	cdq
  112fe0:	f7 f9                	idiv   ecx
  112fe2:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  112fe6:	89 90 f4 03 00 00    	mov    DWORD PTR [rax+0x3f4],edx
  112fec:	8b 88 fc 03 00 00    	mov    ecx,DWORD PTR [rax+0x3fc]
  112ff2:	83 c1 01             	add    ecx,0x1
  112ff5:	89 88 fc 03 00 00    	mov    DWORD PTR [rax+0x3fc],ecx
  112ffb:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  113002:	e9 08 00 00 00       	jmp    11300f <_ZN11InputBuffer3addEc+0x13f>
  113007:	cc                   	int3
  113008:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [rbp-0x4],0x1
  11300f:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  113012:	48 83 c4 20          	add    rsp,0x20
  113016:	5d                   	pop    rbp
  113017:	c3                   	ret
  113018:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  11301f:	00 

0000000000113020 <_ZN11InputBuffer7isEnterEv>:
  113020:	55                   	push   rbp
  113021:	48 89 e5             	mov    rbp,rsp
  113024:	48 83 ec 20          	sub    rsp,0x20
  113028:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  11302c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  113030:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  113034:	8b 80 ec 03 00 00    	mov    eax,DWORD PTR [rax+0x3ec]
  11303a:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
  11303d:	48 8b 4d e0          	mov    rcx,QWORD PTR [rbp-0x20]
  113041:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  113044:	3b 81 f4 03 00 00    	cmp    eax,DWORD PTR [rcx+0x3f4]
  11304a:	0f 84 34 00 00 00    	je     113084 <_ZN11InputBuffer7isEnterEv+0x64>
  113050:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  113054:	48 63 4d ec          	movsxd rcx,DWORD PTR [rbp-0x14]
  113058:	0f be 04 08          	movsx  eax,BYTE PTR [rax+rcx*1]
  11305c:	83 f8 0a             	cmp    eax,0xa
  11305f:	0f 85 09 00 00 00    	jne    11306e <_ZN11InputBuffer7isEnterEv+0x4e>
  113065:	c6 45 ff 01          	mov    BYTE PTR [rbp-0x1],0x1
  113069:	e9 1a 00 00 00       	jmp    113088 <_ZN11InputBuffer7isEnterEv+0x68>
  11306e:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  113071:	83 c0 01             	add    eax,0x1
  113074:	b9 e8 03 00 00       	mov    ecx,0x3e8
  113079:	99                   	cdq
  11307a:	f7 f9                	idiv   ecx
  11307c:	89 55 ec             	mov    DWORD PTR [rbp-0x14],edx
  11307f:	e9 b9 ff ff ff       	jmp    11303d <_ZN11InputBuffer7isEnterEv+0x1d>
  113084:	c6 45 ff 00          	mov    BYTE PTR [rbp-0x1],0x0
  113088:	8a 45 ff             	mov    al,BYTE PTR [rbp-0x1]
  11308b:	24 01                	and    al,0x1
  11308d:	0f b6 c0             	movzx  eax,al
  113090:	48 83 c4 20          	add    rsp,0x20
  113094:	5d                   	pop    rbp
  113095:	c3                   	ret
  113096:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  11309d:	00 00 00 

00000000001130a0 <_ZN11InputBuffer3popEv>:
  1130a0:	55                   	push   rbp
  1130a1:	48 89 e5             	mov    rbp,rsp
  1130a4:	48 83 ec 18          	sub    rsp,0x18
  1130a8:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  1130ac:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  1130b0:	48 89 4d e8          	mov    QWORD PTR [rbp-0x18],rcx
  1130b4:	8b 81 f0 03 00 00    	mov    eax,DWORD PTR [rcx+0x3f0]
  1130ba:	3b 81 f4 03 00 00    	cmp    eax,DWORD PTR [rcx+0x3f4]
  1130c0:	0f 84 42 00 00 00    	je     113108 <_ZN11InputBuffer3popEv+0x68>
  1130c6:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  1130ca:	8b 80 f0 03 00 00    	mov    eax,DWORD PTR [rax+0x3f0]
  1130d0:	83 c0 01             	add    eax,0x1
  1130d3:	b9 e8 03 00 00       	mov    ecx,0x3e8
  1130d8:	99                   	cdq
  1130d9:	f7 f9                	idiv   ecx
  1130db:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  1130df:	89 90 f0 03 00 00    	mov    DWORD PTR [rax+0x3f0],edx
  1130e5:	8b 80 f0 03 00 00    	mov    eax,DWORD PTR [rax+0x3f0]
  1130eb:	83 e8 01             	sub    eax,0x1
  1130ee:	b9 e8 03 00 00       	mov    ecx,0x3e8
  1130f3:	99                   	cdq
  1130f4:	f7 f9                	idiv   ecx
  1130f6:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  1130fa:	48 63 ca             	movsxd rcx,edx
  1130fd:	8a 04 08             	mov    al,BYTE PTR [rax+rcx*1]
  113100:	88 45 ff             	mov    BYTE PTR [rbp-0x1],al
  113103:	e9 04 00 00 00       	jmp    11310c <_ZN11InputBuffer3popEv+0x6c>
  113108:	c6 45 ff 00          	mov    BYTE PTR [rbp-0x1],0x0
  11310c:	0f be 45 ff          	movsx  eax,BYTE PTR [rbp-0x1]
  113110:	48 83 c4 18          	add    rsp,0x18
  113114:	5d                   	pop    rbp
  113115:	c3                   	ret
  113116:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  11311d:	00 00 00 

0000000000113120 <_ZN11InputBuffer8allprintEv>:
  113120:	55                   	push   rbp
  113121:	48 89 e5             	mov    rbp,rsp
  113124:	48 83 ec 10          	sub    rsp,0x10
  113128:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  11312c:	48 8b 75 f8          	mov    rsi,QWORD PTR [rbp-0x8]
  113130:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  113134:	48 63 86 f0 03 00 00 	movsxd rax,DWORD PTR [rsi+0x3f0]
  11313b:	48 01 c6             	add    rsi,rax
  11313e:	48 8d 3d f0 d1 fe ff 	lea    rdi,[rip+0xfffffffffffed1f0]        # 100335 <_svfprintf_r.blanks-0x7ab>
  113145:	b0 00                	mov    al,0x0
  113147:	e8 74 23 ff ff       	call   1054c0 <Printf>
  11314c:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  113150:	8b 81 f0 03 00 00    	mov    eax,DWORD PTR [rcx+0x3f0]
  113156:	3b 81 f4 03 00 00    	cmp    eax,DWORD PTR [rcx+0x3f4]
  11315c:	0f 8e 12 00 00 00    	jle    113174 <_ZN11InputBuffer8allprintEv+0x54>
  113162:	48 8b 75 f0          	mov    rsi,QWORD PTR [rbp-0x10]
  113166:	48 8d 3d c8 d1 fe ff 	lea    rdi,[rip+0xfffffffffffed1c8]        # 100335 <_svfprintf_r.blanks-0x7ab>
  11316d:	b0 00                	mov    al,0x0
  11316f:	e8 4c 23 ff ff       	call   1054c0 <Printf>
  113174:	48 83 c4 10          	add    rsp,0x10
  113178:	5d                   	pop    rbp
  113179:	c3                   	ret
  11317a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000113180 <_ZN11InputBuffer6allpopEPc>:
  113180:	55                   	push   rbp
  113181:	48 89 e5             	mov    rbp,rsp
  113184:	48 83 ec 20          	sub    rsp,0x20
  113188:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  11318c:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  113190:	48 8b 75 f8          	mov    rsi,QWORD PTR [rbp-0x8]
  113194:	48 89 75 e8          	mov    QWORD PTR [rbp-0x18],rsi
  113198:	8b 86 f4 03 00 00    	mov    eax,DWORD PTR [rsi+0x3f4]
  11319e:	83 e8 01             	sub    eax,0x1
  1131a1:	b9 e8 03 00 00       	mov    ecx,0x3e8
  1131a6:	99                   	cdq
  1131a7:	f7 f9                	idiv   ecx
  1131a9:	48 63 c2             	movsxd rax,edx
  1131ac:	c6 04 06 00          	mov    BYTE PTR [rsi+rax*1],0x0
  1131b0:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  1131b4:	48 63 86 ec 03 00 00 	movsxd rax,DWORD PTR [rsi+0x3ec]
  1131bb:	48 01 c6             	add    rsi,rax
  1131be:	e8 1d 28 ff ff       	call   1059e0 <strcpy>
  1131c3:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
  1131c7:	8b 81 f4 03 00 00    	mov    eax,DWORD PTR [rcx+0x3f4]
  1131cd:	3b 81 ec 03 00 00    	cmp    eax,DWORD PTR [rcx+0x3ec]
  1131d3:	0f 8d 0d 00 00 00    	jge    1131e6 <_ZN11InputBuffer6allpopEPc+0x66>
  1131d9:	48 8b 75 e8          	mov    rsi,QWORD PTR [rbp-0x18]
  1131dd:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  1131e1:	e8 8a 28 ff ff       	call   105a70 <strcat>
  1131e6:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  1131ea:	8b 88 f4 03 00 00    	mov    ecx,DWORD PTR [rax+0x3f4]
  1131f0:	89 88 ec 03 00 00    	mov    DWORD PTR [rax+0x3ec],ecx
  1131f6:	8b 88 f4 03 00 00    	mov    ecx,DWORD PTR [rax+0x3f4]
  1131fc:	89 88 f0 03 00 00    	mov    DWORD PTR [rax+0x3f0],ecx
  113202:	c7 80 fc 03 00 00 00 	mov    DWORD PTR [rax+0x3fc],0x0
  113209:	00 00 00 
  11320c:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  113210:	e8 cb 28 ff ff       	call   105ae0 <strlen>
  113215:	48 83 c4 20          	add    rsp,0x20
  113219:	5d                   	pop    rbp
  11321a:	c3                   	ret
  11321b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000113220 <_Z9GetStringPc>:
  113220:	55                   	push   rbp
  113221:	48 89 e5             	mov    rbp,rsp
  113224:	48 83 ec 10          	sub    rsp,0x10
  113228:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  11322c:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
  113233:	48 8d 3d d6 3d 10 00 	lea    rdi,[rip+0x103dd6]        # 217010 <Input_Buffer>
  11323a:	e8 71 00 00 00       	call   1132b0 <_ZN11InputBuffer7isInputEv>
  11323f:	a8 01                	test   al,0x1
  113241:	0f 85 05 00 00 00    	jne    11324c <_Z9GetStringPc+0x2c>
  113247:	e9 1d 00 00 00       	jmp    113269 <_Z9GetStringPc+0x49>
  11324c:	48 8d 3d bd 3d 10 00 	lea    rdi,[rip+0x103dbd]        # 217010 <Input_Buffer>
  113253:	e8 48 fe ff ff       	call   1130a0 <_ZN11InputBuffer3popEv>
  113258:	0f be f0             	movsx  esi,al
  11325b:	48 8d 3d 94 d1 fe ff 	lea    rdi,[rip+0xfffffffffffed194]        # 1003f6 <_svfprintf_r.blanks-0x6ea>
  113262:	b0 00                	mov    al,0x0
  113264:	e8 57 22 ff ff       	call   1054c0 <Printf>
  113269:	48 8d 3d a0 3d 10 00 	lea    rdi,[rip+0x103da0]        # 217010 <Input_Buffer>
  113270:	e8 ab fd ff ff       	call   113020 <_ZN11InputBuffer7isEnterEv>
  113275:	a8 01                	test   al,0x1
  113277:	0f 85 05 00 00 00    	jne    113282 <_Z9GetStringPc+0x62>
  11327d:	e9 22 00 00 00       	jmp    1132a4 <_Z9GetStringPc+0x84>
  113282:	48 8d 3d 87 3d 10 00 	lea    rdi,[rip+0x103d87]        # 217010 <Input_Buffer>
  113289:	e8 92 fe ff ff       	call   113120 <_ZN11InputBuffer8allprintEv>
  11328e:	48 8b 75 f8          	mov    rsi,QWORD PTR [rbp-0x8]
  113292:	48 8d 3d 77 3d 10 00 	lea    rdi,[rip+0x103d77]        # 217010 <Input_Buffer>
  113299:	e8 e2 fe ff ff       	call   113180 <_ZN11InputBuffer6allpopEPc>
  11329e:	48 83 c4 10          	add    rsp,0x10
  1132a2:	5d                   	pop    rbp
  1132a3:	c3                   	ret
  1132a4:	e9 8a ff ff ff       	jmp    113233 <_Z9GetStringPc+0x13>
  1132a9:	cc                   	int3
  1132aa:	cc                   	int3
  1132ab:	cc                   	int3
  1132ac:	cc                   	int3
  1132ad:	cc                   	int3
  1132ae:	cc                   	int3
  1132af:	cc                   	int3

00000000001132b0 <_ZN11InputBuffer7isInputEv>:
  1132b0:	55                   	push   rbp
  1132b1:	48 89 e5             	mov    rbp,rsp
  1132b4:	50                   	push   rax
  1132b5:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  1132b9:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
  1132bd:	8b 81 f0 03 00 00    	mov    eax,DWORD PTR [rcx+0x3f0]
  1132c3:	3b 81 f4 03 00 00    	cmp    eax,DWORD PTR [rcx+0x3f4]
  1132c9:	0f 95 c0             	setne  al
  1132cc:	24 01                	and    al,0x1
  1132ce:	0f b6 c0             	movzx  eax,al
  1132d1:	48 83 c4 08          	add    rsp,0x8
  1132d5:	5d                   	pop    rbp
  1132d6:	c3                   	ret
  1132d7:	cc                   	int3
  1132d8:	cc                   	int3
  1132d9:	cc                   	int3
  1132da:	cc                   	int3
  1132db:	cc                   	int3
  1132dc:	cc                   	int3
  1132dd:	cc                   	int3
  1132de:	cc                   	int3
  1132df:	cc                   	int3

00000000001132e0 <_Z8tokenizePc>:
  1132e0:	55                   	push   rbp
  1132e1:	48 89 e5             	mov    rbp,rsp
  1132e4:	48 83 ec 30          	sub    rsp,0x30
  1132e8:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  1132ec:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
  1132f0:	e8 eb 27 ff ff       	call   105ae0 <strlen>
  1132f5:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
  1132f8:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [rbp-0x10],0x0
  1132ff:	c7 45 ec 01 00 00 00 	mov    DWORD PTR [rbp-0x14],0x1
  113306:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  113309:	3b 45 f4             	cmp    eax,DWORD PTR [rbp-0xc]
  11330c:	0f 8d 97 00 00 00    	jge    1133a9 <_Z8tokenizePc+0xc9>
  113312:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  113316:	48 63 4d f0          	movsxd rcx,DWORD PTR [rbp-0x10]
  11331a:	0f be 04 08          	movsx  eax,BYTE PTR [rax+rcx*1]
  11331e:	83 f8 20             	cmp    eax,0x20
  113321:	0f 85 74 00 00 00    	jne    11339b <_Z8tokenizePc+0xbb>
  113327:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  11332b:	8b 4d f0             	mov    ecx,DWORD PTR [rbp-0x10]
  11332e:	89 ca                	mov    edx,ecx
  113330:	83 c2 01             	add    edx,0x1
  113333:	89 55 f0             	mov    DWORD PTR [rbp-0x10],edx
  113336:	48 63 c9             	movsxd rcx,ecx
  113339:	c6 04 08 00          	mov    BYTE PTR [rax+rcx*1],0x0
  11333d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  113341:	48 63 4d f0          	movsxd rcx,DWORD PTR [rbp-0x10]
  113345:	0f be 0c 08          	movsx  ecx,BYTE PTR [rax+rcx*1]
  113349:	31 c0                	xor    eax,eax
  11334b:	83 f9 20             	cmp    ecx,0x20
  11334e:	88 45 df             	mov    BYTE PTR [rbp-0x21],al
  113351:	0f 85 0c 00 00 00    	jne    113363 <_Z8tokenizePc+0x83>
  113357:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  11335a:	3b 45 f4             	cmp    eax,DWORD PTR [rbp-0xc]
  11335d:	0f 9c c0             	setl   al
  113360:	88 45 df             	mov    BYTE PTR [rbp-0x21],al
  113363:	8a 45 df             	mov    al,BYTE PTR [rbp-0x21]
  113366:	a8 01                	test   al,0x1
  113368:	0f 85 05 00 00 00    	jne    113373 <_Z8tokenizePc+0x93>
  11336e:	e9 0e 00 00 00       	jmp    113381 <_Z8tokenizePc+0xa1>
  113373:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  113376:	83 c0 01             	add    eax,0x1
  113379:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
  11337c:	e9 bc ff ff ff       	jmp    11333d <_Z8tokenizePc+0x5d>
  113381:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  113384:	3b 45 f4             	cmp    eax,DWORD PTR [rbp-0xc]
  113387:	0f 84 09 00 00 00    	je     113396 <_Z8tokenizePc+0xb6>
  11338d:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  113390:	83 c0 01             	add    eax,0x1
  113393:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
  113396:	e9 00 00 00 00       	jmp    11339b <_Z8tokenizePc+0xbb>
  11339b:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  11339e:	83 c0 01             	add    eax,0x1
  1133a1:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
  1133a4:	e9 5d ff ff ff       	jmp    113306 <_Z8tokenizePc+0x26>
  1133a9:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [rbp-0x10],0x0
  1133b0:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [rbp-0x18],0x0
  1133b7:	48 63 7d ec          	movsxd rdi,DWORD PTR [rbp-0x14]
  1133bb:	48 c1 e7 03          	shl    rdi,0x3
  1133bf:	48 83 c7 01          	add    rdi,0x1
  1133c3:	e8 a8 07 00 00       	call   113b70 <malloc>
  1133c8:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  1133cc:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  1133d0:	48 63 4d f0          	movsxd rcx,DWORD PTR [rbp-0x10]
  1133d4:	0f be 04 08          	movsx  eax,BYTE PTR [rax+rcx*1]
  1133d8:	83 f8 20             	cmp    eax,0x20
  1133db:	0f 84 1a 00 00 00    	je     1133fb <_Z8tokenizePc+0x11b>
  1133e1:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  1133e5:	48 63 4d f0          	movsxd rcx,DWORD PTR [rbp-0x10]
  1133e9:	0f be 0c 08          	movsx  ecx,BYTE PTR [rax+rcx*1]
  1133ed:	31 c0                	xor    eax,eax
  1133ef:	83 f9 00             	cmp    ecx,0x0
  1133f2:	88 45 de             	mov    BYTE PTR [rbp-0x22],al
  1133f5:	0f 85 0c 00 00 00    	jne    113407 <_Z8tokenizePc+0x127>
  1133fb:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  1133fe:	3b 45 f4             	cmp    eax,DWORD PTR [rbp-0xc]
  113401:	0f 9c c0             	setl   al
  113404:	88 45 de             	mov    BYTE PTR [rbp-0x22],al
  113407:	8a 45 de             	mov    al,BYTE PTR [rbp-0x22]
  11340a:	a8 01                	test   al,0x1
  11340c:	0f 85 05 00 00 00    	jne    113417 <_Z8tokenizePc+0x137>
  113412:	e9 0e 00 00 00       	jmp    113425 <_Z8tokenizePc+0x145>
  113417:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  11341a:	83 c0 01             	add    eax,0x1
  11341d:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
  113420:	e9 a7 ff ff ff       	jmp    1133cc <_Z8tokenizePc+0xec>
  113425:	e9 00 00 00 00       	jmp    11342a <_Z8tokenizePc+0x14a>
  11342a:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  11342d:	3b 45 f4             	cmp    eax,DWORD PTR [rbp-0xc]
  113430:	0f 8d 0d 01 00 00    	jge    113543 <_Z8tokenizePc+0x263>
  113436:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
  11343a:	48 63 45 f0          	movsxd rax,DWORD PTR [rbp-0x10]
  11343e:	48 01 c7             	add    rdi,rax
  113441:	e8 9a 26 ff ff       	call   105ae0 <strlen>
  113446:	48 89 c7             	mov    rdi,rax
  113449:	e8 22 07 00 00       	call   113b70 <malloc>
  11344e:	48 89 c2             	mov    rdx,rax
  113451:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  113455:	48 63 4d e8          	movsxd rcx,DWORD PTR [rbp-0x18]
  113459:	48 89 14 c8          	mov    QWORD PTR [rax+rcx*8],rdx
  11345d:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  113461:	48 63 4d e8          	movsxd rcx,DWORD PTR [rbp-0x18]
  113465:	48 8b 3c c8          	mov    rdi,QWORD PTR [rax+rcx*8]
  113469:	48 8b 75 f8          	mov    rsi,QWORD PTR [rbp-0x8]
  11346d:	48 63 45 f0          	movsxd rax,DWORD PTR [rbp-0x10]
  113471:	48 01 c6             	add    rsi,rax
  113474:	e8 67 25 ff ff       	call   1059e0 <strcpy>
  113479:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  11347d:	48 63 4d f0          	movsxd rcx,DWORD PTR [rbp-0x10]
  113481:	0f be 0c 08          	movsx  ecx,BYTE PTR [rax+rcx*1]
  113485:	31 c0                	xor    eax,eax
  113487:	83 f9 20             	cmp    ecx,0x20
  11348a:	88 45 dd             	mov    BYTE PTR [rbp-0x23],al
  11348d:	0f 84 26 00 00 00    	je     1134b9 <_Z8tokenizePc+0x1d9>
  113493:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  113497:	48 63 4d f0          	movsxd rcx,DWORD PTR [rbp-0x10]
  11349b:	0f be 0c 08          	movsx  ecx,BYTE PTR [rax+rcx*1]
  11349f:	31 c0                	xor    eax,eax
  1134a1:	83 f9 00             	cmp    ecx,0x0
  1134a4:	88 45 dd             	mov    BYTE PTR [rbp-0x23],al
  1134a7:	0f 84 0c 00 00 00    	je     1134b9 <_Z8tokenizePc+0x1d9>
  1134ad:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  1134b0:	3b 45 f4             	cmp    eax,DWORD PTR [rbp-0xc]
  1134b3:	0f 9c c0             	setl   al
  1134b6:	88 45 dd             	mov    BYTE PTR [rbp-0x23],al
  1134b9:	8a 45 dd             	mov    al,BYTE PTR [rbp-0x23]
  1134bc:	a8 01                	test   al,0x1
  1134be:	0f 85 05 00 00 00    	jne    1134c9 <_Z8tokenizePc+0x1e9>
  1134c4:	e9 0e 00 00 00       	jmp    1134d7 <_Z8tokenizePc+0x1f7>
  1134c9:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  1134cc:	83 c0 01             	add    eax,0x1
  1134cf:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
  1134d2:	e9 a2 ff ff ff       	jmp    113479 <_Z8tokenizePc+0x199>
  1134d7:	e9 00 00 00 00       	jmp    1134dc <_Z8tokenizePc+0x1fc>
  1134dc:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  1134e0:	48 63 4d f0          	movsxd rcx,DWORD PTR [rbp-0x10]
  1134e4:	0f be 04 08          	movsx  eax,BYTE PTR [rax+rcx*1]
  1134e8:	83 f8 20             	cmp    eax,0x20
  1134eb:	0f 84 1a 00 00 00    	je     11350b <_Z8tokenizePc+0x22b>
  1134f1:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  1134f5:	48 63 4d f0          	movsxd rcx,DWORD PTR [rbp-0x10]
  1134f9:	0f be 0c 08          	movsx  ecx,BYTE PTR [rax+rcx*1]
  1134fd:	31 c0                	xor    eax,eax
  1134ff:	83 f9 00             	cmp    ecx,0x0
  113502:	88 45 dc             	mov    BYTE PTR [rbp-0x24],al
  113505:	0f 85 0c 00 00 00    	jne    113517 <_Z8tokenizePc+0x237>
  11350b:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  11350e:	3b 45 f4             	cmp    eax,DWORD PTR [rbp-0xc]
  113511:	0f 9c c0             	setl   al
  113514:	88 45 dc             	mov    BYTE PTR [rbp-0x24],al
  113517:	8a 45 dc             	mov    al,BYTE PTR [rbp-0x24]
  11351a:	a8 01                	test   al,0x1
  11351c:	0f 85 05 00 00 00    	jne    113527 <_Z8tokenizePc+0x247>
  113522:	e9 0e 00 00 00       	jmp    113535 <_Z8tokenizePc+0x255>
  113527:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  11352a:	83 c0 01             	add    eax,0x1
  11352d:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
  113530:	e9 a7 ff ff ff       	jmp    1134dc <_Z8tokenizePc+0x1fc>
  113535:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
  113538:	83 c0 01             	add    eax,0x1
  11353b:	89 45 e8             	mov    DWORD PTR [rbp-0x18],eax
  11353e:	e9 e7 fe ff ff       	jmp    11342a <_Z8tokenizePc+0x14a>
  113543:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  113547:	48 63 4d e8          	movsxd rcx,DWORD PTR [rbp-0x18]
  11354b:	48 c7 04 c8 00 00 00 	mov    QWORD PTR [rax+rcx*8],0x0
  113552:	00 
  113553:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  113557:	48 83 c4 30          	add    rsp,0x30
  11355b:	5d                   	pop    rbp
  11355c:	c3                   	ret
  11355d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000113560 <_Z10free_tokenPPc>:
  113560:	55                   	push   rbp
  113561:	48 89 e5             	mov    rbp,rsp
  113564:	48 83 ec 10          	sub    rsp,0x10
  113568:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  11356c:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
  113573:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  113577:	48 63 4d f4          	movsxd rcx,DWORD PTR [rbp-0xc]
  11357b:	48 83 3c c8 00       	cmp    QWORD PTR [rax+rcx*8],0x0
  113580:	0f 84 1f 00 00 00    	je     1135a5 <_Z10free_tokenPPc+0x45>
  113586:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  11358a:	48 63 4d f4          	movsxd rcx,DWORD PTR [rbp-0xc]
  11358e:	48 8b 3c c8          	mov    rdi,QWORD PTR [rax+rcx*8]
  113592:	e8 f9 05 00 00       	call   113b90 <free>
  113597:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  11359a:	83 c0 01             	add    eax,0x1
  11359d:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
  1135a0:	e9 ce ff ff ff       	jmp    113573 <_Z10free_tokenPPc+0x13>
  1135a5:	48 83 c4 10          	add    rsp,0x10
  1135a9:	5d                   	pop    rbp
  1135aa:	c3                   	ret
  1135ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000001135b0 <_Z10show_tokenPPc>:
  1135b0:	55                   	push   rbp
  1135b1:	48 89 e5             	mov    rbp,rsp
  1135b4:	48 83 ec 10          	sub    rsp,0x10
  1135b8:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  1135bc:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
  1135c3:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  1135c7:	48 83 38 00          	cmp    QWORD PTR [rax],0x0
  1135cb:	0f 85 0e 00 00 00    	jne    1135df <_Z10show_tokenPPc+0x2f>
  1135d1:	48 8d 3d 9d d1 fe ff 	lea    rdi,[rip+0xfffffffffffed19d]        # 100775 <_svfprintf_r.blanks-0x36b>
  1135d8:	b0 00                	mov    al,0x0
  1135da:	e8 e1 1e ff ff       	call   1054c0 <Printf>
  1135df:	e9 00 00 00 00       	jmp    1135e4 <_Z10show_tokenPPc+0x34>
  1135e4:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  1135e8:	48 63 4d f4          	movsxd rcx,DWORD PTR [rbp-0xc]
  1135ec:	48 83 3c c8 00       	cmp    QWORD PTR [rax+rcx*8],0x0
  1135f1:	0f 84 4a 00 00 00    	je     113641 <_Z10show_tokenPPc+0x91>
  1135f7:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  1135fb:	48 63 4d f4          	movsxd rcx,DWORD PTR [rbp-0xc]
  1135ff:	48 8b 34 c8          	mov    rsi,QWORD PTR [rax+rcx*8]
  113603:	48 8d 3d f7 cf fe ff 	lea    rdi,[rip+0xfffffffffffecff7]        # 100601 <_svfprintf_r.blanks-0x4df>
  11360a:	b0 00                	mov    al,0x0
  11360c:	e8 af 1e ff ff       	call   1054c0 <Printf>
  113611:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  113615:	48 63 4d f4          	movsxd rcx,DWORD PTR [rbp-0xc]
  113619:	48 8b 3c c8          	mov    rdi,QWORD PTR [rax+rcx*8]
  11361d:	e8 be 24 ff ff       	call   105ae0 <strlen>
  113622:	48 89 c6             	mov    rsi,rax
  113625:	48 8d 3d 19 d1 fe ff 	lea    rdi,[rip+0xfffffffffffed119]        # 100745 <_svfprintf_r.blanks-0x39b>
  11362c:	b0 00                	mov    al,0x0
  11362e:	e8 8d 1e ff ff       	call   1054c0 <Printf>
  113633:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  113636:	83 c0 01             	add    eax,0x1
  113639:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
  11363c:	e9 a3 ff ff ff       	jmp    1135e4 <_Z10show_tokenPPc+0x34>
  113641:	48 83 c4 10          	add    rsp,0x10
  113645:	5d                   	pop    rbp
  113646:	c3                   	ret
  113647:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  11364e:	00 00 

0000000000113650 <_Z7commandPc>:
  113650:	55                   	push   rbp
  113651:	48 89 e5             	mov    rbp,rsp
  113654:	48 83 ec 20          	sub    rsp,0x20
  113658:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  11365c:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  113660:	48 8d 35 4e cd fe ff 	lea    rsi,[rip+0xfffffffffffecd4e]        # 1003b5 <_svfprintf_r.blanks-0x72b>
  113667:	e8 e4 48 ff ff       	call   107f50 <strcmp>
  11366c:	83 f8 00             	cmp    eax,0x0
  11366f:	0f 85 0c 00 00 00    	jne    113681 <_Z7commandPc+0x31>
  113675:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  11367c:	e9 4d 01 00 00       	jmp    1137ce <_Z7commandPc+0x17e>
  113681:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  113685:	48 8d 35 3c cc fe ff 	lea    rsi,[rip+0xfffffffffffecc3c]        # 1002c8 <_svfprintf_r.blanks-0x818>
  11368c:	e8 bf 48 ff ff       	call   107f50 <strcmp>
  113691:	83 f8 00             	cmp    eax,0x0
  113694:	0f 85 24 00 00 00    	jne    1136be <_Z7commandPc+0x6e>
  11369a:	bf 2c 01 00 00       	mov    edi,0x12c
  11369f:	e8 2c 20 ff ff       	call   1056d0 <_Z15WriteMandelbroti>
  1136a4:	48 8d 3d 0b cf fe ff 	lea    rdi,[rip+0xfffffffffffecf0b]        # 1005b6 <_svfprintf_r.blanks-0x52a>
  1136ab:	b0 00                	mov    al,0x0
  1136ad:	e8 0e 1e ff ff       	call   1054c0 <Printf>
  1136b2:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  1136b9:	e9 10 01 00 00       	jmp    1137ce <_Z7commandPc+0x17e>
  1136be:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  1136c2:	48 8d 35 b6 cf fe ff 	lea    rsi,[rip+0xfffffffffffecfb6]        # 10067f <_svfprintf_r.blanks-0x461>
  1136c9:	e8 82 48 ff ff       	call   107f50 <strcmp>
  1136ce:	83 f8 00             	cmp    eax,0x0
  1136d1:	0f 85 1f 00 00 00    	jne    1136f6 <_Z7commandPc+0xa6>
  1136d7:	e8 c4 20 ff ff       	call   1057a0 <_Z5clearv>
  1136dc:	48 8d 3d d3 ce fe ff 	lea    rdi,[rip+0xfffffffffffeced3]        # 1005b6 <_svfprintf_r.blanks-0x52a>
  1136e3:	b0 00                	mov    al,0x0
  1136e5:	e8 d6 1d ff ff       	call   1054c0 <Printf>
  1136ea:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  1136f1:	e9 d8 00 00 00       	jmp    1137ce <_Z7commandPc+0x17e>
  1136f6:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  1136fa:	48 8d 35 bd cf fe ff 	lea    rsi,[rip+0xfffffffffffecfbd]        # 1006be <_svfprintf_r.blanks-0x422>
  113701:	e8 4a 48 ff ff       	call   107f50 <strcmp>
  113706:	83 f8 00             	cmp    eax,0x0
  113709:	0f 85 0d 00 00 00    	jne    11371c <_Z7commandPc+0xcc>
  11370f:	cc                   	int3
  113710:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  113717:	e9 b2 00 00 00       	jmp    1137ce <_Z7commandPc+0x17e>
  11371c:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  113720:	31 c0                	xor    eax,eax
  113722:	89 c6                	mov    esi,eax
  113724:	ba 10 00 00 00       	mov    edx,0x10
  113729:	e8 62 06 00 00       	call   113d90 <strtol>
  11372e:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  113732:	48 83 7d e8 00       	cmp    QWORD PTR [rbp-0x18],0x0
  113737:	0f 84 78 00 00 00    	je     1137b5 <_Z7commandPc+0x165>
  11373d:	48 8b 75 e8          	mov    rsi,QWORD PTR [rbp-0x18]
  113741:	48 8d 3d 88 d0 fe ff 	lea    rdi,[rip+0xfffffffffffed088]        # 1007d0 <_svfprintf_r.blanks-0x310>
  113748:	b0 00                	mov    al,0x0
  11374a:	e8 71 1d ff ff       	call   1054c0 <Printf>
  11374f:	48 8d 05 ca 3c 50 00 	lea    rax,[rip+0x503cca]        # 617420 <memory_manager>
  113756:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  113759:	48 8b 75 e8          	mov    rsi,QWORD PTR [rbp-0x18]
  11375d:	e8 9e 0a 00 00       	call   114200 <_ZN19BitmapMemoryManager11IsAvailableEm>
  113762:	a8 01                	test   al,0x1
  113764:	0f 85 05 00 00 00    	jne    11376f <_Z7commandPc+0x11f>
  11376a:	e9 13 00 00 00       	jmp    113782 <_Z7commandPc+0x132>
  11376f:	48 8d 3d e5 ce fe ff 	lea    rdi,[rip+0xfffffffffffecee5]        # 10065b <_svfprintf_r.blanks-0x485>
  113776:	b0 00                	mov    al,0x0
  113778:	e8 43 1d ff ff       	call   1054c0 <Printf>
  11377d:	e9 0e 00 00 00       	jmp    113790 <_Z7commandPc+0x140>
  113782:	48 8d 3d f8 cf fe ff 	lea    rdi,[rip+0xfffffffffffecff8]        # 100781 <_svfprintf_r.blanks-0x35f>
  113789:	b0 00                	mov    al,0x0
  11378b:	e8 30 1d ff ff       	call   1054c0 <Printf>
  113790:	48 8b 7d e8          	mov    rdi,QWORD PTR [rbp-0x18]
  113794:	e8 d7 af ff ff       	call   10e770 <_Z15search_mem_typem>
  113799:	89 c6                	mov    esi,eax
  11379b:	48 8d 3d e3 ce fe ff 	lea    rdi,[rip+0xfffffffffffecee3]        # 100685 <_svfprintf_r.blanks-0x45b>
  1137a2:	b0 00                	mov    al,0x0
  1137a4:	e8 17 1d ff ff       	call   1054c0 <Printf>
  1137a9:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  1137b0:	e9 19 00 00 00       	jmp    1137ce <_Z7commandPc+0x17e>
  1137b5:	48 8b 75 f0          	mov    rsi,QWORD PTR [rbp-0x10]
  1137b9:	48 8d 3d 39 cc fe ff 	lea    rdi,[rip+0xfffffffffffecc39]        # 1003f9 <_svfprintf_r.blanks-0x6e7>
  1137c0:	b0 00                	mov    al,0x0
  1137c2:	e8 f9 1c ff ff       	call   1054c0 <Printf>
  1137c7:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  1137ce:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  1137d1:	48 83 c4 20          	add    rsp,0x20
  1137d5:	5d                   	pop    rbp
  1137d6:	c3                   	ret
  1137d7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  1137de:	00 00 

00000000001137e0 <_Z7commandPPc>:
  1137e0:	55                   	push   rbp
  1137e1:	48 89 e5             	mov    rbp,rsp
  1137e4:	48 83 ec 40          	sub    rsp,0x40
  1137e8:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  1137ec:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  1137f0:	48 83 38 00          	cmp    QWORD PTR [rax],0x0
  1137f4:	0f 85 0c 00 00 00    	jne    113806 <_Z7commandPPc+0x26>
  1137fa:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  113801:	e9 22 03 00 00       	jmp    113b28 <_Z7commandPPc+0x348>
  113806:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  11380a:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  11380d:	48 8d 35 24 cb fe ff 	lea    rsi,[rip+0xfffffffffffecb24]        # 100338 <_svfprintf_r.blanks-0x7a8>
  113814:	e8 37 47 ff ff       	call   107f50 <strcmp>
  113819:	83 f8 00             	cmp    eax,0x0
  11381c:	0f 85 82 00 00 00    	jne    1138a4 <_Z7commandPPc+0xc4>
  113822:	c7 45 ec 01 00 00 00 	mov    DWORD PTR [rbp-0x14],0x1
  113829:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  11382d:	48 63 4d ec          	movsxd rcx,DWORD PTR [rbp-0x14]
  113831:	48 83 3c c8 00       	cmp    QWORD PTR [rax+rcx*8],0x0
  113836:	0f 84 4e 00 00 00    	je     11388a <_Z7commandPPc+0xaa>
  11383c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  113840:	48 63 4d ec          	movsxd rcx,DWORD PTR [rbp-0x14]
  113844:	48 8b 34 c8          	mov    rsi,QWORD PTR [rax+rcx*8]
  113848:	48 8d 3d e6 ca fe ff 	lea    rdi,[rip+0xfffffffffffecae6]        # 100335 <_svfprintf_r.blanks-0x7ab>
  11384f:	b0 00                	mov    al,0x0
  113851:	e8 6a 1c ff ff       	call   1054c0 <Printf>
  113856:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  11385a:	8b 4d ec             	mov    ecx,DWORD PTR [rbp-0x14]
  11385d:	83 c1 01             	add    ecx,0x1
  113860:	48 63 c9             	movsxd rcx,ecx
  113863:	48 83 3c c8 00       	cmp    QWORD PTR [rax+rcx*8],0x0
  113868:	0f 84 0e 00 00 00    	je     11387c <_Z7commandPPc+0x9c>
  11386e:	48 8d 3d c2 cd fe ff 	lea    rdi,[rip+0xfffffffffffecdc2]        # 100637 <_svfprintf_r.blanks-0x4a9>
  113875:	b0 00                	mov    al,0x0
  113877:	e8 44 1c ff ff       	call   1054c0 <Printf>
  11387c:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  11387f:	83 c0 01             	add    eax,0x1
  113882:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
  113885:	e9 9f ff ff ff       	jmp    113829 <_Z7commandPPc+0x49>
  11388a:	48 8d 3d 05 ce fe ff 	lea    rdi,[rip+0xfffffffffffece05]        # 100696 <_svfprintf_r.blanks-0x44a>
  113891:	b0 00                	mov    al,0x0
  113893:	e8 28 1c ff ff       	call   1054c0 <Printf>
  113898:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  11389f:	e9 84 02 00 00       	jmp    113b28 <_Z7commandPPc+0x348>
  1138a4:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  1138a8:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  1138ab:	48 8d 35 16 ca fe ff 	lea    rsi,[rip+0xfffffffffffeca16]        # 1002c8 <_svfprintf_r.blanks-0x818>
  1138b2:	e8 99 46 ff ff       	call   107f50 <strcmp>
  1138b7:	83 f8 00             	cmp    eax,0x0
  1138ba:	0f 85 4f 00 00 00    	jne    11390f <_Z7commandPPc+0x12f>
  1138c0:	c7 45 e8 f4 01 00 00 	mov    DWORD PTR [rbp-0x18],0x1f4
  1138c7:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  1138cb:	48 83 78 08 00       	cmp    QWORD PTR [rax+0x8],0x0
  1138d0:	0f 84 25 00 00 00    	je     1138fb <_Z7commandPPc+0x11b>
  1138d6:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  1138da:	48 8b 78 08          	mov    rdi,QWORD PTR [rax+0x8]
  1138de:	e8 dd 04 00 00       	call   113dc0 <atoi>
  1138e3:	89 45 e8             	mov    DWORD PTR [rbp-0x18],eax
  1138e6:	83 f8 00             	cmp    eax,0x0
  1138e9:	0f 85 07 00 00 00    	jne    1138f6 <_Z7commandPPc+0x116>
  1138ef:	c7 45 e8 f4 01 00 00 	mov    DWORD PTR [rbp-0x18],0x1f4
  1138f6:	e9 00 00 00 00       	jmp    1138fb <_Z7commandPPc+0x11b>
  1138fb:	8b 7d e8             	mov    edi,DWORD PTR [rbp-0x18]
  1138fe:	e8 cd 1d ff ff       	call   1056d0 <_Z15WriteMandelbroti>
  113903:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  11390a:	e9 19 02 00 00       	jmp    113b28 <_Z7commandPPc+0x348>
  11390f:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  113913:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  113916:	48 8d 35 62 cd fe ff 	lea    rsi,[rip+0xfffffffffffecd62]        # 10067f <_svfprintf_r.blanks-0x461>
  11391d:	e8 2e 46 ff ff       	call   107f50 <strcmp>
  113922:	83 f8 00             	cmp    eax,0x0
  113925:	0f 85 11 00 00 00    	jne    11393c <_Z7commandPPc+0x15c>
  11392b:	e8 70 1e ff ff       	call   1057a0 <_Z5clearv>
  113930:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  113937:	e9 ec 01 00 00       	jmp    113b28 <_Z7commandPPc+0x348>
  11393c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  113940:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  113943:	48 8d 35 16 c8 fe ff 	lea    rsi,[rip+0xfffffffffffec816]        # 100160 <_svfprintf_r.blanks-0x980>
  11394a:	e8 01 46 ff ff       	call   107f50 <strcmp>
  11394f:	83 f8 00             	cmp    eax,0x0
  113952:	0f 85 d1 00 00 00    	jne    113a29 <_Z7commandPPc+0x249>
  113958:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  11395c:	48 83 78 08 00       	cmp    QWORD PTR [rax+0x8],0x0
  113961:	0f 85 1a 00 00 00    	jne    113981 <_Z7commandPPc+0x1a1>
  113967:	48 8d 3d 4f cc fe ff 	lea    rdi,[rip+0xfffffffffffecc4f]        # 1005bd <_svfprintf_r.blanks-0x523>
  11396e:	b0 00                	mov    al,0x0
  113970:	e8 4b 1b ff ff       	call   1054c0 <Printf>
  113975:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [rbp-0x4],0x1
  11397c:	e9 a7 01 00 00       	jmp    113b28 <_Z7commandPPc+0x348>
  113981:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  113985:	48 8b 78 08          	mov    rdi,QWORD PTR [rax+0x8]
  113989:	48 8d 35 4a cc fe ff 	lea    rsi,[rip+0xfffffffffffecc4a]        # 1005da <_svfprintf_r.blanks-0x506>
  113990:	e8 bb 45 ff ff       	call   107f50 <strcmp>
  113995:	83 f8 00             	cmp    eax,0x0
  113998:	0f 85 71 00 00 00    	jne    113a0f <_Z7commandPPc+0x22f>
  11399e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  1139a2:	48 83 78 10 00       	cmp    QWORD PTR [rax+0x10],0x0
  1139a7:	0f 84 48 00 00 00    	je     1139f5 <_Z7commandPPc+0x215>
  1139ad:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  1139b1:	48 8b 78 10          	mov    rdi,QWORD PTR [rax+0x10]
  1139b5:	31 c0                	xor    eax,eax
  1139b7:	89 c6                	mov    esi,eax
  1139b9:	31 d2                	xor    edx,edx
  1139bb:	e8 d0 03 00 00       	call   113d90 <strtol>
  1139c0:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  1139c4:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  1139c8:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
  1139cc:	48 8b 7d e0          	mov    rdi,QWORD PTR [rbp-0x20]
  1139d0:	e8 9b ad ff ff       	call   10e770 <_Z15search_mem_typem>
  1139d5:	48 8b 75 c8          	mov    rsi,QWORD PTR [rbp-0x38]
  1139d9:	89 c2                	mov    edx,eax
  1139db:	48 8d 3d f1 c8 fe ff 	lea    rdi,[rip+0xfffffffffffec8f1]        # 1002d3 <_svfprintf_r.blanks-0x80d>
  1139e2:	b0 00                	mov    al,0x0
  1139e4:	e8 d7 1a ff ff       	call   1054c0 <Printf>
  1139e9:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  1139f0:	e9 33 01 00 00       	jmp    113b28 <_Z7commandPPc+0x348>
  1139f5:	48 8d 3d c1 cb fe ff 	lea    rdi,[rip+0xfffffffffffecbc1]        # 1005bd <_svfprintf_r.blanks-0x523>
  1139fc:	b0 00                	mov    al,0x0
  1139fe:	e8 bd 1a ff ff       	call   1054c0 <Printf>
  113a03:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [rbp-0x4],0x1
  113a0a:	e9 19 01 00 00       	jmp    113b28 <_Z7commandPPc+0x348>
  113a0f:	48 8d 3d 22 ce fe ff 	lea    rdi,[rip+0xfffffffffffece22]        # 100838 <_svfprintf_r.blanks-0x2a8>
  113a16:	b0 00                	mov    al,0x0
  113a18:	e8 a3 1a ff ff       	call   1054c0 <Printf>
  113a1d:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [rbp-0x4],0x1
  113a24:	e9 ff 00 00 00       	jmp    113b28 <_Z7commandPPc+0x348>
  113a29:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  113a2d:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  113a30:	48 8d 35 48 cc fe ff 	lea    rsi,[rip+0xfffffffffffecc48]        # 10067f <_svfprintf_r.blanks-0x461>
  113a37:	e8 14 45 ff ff       	call   107f50 <strcmp>
  113a3c:	83 f8 00             	cmp    eax,0x0
  113a3f:	0f 85 11 00 00 00    	jne    113a56 <_Z7commandPPc+0x276>
  113a45:	e8 56 1d ff ff       	call   1057a0 <_Z5clearv>
  113a4a:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  113a51:	e9 d2 00 00 00       	jmp    113b28 <_Z7commandPPc+0x348>
  113a56:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  113a5a:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  113a5d:	48 8d 35 1c c9 fe ff 	lea    rsi,[rip+0xfffffffffffec91c]        # 100380 <_svfprintf_r.blanks-0x760>
  113a64:	e8 e7 44 ff ff       	call   107f50 <strcmp>
  113a69:	83 f8 00             	cmp    eax,0x0
  113a6c:	0f 85 3d 00 00 00    	jne    113aaf <_Z7commandPPc+0x2cf>
  113a72:	e8 b9 0b 00 00       	call   114630 <_Z10LAPICTimerv>
  113a77:	89 45 dc             	mov    DWORD PTR [rbp-0x24],eax
  113a7a:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  113a7e:	48 83 c7 08          	add    rdi,0x8
  113a82:	e8 59 fd ff ff       	call   1137e0 <_Z7commandPPc>
  113a87:	e8 a4 0b 00 00       	call   114630 <_Z10LAPICTimerv>
  113a8c:	2b 45 dc             	sub    eax,DWORD PTR [rbp-0x24]
  113a8f:	89 45 dc             	mov    DWORD PTR [rbp-0x24],eax
  113a92:	8b 75 dc             	mov    esi,DWORD PTR [rbp-0x24]
  113a95:	48 8d 3d ad c7 fe ff 	lea    rdi,[rip+0xfffffffffffec7ad]        # 100249 <_svfprintf_r.blanks-0x897>
  113a9c:	b0 00                	mov    al,0x0
  113a9e:	e8 1d 1a ff ff       	call   1054c0 <Printf>
  113aa3:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  113aaa:	e9 79 00 00 00       	jmp    113b28 <_Z7commandPPc+0x348>
  113aaf:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  113ab3:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  113ab6:	48 8d 35 97 c7 fe ff 	lea    rsi,[rip+0xfffffffffffec797]        # 100254 <_svfprintf_r.blanks-0x88c>
  113abd:	e8 8e 44 ff ff       	call   107f50 <strcmp>
  113ac2:	83 f8 00             	cmp    eax,0x0
  113ac5:	0f 85 41 00 00 00    	jne    113b0c <_Z7commandPPc+0x32c>
  113acb:	e8 a3 a2 ff ff       	call   10dd73 <rdtsc>
  113ad0:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
  113ad4:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  113ad8:	48 83 c7 08          	add    rdi,0x8
  113adc:	e8 ff fc ff ff       	call   1137e0 <_Z7commandPPc>
  113ae1:	e8 8d a2 ff ff       	call   10dd73 <rdtsc>
  113ae6:	48 2b 45 d0          	sub    rax,QWORD PTR [rbp-0x30]
  113aea:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
  113aee:	48 8b 75 d0          	mov    rsi,QWORD PTR [rbp-0x30]
  113af2:	48 8d 3d 52 c9 fe ff 	lea    rdi,[rip+0xfffffffffffec952]        # 10044b <_svfprintf_r.blanks-0x695>
  113af9:	b0 00                	mov    al,0x0
  113afb:	e8 c0 19 ff ff       	call   1054c0 <Printf>
  113b00:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  113b07:	e9 1c 00 00 00       	jmp    113b28 <_Z7commandPPc+0x348>
  113b0c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  113b10:	48 8b 30             	mov    rsi,QWORD PTR [rax]
  113b13:	48 8d 3d c7 ca fe ff 	lea    rdi,[rip+0xfffffffffffecac7]        # 1005e1 <_svfprintf_r.blanks-0x4ff>
  113b1a:	b0 00                	mov    al,0x0
  113b1c:	e8 9f 19 ff ff       	call   1054c0 <Printf>
  113b21:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [rbp-0x4],0x1
  113b28:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  113b2b:	48 83 c4 40          	add    rsp,0x40
  113b2f:	5d                   	pop    rbp
  113b30:	c3                   	ret
  113b31:	cc                   	int3
  113b32:	cc                   	int3
  113b33:	cc                   	int3
  113b34:	cc                   	int3
  113b35:	cc                   	int3
  113b36:	cc                   	int3
  113b37:	cc                   	int3
  113b38:	cc                   	int3
  113b39:	cc                   	int3
  113b3a:	cc                   	int3
  113b3b:	cc                   	int3
  113b3c:	cc                   	int3
  113b3d:	cc                   	int3
  113b3e:	cc                   	int3
  113b3f:	cc                   	int3

0000000000113b40 <__cxx_global_var_init>:
  113b40:	55                   	push   rbp
  113b41:	48 89 e5             	mov    rbp,rsp
  113b44:	e8 47 0c ff ff       	call   104790 <_ZNSt3__114numeric_limitsImE3maxEv>
  113b49:	48 89 c6             	mov    rsi,rax
  113b4c:	48 8d 3d ad c4 54 00 	lea    rdi,[rip+0x54c4ad]        # 660000 <_ZL10kNullFrame>
  113b53:	e8 48 0c ff ff       	call   1047a0 <_ZN7FrameIDC2Em>
  113b58:	5d                   	pop    rbp
  113b59:	c3                   	ret
  113b5a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000113b60 <_GLOBAL__sub_I_command.cpp>:
  113b60:	55                   	push   rbp
  113b61:	48 89 e5             	mov    rbp,rsp
  113b64:	e8 d7 ff ff ff       	call   113b40 <__cxx_global_var_init>
  113b69:	5d                   	pop    rbp
  113b6a:	c3                   	ret
  113b6b:	cc                   	int3
  113b6c:	cc                   	int3
  113b6d:	cc                   	int3
  113b6e:	cc                   	int3
  113b6f:	cc                   	int3

0000000000113b70 <malloc>:
  113b70:	48 89 fe             	mov    rsi,rdi
  113b73:	48 8d 05 1e 21 00 00 	lea    rax,[rip+0x211e]        # 115c98 <_impure_ptr>
  113b7a:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  113b7d:	e9 0e 45 ff ff       	jmp    108090 <_malloc_r>
  113b82:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  113b89:	1f 84 00 00 00 00 00 

0000000000113b90 <free>:
  113b90:	48 89 fe             	mov    rsi,rdi
  113b93:	48 8d 05 fe 20 00 00 	lea    rax,[rip+0x20fe]        # 115c98 <_impure_ptr>
  113b9a:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  113b9d:	e9 8e 4e ff ff       	jmp    108a30 <_free_r>
  113ba2:	cc                   	int3
  113ba3:	cc                   	int3
  113ba4:	cc                   	int3
  113ba5:	cc                   	int3
  113ba6:	cc                   	int3
  113ba7:	cc                   	int3
  113ba8:	cc                   	int3
  113ba9:	cc                   	int3
  113baa:	cc                   	int3
  113bab:	cc                   	int3
  113bac:	cc                   	int3
  113bad:	cc                   	int3
  113bae:	cc                   	int3
  113baf:	cc                   	int3

0000000000113bb0 <_strtol_r>:
  113bb0:	48 8d 05 e1 20 00 00 	lea    rax,[rip+0x20e1]        # 115c98 <_impure_ptr>
  113bb7:	48 8b 00             	mov    rax,QWORD PTR [rax]
  113bba:	4c 8b 40 48          	mov    r8,QWORD PTR [rax+0x48]
  113bbe:	4d 85 c0             	test   r8,r8
  113bc1:	75 07                	jne    113bca <_strtol_r+0x1a>
  113bc3:	4c 8d 05 1e 28 00 00 	lea    r8,[rip+0x281e]        # 1163e8 <__global_locale>
  113bca:	eb 04                	jmp    113bd0 <_strtol_l>
  113bcc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000113bd0 <_strtol_l>:
  113bd0:	55                   	push   rbp
  113bd1:	41 57                	push   r15
  113bd3:	41 56                	push   r14
  113bd5:	41 55                	push   r13
  113bd7:	41 54                	push   r12
  113bd9:	53                   	push   rbx
  113bda:	50                   	push   rax
  113bdb:	4c 89 c3             	mov    rbx,r8
  113bde:	41 89 cd             	mov    r13d,ecx
  113be1:	49 89 d6             	mov    r14,rdx
  113be4:	49 89 f4             	mov    r12,rsi
  113be7:	48 89 3c 24          	mov    QWORD PTR [rsp],rdi
  113beb:	48 89 f5             	mov    rbp,rsi
  113bee:	66 90                	xchg   ax,ax
  113bf0:	44 0f b6 7d 00       	movzx  r15d,BYTE PTR [rbp+0x0]
  113bf5:	48 ff c5             	inc    rbp
  113bf8:	48 89 df             	mov    rdi,rbx
  113bfb:	e8 c0 42 ff ff       	call   107ec0 <__locale_ctype_ptr_l>
  113c00:	42 f6 44 38 01 08    	test   BYTE PTR [rax+r15*1+0x1],0x8
  113c06:	75 e8                	jne    113bf0 <_strtol_l+0x20>
  113c08:	41 83 ff 2b          	cmp    r15d,0x2b
  113c0c:	74 06                	je     113c14 <_strtol_l+0x44>
  113c0e:	41 83 ff 2d          	cmp    r15d,0x2d
  113c12:	75 12                	jne    113c26 <_strtol_l+0x56>
  113c14:	0f b6 5d 00          	movzx  ebx,BYTE PTR [rbp+0x0]
  113c18:	48 ff c5             	inc    rbp
  113c1b:	41 f7 c5 ef ff ff ff 	test   r13d,0xffffffef
  113c22:	74 0e                	je     113c32 <_strtol_l+0x62>
  113c24:	eb 2b                	jmp    113c51 <_strtol_l+0x81>
  113c26:	44 89 fb             	mov    ebx,r15d
  113c29:	41 f7 c5 ef ff ff ff 	test   r13d,0xffffffef
  113c30:	75 1f                	jne    113c51 <_strtol_l+0x81>
  113c32:	80 fb 30             	cmp    bl,0x30
  113c35:	75 1a                	jne    113c51 <_strtol_l+0x81>
  113c37:	0f b6 45 00          	movzx  eax,BYTE PTR [rbp+0x0]
  113c3b:	83 c8 20             	or     eax,0x20
  113c3e:	83 f8 78             	cmp    eax,0x78
  113c41:	75 20                	jne    113c63 <_strtol_l+0x93>
  113c43:	0f b6 5d 01          	movzx  ebx,BYTE PTR [rbp+0x1]
  113c47:	48 83 c5 02          	add    rbp,0x2
  113c4b:	41 bd 10 00 00 00    	mov    r13d,0x10
  113c51:	45 85 ed             	test   r13d,r13d
  113c54:	0f 94 c0             	sete   al
  113c57:	80 fb 30             	cmp    bl,0x30
  113c5a:	74 0d                	je     113c69 <_strtol_l+0x99>
  113c5c:	b9 0a 00 00 00       	mov    ecx,0xa
  113c61:	eb 0d                	jmp    113c70 <_strtol_l+0xa0>
  113c63:	45 85 ed             	test   r13d,r13d
  113c66:	0f 94 c0             	sete   al
  113c69:	b9 08 00 00 00       	mov    ecx,0x8
  113c6e:	b3 30                	mov    bl,0x30
  113c70:	84 c0                	test   al,al
  113c72:	44 0f 45 e9          	cmovne r13d,ecx
  113c76:	48 b8 ff ff ff ff ff 	movabs rax,0x7fffffffffffffff
  113c7d:	ff ff 7f 
  113c80:	4c 8d 40 01          	lea    r8,[rax+0x1]
  113c84:	41 80 ff 2d          	cmp    r15b,0x2d
  113c88:	4c 0f 45 c0          	cmovne r8,rax
  113c8c:	4d 63 cd             	movsxd r9,r13d
  113c8f:	4c 89 c0             	mov    rax,r8
  113c92:	4c 09 c8             	or     rax,r9
  113c95:	48 c1 e8 20          	shr    rax,0x20
  113c99:	74 0a                	je     113ca5 <_strtol_l+0xd5>
  113c9b:	4c 89 c0             	mov    rax,r8
  113c9e:	31 d2                	xor    edx,edx
  113ca0:	49 f7 f1             	div    r9
  113ca3:	eb 08                	jmp    113cad <_strtol_l+0xdd>
  113ca5:	44 89 c0             	mov    eax,r8d
  113ca8:	31 d2                	xor    edx,edx
  113caa:	41 f7 f5             	div    r13d
  113cad:	48 ff cd             	dec    rbp
  113cb0:	31 c9                	xor    ecx,ecx
  113cb2:	31 ff                	xor    edi,edi
  113cb4:	eb 17                	jmp    113ccd <_strtol_l+0xfd>
  113cb6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  113cbd:	00 00 00 
  113cc0:	48 89 ce             	mov    rsi,rcx
  113cc3:	0f b6 5d 01          	movzx  ebx,BYTE PTR [rbp+0x1]
  113cc7:	48 ff c5             	inc    rbp
  113cca:	48 89 f1             	mov    rcx,rsi
  113ccd:	0f b6 f3             	movzx  esi,bl
  113cd0:	8d 5e d0             	lea    ebx,[rsi-0x30]
  113cd3:	83 fb 0a             	cmp    ebx,0xa
  113cd6:	72 25                	jb     113cfd <_strtol_l+0x12d>
  113cd8:	8d 5e bf             	lea    ebx,[rsi-0x41]
  113cdb:	83 fb 19             	cmp    ebx,0x19
  113cde:	77 10                	ja     113cf0 <_strtol_l+0x120>
  113ce0:	83 c6 c9             	add    esi,0xffffffc9
  113ce3:	eb 16                	jmp    113cfb <_strtol_l+0x12b>
  113ce5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  113cec:	00 00 00 00 
  113cf0:	8d 5e 9f             	lea    ebx,[rsi-0x61]
  113cf3:	83 fb 19             	cmp    ebx,0x19
  113cf6:	77 31                	ja     113d29 <_strtol_l+0x159>
  113cf8:	83 c6 a9             	add    esi,0xffffffa9
  113cfb:	89 f3                	mov    ebx,esi
  113cfd:	44 39 eb             	cmp    ebx,r13d
  113d00:	7d 27                	jge    113d29 <_strtol_l+0x159>
  113d02:	85 ff                	test   edi,edi
  113d04:	bf ff ff ff ff       	mov    edi,0xffffffff
  113d09:	78 b5                	js     113cc0 <_strtol_l+0xf0>
  113d0b:	48 39 c1             	cmp    rcx,rax
  113d0e:	77 b0                	ja     113cc0 <_strtol_l+0xf0>
  113d10:	75 07                	jne    113d19 <_strtol_l+0x149>
  113d12:	48 89 c6             	mov    rsi,rax
  113d15:	39 d3                	cmp    ebx,edx
  113d17:	7f aa                	jg     113cc3 <_strtol_l+0xf3>
  113d19:	49 0f af c9          	imul   rcx,r9
  113d1d:	89 de                	mov    esi,ebx
  113d1f:	48 01 ce             	add    rsi,rcx
  113d22:	bf 01 00 00 00       	mov    edi,0x1
  113d27:	eb 9a                	jmp    113cc3 <_strtol_l+0xf3>
  113d29:	85 ff                	test   edi,edi
  113d2b:	78 2e                	js     113d5b <_strtol_l+0x18b>
  113d2d:	49 89 c8             	mov    r8,rcx
  113d30:	49 f7 d8             	neg    r8
  113d33:	41 80 ff 2d          	cmp    r15b,0x2d
  113d37:	4c 0f 45 c1          	cmovne r8,rcx
  113d3b:	4d 85 f6             	test   r14,r14
  113d3e:	74 09                	je     113d49 <_strtol_l+0x179>
  113d40:	85 ff                	test   edi,edi
  113d42:	49 0f 44 ec          	cmove  rbp,r12
  113d46:	49 89 2e             	mov    QWORD PTR [r14],rbp
  113d49:	4c 89 c0             	mov    rax,r8
  113d4c:	48 83 c4 08          	add    rsp,0x8
  113d50:	5b                   	pop    rbx
  113d51:	41 5c                	pop    r12
  113d53:	41 5d                	pop    r13
  113d55:	41 5e                	pop    r14
  113d57:	41 5f                	pop    r15
  113d59:	5d                   	pop    rbp
  113d5a:	c3                   	ret
  113d5b:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
  113d5f:	c7 00 22 00 00 00    	mov    DWORD PTR [rax],0x22
  113d65:	4d 85 f6             	test   r14,r14
  113d68:	75 d6                	jne    113d40 <_strtol_l+0x170>
  113d6a:	eb dd                	jmp    113d49 <_strtol_l+0x179>
  113d6c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000113d70 <strtol_l>:
  113d70:	49 89 c8             	mov    r8,rcx
  113d73:	89 d1                	mov    ecx,edx
  113d75:	48 89 f2             	mov    rdx,rsi
  113d78:	48 89 fe             	mov    rsi,rdi
  113d7b:	48 8d 05 16 1f 00 00 	lea    rax,[rip+0x1f16]        # 115c98 <_impure_ptr>
  113d82:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  113d85:	e9 46 fe ff ff       	jmp    113bd0 <_strtol_l>
  113d8a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000113d90 <strtol>:
  113d90:	89 d1                	mov    ecx,edx
  113d92:	48 89 f2             	mov    rdx,rsi
  113d95:	48 89 fe             	mov    rsi,rdi
  113d98:	48 8d 05 f9 1e 00 00 	lea    rax,[rip+0x1ef9]        # 115c98 <_impure_ptr>
  113d9f:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  113da2:	4c 8b 47 48          	mov    r8,QWORD PTR [rdi+0x48]
  113da6:	4d 85 c0             	test   r8,r8
  113da9:	75 07                	jne    113db2 <strtol+0x22>
  113dab:	4c 8d 05 36 26 00 00 	lea    r8,[rip+0x2636]        # 1163e8 <__global_locale>
  113db2:	e9 19 fe ff ff       	jmp    113bd0 <_strtol_l>
  113db7:	cc                   	int3
  113db8:	cc                   	int3
  113db9:	cc                   	int3
  113dba:	cc                   	int3
  113dbb:	cc                   	int3
  113dbc:	cc                   	int3
  113dbd:	cc                   	int3
  113dbe:	cc                   	int3
  113dbf:	cc                   	int3

0000000000113dc0 <atoi>:
  113dc0:	31 f6                	xor    esi,esi
  113dc2:	ba 0a 00 00 00       	mov    edx,0xa
  113dc7:	e9 c4 ff ff ff       	jmp    113d90 <strtol>
  113dcc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000113dd0 <_atoi_r>:
  113dd0:	31 d2                	xor    edx,edx
  113dd2:	b9 0a 00 00 00       	mov    ecx,0xa
  113dd7:	e9 d4 fd ff ff       	jmp    113bb0 <_strtol_r>
  113ddc:	cc                   	int3
  113ddd:	cc                   	int3
  113dde:	cc                   	int3
  113ddf:	cc                   	int3

0000000000113de0 <_ZN19BitmapMemoryManagerC1Ev>:
  113de0:	55                   	push   rbp
  113de1:	48 89 e5             	mov    rbp,rsp
  113de4:	48 83 ec 10          	sub    rsp,0x10
  113de8:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  113dec:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
  113df0:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  113df4:	31 f6                	xor    esi,esi
  113df6:	ba 00 00 40 00       	mov    edx,0x400000
  113dfb:	e8 40 9c ff ff       	call   10da40 <memset>
  113e00:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  113e04:	48 81 c7 00 00 40 00 	add    rdi,0x400000
  113e0b:	31 c0                	xor    eax,eax
  113e0d:	89 c6                	mov    esi,eax
  113e0f:	e8 8c 09 ff ff       	call   1047a0 <_ZN7FrameIDC2Em>
  113e14:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  113e18:	48 81 c7 08 00 40 00 	add    rdi,0x400008
  113e1f:	be 00 00 00 02       	mov    esi,0x2000000
  113e24:	e8 77 09 ff ff       	call   1047a0 <_ZN7FrameIDC2Em>
  113e29:	48 83 c4 10          	add    rsp,0x10
  113e2d:	5d                   	pop    rbp
  113e2e:	c3                   	ret
  113e2f:	90                   	nop

0000000000113e30 <_ZN19BitmapMemoryManager8AllocateEm>:
  113e30:	55                   	push   rbp
  113e31:	48 89 e5             	mov    rbp,rsp
  113e34:	48 83 ec 50          	sub    rsp,0x50
  113e38:	48 89 7d b8          	mov    QWORD PTR [rbp-0x48],rdi
  113e3c:	48 89 7d c0          	mov    QWORD PTR [rbp-0x40],rdi
  113e40:	48 89 75 f8          	mov    QWORD PTR [rbp-0x8],rsi
  113e44:	48 89 55 f0          	mov    QWORD PTR [rbp-0x10],rdx
  113e48:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
  113e4c:	48 89 7d c8          	mov    QWORD PTR [rbp-0x38],rdi
  113e50:	48 81 c7 00 00 40 00 	add    rdi,0x400000
  113e57:	e8 64 06 00 00       	call   1144c0 <_ZNK7FrameID2IDEv>
  113e5c:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  113e60:	48 c7 45 e0 00 00 00 	mov    QWORD PTR [rbp-0x20],0x0
  113e67:	00 
  113e68:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  113e6c:	48 3b 45 f0          	cmp    rax,QWORD PTR [rbp-0x10]
  113e70:	0f 83 9f 00 00 00    	jae    113f15 <_ZN19BitmapMemoryManager8AllocateEm+0xe5>
  113e76:	48 8b 7d c8          	mov    rdi,QWORD PTR [rbp-0x38]
  113e7a:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  113e7e:	48 03 45 e0          	add    rax,QWORD PTR [rbp-0x20]
  113e82:	48 89 45 b0          	mov    QWORD PTR [rbp-0x50],rax
  113e86:	48 81 c7 08 00 40 00 	add    rdi,0x400008
  113e8d:	e8 2e 06 00 00       	call   1144c0 <_ZNK7FrameID2IDEv>
  113e92:	48 89 c1             	mov    rcx,rax
  113e95:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
  113e99:	48 39 c8             	cmp    rax,rcx
  113e9c:	0f 82 2d 00 00 00    	jb     113ecf <_ZN19BitmapMemoryManager8AllocateEm+0x9f>
  113ea2:	48 8b 7d b8          	mov    rdi,QWORD PTR [rbp-0x48]
  113ea6:	48 8b 05 5b c1 54 00 	mov    rax,QWORD PTR [rip+0x54c15b]        # 660008 <_ZL10kNullFrame>
  113ead:	48 89 07             	mov    QWORD PTR [rdi],rax
  113eb0:	48 83 c7 08          	add    rdi,0x8
  113eb4:	be 03 00 00 00       	mov    esi,0x3
  113eb9:	48 8d 15 9a c3 fe ff 	lea    rdx,[rip+0xfffffffffffec39a]        # 10025a <_svfprintf_r.blanks-0x886>
  113ec0:	b9 10 00 00 00       	mov    ecx,0x10
  113ec5:	e8 16 06 00 00       	call   1144e0 <_ZN5ErrorC2ENS_4CodeEPKci>
  113eca:	e9 b4 00 00 00       	jmp    113f83 <_ZN19BitmapMemoryManager8AllocateEm+0x153>
  113ecf:	48 8b 75 e8          	mov    rsi,QWORD PTR [rbp-0x18]
  113ed3:	48 03 75 e0          	add    rsi,QWORD PTR [rbp-0x20]
  113ed7:	48 8d 7d d8          	lea    rdi,[rbp-0x28]
  113edb:	e8 c0 08 ff ff       	call   1047a0 <_ZN7FrameIDC2Em>
  113ee0:	48 8b 7d c8          	mov    rdi,QWORD PTR [rbp-0x38]
  113ee4:	48 8b 75 d8          	mov    rsi,QWORD PTR [rbp-0x28]
  113ee8:	e8 a3 00 00 00       	call   113f90 <_ZNK19BitmapMemoryManager6GetBitE7FrameID>
  113eed:	a8 01                	test   al,0x1
  113eef:	0f 85 05 00 00 00    	jne    113efa <_ZN19BitmapMemoryManager8AllocateEm+0xca>
  113ef5:	e9 05 00 00 00       	jmp    113eff <_ZN19BitmapMemoryManager8AllocateEm+0xcf>
  113efa:	e9 16 00 00 00       	jmp    113f15 <_ZN19BitmapMemoryManager8AllocateEm+0xe5>
  113eff:	e9 00 00 00 00       	jmp    113f04 <_ZN19BitmapMemoryManager8AllocateEm+0xd4>
  113f04:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  113f08:	48 83 c0 01          	add    rax,0x1
  113f0c:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  113f10:	e9 53 ff ff ff       	jmp    113e68 <_ZN19BitmapMemoryManager8AllocateEm+0x38>
  113f15:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  113f19:	48 3b 45 f0          	cmp    rax,QWORD PTR [rbp-0x10]
  113f1d:	0f 85 4b 00 00 00    	jne    113f6e <_ZN19BitmapMemoryManager8AllocateEm+0x13e>
  113f23:	48 8b 75 e8          	mov    rsi,QWORD PTR [rbp-0x18]
  113f27:	48 8d 7d d0          	lea    rdi,[rbp-0x30]
  113f2b:	e8 70 08 ff ff       	call   1047a0 <_ZN7FrameIDC2Em>
  113f30:	48 8b 7d c8          	mov    rdi,QWORD PTR [rbp-0x38]
  113f34:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  113f38:	48 8b 75 d0          	mov    rsi,QWORD PTR [rbp-0x30]
  113f3c:	e8 bf 00 00 00       	call   114000 <_ZN19BitmapMemoryManager13MarkAllocatedE7FrameIDm>
  113f41:	48 8b 7d b8          	mov    rdi,QWORD PTR [rbp-0x48]
  113f45:	48 8b 75 e8          	mov    rsi,QWORD PTR [rbp-0x18]
  113f49:	e8 52 08 ff ff       	call   1047a0 <_ZN7FrameIDC2Em>
  113f4e:	48 8b 7d b8          	mov    rdi,QWORD PTR [rbp-0x48]
  113f52:	48 83 c7 08          	add    rdi,0x8
  113f56:	31 f6                	xor    esi,esi
  113f58:	48 8d 15 fb c2 fe ff 	lea    rdx,[rip+0xfffffffffffec2fb]        # 10025a <_svfprintf_r.blanks-0x886>
  113f5f:	b9 1a 00 00 00       	mov    ecx,0x1a
  113f64:	e8 77 05 00 00       	call   1144e0 <_ZN5ErrorC2ENS_4CodeEPKci>
  113f69:	e9 15 00 00 00       	jmp    113f83 <_ZN19BitmapMemoryManager8AllocateEm+0x153>
  113f6e:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  113f72:	48 83 c0 01          	add    rax,0x1
  113f76:	48 03 45 e8          	add    rax,QWORD PTR [rbp-0x18]
  113f7a:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  113f7e:	e9 dd fe ff ff       	jmp    113e60 <_ZN19BitmapMemoryManager8AllocateEm+0x30>
  113f83:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
  113f87:	48 83 c4 50          	add    rsp,0x50
  113f8b:	5d                   	pop    rbp
  113f8c:	c3                   	ret
  113f8d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000113f90 <_ZNK19BitmapMemoryManager6GetBitE7FrameID>:
  113f90:	55                   	push   rbp
  113f91:	48 89 e5             	mov    rbp,rsp
  113f94:	48 83 ec 30          	sub    rsp,0x30
  113f98:	48 89 75 f8          	mov    QWORD PTR [rbp-0x8],rsi
  113f9c:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  113fa0:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  113fa4:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
  113fa8:	48 8d 7d f8          	lea    rdi,[rbp-0x8]
  113fac:	e8 0f 05 00 00       	call   1144c0 <_ZNK7FrameID2IDEv>
  113fb1:	48 c1 e8 06          	shr    rax,0x6
  113fb5:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  113fb9:	48 8d 7d f8          	lea    rdi,[rbp-0x8]
  113fbd:	e8 fe 04 00 00       	call   1144c0 <_ZNK7FrameID2IDEv>
  113fc2:	48 8b 7d d8          	mov    rdi,QWORD PTR [rbp-0x28]
  113fc6:	48 83 e0 3f          	and    rax,0x3f
  113fca:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  113fce:	48 8b 75 e8          	mov    rsi,QWORD PTR [rbp-0x18]
  113fd2:	e8 79 05 00 00       	call   114550 <_ZNKSt3__15arrayImLm524288EEixEm>
  113fd7:	48 8b 00             	mov    rax,QWORD PTR [rax]
  113fda:	48 8b 4d e0          	mov    rcx,QWORD PTR [rbp-0x20]
  113fde:	ba 01 00 00 00       	mov    edx,0x1
  113fe3:	48 d3 e2             	shl    rdx,cl
  113fe6:	48 89 d1             	mov    rcx,rdx
  113fe9:	48 21 c8             	and    rax,rcx
  113fec:	48 83 f8 00          	cmp    rax,0x0
  113ff0:	0f 95 c0             	setne  al
  113ff3:	24 01                	and    al,0x1
  113ff5:	0f b6 c0             	movzx  eax,al
  113ff8:	48 83 c4 30          	add    rsp,0x30
  113ffc:	5d                   	pop    rbp
  113ffd:	c3                   	ret
  113ffe:	66 90                	xchg   ax,ax

0000000000114000 <_ZN19BitmapMemoryManager13MarkAllocatedE7FrameIDm>:
  114000:	55                   	push   rbp
  114001:	48 89 e5             	mov    rbp,rsp
  114004:	48 83 ec 30          	sub    rsp,0x30
  114008:	48 89 75 f8          	mov    QWORD PTR [rbp-0x8],rsi
  11400c:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  114010:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
  114014:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  114018:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
  11401c:	48 c7 45 e0 00 00 00 	mov    QWORD PTR [rbp-0x20],0x0
  114023:	00 
  114024:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  114028:	48 3b 45 e8          	cmp    rax,QWORD PTR [rbp-0x18]
  11402c:	0f 83 3c 00 00 00    	jae    11406e <_ZN19BitmapMemoryManager13MarkAllocatedE7FrameIDm+0x6e>
  114032:	48 8d 7d f8          	lea    rdi,[rbp-0x8]
  114036:	e8 85 04 00 00       	call   1144c0 <_ZNK7FrameID2IDEv>
  11403b:	48 89 c6             	mov    rsi,rax
  11403e:	48 03 75 e0          	add    rsi,QWORD PTR [rbp-0x20]
  114042:	48 8d 7d d8          	lea    rdi,[rbp-0x28]
  114046:	e8 55 07 ff ff       	call   1047a0 <_ZN7FrameIDC2Em>
  11404b:	48 8b 7d d0          	mov    rdi,QWORD PTR [rbp-0x30]
  11404f:	48 8b 75 d8          	mov    rsi,QWORD PTR [rbp-0x28]
  114053:	ba 01 00 00 00       	mov    edx,0x1
  114058:	e8 b3 00 00 00       	call   114110 <_ZN19BitmapMemoryManager6SetBitE7FrameIDb>
  11405d:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  114061:	48 83 c0 01          	add    rax,0x1
  114065:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  114069:	e9 b6 ff ff ff       	jmp    114024 <_ZN19BitmapMemoryManager13MarkAllocatedE7FrameIDm+0x24>
  11406e:	48 83 c4 30          	add    rsp,0x30
  114072:	5d                   	pop    rbp
  114073:	c3                   	ret
  114074:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  11407b:	00 00 00 00 00 

0000000000114080 <_ZN19BitmapMemoryManager4FreeE7FrameIDm>:
  114080:	55                   	push   rbp
  114081:	48 89 e5             	mov    rbp,rsp
  114084:	48 83 ec 40          	sub    rsp,0x40
  114088:	48 89 75 e8          	mov    QWORD PTR [rbp-0x18],rsi
  11408c:	48 89 7d e0          	mov    QWORD PTR [rbp-0x20],rdi
  114090:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  114094:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  114098:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
  11409c:	48 c7 45 d0 00 00 00 	mov    QWORD PTR [rbp-0x30],0x0
  1140a3:	00 
  1140a4:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  1140a8:	48 3b 45 d8          	cmp    rax,QWORD PTR [rbp-0x28]
  1140ac:	0f 83 39 00 00 00    	jae    1140eb <_ZN19BitmapMemoryManager4FreeE7FrameIDm+0x6b>
  1140b2:	48 8d 7d e8          	lea    rdi,[rbp-0x18]
  1140b6:	e8 05 04 00 00       	call   1144c0 <_ZNK7FrameID2IDEv>
  1140bb:	48 89 c6             	mov    rsi,rax
  1140be:	48 03 75 d0          	add    rsi,QWORD PTR [rbp-0x30]
  1140c2:	48 8d 7d c8          	lea    rdi,[rbp-0x38]
  1140c6:	e8 d5 06 ff ff       	call   1047a0 <_ZN7FrameIDC2Em>
  1140cb:	48 8b 7d c0          	mov    rdi,QWORD PTR [rbp-0x40]
  1140cf:	48 8b 75 c8          	mov    rsi,QWORD PTR [rbp-0x38]
  1140d3:	31 d2                	xor    edx,edx
  1140d5:	e8 36 00 00 00       	call   114110 <_ZN19BitmapMemoryManager6SetBitE7FrameIDb>
  1140da:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  1140de:	48 83 c0 01          	add    rax,0x1
  1140e2:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
  1140e6:	e9 b9 ff ff ff       	jmp    1140a4 <_ZN19BitmapMemoryManager4FreeE7FrameIDm+0x24>
  1140eb:	48 8d 15 68 c1 fe ff 	lea    rdx,[rip+0xfffffffffffec168]        # 10025a <_svfprintf_r.blanks-0x886>
  1140f2:	48 8d 7d f0          	lea    rdi,[rbp-0x10]
  1140f6:	31 f6                	xor    esi,esi
  1140f8:	b9 25 00 00 00       	mov    ecx,0x25
  1140fd:	e8 de 03 00 00       	call   1144e0 <_ZN5ErrorC2ENS_4CodeEPKci>
  114102:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  114106:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  11410a:	48 83 c4 40          	add    rsp,0x40
  11410e:	5d                   	pop    rbp
  11410f:	c3                   	ret

0000000000114110 <_ZN19BitmapMemoryManager6SetBitE7FrameIDb>:
  114110:	55                   	push   rbp
  114111:	48 89 e5             	mov    rbp,rsp
  114114:	48 83 ec 40          	sub    rsp,0x40
  114118:	88 d0                	mov    al,dl
  11411a:	48 89 75 f8          	mov    QWORD PTR [rbp-0x8],rsi
  11411e:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  114122:	24 01                	and    al,0x1
  114124:	88 45 ef             	mov    BYTE PTR [rbp-0x11],al
  114127:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  11412b:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
  11412f:	48 8d 7d f8          	lea    rdi,[rbp-0x8]
  114133:	e8 88 03 00 00       	call   1144c0 <_ZNK7FrameID2IDEv>
  114138:	48 c1 e8 06          	shr    rax,0x6
  11413c:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  114140:	48 8d 7d f8          	lea    rdi,[rbp-0x8]
  114144:	e8 77 03 00 00       	call   1144c0 <_ZNK7FrameID2IDEv>
  114149:	48 83 e0 3f          	and    rax,0x3f
  11414d:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
  114151:	f6 45 ef 01          	test   BYTE PTR [rbp-0x11],0x1
  114155:	0f 84 2c 00 00 00    	je     114187 <_ZN19BitmapMemoryManager6SetBitE7FrameIDb+0x77>
  11415b:	48 8b 7d d0          	mov    rdi,QWORD PTR [rbp-0x30]
  11415f:	48 8b 4d d8          	mov    rcx,QWORD PTR [rbp-0x28]
  114163:	b8 01 00 00 00       	mov    eax,0x1
  114168:	48 d3 e0             	shl    rax,cl
  11416b:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
  11416f:	48 8b 75 e0          	mov    rsi,QWORD PTR [rbp-0x20]
  114173:	e8 08 04 00 00       	call   114580 <_ZNSt3__15arrayImLm524288EEixEm>
  114178:	48 8b 4d c8          	mov    rcx,QWORD PTR [rbp-0x38]
  11417c:	48 0b 08             	or     rcx,QWORD PTR [rax]
  11417f:	48 89 08             	mov    QWORD PTR [rax],rcx
  114182:	e9 2b 00 00 00       	jmp    1141b2 <_ZN19BitmapMemoryManager6SetBitE7FrameIDb+0xa2>
  114187:	48 8b 7d d0          	mov    rdi,QWORD PTR [rbp-0x30]
  11418b:	48 8b 4d d8          	mov    rcx,QWORD PTR [rbp-0x28]
  11418f:	b8 01 00 00 00       	mov    eax,0x1
  114194:	48 d3 e0             	shl    rax,cl
  114197:	48 83 f0 ff          	xor    rax,0xffffffffffffffff
  11419b:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
  11419f:	48 8b 75 e0          	mov    rsi,QWORD PTR [rbp-0x20]
  1141a3:	e8 d8 03 00 00       	call   114580 <_ZNSt3__15arrayImLm524288EEixEm>
  1141a8:	48 8b 4d c0          	mov    rcx,QWORD PTR [rbp-0x40]
  1141ac:	48 23 08             	and    rcx,QWORD PTR [rax]
  1141af:	48 89 08             	mov    QWORD PTR [rax],rcx
  1141b2:	48 83 c4 40          	add    rsp,0x40
  1141b6:	5d                   	pop    rbp
  1141b7:	c3                   	ret
  1141b8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  1141bf:	00 

00000000001141c0 <_ZN19BitmapMemoryManager14SetMemoryRangeE7FrameIDS0_>:
  1141c0:	55                   	push   rbp
  1141c1:	48 89 e5             	mov    rbp,rsp
  1141c4:	48 83 ec 18          	sub    rsp,0x18
  1141c8:	48 89 75 f8          	mov    QWORD PTR [rbp-0x8],rsi
  1141cc:	48 89 55 f0          	mov    QWORD PTR [rbp-0x10],rdx
  1141d0:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  1141d4:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  1141d8:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
  1141dc:	48 89 88 00 00 40 00 	mov    QWORD PTR [rax+0x400000],rcx
  1141e3:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  1141e7:	48 89 88 08 00 40 00 	mov    QWORD PTR [rax+0x400008],rcx
  1141ee:	48 83 c4 18          	add    rsp,0x18
  1141f2:	5d                   	pop    rbp
  1141f3:	c3                   	ret
  1141f4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  1141fb:	00 00 00 00 00 

0000000000114200 <_ZN19BitmapMemoryManager11IsAvailableEm>:
  114200:	55                   	push   rbp
  114201:	48 89 e5             	mov    rbp,rsp
  114204:	48 83 ec 20          	sub    rsp,0x20
  114208:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  11420c:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  114210:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  114214:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  114218:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  11421c:	e8 ff 02 00 00       	call   114520 <_Z16AddressToFrameIDm>
  114221:	48 8b 7d e0          	mov    rdi,QWORD PTR [rbp-0x20]
  114225:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  114229:	48 8b 75 e8          	mov    rsi,QWORD PTR [rbp-0x18]
  11422d:	e8 5e fd ff ff       	call   113f90 <_ZNK19BitmapMemoryManager6GetBitE7FrameID>
  114232:	24 01                	and    al,0x1
  114234:	0f b6 c0             	movzx  eax,al
  114237:	83 f8 00             	cmp    eax,0x0
  11423a:	0f 94 c0             	sete   al
  11423d:	24 01                	and    al,0x1
  11423f:	0f b6 c0             	movzx  eax,al
  114242:	48 83 c4 20          	add    rsp,0x20
  114246:	5d                   	pop    rbp
  114247:	c3                   	ret
  114248:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  11424f:	00 

0000000000114250 <_Z23InitializeMemoryManagerP19BitmapMemoryManagerP9MemoryMap>:
  114250:	55                   	push   rbp
  114251:	48 89 e5             	mov    rbp,rsp
  114254:	48 83 ec 70          	sub    rsp,0x70
  114258:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  11425c:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  114260:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  114264:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  114268:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  11426c:	48 c7 45 e0 00 00 00 	mov    QWORD PTR [rbp-0x20],0x0
  114273:	00 
  114274:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  114278:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
  11427c:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  114280:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
  114284:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  114288:	48 03 4a 10          	add    rcx,QWORD PTR [rdx+0x10]
  11428c:	48 39 c8             	cmp    rax,rcx
  11428f:	0f 83 e4 00 00 00    	jae    114379 <_Z23InitializeMemoryManagerP19BitmapMemoryManagerP9MemoryMap+0x129>
  114295:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  114299:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
  11429d:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  1142a1:	48 8b 4d d0          	mov    rcx,QWORD PTR [rbp-0x30]
  1142a5:	48 3b 41 08          	cmp    rax,QWORD PTR [rcx+0x8]
  1142a9:	0f 83 36 00 00 00    	jae    1142e5 <_Z23InitializeMemoryManagerP19BitmapMemoryManagerP9MemoryMap+0x95>
  1142af:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  1142b3:	48 89 45 a0          	mov    QWORD PTR [rbp-0x60],rax
  1142b7:	48 8b 75 e0          	mov    rsi,QWORD PTR [rbp-0x20]
  1142bb:	48 c1 ee 0c          	shr    rsi,0xc
  1142bf:	48 8d 7d c8          	lea    rdi,[rbp-0x38]
  1142c3:	e8 d8 04 ff ff       	call   1047a0 <_ZN7FrameIDC2Em>
  1142c8:	48 8b 7d a0          	mov    rdi,QWORD PTR [rbp-0x60]
  1142cc:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  1142d0:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
  1142d4:	48 2b 55 e0          	sub    rdx,QWORD PTR [rbp-0x20]
  1142d8:	48 c1 ea 0c          	shr    rdx,0xc
  1142dc:	48 8b 75 c8          	mov    rsi,QWORD PTR [rbp-0x38]
  1142e0:	e8 1b fd ff ff       	call   114000 <_ZN19BitmapMemoryManager13MarkAllocatedE7FrameIDm>
  1142e5:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  1142e9:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  1142ed:	48 8b 4d d0          	mov    rcx,QWORD PTR [rbp-0x30]
  1142f1:	48 8b 49 18          	mov    rcx,QWORD PTR [rcx+0x18]
  1142f5:	48 c1 e1 0c          	shl    rcx,0xc
  1142f9:	48 01 c8             	add    rax,rcx
  1142fc:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
  114300:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  114304:	8b 38                	mov    edi,DWORD PTR [rax]
  114306:	e8 a5 02 00 00       	call   1145b0 <_Z11IsAvailable10MemoryType>
  11430b:	a8 01                	test   al,0x1
  11430d:	0f 85 05 00 00 00    	jne    114318 <_Z23InitializeMemoryManagerP19BitmapMemoryManagerP9MemoryMap+0xc8>
  114313:	e9 0d 00 00 00       	jmp    114325 <_Z23InitializeMemoryManagerP19BitmapMemoryManagerP9MemoryMap+0xd5>
  114318:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
  11431c:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  114320:	e9 3a 00 00 00       	jmp    11435f <_Z23InitializeMemoryManagerP19BitmapMemoryManagerP9MemoryMap+0x10f>
  114325:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  114329:	48 89 45 98          	mov    QWORD PTR [rbp-0x68],rax
  11432d:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  114331:	48 8b 70 08          	mov    rsi,QWORD PTR [rax+0x8]
  114335:	48 c1 ee 0c          	shr    rsi,0xc
  114339:	48 8d 7d b8          	lea    rdi,[rbp-0x48]
  11433d:	e8 5e 04 ff ff       	call   1047a0 <_ZN7FrameIDC2Em>
  114342:	48 8b 7d 98          	mov    rdi,QWORD PTR [rbp-0x68]
  114346:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  11434a:	48 8b 50 18          	mov    rdx,QWORD PTR [rax+0x18]
  11434e:	48 c1 e2 0c          	shl    rdx,0xc
  114352:	48 c1 ea 0c          	shr    rdx,0xc
  114356:	48 8b 75 b8          	mov    rsi,QWORD PTR [rbp-0x48]
  11435a:	e8 a1 fc ff ff       	call   114000 <_ZN19BitmapMemoryManager13MarkAllocatedE7FrameIDm>
  11435f:	e9 00 00 00 00       	jmp    114364 <_Z23InitializeMemoryManagerP19BitmapMemoryManagerP9MemoryMap+0x114>
  114364:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  114368:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
  11436c:	48 03 45 d8          	add    rax,QWORD PTR [rbp-0x28]
  114370:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
  114374:	e9 03 ff ff ff       	jmp    11427c <_Z23InitializeMemoryManagerP19BitmapMemoryManagerP9MemoryMap+0x2c>
  114379:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  11437d:	48 89 45 90          	mov    QWORD PTR [rbp-0x70],rax
  114381:	48 8d 7d b0          	lea    rdi,[rbp-0x50]
  114385:	be 01 00 00 00       	mov    esi,0x1
  11438a:	e8 11 04 ff ff       	call   1047a0 <_ZN7FrameIDC2Em>
  11438f:	48 8b 75 e0          	mov    rsi,QWORD PTR [rbp-0x20]
  114393:	48 c1 ee 0c          	shr    rsi,0xc
  114397:	48 8d 7d a8          	lea    rdi,[rbp-0x58]
  11439b:	e8 00 04 ff ff       	call   1047a0 <_ZN7FrameIDC2Em>
  1143a0:	48 8b 7d 90          	mov    rdi,QWORD PTR [rbp-0x70]
  1143a4:	48 8b 75 b0          	mov    rsi,QWORD PTR [rbp-0x50]
  1143a8:	48 8b 55 a8          	mov    rdx,QWORD PTR [rbp-0x58]
  1143ac:	e8 0f fe ff ff       	call   1141c0 <_ZN19BitmapMemoryManager14SetMemoryRangeE7FrameIDS0_>
  1143b1:	48 83 c4 70          	add    rsp,0x70
  1143b5:	5d                   	pop    rbp
  1143b6:	c3                   	ret
  1143b7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  1143be:	00 00 

00000000001143c0 <_Z14InitializeHeapR19BitmapMemoryManager>:
  1143c0:	55                   	push   rbp
  1143c1:	48 89 e5             	mov    rbp,rsp
  1143c4:	48 83 ec 40          	sub    rsp,0x40
  1143c8:	48 89 7d c8          	mov    QWORD PTR [rbp-0x38],rdi
  1143cc:	48 89 7d d0          	mov    QWORD PTR [rbp-0x30],rdi
  1143d0:	48 89 75 f8          	mov    QWORD PTR [rbp-0x8],rsi
  1143d4:	c7 45 f4 00 80 00 00 	mov    DWORD PTR [rbp-0xc],0x8000
  1143db:	48 8b 75 f8          	mov    rsi,QWORD PTR [rbp-0x8]
  1143df:	48 8d 7d d8          	lea    rdi,[rbp-0x28]
  1143e3:	ba 00 80 00 00       	mov    edx,0x8000
  1143e8:	e8 43 fa ff ff       	call   113e30 <_ZN19BitmapMemoryManager8AllocateEm>
  1143ed:	48 8d 7d d8          	lea    rdi,[rbp-0x28]
  1143f1:	48 83 c7 08          	add    rdi,0x8
  1143f5:	e8 26 04 ff ff       	call   104820 <_ZNK5ErrorcvbEv>
  1143fa:	a8 01                	test   al,0x1
  1143fc:	0f 85 05 00 00 00    	jne    114407 <_Z14InitializeHeapR19BitmapMemoryManager+0x47>
  114402:	e9 20 00 00 00       	jmp    114427 <_Z14InitializeHeapR19BitmapMemoryManager+0x67>
  114407:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  11440b:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
  114412:	48 8b 4d e0          	mov    rcx,QWORD PTR [rbp-0x20]
  114416:	48 89 48 08          	mov    QWORD PTR [rax+0x8],rcx
  11441a:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
  11441e:	48 89 48 10          	mov    QWORD PTR [rax+0x10],rcx
  114422:	e9 5d 00 00 00       	jmp    114484 <_Z14InitializeHeapR19BitmapMemoryManager+0xc4>
  114427:	48 8d 7d d8          	lea    rdi,[rbp-0x28]
  11442b:	e8 90 00 00 00       	call   1144c0 <_ZNK7FrameID2IDEv>
  114430:	48 8b 7d c8          	mov    rdi,QWORD PTR [rbp-0x38]
  114434:	48 89 c1             	mov    rcx,rax
  114437:	48 c1 e1 0c          	shl    rcx,0xc
  11443b:	48 8d 05 66 87 50 00 	lea    rax,[rip+0x508766]        # 61cba8 <program_break>
  114442:	48 89 08             	mov    QWORD PTR [rax],rcx
  114445:	48 8d 05 5c 87 50 00 	lea    rax,[rip+0x50875c]        # 61cba8 <program_break>
  11444c:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  11444f:	48 81 c1 00 00 00 08 	add    rcx,0x8000000
  114456:	48 8d 05 53 87 50 00 	lea    rax,[rip+0x508753]        # 61cbb0 <program_break_end>
  11445d:	48 89 08             	mov    QWORD PTR [rax],rcx
  114460:	48 8d 05 41 87 50 00 	lea    rax,[rip+0x508741]        # 61cba8 <program_break>
  114467:	48 8b 00             	mov    rax,QWORD PTR [rax]
  11446a:	48 89 07             	mov    QWORD PTR [rdi],rax
  11446d:	48 83 c7 08          	add    rdi,0x8
  114471:	31 f6                	xor    esi,esi
  114473:	48 8d 15 e0 bd fe ff 	lea    rdx,[rip+0xfffffffffffebde0]        # 10025a <_svfprintf_r.blanks-0x886>
  11447a:	b9 6c 00 00 00       	mov    ecx,0x6c
  11447f:	e8 5c 00 00 00       	call   1144e0 <_ZN5ErrorC2ENS_4CodeEPKci>
  114484:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  114488:	48 83 c4 40          	add    rsp,0x40
  11448c:	5d                   	pop    rbp
  11448d:	c3                   	ret
  11448e:	cc                   	int3
  11448f:	cc                   	int3

0000000000114490 <__cxx_global_var_init>:
  114490:	55                   	push   rbp
  114491:	48 89 e5             	mov    rbp,rsp
  114494:	e8 f7 02 ff ff       	call   104790 <_ZNSt3__114numeric_limitsImE3maxEv>
  114499:	48 89 c6             	mov    rsi,rax
  11449c:	48 8d 3d 65 bb 54 00 	lea    rdi,[rip+0x54bb65]        # 660008 <_ZL10kNullFrame>
  1144a3:	e8 f8 02 ff ff       	call   1047a0 <_ZN7FrameIDC2Em>
  1144a8:	5d                   	pop    rbp
  1144a9:	c3                   	ret
  1144aa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000001144b0 <_GLOBAL__sub_I_memory_manager.cpp>:
  1144b0:	55                   	push   rbp
  1144b1:	48 89 e5             	mov    rbp,rsp
  1144b4:	e8 d7 ff ff ff       	call   114490 <__cxx_global_var_init>
  1144b9:	5d                   	pop    rbp
  1144ba:	c3                   	ret
  1144bb:	cc                   	int3
  1144bc:	cc                   	int3
  1144bd:	cc                   	int3
  1144be:	cc                   	int3
  1144bf:	cc                   	int3

00000000001144c0 <_ZNK7FrameID2IDEv>:
  1144c0:	55                   	push   rbp
  1144c1:	48 89 e5             	mov    rbp,rsp
  1144c4:	50                   	push   rax
  1144c5:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  1144c9:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  1144cd:	48 8b 00             	mov    rax,QWORD PTR [rax]
  1144d0:	48 83 c4 08          	add    rsp,0x8
  1144d4:	5d                   	pop    rbp
  1144d5:	c3                   	ret
  1144d6:	cc                   	int3
  1144d7:	cc                   	int3
  1144d8:	cc                   	int3
  1144d9:	cc                   	int3
  1144da:	cc                   	int3
  1144db:	cc                   	int3
  1144dc:	cc                   	int3
  1144dd:	cc                   	int3
  1144de:	cc                   	int3
  1144df:	cc                   	int3

00000000001144e0 <_ZN5ErrorC2ENS_4CodeEPKci>:
  1144e0:	55                   	push   rbp
  1144e1:	48 89 e5             	mov    rbp,rsp
  1144e4:	48 83 ec 20          	sub    rsp,0x20
  1144e8:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  1144ec:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi
  1144ef:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
  1144f3:	89 4d e4             	mov    DWORD PTR [rbp-0x1c],ecx
  1144f6:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  1144fa:	8b 4d f4             	mov    ecx,DWORD PTR [rbp-0xc]
  1144fd:	89 08                	mov    DWORD PTR [rax],ecx
  1144ff:	8b 4d e4             	mov    ecx,DWORD PTR [rbp-0x1c]
  114502:	89 48 04             	mov    DWORD PTR [rax+0x4],ecx
  114505:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
  114509:	48 89 48 08          	mov    QWORD PTR [rax+0x8],rcx
  11450d:	48 83 c4 20          	add    rsp,0x20
  114511:	5d                   	pop    rbp
  114512:	c3                   	ret
  114513:	cc                   	int3
  114514:	cc                   	int3
  114515:	cc                   	int3
  114516:	cc                   	int3
  114517:	cc                   	int3
  114518:	cc                   	int3
  114519:	cc                   	int3
  11451a:	cc                   	int3
  11451b:	cc                   	int3
  11451c:	cc                   	int3
  11451d:	cc                   	int3
  11451e:	cc                   	int3
  11451f:	cc                   	int3

0000000000114520 <_Z16AddressToFrameIDm>:
  114520:	55                   	push   rbp
  114521:	48 89 e5             	mov    rbp,rsp
  114524:	48 83 ec 10          	sub    rsp,0x10
  114528:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  11452c:	48 8b 75 f0          	mov    rsi,QWORD PTR [rbp-0x10]
  114530:	48 c1 ee 0c          	shr    rsi,0xc
  114534:	48 8d 7d f8          	lea    rdi,[rbp-0x8]
  114538:	e8 63 02 ff ff       	call   1047a0 <_ZN7FrameIDC2Em>
  11453d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  114541:	48 83 c4 10          	add    rsp,0x10
  114545:	5d                   	pop    rbp
  114546:	c3                   	ret
  114547:	cc                   	int3
  114548:	cc                   	int3
  114549:	cc                   	int3
  11454a:	cc                   	int3
  11454b:	cc                   	int3
  11454c:	cc                   	int3
  11454d:	cc                   	int3
  11454e:	cc                   	int3
  11454f:	cc                   	int3

0000000000114550 <_ZNKSt3__15arrayImLm524288EEixEm>:
  114550:	55                   	push   rbp
  114551:	48 89 e5             	mov    rbp,rsp
  114554:	48 83 ec 10          	sub    rsp,0x10
  114558:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  11455c:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  114560:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  114564:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  114568:	48 c1 e1 03          	shl    rcx,0x3
  11456c:	48 01 c8             	add    rax,rcx
  11456f:	48 83 c4 10          	add    rsp,0x10
  114573:	5d                   	pop    rbp
  114574:	c3                   	ret
  114575:	cc                   	int3
  114576:	cc                   	int3
  114577:	cc                   	int3
  114578:	cc                   	int3
  114579:	cc                   	int3
  11457a:	cc                   	int3
  11457b:	cc                   	int3
  11457c:	cc                   	int3
  11457d:	cc                   	int3
  11457e:	cc                   	int3
  11457f:	cc                   	int3

0000000000114580 <_ZNSt3__15arrayImLm524288EEixEm>:
  114580:	55                   	push   rbp
  114581:	48 89 e5             	mov    rbp,rsp
  114584:	48 83 ec 10          	sub    rsp,0x10
  114588:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  11458c:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  114590:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  114594:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  114598:	48 c1 e1 03          	shl    rcx,0x3
  11459c:	48 01 c8             	add    rax,rcx
  11459f:	48 83 c4 10          	add    rsp,0x10
  1145a3:	5d                   	pop    rbp
  1145a4:	c3                   	ret
  1145a5:	cc                   	int3
  1145a6:	cc                   	int3
  1145a7:	cc                   	int3
  1145a8:	cc                   	int3
  1145a9:	cc                   	int3
  1145aa:	cc                   	int3
  1145ab:	cc                   	int3
  1145ac:	cc                   	int3
  1145ad:	cc                   	int3
  1145ae:	cc                   	int3
  1145af:	cc                   	int3

00000000001145b0 <_Z11IsAvailable10MemoryType>:
  1145b0:	55                   	push   rbp
  1145b1:	48 89 e5             	mov    rbp,rsp
  1145b4:	50                   	push   rax
  1145b5:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  1145b8:	b0 01                	mov    al,0x1
  1145ba:	83 7d fc 03          	cmp    DWORD PTR [rbp-0x4],0x3
  1145be:	88 45 fb             	mov    BYTE PTR [rbp-0x5],al
  1145c1:	0f 84 19 00 00 00    	je     1145e0 <_Z11IsAvailable10MemoryType+0x30>
  1145c7:	b0 01                	mov    al,0x1
  1145c9:	83 7d fc 04          	cmp    DWORD PTR [rbp-0x4],0x4
  1145cd:	88 45 fb             	mov    BYTE PTR [rbp-0x5],al
  1145d0:	0f 84 0a 00 00 00    	je     1145e0 <_Z11IsAvailable10MemoryType+0x30>
  1145d6:	83 7d fc 07          	cmp    DWORD PTR [rbp-0x4],0x7
  1145da:	0f 94 c0             	sete   al
  1145dd:	88 45 fb             	mov    BYTE PTR [rbp-0x5],al
  1145e0:	8a 45 fb             	mov    al,BYTE PTR [rbp-0x5]
  1145e3:	24 01                	and    al,0x1
  1145e5:	0f b6 c0             	movzx  eax,al
  1145e8:	48 83 c4 08          	add    rsp,0x8
  1145ec:	5d                   	pop    rbp
  1145ed:	c3                   	ret
  1145ee:	cc                   	int3
  1145ef:	cc                   	int3

00000000001145f0 <_Z20InitializeLAPICTimerv>:
  1145f0:	55                   	push   rbp
  1145f1:	48 89 e5             	mov    rbp,rsp
  1145f4:	48 8b 05 fd ca fe ff 	mov    rax,QWORD PTR [rip+0xfffffffffffecafd]        # 1010f8 <_ZN12_GLOBAL__N_113divide_configE>
  1145fb:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
  114601:	48 8b 05 f8 ca fe ff 	mov    rax,QWORD PTR [rip+0xfffffffffffecaf8]        # 101100 <_ZN12_GLOBAL__N_19lvt_timerE>
  114608:	c7 00 20 00 01 00    	mov    DWORD PTR [rax],0x10020
  11460e:	5d                   	pop    rbp
  11460f:	c3                   	ret

0000000000114610 <_Z15StartLAPICTimerv>:
  114610:	55                   	push   rbp
  114611:	48 89 e5             	mov    rbp,rsp
  114614:	48 8b 05 ed ca fe ff 	mov    rax,QWORD PTR [rip+0xfffffffffffecaed]        # 101108 <_ZN12_GLOBAL__N_113initial_countE>
  11461b:	c7 00 ff ff ff ff    	mov    DWORD PTR [rax],0xffffffff
  114621:	5d                   	pop    rbp
  114622:	c3                   	ret
  114623:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  11462a:	84 00 00 00 00 00 

0000000000114630 <_Z10LAPICTimerv>:
  114630:	55                   	push   rbp
  114631:	48 89 e5             	mov    rbp,rsp
  114634:	b8 90 03 e0 fe       	mov    eax,0xfee00390
  114639:	8b 08                	mov    ecx,DWORD PTR [rax]
  11463b:	b8 ff ff ff ff       	mov    eax,0xffffffff
  114640:	29 c8                	sub    eax,ecx
  114642:	5d                   	pop    rbp
  114643:	c3                   	ret
  114644:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  11464b:	00 00 00 00 00 

0000000000114650 <_Z14StopLAPICTimerv>:
  114650:	55                   	push   rbp
  114651:	48 89 e5             	mov    rbp,rsp
  114654:	48 8b 05 ad ca fe ff 	mov    rax,QWORD PTR [rip+0xfffffffffffecaad]        # 101108 <_ZN12_GLOBAL__N_113initial_countE>
  11465b:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
  114661:	5d                   	pop    rbp
  114662:	c3                   	ret
  114663:	cc                   	int3
  114664:	cc                   	int3
  114665:	cc                   	int3
  114666:	cc                   	int3
  114667:	cc                   	int3
  114668:	cc                   	int3
  114669:	cc                   	int3
  11466a:	cc                   	int3
  11466b:	cc                   	int3
  11466c:	cc                   	int3
  11466d:	cc                   	int3
  11466e:	cc                   	int3
  11466f:	cc                   	int3

0000000000114670 <_Z20InitializeBackBufferP12video_info_t>:
  114670:	55                   	push   rbp
  114671:	48 89 e5             	mov    rbp,rsp
  114674:	48 83 ec 10          	sub    rsp,0x10
  114678:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  11467c:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  114680:	48 8d 05 a9 2d 50 00 	lea    rax,[rip+0x502da9]        # 617430 <vinfo>
  114687:	48 89 08             	mov    QWORD PTR [rax],rcx
  11468a:	48 8d 05 9f 2d 50 00 	lea    rax,[rip+0x502d9f]        # 617430 <vinfo>
  114691:	48 8b 00             	mov    rax,QWORD PTR [rax]
  114694:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  114698:	89 05 82 b9 54 00    	mov    DWORD PTR [rip+0x54b982],eax        # 660020 <bb_size>
  11469e:	48 63 3d 7b b9 54 00 	movsxd rdi,DWORD PTR [rip+0x54b97b]        # 660020 <bb_size>
  1146a5:	e8 c6 f4 ff ff       	call   113b70 <malloc>
  1146aa:	48 89 05 67 b9 54 00 	mov    QWORD PTR [rip+0x54b967],rax        # 660018 <back_buffer>
  1146b1:	48 83 3d 5f b9 54 00 	cmp    QWORD PTR [rip+0x54b95f],0x0        # 660018 <back_buffer>
  1146b8:	00 
  1146b9:	0f 85 0c 00 00 00    	jne    1146cb <_Z20InitializeBackBufferP12video_info_t+0x5b>
  1146bf:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
  1146c6:	e9 65 00 00 00       	jmp    114730 <_Z20InitializeBackBufferP12video_info_t+0xc0>
  1146cb:	48 8d 05 5e 2d 50 00 	lea    rax,[rip+0x502d5e]        # 617430 <vinfo>
  1146d2:	48 8b 00             	mov    rax,QWORD PTR [rax]
  1146d5:	83 78 1c 00          	cmp    DWORD PTR [rax+0x1c],0x0
  1146d9:	0f 85 13 00 00 00    	jne    1146f2 <_Z20InitializeBackBufferP12video_info_t+0x82>
  1146df:	48 8d 05 5a 00 00 00 	lea    rax,[rip+0x5a]        # 114740 <_Z16BB_WritePixelRGB5Colorii>
  1146e6:	48 89 05 23 b9 54 00 	mov    QWORD PTR [rip+0x54b923],rax        # 660010 <BB_WritePixel>
  1146ed:	e9 37 00 00 00       	jmp    114729 <_Z20InitializeBackBufferP12video_info_t+0xb9>
  1146f2:	48 8d 05 37 2d 50 00 	lea    rax,[rip+0x502d37]        # 617430 <vinfo>
  1146f9:	48 8b 00             	mov    rax,QWORD PTR [rax]
  1146fc:	83 78 1c 01          	cmp    DWORD PTR [rax+0x1c],0x1
  114700:	0f 85 13 00 00 00    	jne    114719 <_Z20InitializeBackBufferP12video_info_t+0xa9>
  114706:	48 8d 05 b3 00 00 00 	lea    rax,[rip+0xb3]        # 1147c0 <_Z16BB_WritePixelBGR5Colorii>
  11470d:	48 89 05 fc b8 54 00 	mov    QWORD PTR [rip+0x54b8fc],rax        # 660010 <BB_WritePixel>
  114714:	e9 0b 00 00 00       	jmp    114724 <_Z20InitializeBackBufferP12video_info_t+0xb4>
  114719:	e9 00 00 00 00       	jmp    11471e <_Z20InitializeBackBufferP12video_info_t+0xae>
  11471e:	f4                   	hlt
  11471f:	e9 fa ff ff ff       	jmp    11471e <_Z20InitializeBackBufferP12video_info_t+0xae>
  114724:	e9 00 00 00 00       	jmp    114729 <_Z20InitializeBackBufferP12video_info_t+0xb9>
  114729:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  114730:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  114733:	48 83 c4 10          	add    rsp,0x10
  114737:	5d                   	pop    rbp
  114738:	c3                   	ret
  114739:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000114740 <_Z16BB_WritePixelRGB5Colorii>:
  114740:	55                   	push   rbp
  114741:	48 89 e5             	mov    rbp,rsp
  114744:	48 83 ec 20          	sub    rsp,0x20
  114748:	66 89 f8             	mov    ax,di
  11474b:	66 89 45 f4          	mov    WORD PTR [rbp-0xc],ax
  11474f:	c1 ef 10             	shr    edi,0x10
  114752:	40 88 f8             	mov    al,dil
  114755:	88 45 f6             	mov    BYTE PTR [rbp-0xa],al
  114758:	66 8b 45 f4          	mov    ax,WORD PTR [rbp-0xc]
  11475c:	66 89 45 f8          	mov    WORD PTR [rbp-0x8],ax
  114760:	8a 45 f6             	mov    al,BYTE PTR [rbp-0xa]
  114763:	88 45 fa             	mov    BYTE PTR [rbp-0x6],al
  114766:	89 75 f0             	mov    DWORD PTR [rbp-0x10],esi
  114769:	89 55 ec             	mov    DWORD PTR [rbp-0x14],edx
  11476c:	48 8d 05 bd 2c 50 00 	lea    rax,[rip+0x502cbd]        # 617430 <vinfo>
  114773:	48 8b 00             	mov    rax,QWORD PTR [rax]
  114776:	8b 40 10             	mov    eax,DWORD PTR [rax+0x10]
  114779:	0f af 45 ec          	imul   eax,DWORD PTR [rbp-0x14]
  11477d:	03 45 f0             	add    eax,DWORD PTR [rbp-0x10]
  114780:	89 45 e8             	mov    DWORD PTR [rbp-0x18],eax
  114783:	48 8b 05 8e b8 54 00 	mov    rax,QWORD PTR [rip+0x54b88e]        # 660018 <back_buffer>
  11478a:	8b 4d e8             	mov    ecx,DWORD PTR [rbp-0x18]
  11478d:	c1 e1 02             	shl    ecx,0x2
  114790:	48 63 c9             	movsxd rcx,ecx
  114793:	48 01 c8             	add    rax,rcx
  114796:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  11479a:	8a 4d f8             	mov    cl,BYTE PTR [rbp-0x8]
  11479d:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  1147a1:	88 08                	mov    BYTE PTR [rax],cl
  1147a3:	8a 4d f9             	mov    cl,BYTE PTR [rbp-0x7]
  1147a6:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  1147aa:	88 48 01             	mov    BYTE PTR [rax+0x1],cl
  1147ad:	8a 4d fa             	mov    cl,BYTE PTR [rbp-0x6]
  1147b0:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  1147b4:	88 48 02             	mov    BYTE PTR [rax+0x2],cl
  1147b7:	31 c0                	xor    eax,eax
  1147b9:	48 83 c4 20          	add    rsp,0x20
  1147bd:	5d                   	pop    rbp
  1147be:	c3                   	ret
  1147bf:	90                   	nop

00000000001147c0 <_Z16BB_WritePixelBGR5Colorii>:
  1147c0:	55                   	push   rbp
  1147c1:	48 89 e5             	mov    rbp,rsp
  1147c4:	48 83 ec 20          	sub    rsp,0x20
  1147c8:	66 89 f8             	mov    ax,di
  1147cb:	66 89 45 f4          	mov    WORD PTR [rbp-0xc],ax
  1147cf:	c1 ef 10             	shr    edi,0x10
  1147d2:	40 88 f8             	mov    al,dil
  1147d5:	88 45 f6             	mov    BYTE PTR [rbp-0xa],al
  1147d8:	66 8b 45 f4          	mov    ax,WORD PTR [rbp-0xc]
  1147dc:	66 89 45 f8          	mov    WORD PTR [rbp-0x8],ax
  1147e0:	8a 45 f6             	mov    al,BYTE PTR [rbp-0xa]
  1147e3:	88 45 fa             	mov    BYTE PTR [rbp-0x6],al
  1147e6:	89 75 f0             	mov    DWORD PTR [rbp-0x10],esi
  1147e9:	89 55 ec             	mov    DWORD PTR [rbp-0x14],edx
  1147ec:	48 8d 05 3d 2c 50 00 	lea    rax,[rip+0x502c3d]        # 617430 <vinfo>
  1147f3:	48 8b 00             	mov    rax,QWORD PTR [rax]
  1147f6:	8b 40 10             	mov    eax,DWORD PTR [rax+0x10]
  1147f9:	0f af 45 ec          	imul   eax,DWORD PTR [rbp-0x14]
  1147fd:	03 45 f0             	add    eax,DWORD PTR [rbp-0x10]
  114800:	89 45 e8             	mov    DWORD PTR [rbp-0x18],eax
  114803:	48 8b 05 0e b8 54 00 	mov    rax,QWORD PTR [rip+0x54b80e]        # 660018 <back_buffer>
  11480a:	8b 4d e8             	mov    ecx,DWORD PTR [rbp-0x18]
  11480d:	c1 e1 02             	shl    ecx,0x2
  114810:	48 63 c9             	movsxd rcx,ecx
  114813:	48 01 c8             	add    rax,rcx
  114816:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  11481a:	8a 4d fa             	mov    cl,BYTE PTR [rbp-0x6]
  11481d:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  114821:	88 08                	mov    BYTE PTR [rax],cl
  114823:	8a 4d f9             	mov    cl,BYTE PTR [rbp-0x7]
  114826:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  11482a:	88 48 01             	mov    BYTE PTR [rax+0x1],cl
  11482d:	8a 4d f8             	mov    cl,BYTE PTR [rbp-0x8]
  114830:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  114834:	88 48 02             	mov    BYTE PTR [rax+0x2],cl
  114837:	31 c0                	xor    eax,eax
  114839:	48 83 c4 20          	add    rsp,0x20
  11483d:	5d                   	pop    rbp
  11483e:	c3                   	ret
  11483f:	90                   	nop

0000000000114840 <_Z10SwapBufferv>:
  114840:	55                   	push   rbp
  114841:	48 89 e5             	mov    rbp,rsp
  114844:	48 8d 05 e5 2b 50 00 	lea    rax,[rip+0x502be5]        # 617430 <vinfo>
  11484b:	48 8b 00             	mov    rax,QWORD PTR [rax]
  11484e:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  114851:	48 8b 35 c0 b7 54 00 	mov    rsi,QWORD PTR [rip+0x54b7c0]        # 660018 <back_buffer>
  114858:	48 63 15 c1 b7 54 00 	movsxd rdx,DWORD PTR [rip+0x54b7c1]        # 660020 <bb_size>
  11485f:	e8 0c 63 ff ff       	call   10ab70 <memcpy>
  114864:	31 c0                	xor    eax,eax
  114866:	5d                   	pop    rbp
  114867:	c3                   	ret
  114868:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  11486f:	00 

0000000000114870 <_Z14BB_WriteSquare6VectorS_5Color>:
  114870:	55                   	push   rbp
  114871:	48 89 e5             	mov    rbp,rsp
  114874:	48 83 ec 50          	sub    rsp,0x50
  114878:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  11487c:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  114880:	89 d0                	mov    eax,edx
  114882:	c1 e8 10             	shr    eax,0x10
  114885:	88 45 e6             	mov    BYTE PTR [rbp-0x1a],al
  114888:	66 89 d0             	mov    ax,dx
  11488b:	66 89 45 e4          	mov    WORD PTR [rbp-0x1c],ax
  11488f:	66 8b 45 e4          	mov    ax,WORD PTR [rbp-0x1c]
  114893:	66 89 45 e8          	mov    WORD PTR [rbp-0x18],ax
  114897:	8a 45 e6             	mov    al,BYTE PTR [rbp-0x1a]
  11489a:	88 45 ea             	mov    BYTE PTR [rbp-0x16],al
  11489d:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  1148a0:	3b 45 f0             	cmp    eax,DWORD PTR [rbp-0x10]
  1148a3:	0f 8e 0b 00 00 00    	jle    1148b4 <_Z14BB_WriteSquare6VectorS_5Color+0x44>
  1148a9:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  1148ac:	89 45 d0             	mov    DWORD PTR [rbp-0x30],eax
  1148af:	e9 06 00 00 00       	jmp    1148ba <_Z14BB_WriteSquare6VectorS_5Color+0x4a>
  1148b4:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  1148b7:	89 45 d0             	mov    DWORD PTR [rbp-0x30],eax
  1148ba:	8b 45 d0             	mov    eax,DWORD PTR [rbp-0x30]
  1148bd:	89 45 e0             	mov    DWORD PTR [rbp-0x20],eax
  1148c0:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
  1148c3:	89 45 cc             	mov    DWORD PTR [rbp-0x34],eax
  1148c6:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  1148c9:	3b 45 f0             	cmp    eax,DWORD PTR [rbp-0x10]
  1148cc:	0f 8d 0b 00 00 00    	jge    1148dd <_Z14BB_WriteSquare6VectorS_5Color+0x6d>
  1148d2:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  1148d5:	89 45 c8             	mov    DWORD PTR [rbp-0x38],eax
  1148d8:	e9 06 00 00 00       	jmp    1148e3 <_Z14BB_WriteSquare6VectorS_5Color+0x73>
  1148dd:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  1148e0:	89 45 c8             	mov    DWORD PTR [rbp-0x38],eax
  1148e3:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
  1148e6:	8b 4d c8             	mov    ecx,DWORD PTR [rbp-0x38]
  1148e9:	39 c8                	cmp    eax,ecx
  1148eb:	0f 8d ad 00 00 00    	jge    11499e <_Z14BB_WriteSquare6VectorS_5Color+0x12e>
  1148f1:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  1148f4:	3b 45 f4             	cmp    eax,DWORD PTR [rbp-0xc]
  1148f7:	0f 8e 0b 00 00 00    	jle    114908 <_Z14BB_WriteSquare6VectorS_5Color+0x98>
  1148fd:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  114900:	89 45 c4             	mov    DWORD PTR [rbp-0x3c],eax
  114903:	e9 06 00 00 00       	jmp    11490e <_Z14BB_WriteSquare6VectorS_5Color+0x9e>
  114908:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  11490b:	89 45 c4             	mov    DWORD PTR [rbp-0x3c],eax
  11490e:	8b 45 c4             	mov    eax,DWORD PTR [rbp-0x3c]
  114911:	89 45 dc             	mov    DWORD PTR [rbp-0x24],eax
  114914:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
  114917:	89 45 c0             	mov    DWORD PTR [rbp-0x40],eax
  11491a:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  11491d:	3b 45 f4             	cmp    eax,DWORD PTR [rbp-0xc]
  114920:	0f 8d 0b 00 00 00    	jge    114931 <_Z14BB_WriteSquare6VectorS_5Color+0xc1>
  114926:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  114929:	89 45 bc             	mov    DWORD PTR [rbp-0x44],eax
  11492c:	e9 06 00 00 00       	jmp    114937 <_Z14BB_WriteSquare6VectorS_5Color+0xc7>
  114931:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  114934:	89 45 bc             	mov    DWORD PTR [rbp-0x44],eax
  114937:	8b 45 c0             	mov    eax,DWORD PTR [rbp-0x40]
  11493a:	8b 4d bc             	mov    ecx,DWORD PTR [rbp-0x44]
  11493d:	39 c8                	cmp    eax,ecx
  11493f:	0f 8d 46 00 00 00    	jge    11498b <_Z14BB_WriteSquare6VectorS_5Color+0x11b>
  114945:	48 8b 05 c4 b6 54 00 	mov    rax,QWORD PTR [rip+0x54b6c4]        # 660010 <BB_WritePixel>
  11494c:	8a 4d ea             	mov    cl,BYTE PTR [rbp-0x16]
  11494f:	88 4d da             	mov    BYTE PTR [rbp-0x26],cl
  114952:	66 8b 4d e8          	mov    cx,WORD PTR [rbp-0x18]
  114956:	66 89 4d d8          	mov    WORD PTR [rbp-0x28],cx
  11495a:	8b 75 e0             	mov    esi,DWORD PTR [rbp-0x20]
  11495d:	8b 55 dc             	mov    edx,DWORD PTR [rbp-0x24]
  114960:	8a 4d da             	mov    cl,BYTE PTR [rbp-0x26]
  114963:	88 4d d6             	mov    BYTE PTR [rbp-0x2a],cl
  114966:	66 8b 4d d8          	mov    cx,WORD PTR [rbp-0x28]
  11496a:	66 89 4d d4          	mov    WORD PTR [rbp-0x2c],cx
  11496e:	0f b6 4d d6          	movzx  ecx,BYTE PTR [rbp-0x2a]
  114972:	c1 e1 10             	shl    ecx,0x10
  114975:	0f b7 7d d4          	movzx  edi,WORD PTR [rbp-0x2c]
  114979:	09 cf                	or     edi,ecx
  11497b:	ff d0                	call   rax
  11497d:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
  114980:	83 c0 01             	add    eax,0x1
  114983:	89 45 dc             	mov    DWORD PTR [rbp-0x24],eax
  114986:	e9 89 ff ff ff       	jmp    114914 <_Z14BB_WriteSquare6VectorS_5Color+0xa4>
  11498b:	e9 00 00 00 00       	jmp    114990 <_Z14BB_WriteSquare6VectorS_5Color+0x120>
  114990:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
  114993:	83 c0 01             	add    eax,0x1
  114996:	89 45 e0             	mov    DWORD PTR [rbp-0x20],eax
  114999:	e9 22 ff ff ff       	jmp    1148c0 <_Z14BB_WriteSquare6VectorS_5Color+0x50>
  11499e:	31 c0                	xor    eax,eax
  1149a0:	48 83 c4 50          	add    rsp,0x50
  1149a4:	5d                   	pop    rbp
  1149a5:	c3                   	ret
  1149a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  1149ad:	00 00 00 

00000000001149b0 <_Z13BB_WriteAsciic5Colorii>:
  1149b0:	55                   	push   rbp
  1149b1:	48 89 e5             	mov    rbp,rsp
  1149b4:	48 83 ec 30          	sub    rsp,0x30
  1149b8:	40 88 f8             	mov    al,dil
  1149bb:	66 89 f7             	mov    di,si
  1149be:	66 89 7d f4          	mov    WORD PTR [rbp-0xc],di
  1149c2:	c1 ee 10             	shr    esi,0x10
  1149c5:	40 88 75 f6          	mov    BYTE PTR [rbp-0xa],sil
  1149c9:	66 8b 75 f4          	mov    si,WORD PTR [rbp-0xc]
  1149cd:	66 89 75 f8          	mov    WORD PTR [rbp-0x8],si
  1149d1:	40 8a 75 f6          	mov    sil,BYTE PTR [rbp-0xa]
  1149d5:	40 88 75 fa          	mov    BYTE PTR [rbp-0x6],sil
  1149d9:	88 45 f3             	mov    BYTE PTR [rbp-0xd],al
  1149dc:	89 55 ec             	mov    DWORD PTR [rbp-0x14],edx
  1149df:	89 4d e8             	mov    DWORD PTR [rbp-0x18],ecx
  1149e2:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [rbp-0x1c],0x0
  1149e9:	83 7d e4 10          	cmp    DWORD PTR [rbp-0x1c],0x10
  1149ed:	0f 8d ad 00 00 00    	jge    114aa0 <_Z13BB_WriteAsciic5Colorii+0xf0>
  1149f3:	c7 45 e0 00 00 00 00 	mov    DWORD PTR [rbp-0x20],0x0
  1149fa:	83 7d e0 08          	cmp    DWORD PTR [rbp-0x20],0x8
  1149fe:	0f 8d 89 00 00 00    	jge    114a8d <_Z13BB_WriteAsciic5Colorii+0xdd>
  114a04:	48 8d 05 2d 2a 50 00 	lea    rax,[rip+0x502a2d]        # 617438 <ascii_font>
  114a0b:	48 8b 00             	mov    rax,QWORD PTR [rax]
  114a0e:	48 0f be 4d f3       	movsx  rcx,BYTE PTR [rbp-0xd]
  114a13:	48 c1 e1 04          	shl    rcx,0x4
  114a17:	48 01 c8             	add    rax,rcx
  114a1a:	48 63 4d e4          	movsxd rcx,DWORD PTR [rbp-0x1c]
  114a1e:	0f be 04 08          	movsx  eax,BYTE PTR [rax+rcx*1]
  114a22:	b9 07 00 00 00       	mov    ecx,0x7
  114a27:	2b 4d e0             	sub    ecx,DWORD PTR [rbp-0x20]
  114a2a:	d3 f8                	sar    eax,cl
  114a2c:	83 e0 01             	and    eax,0x1
  114a2f:	83 f8 00             	cmp    eax,0x0
  114a32:	0f 84 42 00 00 00    	je     114a7a <_Z13BB_WriteAsciic5Colorii+0xca>
  114a38:	48 8b 05 d1 b5 54 00 	mov    rax,QWORD PTR [rip+0x54b5d1]        # 660010 <BB_WritePixel>
  114a3f:	8a 4d fa             	mov    cl,BYTE PTR [rbp-0x6]
  114a42:	88 4d da             	mov    BYTE PTR [rbp-0x26],cl
  114a45:	66 8b 4d f8          	mov    cx,WORD PTR [rbp-0x8]
  114a49:	66 89 4d d8          	mov    WORD PTR [rbp-0x28],cx
  114a4d:	8b 75 ec             	mov    esi,DWORD PTR [rbp-0x14]
  114a50:	8b 4d e0             	mov    ecx,DWORD PTR [rbp-0x20]
  114a53:	01 ce                	add    esi,ecx
  114a55:	8b 55 e8             	mov    edx,DWORD PTR [rbp-0x18]
  114a58:	8b 4d e4             	mov    ecx,DWORD PTR [rbp-0x1c]
  114a5b:	01 ca                	add    edx,ecx
  114a5d:	8a 4d da             	mov    cl,BYTE PTR [rbp-0x26]
  114a60:	88 4d d6             	mov    BYTE PTR [rbp-0x2a],cl
  114a63:	66 8b 4d d8          	mov    cx,WORD PTR [rbp-0x28]
  114a67:	66 89 4d d4          	mov    WORD PTR [rbp-0x2c],cx
  114a6b:	0f b6 4d d6          	movzx  ecx,BYTE PTR [rbp-0x2a]
  114a6f:	c1 e1 10             	shl    ecx,0x10
  114a72:	0f b7 7d d4          	movzx  edi,WORD PTR [rbp-0x2c]
  114a76:	09 cf                	or     edi,ecx
  114a78:	ff d0                	call   rax
  114a7a:	e9 00 00 00 00       	jmp    114a7f <_Z13BB_WriteAsciic5Colorii+0xcf>
  114a7f:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
  114a82:	83 c0 01             	add    eax,0x1
  114a85:	89 45 e0             	mov    DWORD PTR [rbp-0x20],eax
  114a88:	e9 6d ff ff ff       	jmp    1149fa <_Z13BB_WriteAsciic5Colorii+0x4a>
  114a8d:	e9 00 00 00 00       	jmp    114a92 <_Z13BB_WriteAsciic5Colorii+0xe2>
  114a92:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  114a95:	83 c0 01             	add    eax,0x1
  114a98:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
  114a9b:	e9 49 ff ff ff       	jmp    1149e9 <_Z13BB_WriteAsciic5Colorii+0x39>
  114aa0:	31 c0                	xor    eax,eax
  114aa2:	48 83 c4 30          	add    rsp,0x30
  114aa6:	5d                   	pop    rbp
  114aa7:	c3                   	ret
  114aa8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  114aaf:	00 

0000000000114ab0 <_Z12BB_PrintLinePKc6Vector5Color>:
  114ab0:	55                   	push   rbp
  114ab1:	48 89 e5             	mov    rbp,rsp
  114ab4:	48 83 ec 40          	sub    rsp,0x40
  114ab8:	48 89 75 f8          	mov    QWORD PTR [rbp-0x8],rsi
  114abc:	66 89 d0             	mov    ax,dx
  114abf:	66 89 45 ec          	mov    WORD PTR [rbp-0x14],ax
  114ac3:	c1 ea 10             	shr    edx,0x10
  114ac6:	88 d0                	mov    al,dl
  114ac8:	88 45 ee             	mov    BYTE PTR [rbp-0x12],al
  114acb:	66 8b 45 ec          	mov    ax,WORD PTR [rbp-0x14]
  114acf:	66 89 45 f0          	mov    WORD PTR [rbp-0x10],ax
  114ad3:	8a 45 ee             	mov    al,BYTE PTR [rbp-0x12]
  114ad6:	88 45 f2             	mov    BYTE PTR [rbp-0xe],al
  114ad9:	48 89 7d e0          	mov    QWORD PTR [rbp-0x20],rdi
  114add:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  114ae1:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
  114ae5:	c7 45 d4 00 00 00 00 	mov    DWORD PTR [rbp-0x2c],0x0
  114aec:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  114af0:	48 63 4d d4          	movsxd rcx,DWORD PTR [rbp-0x2c]
  114af4:	0f be 04 08          	movsx  eax,BYTE PTR [rax+rcx*1]
  114af8:	83 f8 00             	cmp    eax,0x0
  114afb:	0f 84 c1 00 00 00    	je     114bc2 <_Z12BB_PrintLinePKc6Vector5Color+0x112>
  114b01:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  114b05:	48 63 4d d4          	movsxd rcx,DWORD PTR [rbp-0x2c]
  114b09:	0f be 04 08          	movsx  eax,BYTE PTR [rax+rcx*1]
  114b0d:	83 f8 0a             	cmp    eax,0xa
  114b10:	0f 84 9e 00 00 00    	je     114bb4 <_Z12BB_PrintLinePKc6Vector5Color+0x104>
  114b16:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  114b1a:	48 63 4d d4          	movsxd rcx,DWORD PTR [rbp-0x2c]
  114b1e:	0f be 3c 08          	movsx  edi,BYTE PTR [rax+rcx*1]
  114b22:	c6 45 d0 64          	mov    BYTE PTR [rbp-0x30],0x64
  114b26:	c6 45 d1 64          	mov    BYTE PTR [rbp-0x2f],0x64
  114b2a:	c6 45 d2 64          	mov    BYTE PTR [rbp-0x2e],0x64
  114b2e:	8b 4d d4             	mov    ecx,DWORD PTR [rbp-0x2c]
  114b31:	89 c8                	mov    eax,ecx
  114b33:	8d 34 c0             	lea    esi,[rax+rax*8]
  114b36:	8b 55 f8             	mov    edx,DWORD PTR [rbp-0x8]
  114b39:	8b 4d fc             	mov    ecx,DWORD PTR [rbp-0x4]
  114b3c:	89 d0                	mov    eax,edx
  114b3e:	89 f2                	mov    edx,esi
  114b40:	8d 54 10 01          	lea    edx,[rax+rdx*1+0x1]
  114b44:	ff c1                	inc    ecx
  114b46:	8a 45 d2             	mov    al,BYTE PTR [rbp-0x2e]
  114b49:	88 45 ce             	mov    BYTE PTR [rbp-0x32],al
  114b4c:	66 8b 45 d0          	mov    ax,WORD PTR [rbp-0x30]
  114b50:	66 89 45 cc          	mov    WORD PTR [rbp-0x34],ax
  114b54:	0f b6 45 ce          	movzx  eax,BYTE PTR [rbp-0x32]
  114b58:	c1 e0 10             	shl    eax,0x10
  114b5b:	0f b7 75 cc          	movzx  esi,WORD PTR [rbp-0x34]
  114b5f:	09 c6                	or     esi,eax
  114b61:	e8 4a fe ff ff       	call   1149b0 <_Z13BB_WriteAsciic5Colorii>
  114b66:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  114b6a:	48 63 4d d4          	movsxd rcx,DWORD PTR [rbp-0x2c]
  114b6e:	8a 04 08             	mov    al,BYTE PTR [rax+rcx*1]
  114b71:	8a 4d f2             	mov    cl,BYTE PTR [rbp-0xe]
  114b74:	88 4d ca             	mov    BYTE PTR [rbp-0x36],cl
  114b77:	66 8b 4d f0          	mov    cx,WORD PTR [rbp-0x10]
  114b7b:	66 89 4d c8          	mov    WORD PTR [rbp-0x38],cx
  114b7f:	8b 55 d4             	mov    edx,DWORD PTR [rbp-0x2c]
  114b82:	89 d1                	mov    ecx,edx
  114b84:	8d 34 c9             	lea    esi,[rcx+rcx*8]
  114b87:	8b 55 f8             	mov    edx,DWORD PTR [rbp-0x8]
  114b8a:	8b 4d fc             	mov    ecx,DWORD PTR [rbp-0x4]
  114b8d:	01 f2                	add    edx,esi
  114b8f:	40 8a 75 ca          	mov    sil,BYTE PTR [rbp-0x36]
  114b93:	40 88 75 c6          	mov    BYTE PTR [rbp-0x3a],sil
  114b97:	66 8b 75 c8          	mov    si,WORD PTR [rbp-0x38]
  114b9b:	66 89 75 c4          	mov    WORD PTR [rbp-0x3c],si
  114b9f:	0f b6 7d c6          	movzx  edi,BYTE PTR [rbp-0x3a]
  114ba3:	c1 e7 10             	shl    edi,0x10
  114ba6:	0f b7 75 c4          	movzx  esi,WORD PTR [rbp-0x3c]
  114baa:	09 fe                	or     esi,edi
  114bac:	0f be f8             	movsx  edi,al
  114baf:	e8 fc fd ff ff       	call   1149b0 <_Z13BB_WriteAsciic5Colorii>
  114bb4:	8b 45 d4             	mov    eax,DWORD PTR [rbp-0x2c]
  114bb7:	83 c0 01             	add    eax,0x1
  114bba:	89 45 d4             	mov    DWORD PTR [rbp-0x2c],eax
  114bbd:	e9 2a ff ff ff       	jmp    114aec <_Z12BB_PrintLinePKc6Vector5Color+0x3c>
  114bc2:	31 c0                	xor    eax,eax
  114bc4:	48 83 c4 40          	add    rsp,0x40
  114bc8:	5d                   	pop    rbp
  114bc9:	c3                   	ret
