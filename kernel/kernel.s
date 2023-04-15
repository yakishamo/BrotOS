
kernel.elf:     file format elf64-x86-64


Disassembly of section .text:

0000000000104420 <_Z4stopv>:
  104420:	55                   	push   rbp
  104421:	48 89 e5             	mov    rbp,rsp
  104424:	e9 00 00 00 00       	jmp    104429 <_Z4stopv+0x9>
  104429:	f4                   	hlt
  10442a:	e9 fa ff ff ff       	jmp    104429 <_Z4stopv+0x9>
  10442f:	90                   	nop

0000000000104430 <entry_point>:
  104430:	55                   	push   rbp
  104431:	48 89 e5             	mov    rbp,rsp
  104434:	48 83 ec 10          	sub    rsp,0x10
  104438:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  10443c:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
  104440:	48 8d 35 19 00 00 00 	lea    rsi,[rip+0x19]        # 104460 <kernel_main>
  104447:	48 8d 15 c2 2b 01 00 	lea    rdx,[rip+0x12bc2]        # 117010 <kernel_main_stack>
  10444e:	e8 3c 97 00 00       	call   10db8f <call_kernel_main>
  104453:	48 83 c4 10          	add    rsp,0x10
  104457:	5d                   	pop    rbp
  104458:	c3                   	ret
  104459:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000104460 <kernel_main>:
  104460:	55                   	push   rbp
  104461:	48 89 e5             	mov    rbp,rsp
  104464:	48 81 ec 40 04 00 00 	sub    rsp,0x440
  10446b:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  10446f:	e8 ec e6 00 00       	call   112b60 <_Z22SetupIdentityPageTablev>
  104474:	e8 87 e8 00 00       	call   112d00 <_Z17InitializeKeycodev>
  104479:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
  10447d:	e8 2e 03 00 00       	call   1047b0 <_Z15InitializeFrameP10bootinfo_t>
  104482:	48 8d 05 a7 2f 51 00 	lea    rax,[rip+0x512fa7]        # 617430 <vinfo>
  104489:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  10448c:	8b 49 10             	mov    ecx,DWORD PTR [rcx+0x10]
  10448f:	89 4d f4             	mov    DWORD PTR [rbp-0xc],ecx
  104492:	48 8b 00             	mov    rax,QWORD PTR [rax]
  104495:	8b 40 14             	mov    eax,DWORD PTR [rax+0x14]
  104498:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
  10449b:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10449f:	48 8b 48 28          	mov    rcx,QWORD PTR [rax+0x28]
  1044a3:	48 8d 05 f6 86 51 00 	lea    rax,[rip+0x5186f6]        # 61cba0 <mmap>
  1044aa:	48 89 08             	mov    QWORD PTR [rax],rcx
  1044ad:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [rbp-0x18],0x0
  1044b4:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
  1044bb:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  1044be:	89 45 e0             	mov    DWORD PTR [rbp-0x20],eax
  1044c1:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  1044c4:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
  1044c7:	c6 45 d8 00          	mov    BYTE PTR [rbp-0x28],0x0
  1044cb:	c6 45 d9 00          	mov    BYTE PTR [rbp-0x27],0x0
  1044cf:	c6 45 da 00          	mov    BYTE PTR [rbp-0x26],0x0
  1044d3:	48 8b 7d e8          	mov    rdi,QWORD PTR [rbp-0x18]
  1044d7:	48 8b 75 e0          	mov    rsi,QWORD PTR [rbp-0x20]
  1044db:	8a 45 da             	mov    al,BYTE PTR [rbp-0x26]
  1044de:	88 45 d6             	mov    BYTE PTR [rbp-0x2a],al
  1044e1:	66 8b 45 d8          	mov    ax,WORD PTR [rbp-0x28]
  1044e5:	66 89 45 d4          	mov    WORD PTR [rbp-0x2c],ax
  1044e9:	0f b6 45 d6          	movzx  eax,BYTE PTR [rbp-0x2a]
  1044ed:	c1 e0 10             	shl    eax,0x10
  1044f0:	0f b7 55 d4          	movzx  edx,WORD PTR [rbp-0x2c]
  1044f4:	09 c2                	or     edx,eax
  1044f6:	e8 35 07 00 00       	call   104c30 <_Z11WriteSquare6VectorS_5Color>
  1044fb:	66 c7 45 d2 08 00    	mov    WORD PTR [rbp-0x2e],0x8
  104501:	66 c7 45 d0 10 00    	mov    WORD PTR [rbp-0x30],0x10
  104507:	bf 08 00 00 00       	mov    edi,0x8
  10450c:	be 10 00 00 00       	mov    esi,0x10
  104511:	e8 5a a6 00 00       	call   10eb70 <_Z17InitializeSegmenttt>
  104516:	e8 d5 dc 00 00       	call   1121f0 <_Z19InitializeInterruptv>
  10451b:	e8 10 dc 00 00       	call   112130 <_Z13InitializePICv>
  104520:	48 8d 3d e9 2e 11 00 	lea    rdi,[rip+0x112ee9]        # 217410 <memory_manager_buf>
  104527:	e8 54 f7 00 00       	call   113c80 <_ZN19BitmapMemoryManagerC1Ev>
  10452c:	48 8d 05 dd 2e 11 00 	lea    rax,[rip+0x112edd]        # 217410 <memory_manager_buf>
  104533:	48 89 05 e6 2e 51 00 	mov    QWORD PTR [rip+0x512ee6],rax        # 617420 <memory_manager>
  10453a:	48 8b 3d df 2e 51 00 	mov    rdi,QWORD PTR [rip+0x512edf]        # 617420 <memory_manager>
  104541:	48 8d 05 58 86 51 00 	lea    rax,[rip+0x518658]        # 61cba0 <mmap>
  104548:	48 8b 30             	mov    rsi,QWORD PTR [rax]
  10454b:	e8 a0 fb 00 00       	call   1140f0 <_Z23InitializeMemoryManagerP19BitmapMemoryManagerP9MemoryMap>
  104550:	48 8b 35 c9 2e 51 00 	mov    rsi,QWORD PTR [rip+0x512ec9]        # 617420 <memory_manager>
  104557:	48 8d 7d b8          	lea    rdi,[rbp-0x48]
  10455b:	e8 00 fd 00 00       	call   114260 <_Z14InitializeHeapR19BitmapMemoryManager>
  104560:	48 8d 7d b8          	lea    rdi,[rbp-0x48]
  104564:	48 83 c7 08          	add    rdi,0x8
  104568:	e8 b3 01 00 00       	call   104720 <_ZNK5ErrorcvbEv>
  10456d:	a8 01                	test   al,0x1
  10456f:	0f 85 05 00 00 00    	jne    10457a <kernel_main+0x11a>
  104575:	e9 31 00 00 00       	jmp    1045ab <kernel_main+0x14b>
  10457a:	48 8d 3d 42 c1 ff ff 	lea    rdi,[rip+0xffffffffffffc142]        # 1006c3 <_svfprintf_r.blanks-0x41d>
  104581:	b0 00                	mov    al,0x0
  104583:	e8 e8 0d 00 00       	call   105370 <Printf>
  104588:	48 8d 7d b8          	lea    rdi,[rbp-0x48]
  10458c:	48 83 c7 08          	add    rdi,0x8
  104590:	e8 ab 01 00 00       	call   104740 <_ZNK5Error4NameEv>
  104595:	48 89 c6             	mov    rsi,rax
  104598:	48 8d 3d c7 c0 ff ff 	lea    rdi,[rip+0xffffffffffffc0c7]        # 100666 <_svfprintf_r.blanks-0x47a>
  10459f:	b0 00                	mov    al,0x0
  1045a1:	e8 ca 0d 00 00       	call   105370 <Printf>
  1045a6:	e8 75 fe ff ff       	call   104420 <_Z4stopv>
  1045ab:	e8 e0 fe 00 00       	call   114490 <_Z20InitializeLAPICTimerv>
  1045b0:	c7 85 c4 fb ff ff 00 	mov    DWORD PTR [rbp-0x43c],0x0
  1045b7:	00 00 00 
  1045ba:	48 8d 3d c4 bd ff ff 	lea    rdi,[rip+0xffffffffffffbdc4]        # 100385 <_svfprintf_r.blanks-0x75b>
  1045c1:	b0 00                	mov    al,0x0
  1045c3:	e8 a8 0d 00 00       	call   105370 <Printf>
  1045c8:	48 8d 3d dd be ff ff 	lea    rdi,[rip+0xffffffffffffbedd]        # 1004ac <_svfprintf_r.blanks-0x634>
  1045cf:	48 8d 35 8a fe ff ff 	lea    rsi,[rip+0xfffffffffffffe8a]        # 104460 <kernel_main>
  1045d6:	b0 00                	mov    al,0x0
  1045d8:	e8 93 0d 00 00       	call   105370 <Printf>
  1045dd:	48 8d 3d f6 be ff ff 	lea    rdi,[rip+0xffffffffffffbef6]        # 1004da <_svfprintf_r.blanks-0x606>
  1045e4:	48 8d 35 25 2a 01 00 	lea    rsi,[rip+0x12a25]        # 117010 <kernel_main_stack>
  1045eb:	b0 00                	mov    al,0x0
  1045ed:	e8 7e 0d 00 00       	call   105370 <Printf>
  1045f2:	48 8d 3d 97 c1 ff ff 	lea    rdi,[rip+0xffffffffffffc197]        # 100790 <_svfprintf_r.blanks-0x350>
  1045f9:	b0 00                	mov    al,0x0
  1045fb:	e8 70 0d 00 00       	call   105370 <Printf>
  104600:	48 8d bd d0 fb ff ff 	lea    rdi,[rbp-0x430]
  104607:	e8 b4 ea 00 00       	call   1130c0 <_Z9GetStringPc>
  10460c:	48 8d bd d0 fb ff ff 	lea    rdi,[rbp-0x430]
  104613:	e8 68 eb 00 00       	call   113180 <_Z8tokenizePc>
  104618:	48 89 85 c8 fb ff ff 	mov    QWORD PTR [rbp-0x438],rax
  10461f:	48 8b bd c8 fb ff ff 	mov    rdi,QWORD PTR [rbp-0x438]
  104626:	e8 55 f0 00 00       	call   113680 <_Z7commandPPc>
  10462b:	48 8b bd c8 fb ff ff 	mov    rdi,QWORD PTR [rbp-0x438]
  104632:	e8 c9 ed 00 00       	call   113400 <_Z10free_tokenPPc>
  104637:	e9 b6 ff ff ff       	jmp    1045f2 <kernel_main+0x192>
  10463c:	cc                   	int3
  10463d:	cc                   	int3
  10463e:	cc                   	int3
  10463f:	cc                   	int3

0000000000104640 <__cxx_global_var_init>:
  104640:	55                   	push   rbp
  104641:	48 89 e5             	mov    rbp,rsp
  104644:	e8 47 00 00 00       	call   104690 <_ZNSt3__114numeric_limitsImE3maxEv>
  104649:	48 89 c6             	mov    rsi,rax
  10464c:	48 8d 3d ad 29 01 00 	lea    rdi,[rip+0x129ad]        # 117000 <_ZL10kNullFrame>
  104653:	e8 48 00 00 00       	call   1046a0 <_ZN7FrameIDC2Em>
  104658:	5d                   	pop    rbp
  104659:	c3                   	ret
  10465a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000104660 <__cxx_global_var_init.1>:
  104660:	55                   	push   rbp
  104661:	48 89 e5             	mov    rbp,rsp
  104664:	48 8d 3d a5 29 11 00 	lea    rdi,[rip+0x1129a5]        # 217010 <Input_Buffer>
  10466b:	e8 60 00 00 00       	call   1046d0 <_ZN11InputBufferC2Ev>
  104670:	5d                   	pop    rbp
  104671:	c3                   	ret
  104672:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  104679:	1f 84 00 00 00 00 00 

0000000000104680 <_GLOBAL__sub_I_kernel.cpp>:
  104680:	55                   	push   rbp
  104681:	48 89 e5             	mov    rbp,rsp
  104684:	e8 b7 ff ff ff       	call   104640 <__cxx_global_var_init>
  104689:	e8 d2 ff ff ff       	call   104660 <__cxx_global_var_init.1>
  10468e:	5d                   	pop    rbp
  10468f:	c3                   	ret

0000000000104690 <_ZNSt3__114numeric_limitsImE3maxEv>:
  104690:	55                   	push   rbp
  104691:	48 89 e5             	mov    rbp,rsp
  104694:	e8 d7 00 00 00       	call   104770 <_ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxEv>
  104699:	5d                   	pop    rbp
  10469a:	c3                   	ret
  10469b:	cc                   	int3
  10469c:	cc                   	int3
  10469d:	cc                   	int3
  10469e:	cc                   	int3
  10469f:	cc                   	int3

00000000001046a0 <_ZN7FrameIDC2Em>:
  1046a0:	55                   	push   rbp
  1046a1:	48 89 e5             	mov    rbp,rsp
  1046a4:	48 83 ec 10          	sub    rsp,0x10
  1046a8:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  1046ac:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  1046b0:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  1046b4:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  1046b8:	48 89 08             	mov    QWORD PTR [rax],rcx
  1046bb:	48 83 c4 10          	add    rsp,0x10
  1046bf:	5d                   	pop    rbp
  1046c0:	c3                   	ret
  1046c1:	cc                   	int3
  1046c2:	cc                   	int3
  1046c3:	cc                   	int3
  1046c4:	cc                   	int3
  1046c5:	cc                   	int3
  1046c6:	cc                   	int3
  1046c7:	cc                   	int3
  1046c8:	cc                   	int3
  1046c9:	cc                   	int3
  1046ca:	cc                   	int3
  1046cb:	cc                   	int3
  1046cc:	cc                   	int3
  1046cd:	cc                   	int3
  1046ce:	cc                   	int3
  1046cf:	cc                   	int3

00000000001046d0 <_ZN11InputBufferC2Ev>:
  1046d0:	55                   	push   rbp
  1046d1:	48 89 e5             	mov    rbp,rsp
  1046d4:	50                   	push   rax
  1046d5:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  1046d9:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  1046dd:	c7 80 ec 03 00 00 00 	mov    DWORD PTR [rax+0x3ec],0x0
  1046e4:	00 00 00 
  1046e7:	c7 80 f0 03 00 00 00 	mov    DWORD PTR [rax+0x3f0],0x0
  1046ee:	00 00 00 
  1046f1:	c7 80 f4 03 00 00 00 	mov    DWORD PTR [rax+0x3f4],0x0
  1046f8:	00 00 00 
  1046fb:	c7 80 f8 03 00 00 00 	mov    DWORD PTR [rax+0x3f8],0x0
  104702:	00 00 00 
  104705:	c7 80 fc 03 00 00 00 	mov    DWORD PTR [rax+0x3fc],0x0
  10470c:	00 00 00 
  10470f:	c6 80 e8 03 00 00 00 	mov    BYTE PTR [rax+0x3e8],0x0
  104716:	48 83 c4 08          	add    rsp,0x8
  10471a:	5d                   	pop    rbp
  10471b:	c3                   	ret
  10471c:	cc                   	int3
  10471d:	cc                   	int3
  10471e:	cc                   	int3
  10471f:	cc                   	int3

0000000000104720 <_ZNK5ErrorcvbEv>:
  104720:	55                   	push   rbp
  104721:	48 89 e5             	mov    rbp,rsp
  104724:	50                   	push   rax
  104725:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  104729:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10472d:	83 38 00             	cmp    DWORD PTR [rax],0x0
  104730:	0f 95 c0             	setne  al
  104733:	24 01                	and    al,0x1
  104735:	0f b6 c0             	movzx  eax,al
  104738:	48 83 c4 08          	add    rsp,0x8
  10473c:	5d                   	pop    rbp
  10473d:	c3                   	ret
  10473e:	cc                   	int3
  10473f:	cc                   	int3

0000000000104740 <_ZNK5Error4NameEv>:
  104740:	55                   	push   rbp
  104741:	48 89 e5             	mov    rbp,rsp
  104744:	48 83 ec 10          	sub    rsp,0x10
  104748:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  10474c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  104750:	8b 00                	mov    eax,DWORD PTR [rax]
  104752:	89 c6                	mov    esi,eax
  104754:	48 8d 3d ad 0d 01 00 	lea    rdi,[rip+0x10dad]        # 115508 <_ZN5Error11code_names_E>
  10475b:	e8 20 00 00 00       	call   104780 <_ZNKSt3__15arrayIPKcLm20EEixEm>
  104760:	48 8b 00             	mov    rax,QWORD PTR [rax]
  104763:	48 83 c4 10          	add    rsp,0x10
  104767:	5d                   	pop    rbp
  104768:	c3                   	ret
  104769:	cc                   	int3
  10476a:	cc                   	int3
  10476b:	cc                   	int3
  10476c:	cc                   	int3
  10476d:	cc                   	int3
  10476e:	cc                   	int3
  10476f:	cc                   	int3

0000000000104770 <_ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxEv>:
  104770:	55                   	push   rbp
  104771:	48 89 e5             	mov    rbp,rsp
  104774:	48 c7 c0 ff ff ff ff 	mov    rax,0xffffffffffffffff
  10477b:	5d                   	pop    rbp
  10477c:	c3                   	ret
  10477d:	cc                   	int3
  10477e:	cc                   	int3
  10477f:	cc                   	int3

0000000000104780 <_ZNKSt3__15arrayIPKcLm20EEixEm>:
  104780:	55                   	push   rbp
  104781:	48 89 e5             	mov    rbp,rsp
  104784:	48 83 ec 10          	sub    rsp,0x10
  104788:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  10478c:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  104790:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  104794:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  104798:	48 c1 e1 03          	shl    rcx,0x3
  10479c:	48 01 c8             	add    rax,rcx
  10479f:	48 83 c4 10          	add    rsp,0x10
  1047a3:	5d                   	pop    rbp
  1047a4:	c3                   	ret
  1047a5:	cc                   	int3
  1047a6:	cc                   	int3
  1047a7:	cc                   	int3
  1047a8:	cc                   	int3
  1047a9:	cc                   	int3
  1047aa:	cc                   	int3
  1047ab:	cc                   	int3
  1047ac:	cc                   	int3
  1047ad:	cc                   	int3
  1047ae:	cc                   	int3
  1047af:	cc                   	int3

00000000001047b0 <_Z15InitializeFrameP10bootinfo_t>:
  1047b0:	55                   	push   rbp
  1047b1:	48 89 e5             	mov    rbp,rsp
  1047b4:	50                   	push   rax
  1047b5:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  1047b9:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  1047bd:	48 89 05 6c 2c 51 00 	mov    QWORD PTR [rip+0x512c6c],rax        # 617430 <vinfo>
  1047c4:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  1047c8:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
  1047cc:	48 89 05 65 2c 51 00 	mov    QWORD PTR [rip+0x512c65],rax        # 617438 <ascii_font>
  1047d3:	48 8b 05 56 2c 51 00 	mov    rax,QWORD PTR [rip+0x512c56]        # 617430 <vinfo>
  1047da:	8b 40 14             	mov    eax,DWORD PTR [rax+0x14]
  1047dd:	b9 11 00 00 00       	mov    ecx,0x11
  1047e2:	31 d2                	xor    edx,edx
  1047e4:	f7 f1                	div    ecx
  1047e6:	89 05 5c 2c 51 00    	mov    DWORD PTR [rip+0x512c5c],eax        # 617448 <max_line>
  1047ec:	48 8b 05 3d 2c 51 00 	mov    rax,QWORD PTR [rip+0x512c3d]        # 617430 <vinfo>
  1047f3:	83 78 1c 00          	cmp    DWORD PTR [rax+0x1c],0x0
  1047f7:	0f 85 13 00 00 00    	jne    104810 <_Z15InitializeFrameP10bootinfo_t+0x60>
  1047fd:	48 8d 05 4c 00 00 00 	lea    rax,[rip+0x4c]        # 104850 <_Z13WritePixelRGB5Colorii>
  104804:	48 89 05 65 7a 51 00 	mov    QWORD PTR [rip+0x517a65],rax        # 61c270 <WritePixel>
  10480b:	e9 34 00 00 00       	jmp    104844 <_Z15InitializeFrameP10bootinfo_t+0x94>
  104810:	48 8b 05 19 2c 51 00 	mov    rax,QWORD PTR [rip+0x512c19]        # 617430 <vinfo>
  104817:	83 78 1c 01          	cmp    DWORD PTR [rax+0x1c],0x1
  10481b:	0f 85 13 00 00 00    	jne    104834 <_Z15InitializeFrameP10bootinfo_t+0x84>
  104821:	48 8d 05 a8 00 00 00 	lea    rax,[rip+0xa8]        # 1048d0 <_Z13WritePixelBGR5Colorii>
  104828:	48 89 05 41 7a 51 00 	mov    QWORD PTR [rip+0x517a41],rax        # 61c270 <WritePixel>
  10482f:	e9 0b 00 00 00       	jmp    10483f <_Z15InitializeFrameP10bootinfo_t+0x8f>
  104834:	e9 00 00 00 00       	jmp    104839 <_Z15InitializeFrameP10bootinfo_t+0x89>
  104839:	f4                   	hlt
  10483a:	e9 fa ff ff ff       	jmp    104839 <_Z15InitializeFrameP10bootinfo_t+0x89>
  10483f:	e9 00 00 00 00       	jmp    104844 <_Z15InitializeFrameP10bootinfo_t+0x94>
  104844:	48 83 c4 08          	add    rsp,0x8
  104848:	5d                   	pop    rbp
  104849:	c3                   	ret
  10484a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000104850 <_Z13WritePixelRGB5Colorii>:
  104850:	55                   	push   rbp
  104851:	48 89 e5             	mov    rbp,rsp
  104854:	48 83 ec 20          	sub    rsp,0x20
  104858:	66 89 f8             	mov    ax,di
  10485b:	66 89 45 f4          	mov    WORD PTR [rbp-0xc],ax
  10485f:	c1 ef 10             	shr    edi,0x10
  104862:	40 88 f8             	mov    al,dil
  104865:	88 45 f6             	mov    BYTE PTR [rbp-0xa],al
  104868:	66 8b 45 f4          	mov    ax,WORD PTR [rbp-0xc]
  10486c:	66 89 45 f8          	mov    WORD PTR [rbp-0x8],ax
  104870:	8a 45 f6             	mov    al,BYTE PTR [rbp-0xa]
  104873:	88 45 fa             	mov    BYTE PTR [rbp-0x6],al
  104876:	89 75 f0             	mov    DWORD PTR [rbp-0x10],esi
  104879:	89 55 ec             	mov    DWORD PTR [rbp-0x14],edx
  10487c:	48 8b 05 ad 2b 51 00 	mov    rax,QWORD PTR [rip+0x512bad]        # 617430 <vinfo>
  104883:	8b 40 10             	mov    eax,DWORD PTR [rax+0x10]
  104886:	0f af 45 ec          	imul   eax,DWORD PTR [rbp-0x14]
  10488a:	03 45 f0             	add    eax,DWORD PTR [rbp-0x10]
  10488d:	89 45 e8             	mov    DWORD PTR [rbp-0x18],eax
  104890:	48 8b 05 99 2b 51 00 	mov    rax,QWORD PTR [rip+0x512b99]        # 617430 <vinfo>
  104897:	48 8b 00             	mov    rax,QWORD PTR [rax]
  10489a:	8b 4d e8             	mov    ecx,DWORD PTR [rbp-0x18]
  10489d:	c1 e1 02             	shl    ecx,0x2
  1048a0:	48 63 c9             	movsxd rcx,ecx
  1048a3:	48 01 c8             	add    rax,rcx
  1048a6:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  1048aa:	8a 4d f8             	mov    cl,BYTE PTR [rbp-0x8]
  1048ad:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  1048b1:	88 08                	mov    BYTE PTR [rax],cl
  1048b3:	8a 4d f9             	mov    cl,BYTE PTR [rbp-0x7]
  1048b6:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  1048ba:	88 48 01             	mov    BYTE PTR [rax+0x1],cl
  1048bd:	8a 4d fa             	mov    cl,BYTE PTR [rbp-0x6]
  1048c0:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  1048c4:	88 48 02             	mov    BYTE PTR [rax+0x2],cl
  1048c7:	31 c0                	xor    eax,eax
  1048c9:	48 83 c4 20          	add    rsp,0x20
  1048cd:	5d                   	pop    rbp
  1048ce:	c3                   	ret
  1048cf:	90                   	nop

00000000001048d0 <_Z13WritePixelBGR5Colorii>:
  1048d0:	55                   	push   rbp
  1048d1:	48 89 e5             	mov    rbp,rsp
  1048d4:	48 83 ec 20          	sub    rsp,0x20
  1048d8:	66 89 f8             	mov    ax,di
  1048db:	66 89 45 f4          	mov    WORD PTR [rbp-0xc],ax
  1048df:	c1 ef 10             	shr    edi,0x10
  1048e2:	40 88 f8             	mov    al,dil
  1048e5:	88 45 f6             	mov    BYTE PTR [rbp-0xa],al
  1048e8:	66 8b 45 f4          	mov    ax,WORD PTR [rbp-0xc]
  1048ec:	66 89 45 f8          	mov    WORD PTR [rbp-0x8],ax
  1048f0:	8a 45 f6             	mov    al,BYTE PTR [rbp-0xa]
  1048f3:	88 45 fa             	mov    BYTE PTR [rbp-0x6],al
  1048f6:	89 75 f0             	mov    DWORD PTR [rbp-0x10],esi
  1048f9:	89 55 ec             	mov    DWORD PTR [rbp-0x14],edx
  1048fc:	48 8b 05 2d 2b 51 00 	mov    rax,QWORD PTR [rip+0x512b2d]        # 617430 <vinfo>
  104903:	8b 40 10             	mov    eax,DWORD PTR [rax+0x10]
  104906:	0f af 45 ec          	imul   eax,DWORD PTR [rbp-0x14]
  10490a:	03 45 f0             	add    eax,DWORD PTR [rbp-0x10]
  10490d:	89 45 e8             	mov    DWORD PTR [rbp-0x18],eax
  104910:	48 8b 05 19 2b 51 00 	mov    rax,QWORD PTR [rip+0x512b19]        # 617430 <vinfo>
  104917:	48 8b 00             	mov    rax,QWORD PTR [rax]
  10491a:	8b 4d e8             	mov    ecx,DWORD PTR [rbp-0x18]
  10491d:	c1 e1 02             	shl    ecx,0x2
  104920:	48 63 c9             	movsxd rcx,ecx
  104923:	48 01 c8             	add    rax,rcx
  104926:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  10492a:	8a 4d fa             	mov    cl,BYTE PTR [rbp-0x6]
  10492d:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  104931:	88 08                	mov    BYTE PTR [rax],cl
  104933:	8a 4d f9             	mov    cl,BYTE PTR [rbp-0x7]
  104936:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  10493a:	88 48 01             	mov    BYTE PTR [rax+0x1],cl
  10493d:	8a 4d f8             	mov    cl,BYTE PTR [rbp-0x8]
  104940:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  104944:	88 48 02             	mov    BYTE PTR [rax+0x2],cl
  104947:	31 c0                	xor    eax,eax
  104949:	48 83 c4 20          	add    rsp,0x20
  10494d:	5d                   	pop    rbp
  10494e:	c3                   	ret
  10494f:	90                   	nop

0000000000104950 <_Z11HashtoColorh>:
  104950:	55                   	push   rbp
  104951:	48 89 e5             	mov    rbp,rsp
  104954:	48 83 ec 10          	sub    rsp,0x10
  104958:	40 88 f8             	mov    al,dil
  10495b:	88 45 f7             	mov    BYTE PTR [rbp-0x9],al
  10495e:	c6 45 f8 00          	mov    BYTE PTR [rbp-0x8],0x0
  104962:	c6 45 f9 00          	mov    BYTE PTR [rbp-0x7],0x0
  104966:	8a 45 f7             	mov    al,BYTE PTR [rbp-0x9]
  104969:	88 45 fa             	mov    BYTE PTR [rbp-0x6],al
  10496c:	8a 45 fa             	mov    al,BYTE PTR [rbp-0x6]
  10496f:	88 45 f2             	mov    BYTE PTR [rbp-0xe],al
  104972:	66 8b 45 f8          	mov    ax,WORD PTR [rbp-0x8]
  104976:	66 89 45 f0          	mov    WORD PTR [rbp-0x10],ax
  10497a:	0f b6 4d f2          	movzx  ecx,BYTE PTR [rbp-0xe]
  10497e:	c1 e1 10             	shl    ecx,0x10
  104981:	0f b7 45 f0          	movzx  eax,WORD PTR [rbp-0x10]
  104985:	09 c8                	or     eax,ecx
  104987:	48 83 c4 10          	add    rsp,0x10
  10498b:	5d                   	pop    rbp
  10498c:	c3                   	ret
  10498d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000104990 <_Z8HSVtoRGBi>:
  104990:	55                   	push   rbp
  104991:	48 89 e5             	mov    rbp,rsp
  104994:	48 83 ec 40          	sub    rsp,0x40
  104998:	89 7d f4             	mov    DWORD PTR [rbp-0xc],edi
  10499b:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  10499e:	b9 00 06 00 00       	mov    ecx,0x600
  1049a3:	99                   	cdq
  1049a4:	f7 f9                	idiv   ecx
  1049a6:	89 55 f4             	mov    DWORD PTR [rbp-0xc],edx
  1049a9:	81 7d f4 00 01 00 00 	cmp    DWORD PTR [rbp-0xc],0x100
  1049b0:	0f 8d 21 00 00 00    	jge    1049d7 <_Z8HSVtoRGBi+0x47>
  1049b6:	c6 45 f0 ff          	mov    BYTE PTR [rbp-0x10],0xff
  1049ba:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  1049bd:	88 45 f1             	mov    BYTE PTR [rbp-0xf],al
  1049c0:	c6 45 f2 00          	mov    BYTE PTR [rbp-0xe],0x0
  1049c4:	66 8b 45 f0          	mov    ax,WORD PTR [rbp-0x10]
  1049c8:	66 89 45 f8          	mov    WORD PTR [rbp-0x8],ax
  1049cc:	8a 45 f2             	mov    al,BYTE PTR [rbp-0xe]
  1049cf:	88 45 fa             	mov    BYTE PTR [rbp-0x6],al
  1049d2:	e9 29 01 00 00       	jmp    104b00 <_Z8HSVtoRGBi+0x170>
  1049d7:	81 7d f4 00 02 00 00 	cmp    DWORD PTR [rbp-0xc],0x200
  1049de:	0f 8d 30 00 00 00    	jge    104a14 <_Z8HSVtoRGBi+0x84>
  1049e4:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  1049e7:	b9 00 01 00 00       	mov    ecx,0x100
  1049ec:	99                   	cdq
  1049ed:	f7 f9                	idiv   ecx
  1049ef:	b8 ff 00 00 00       	mov    eax,0xff
  1049f4:	29 d0                	sub    eax,edx
  1049f6:	88 45 e8             	mov    BYTE PTR [rbp-0x18],al
  1049f9:	c6 45 e9 ff          	mov    BYTE PTR [rbp-0x17],0xff
  1049fd:	c6 45 ea 00          	mov    BYTE PTR [rbp-0x16],0x0
  104a01:	66 8b 45 e8          	mov    ax,WORD PTR [rbp-0x18]
  104a05:	66 89 45 f8          	mov    WORD PTR [rbp-0x8],ax
  104a09:	8a 45 ea             	mov    al,BYTE PTR [rbp-0x16]
  104a0c:	88 45 fa             	mov    BYTE PTR [rbp-0x6],al
  104a0f:	e9 e7 00 00 00       	jmp    104afb <_Z8HSVtoRGBi+0x16b>
  104a14:	81 7d f4 00 03 00 00 	cmp    DWORD PTR [rbp-0xc],0x300
  104a1b:	0f 8d 2b 00 00 00    	jge    104a4c <_Z8HSVtoRGBi+0xbc>
  104a21:	c6 45 e0 00          	mov    BYTE PTR [rbp-0x20],0x0
  104a25:	c6 45 e1 ff          	mov    BYTE PTR [rbp-0x1f],0xff
  104a29:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  104a2c:	b9 00 01 00 00       	mov    ecx,0x100
  104a31:	99                   	cdq
  104a32:	f7 f9                	idiv   ecx
  104a34:	88 d0                	mov    al,dl
  104a36:	88 45 e2             	mov    BYTE PTR [rbp-0x1e],al
  104a39:	66 8b 45 e0          	mov    ax,WORD PTR [rbp-0x20]
  104a3d:	66 89 45 f8          	mov    WORD PTR [rbp-0x8],ax
  104a41:	8a 45 e2             	mov    al,BYTE PTR [rbp-0x1e]
  104a44:	88 45 fa             	mov    BYTE PTR [rbp-0x6],al
  104a47:	e9 aa 00 00 00       	jmp    104af6 <_Z8HSVtoRGBi+0x166>
  104a4c:	81 7d f4 00 04 00 00 	cmp    DWORD PTR [rbp-0xc],0x400
  104a53:	0f 8d 30 00 00 00    	jge    104a89 <_Z8HSVtoRGBi+0xf9>
  104a59:	c6 45 d8 00          	mov    BYTE PTR [rbp-0x28],0x0
  104a5d:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  104a60:	b9 00 01 00 00       	mov    ecx,0x100
  104a65:	99                   	cdq
  104a66:	f7 f9                	idiv   ecx
  104a68:	b8 ff 00 00 00       	mov    eax,0xff
  104a6d:	29 d0                	sub    eax,edx
  104a6f:	88 45 d9             	mov    BYTE PTR [rbp-0x27],al
  104a72:	c6 45 da ff          	mov    BYTE PTR [rbp-0x26],0xff
  104a76:	66 8b 45 d8          	mov    ax,WORD PTR [rbp-0x28]
  104a7a:	66 89 45 f8          	mov    WORD PTR [rbp-0x8],ax
  104a7e:	8a 45 da             	mov    al,BYTE PTR [rbp-0x26]
  104a81:	88 45 fa             	mov    BYTE PTR [rbp-0x6],al
  104a84:	e9 68 00 00 00       	jmp    104af1 <_Z8HSVtoRGBi+0x161>
  104a89:	81 7d f4 00 05 00 00 	cmp    DWORD PTR [rbp-0xc],0x500
  104a90:	0f 8d 2b 00 00 00    	jge    104ac1 <_Z8HSVtoRGBi+0x131>
  104a96:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  104a99:	b9 00 01 00 00       	mov    ecx,0x100
  104a9e:	99                   	cdq
  104a9f:	f7 f9                	idiv   ecx
  104aa1:	88 d0                	mov    al,dl
  104aa3:	88 45 d0             	mov    BYTE PTR [rbp-0x30],al
  104aa6:	c6 45 d1 00          	mov    BYTE PTR [rbp-0x2f],0x0
  104aaa:	c6 45 d2 ff          	mov    BYTE PTR [rbp-0x2e],0xff
  104aae:	66 8b 45 d0          	mov    ax,WORD PTR [rbp-0x30]
  104ab2:	66 89 45 f8          	mov    WORD PTR [rbp-0x8],ax
  104ab6:	8a 45 d2             	mov    al,BYTE PTR [rbp-0x2e]
  104ab9:	88 45 fa             	mov    BYTE PTR [rbp-0x6],al
  104abc:	e9 2b 00 00 00       	jmp    104aec <_Z8HSVtoRGBi+0x15c>
  104ac1:	c6 45 c8 ff          	mov    BYTE PTR [rbp-0x38],0xff
  104ac5:	c6 45 c9 00          	mov    BYTE PTR [rbp-0x37],0x0
  104ac9:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  104acc:	b9 00 01 00 00       	mov    ecx,0x100
  104ad1:	99                   	cdq
  104ad2:	f7 f9                	idiv   ecx
  104ad4:	b8 ff 00 00 00       	mov    eax,0xff
  104ad9:	29 d0                	sub    eax,edx
  104adb:	88 45 ca             	mov    BYTE PTR [rbp-0x36],al
  104ade:	66 8b 45 c8          	mov    ax,WORD PTR [rbp-0x38]
  104ae2:	66 89 45 f8          	mov    WORD PTR [rbp-0x8],ax
  104ae6:	8a 45 ca             	mov    al,BYTE PTR [rbp-0x36]
  104ae9:	88 45 fa             	mov    BYTE PTR [rbp-0x6],al
  104aec:	e9 00 00 00 00       	jmp    104af1 <_Z8HSVtoRGBi+0x161>
  104af1:	e9 00 00 00 00       	jmp    104af6 <_Z8HSVtoRGBi+0x166>
  104af6:	e9 00 00 00 00       	jmp    104afb <_Z8HSVtoRGBi+0x16b>
  104afb:	e9 00 00 00 00       	jmp    104b00 <_Z8HSVtoRGBi+0x170>
  104b00:	8a 45 fa             	mov    al,BYTE PTR [rbp-0x6]
  104b03:	88 45 c6             	mov    BYTE PTR [rbp-0x3a],al
  104b06:	66 8b 45 f8          	mov    ax,WORD PTR [rbp-0x8]
  104b0a:	66 89 45 c4          	mov    WORD PTR [rbp-0x3c],ax
  104b0e:	0f b6 4d c6          	movzx  ecx,BYTE PTR [rbp-0x3a]
  104b12:	c1 e1 10             	shl    ecx,0x10
  104b15:	0f b7 45 c4          	movzx  eax,WORD PTR [rbp-0x3c]
  104b19:	09 c8                	or     eax,ecx
  104b1b:	48 83 c4 40          	add    rsp,0x40
  104b1f:	5d                   	pop    rbp
  104b20:	c3                   	ret
  104b21:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  104b28:	0f 1f 84 00 00 00 00 
  104b2f:	00 

0000000000104b30 <_Z10WriteAsciic5Colorii>:
  104b30:	55                   	push   rbp
  104b31:	48 89 e5             	mov    rbp,rsp
  104b34:	48 83 ec 30          	sub    rsp,0x30
  104b38:	40 88 f8             	mov    al,dil
  104b3b:	66 89 f7             	mov    di,si
  104b3e:	66 89 7d f4          	mov    WORD PTR [rbp-0xc],di
  104b42:	c1 ee 10             	shr    esi,0x10
  104b45:	40 88 75 f6          	mov    BYTE PTR [rbp-0xa],sil
  104b49:	66 8b 75 f4          	mov    si,WORD PTR [rbp-0xc]
  104b4d:	66 89 75 f8          	mov    WORD PTR [rbp-0x8],si
  104b51:	40 8a 75 f6          	mov    sil,BYTE PTR [rbp-0xa]
  104b55:	40 88 75 fa          	mov    BYTE PTR [rbp-0x6],sil
  104b59:	88 45 f3             	mov    BYTE PTR [rbp-0xd],al
  104b5c:	89 55 ec             	mov    DWORD PTR [rbp-0x14],edx
  104b5f:	89 4d e8             	mov    DWORD PTR [rbp-0x18],ecx
  104b62:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [rbp-0x1c],0x0
  104b69:	83 7d e4 10          	cmp    DWORD PTR [rbp-0x1c],0x10
  104b6d:	0f 8d aa 00 00 00    	jge    104c1d <_Z10WriteAsciic5Colorii+0xed>
  104b73:	c7 45 e0 00 00 00 00 	mov    DWORD PTR [rbp-0x20],0x0
  104b7a:	83 7d e0 08          	cmp    DWORD PTR [rbp-0x20],0x8
  104b7e:	0f 8d 86 00 00 00    	jge    104c0a <_Z10WriteAsciic5Colorii+0xda>
  104b84:	48 8b 05 ad 28 51 00 	mov    rax,QWORD PTR [rip+0x5128ad]        # 617438 <ascii_font>
  104b8b:	48 0f be 4d f3       	movsx  rcx,BYTE PTR [rbp-0xd]
  104b90:	48 c1 e1 04          	shl    rcx,0x4
  104b94:	48 01 c8             	add    rax,rcx
  104b97:	48 63 4d e4          	movsxd rcx,DWORD PTR [rbp-0x1c]
  104b9b:	0f be 04 08          	movsx  eax,BYTE PTR [rax+rcx*1]
  104b9f:	b9 07 00 00 00       	mov    ecx,0x7
  104ba4:	2b 4d e0             	sub    ecx,DWORD PTR [rbp-0x20]
  104ba7:	d3 f8                	sar    eax,cl
  104ba9:	83 e0 01             	and    eax,0x1
  104bac:	83 f8 00             	cmp    eax,0x0
  104baf:	0f 84 42 00 00 00    	je     104bf7 <_Z10WriteAsciic5Colorii+0xc7>
  104bb5:	48 8b 05 b4 76 51 00 	mov    rax,QWORD PTR [rip+0x5176b4]        # 61c270 <WritePixel>
  104bbc:	8a 4d fa             	mov    cl,BYTE PTR [rbp-0x6]
  104bbf:	88 4d da             	mov    BYTE PTR [rbp-0x26],cl
  104bc2:	66 8b 4d f8          	mov    cx,WORD PTR [rbp-0x8]
  104bc6:	66 89 4d d8          	mov    WORD PTR [rbp-0x28],cx
  104bca:	8b 75 ec             	mov    esi,DWORD PTR [rbp-0x14]
  104bcd:	8b 4d e0             	mov    ecx,DWORD PTR [rbp-0x20]
  104bd0:	01 ce                	add    esi,ecx
  104bd2:	8b 55 e8             	mov    edx,DWORD PTR [rbp-0x18]
  104bd5:	8b 4d e4             	mov    ecx,DWORD PTR [rbp-0x1c]
  104bd8:	01 ca                	add    edx,ecx
  104bda:	8a 4d da             	mov    cl,BYTE PTR [rbp-0x26]
  104bdd:	88 4d d6             	mov    BYTE PTR [rbp-0x2a],cl
  104be0:	66 8b 4d d8          	mov    cx,WORD PTR [rbp-0x28]
  104be4:	66 89 4d d4          	mov    WORD PTR [rbp-0x2c],cx
  104be8:	0f b6 4d d6          	movzx  ecx,BYTE PTR [rbp-0x2a]
  104bec:	c1 e1 10             	shl    ecx,0x10
  104bef:	0f b7 7d d4          	movzx  edi,WORD PTR [rbp-0x2c]
  104bf3:	09 cf                	or     edi,ecx
  104bf5:	ff d0                	call   rax
  104bf7:	e9 00 00 00 00       	jmp    104bfc <_Z10WriteAsciic5Colorii+0xcc>
  104bfc:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
  104bff:	83 c0 01             	add    eax,0x1
  104c02:	89 45 e0             	mov    DWORD PTR [rbp-0x20],eax
  104c05:	e9 70 ff ff ff       	jmp    104b7a <_Z10WriteAsciic5Colorii+0x4a>
  104c0a:	e9 00 00 00 00       	jmp    104c0f <_Z10WriteAsciic5Colorii+0xdf>
  104c0f:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  104c12:	83 c0 01             	add    eax,0x1
  104c15:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
  104c18:	e9 4c ff ff ff       	jmp    104b69 <_Z10WriteAsciic5Colorii+0x39>
  104c1d:	31 c0                	xor    eax,eax
  104c1f:	48 83 c4 30          	add    rsp,0x30
  104c23:	5d                   	pop    rbp
  104c24:	c3                   	ret
  104c25:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  104c2c:	00 00 00 00 

0000000000104c30 <_Z11WriteSquare6VectorS_5Color>:
  104c30:	55                   	push   rbp
  104c31:	48 89 e5             	mov    rbp,rsp
  104c34:	48 83 ec 50          	sub    rsp,0x50
  104c38:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  104c3c:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  104c40:	89 d0                	mov    eax,edx
  104c42:	c1 e8 10             	shr    eax,0x10
  104c45:	88 45 e6             	mov    BYTE PTR [rbp-0x1a],al
  104c48:	66 89 d0             	mov    ax,dx
  104c4b:	66 89 45 e4          	mov    WORD PTR [rbp-0x1c],ax
  104c4f:	66 8b 45 e4          	mov    ax,WORD PTR [rbp-0x1c]
  104c53:	66 89 45 e8          	mov    WORD PTR [rbp-0x18],ax
  104c57:	8a 45 e6             	mov    al,BYTE PTR [rbp-0x1a]
  104c5a:	88 45 ea             	mov    BYTE PTR [rbp-0x16],al
  104c5d:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  104c60:	3b 45 f0             	cmp    eax,DWORD PTR [rbp-0x10]
  104c63:	0f 8e 0b 00 00 00    	jle    104c74 <_Z11WriteSquare6VectorS_5Color+0x44>
  104c69:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  104c6c:	89 45 d0             	mov    DWORD PTR [rbp-0x30],eax
  104c6f:	e9 06 00 00 00       	jmp    104c7a <_Z11WriteSquare6VectorS_5Color+0x4a>
  104c74:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  104c77:	89 45 d0             	mov    DWORD PTR [rbp-0x30],eax
  104c7a:	8b 45 d0             	mov    eax,DWORD PTR [rbp-0x30]
  104c7d:	89 45 e0             	mov    DWORD PTR [rbp-0x20],eax
  104c80:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
  104c83:	89 45 cc             	mov    DWORD PTR [rbp-0x34],eax
  104c86:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  104c89:	3b 45 f0             	cmp    eax,DWORD PTR [rbp-0x10]
  104c8c:	0f 8d 0b 00 00 00    	jge    104c9d <_Z11WriteSquare6VectorS_5Color+0x6d>
  104c92:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  104c95:	89 45 c8             	mov    DWORD PTR [rbp-0x38],eax
  104c98:	e9 06 00 00 00       	jmp    104ca3 <_Z11WriteSquare6VectorS_5Color+0x73>
  104c9d:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  104ca0:	89 45 c8             	mov    DWORD PTR [rbp-0x38],eax
  104ca3:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
  104ca6:	8b 4d c8             	mov    ecx,DWORD PTR [rbp-0x38]
  104ca9:	39 c8                	cmp    eax,ecx
  104cab:	0f 8d ad 00 00 00    	jge    104d5e <_Z11WriteSquare6VectorS_5Color+0x12e>
  104cb1:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  104cb4:	3b 45 f4             	cmp    eax,DWORD PTR [rbp-0xc]
  104cb7:	0f 8e 0b 00 00 00    	jle    104cc8 <_Z11WriteSquare6VectorS_5Color+0x98>
  104cbd:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  104cc0:	89 45 c4             	mov    DWORD PTR [rbp-0x3c],eax
  104cc3:	e9 06 00 00 00       	jmp    104cce <_Z11WriteSquare6VectorS_5Color+0x9e>
  104cc8:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  104ccb:	89 45 c4             	mov    DWORD PTR [rbp-0x3c],eax
  104cce:	8b 45 c4             	mov    eax,DWORD PTR [rbp-0x3c]
  104cd1:	89 45 dc             	mov    DWORD PTR [rbp-0x24],eax
  104cd4:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
  104cd7:	89 45 c0             	mov    DWORD PTR [rbp-0x40],eax
  104cda:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  104cdd:	3b 45 f4             	cmp    eax,DWORD PTR [rbp-0xc]
  104ce0:	0f 8d 0b 00 00 00    	jge    104cf1 <_Z11WriteSquare6VectorS_5Color+0xc1>
  104ce6:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  104ce9:	89 45 bc             	mov    DWORD PTR [rbp-0x44],eax
  104cec:	e9 06 00 00 00       	jmp    104cf7 <_Z11WriteSquare6VectorS_5Color+0xc7>
  104cf1:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  104cf4:	89 45 bc             	mov    DWORD PTR [rbp-0x44],eax
  104cf7:	8b 45 c0             	mov    eax,DWORD PTR [rbp-0x40]
  104cfa:	8b 4d bc             	mov    ecx,DWORD PTR [rbp-0x44]
  104cfd:	39 c8                	cmp    eax,ecx
  104cff:	0f 8d 46 00 00 00    	jge    104d4b <_Z11WriteSquare6VectorS_5Color+0x11b>
  104d05:	48 8b 05 64 75 51 00 	mov    rax,QWORD PTR [rip+0x517564]        # 61c270 <WritePixel>
  104d0c:	8a 4d ea             	mov    cl,BYTE PTR [rbp-0x16]
  104d0f:	88 4d da             	mov    BYTE PTR [rbp-0x26],cl
  104d12:	66 8b 4d e8          	mov    cx,WORD PTR [rbp-0x18]
  104d16:	66 89 4d d8          	mov    WORD PTR [rbp-0x28],cx
  104d1a:	8b 75 e0             	mov    esi,DWORD PTR [rbp-0x20]
  104d1d:	8b 55 dc             	mov    edx,DWORD PTR [rbp-0x24]
  104d20:	8a 4d da             	mov    cl,BYTE PTR [rbp-0x26]
  104d23:	88 4d d6             	mov    BYTE PTR [rbp-0x2a],cl
  104d26:	66 8b 4d d8          	mov    cx,WORD PTR [rbp-0x28]
  104d2a:	66 89 4d d4          	mov    WORD PTR [rbp-0x2c],cx
  104d2e:	0f b6 4d d6          	movzx  ecx,BYTE PTR [rbp-0x2a]
  104d32:	c1 e1 10             	shl    ecx,0x10
  104d35:	0f b7 7d d4          	movzx  edi,WORD PTR [rbp-0x2c]
  104d39:	09 cf                	or     edi,ecx
  104d3b:	ff d0                	call   rax
  104d3d:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
  104d40:	83 c0 01             	add    eax,0x1
  104d43:	89 45 dc             	mov    DWORD PTR [rbp-0x24],eax
  104d46:	e9 89 ff ff ff       	jmp    104cd4 <_Z11WriteSquare6VectorS_5Color+0xa4>
  104d4b:	e9 00 00 00 00       	jmp    104d50 <_Z11WriteSquare6VectorS_5Color+0x120>
  104d50:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
  104d53:	83 c0 01             	add    eax,0x1
  104d56:	89 45 e0             	mov    DWORD PTR [rbp-0x20],eax
  104d59:	e9 22 ff ff ff       	jmp    104c80 <_Z11WriteSquare6VectorS_5Color+0x50>
  104d5e:	31 c0                	xor    eax,eax
  104d60:	48 83 c4 50          	add    rsp,0x50
  104d64:	5d                   	pop    rbp
  104d65:	c3                   	ret
  104d66:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  104d6d:	00 00 00 

0000000000104d70 <_Z9PrintLinePKc6Vector5Color>:
  104d70:	55                   	push   rbp
  104d71:	48 89 e5             	mov    rbp,rsp
  104d74:	48 83 ec 40          	sub    rsp,0x40
  104d78:	48 89 75 f8          	mov    QWORD PTR [rbp-0x8],rsi
  104d7c:	66 89 d0             	mov    ax,dx
  104d7f:	66 89 45 ec          	mov    WORD PTR [rbp-0x14],ax
  104d83:	c1 ea 10             	shr    edx,0x10
  104d86:	88 d0                	mov    al,dl
  104d88:	88 45 ee             	mov    BYTE PTR [rbp-0x12],al
  104d8b:	66 8b 45 ec          	mov    ax,WORD PTR [rbp-0x14]
  104d8f:	66 89 45 f0          	mov    WORD PTR [rbp-0x10],ax
  104d93:	8a 45 ee             	mov    al,BYTE PTR [rbp-0x12]
  104d96:	88 45 f2             	mov    BYTE PTR [rbp-0xe],al
  104d99:	48 89 7d e0          	mov    QWORD PTR [rbp-0x20],rdi
  104d9d:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  104da1:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
  104da5:	c7 45 d4 00 00 00 00 	mov    DWORD PTR [rbp-0x2c],0x0
  104dac:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  104db0:	48 63 4d d4          	movsxd rcx,DWORD PTR [rbp-0x2c]
  104db4:	0f be 04 08          	movsx  eax,BYTE PTR [rax+rcx*1]
  104db8:	83 f8 00             	cmp    eax,0x0
  104dbb:	0f 84 c1 00 00 00    	je     104e82 <_Z9PrintLinePKc6Vector5Color+0x112>
  104dc1:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  104dc5:	48 63 4d d4          	movsxd rcx,DWORD PTR [rbp-0x2c]
  104dc9:	0f be 04 08          	movsx  eax,BYTE PTR [rax+rcx*1]
  104dcd:	83 f8 0a             	cmp    eax,0xa
  104dd0:	0f 84 9e 00 00 00    	je     104e74 <_Z9PrintLinePKc6Vector5Color+0x104>
  104dd6:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  104dda:	48 63 4d d4          	movsxd rcx,DWORD PTR [rbp-0x2c]
  104dde:	0f be 3c 08          	movsx  edi,BYTE PTR [rax+rcx*1]
  104de2:	c6 45 d0 64          	mov    BYTE PTR [rbp-0x30],0x64
  104de6:	c6 45 d1 64          	mov    BYTE PTR [rbp-0x2f],0x64
  104dea:	c6 45 d2 64          	mov    BYTE PTR [rbp-0x2e],0x64
  104dee:	8b 4d d4             	mov    ecx,DWORD PTR [rbp-0x2c]
  104df1:	89 c8                	mov    eax,ecx
  104df3:	8d 34 c0             	lea    esi,[rax+rax*8]
  104df6:	8b 55 f8             	mov    edx,DWORD PTR [rbp-0x8]
  104df9:	8b 4d fc             	mov    ecx,DWORD PTR [rbp-0x4]
  104dfc:	89 d0                	mov    eax,edx
  104dfe:	89 f2                	mov    edx,esi
  104e00:	8d 54 10 01          	lea    edx,[rax+rdx*1+0x1]
  104e04:	ff c1                	inc    ecx
  104e06:	8a 45 d2             	mov    al,BYTE PTR [rbp-0x2e]
  104e09:	88 45 ce             	mov    BYTE PTR [rbp-0x32],al
  104e0c:	66 8b 45 d0          	mov    ax,WORD PTR [rbp-0x30]
  104e10:	66 89 45 cc          	mov    WORD PTR [rbp-0x34],ax
  104e14:	0f b6 45 ce          	movzx  eax,BYTE PTR [rbp-0x32]
  104e18:	c1 e0 10             	shl    eax,0x10
  104e1b:	0f b7 75 cc          	movzx  esi,WORD PTR [rbp-0x34]
  104e1f:	09 c6                	or     esi,eax
  104e21:	e8 0a fd ff ff       	call   104b30 <_Z10WriteAsciic5Colorii>
  104e26:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  104e2a:	48 63 4d d4          	movsxd rcx,DWORD PTR [rbp-0x2c]
  104e2e:	8a 04 08             	mov    al,BYTE PTR [rax+rcx*1]
  104e31:	8a 4d f2             	mov    cl,BYTE PTR [rbp-0xe]
  104e34:	88 4d ca             	mov    BYTE PTR [rbp-0x36],cl
  104e37:	66 8b 4d f0          	mov    cx,WORD PTR [rbp-0x10]
  104e3b:	66 89 4d c8          	mov    WORD PTR [rbp-0x38],cx
  104e3f:	8b 55 d4             	mov    edx,DWORD PTR [rbp-0x2c]
  104e42:	89 d1                	mov    ecx,edx
  104e44:	8d 34 c9             	lea    esi,[rcx+rcx*8]
  104e47:	8b 55 f8             	mov    edx,DWORD PTR [rbp-0x8]
  104e4a:	8b 4d fc             	mov    ecx,DWORD PTR [rbp-0x4]
  104e4d:	01 f2                	add    edx,esi
  104e4f:	40 8a 75 ca          	mov    sil,BYTE PTR [rbp-0x36]
  104e53:	40 88 75 c6          	mov    BYTE PTR [rbp-0x3a],sil
  104e57:	66 8b 75 c8          	mov    si,WORD PTR [rbp-0x38]
  104e5b:	66 89 75 c4          	mov    WORD PTR [rbp-0x3c],si
  104e5f:	0f b6 7d c6          	movzx  edi,BYTE PTR [rbp-0x3a]
  104e63:	c1 e7 10             	shl    edi,0x10
  104e66:	0f b7 75 c4          	movzx  esi,WORD PTR [rbp-0x3c]
  104e6a:	09 fe                	or     esi,edi
  104e6c:	0f be f8             	movsx  edi,al
  104e6f:	e8 bc fc ff ff       	call   104b30 <_Z10WriteAsciic5Colorii>
  104e74:	8b 45 d4             	mov    eax,DWORD PTR [rbp-0x2c]
  104e77:	83 c0 01             	add    eax,0x1
  104e7a:	89 45 d4             	mov    DWORD PTR [rbp-0x2c],eax
  104e7d:	e9 2a ff ff ff       	jmp    104dac <_Z9PrintLinePKc6Vector5Color+0x3c>
  104e82:	31 c0                	xor    eax,eax
  104e84:	48 83 c4 40          	add    rsp,0x40
  104e88:	5d                   	pop    rbp
  104e89:	c3                   	ret
  104e8a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000104e90 <_Z12RegisterLinePKc>:
  104e90:	55                   	push   rbp
  104e91:	48 89 e5             	mov    rbp,rsp
  104e94:	48 83 ec 10          	sub    rsp,0x10
  104e98:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  104e9c:	48 c7 45 f0 00 00 00 	mov    QWORD PTR [rbp-0x10],0x0
  104ea3:	00 
  104ea4:	48 63 05 99 25 51 00 	movsxd rax,DWORD PTR [rip+0x512599]        # 617444 <line_queue_end>
  104eab:	48 8d 3d 9e 25 51 00 	lea    rdi,[rip+0x51259e]        # 617450 <line_queue>
  104eb2:	48 6b c0 64          	imul   rax,rax,0x64
  104eb6:	48 01 c7             	add    rdi,rax
  104eb9:	48 8b 75 f8          	mov    rsi,QWORD PTR [rbp-0x8]
  104ebd:	e8 be 09 00 00       	call   105880 <strcpy>
  104ec2:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  104ec6:	8b 05 78 25 51 00    	mov    eax,DWORD PTR [rip+0x512578]        # 617444 <line_queue_end>
  104ecc:	83 c0 01             	add    eax,0x1
  104ecf:	99                   	cdq
  104ed0:	f7 3d 72 25 51 00    	idiv   DWORD PTR [rip+0x512572]        # 617448 <max_line>
  104ed6:	89 15 68 25 51 00    	mov    DWORD PTR [rip+0x512568],edx        # 617444 <line_queue_end>
  104edc:	8b 05 62 25 51 00    	mov    eax,DWORD PTR [rip+0x512562]        # 617444 <line_queue_end>
  104ee2:	3b 05 58 25 51 00    	cmp    eax,DWORD PTR [rip+0x512558]        # 617440 <line_queue_head>
  104ee8:	0f 85 16 00 00 00    	jne    104f04 <_Z12RegisterLinePKc+0x74>
  104eee:	8b 05 4c 25 51 00    	mov    eax,DWORD PTR [rip+0x51254c]        # 617440 <line_queue_head>
  104ef4:	83 c0 01             	add    eax,0x1
  104ef7:	99                   	cdq
  104ef8:	f7 3d 4a 25 51 00    	idiv   DWORD PTR [rip+0x51254a]        # 617448 <max_line>
  104efe:	89 15 3c 25 51 00    	mov    DWORD PTR [rip+0x51253c],edx        # 617440 <line_queue_head>
  104f04:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  104f08:	48 83 c4 10          	add    rsp,0x10
  104f0c:	5d                   	pop    rbp
  104f0d:	c3                   	ret
  104f0e:	66 90                	xchg   ax,ax

0000000000104f10 <Print>:
  104f10:	55                   	push   rbp
  104f11:	48 89 e5             	mov    rbp,rsp
  104f14:	48 81 ec e0 00 00 00 	sub    rsp,0xe0
  104f1b:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  104f1f:	48 8b 75 f0          	mov    rsi,QWORD PTR [rbp-0x10]
  104f23:	48 8d 3d 56 73 51 00 	lea    rdi,[rip+0x517356]        # 61c280 <_ZZ5PrintE4line>
  104f2a:	e8 e1 09 00 00       	call   105910 <strcat>
  104f2f:	8b 05 9b 06 01 00    	mov    eax,DWORD PTR [rip+0x1069b]        # 1155d0 <line_len_max>
  104f35:	ff c0                	inc    eax
  104f37:	48 89 e1             	mov    rcx,rsp
  104f3a:	48 89 4d e8          	mov    QWORD PTR [rbp-0x18],rcx
  104f3e:	48 89 c2             	mov    rdx,rax
  104f41:	48 83 c2 0f          	add    rdx,0xf
  104f45:	48 83 e2 f0          	and    rdx,0xfffffffffffffff0
  104f49:	48 89 e1             	mov    rcx,rsp
  104f4c:	48 29 d1             	sub    rcx,rdx
  104f4f:	48 89 8d 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],rcx
  104f56:	48 89 cc             	mov    rsp,rcx
  104f59:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  104f5d:	48 8d 3d 1c 73 51 00 	lea    rdi,[rip+0x51731c]        # 61c280 <_ZZ5PrintE4line>
  104f64:	e8 17 0a 00 00       	call   105980 <strlen>
  104f69:	48 63 0d 60 06 01 00 	movsxd rcx,DWORD PTR [rip+0x10660]        # 1155d0 <line_len_max>
  104f70:	48 39 c8             	cmp    rax,rcx
  104f73:	0f 86 61 00 00 00    	jbe    104fda <Print+0xca>
  104f79:	48 8b bd 28 ff ff ff 	mov    rdi,QWORD PTR [rbp-0xd8]
  104f80:	48 63 05 49 06 01 00 	movsxd rax,DWORD PTR [rip+0x10649]        # 1155d0 <line_len_max>
  104f87:	48 8d 35 f2 72 51 00 	lea    rsi,[rip+0x5172f2]        # 61c280 <_ZZ5PrintE4line>
  104f8e:	48 01 c6             	add    rsi,rax
  104f91:	e8 ea 08 00 00       	call   105880 <strcpy>
  104f96:	48 63 0d 33 06 01 00 	movsxd rcx,DWORD PTR [rip+0x10633]        # 1155d0 <line_len_max>
  104f9d:	48 8d 05 dc 72 51 00 	lea    rax,[rip+0x5172dc]        # 61c280 <_ZZ5PrintE4line>
  104fa4:	c6 04 08 00          	mov    BYTE PTR [rax+rcx*1],0x0
  104fa8:	48 8d 3d d1 72 51 00 	lea    rdi,[rip+0x5172d1]        # 61c280 <_ZZ5PrintE4line>
  104faf:	e8 dc fe ff ff       	call   104e90 <_Z12RegisterLinePKc>
  104fb4:	48 8b bd 28 ff ff ff 	mov    rdi,QWORD PTR [rbp-0xd8]
  104fbb:	c6 05 be 72 51 00 00 	mov    BYTE PTR [rip+0x5172be],0x0        # 61c280 <_ZZ5PrintE4line>
  104fc2:	e8 49 ff ff ff       	call   104f10 <Print>
  104fc7:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  104fce:	c7 45 dc 01 00 00 00 	mov    DWORD PTR [rbp-0x24],0x1
  104fd5:	e9 7d 03 00 00       	jmp    105357 <Print+0x447>
  104fda:	48 8d 3d 9f 72 51 00 	lea    rdi,[rip+0x51729f]        # 61c280 <_ZZ5PrintE4line>
  104fe1:	e8 9a 09 00 00       	call   105980 <strlen>
  104fe6:	48 89 85 20 ff ff ff 	mov    QWORD PTR [rbp-0xe0],rax
  104fed:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  104ff1:	e8 8a 09 00 00       	call   105980 <strlen>
  104ff6:	48 89 c1             	mov    rcx,rax
  104ff9:	48 8b 85 20 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe0]
  105000:	48 29 c8             	sub    rax,rcx
  105003:	48 83 f8 00          	cmp    rax,0x0
  105007:	0f 84 f2 00 00 00    	je     1050ff <Print+0x1ef>
  10500d:	c7 45 d0 00 00 00 00 	mov    DWORD PTR [rbp-0x30],0x0
  105014:	8b 05 5e 72 51 00    	mov    eax,DWORD PTR [rip+0x51725e]        # 61c278 <_ZZ5PrintE1y>
  10501a:	89 45 d4             	mov    DWORD PTR [rbp-0x2c],eax
  10501d:	8b 0d ad 05 01 00    	mov    ecx,DWORD PTR [rip+0x105ad]        # 1155d0 <line_len_max>
  105023:	89 c8                	mov    eax,ecx
  105025:	8d 04 c0             	lea    eax,[rax+rax*8]
  105028:	89 45 c8             	mov    DWORD PTR [rbp-0x38],eax
  10502b:	8b 05 47 72 51 00    	mov    eax,DWORD PTR [rip+0x517247]        # 61c278 <_ZZ5PrintE1y>
  105031:	83 c0 11             	add    eax,0x11
  105034:	89 45 cc             	mov    DWORD PTR [rbp-0x34],eax
  105037:	c6 45 c0 00          	mov    BYTE PTR [rbp-0x40],0x0
  10503b:	c6 45 c1 00          	mov    BYTE PTR [rbp-0x3f],0x0
  10503f:	c6 45 c2 00          	mov    BYTE PTR [rbp-0x3e],0x0
  105043:	48 8b 7d d0          	mov    rdi,QWORD PTR [rbp-0x30]
  105047:	48 8b 75 c8          	mov    rsi,QWORD PTR [rbp-0x38]
  10504b:	8a 45 c2             	mov    al,BYTE PTR [rbp-0x3e]
  10504e:	88 45 be             	mov    BYTE PTR [rbp-0x42],al
  105051:	66 8b 45 c0          	mov    ax,WORD PTR [rbp-0x40]
  105055:	66 89 45 bc          	mov    WORD PTR [rbp-0x44],ax
  105059:	0f b6 45 be          	movzx  eax,BYTE PTR [rbp-0x42]
  10505d:	c1 e0 10             	shl    eax,0x10
  105060:	0f b7 55 bc          	movzx  edx,WORD PTR [rbp-0x44]
  105064:	09 c2                	or     edx,eax
  105066:	e8 c5 fb ff ff       	call   104c30 <_Z11WriteSquare6VectorS_5Color>
  10506b:	c7 45 b0 00 00 00 00 	mov    DWORD PTR [rbp-0x50],0x0
  105072:	8b 05 00 72 51 00    	mov    eax,DWORD PTR [rip+0x517200]        # 61c278 <_ZZ5PrintE1y>
  105078:	89 45 b4             	mov    DWORD PTR [rbp-0x4c],eax
  10507b:	c6 45 a8 ff          	mov    BYTE PTR [rbp-0x58],0xff
  10507f:	c6 45 a9 ff          	mov    BYTE PTR [rbp-0x57],0xff
  105083:	c6 45 aa ff          	mov    BYTE PTR [rbp-0x56],0xff
  105087:	48 8b 75 b0          	mov    rsi,QWORD PTR [rbp-0x50]
  10508b:	8a 45 aa             	mov    al,BYTE PTR [rbp-0x56]
  10508e:	88 45 a6             	mov    BYTE PTR [rbp-0x5a],al
  105091:	66 8b 45 a8          	mov    ax,WORD PTR [rbp-0x58]
  105095:	66 89 45 a4          	mov    WORD PTR [rbp-0x5c],ax
  105099:	0f b6 45 a6          	movzx  eax,BYTE PTR [rbp-0x5a]
  10509d:	c1 e0 10             	shl    eax,0x10
  1050a0:	0f b7 55 a4          	movzx  edx,WORD PTR [rbp-0x5c]
  1050a4:	09 c2                	or     edx,eax
  1050a6:	48 8d 3d d3 71 51 00 	lea    rdi,[rip+0x5171d3]        # 61c280 <_ZZ5PrintE4line>
  1050ad:	e8 be fc ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  1050b2:	48 8d 3d c7 71 51 00 	lea    rdi,[rip+0x5171c7]        # 61c280 <_ZZ5PrintE4line>
  1050b9:	e8 c2 08 00 00       	call   105980 <strlen>
  1050be:	48 89 c1             	mov    rcx,rax
  1050c1:	48 83 e9 01          	sub    rcx,0x1
  1050c5:	48 8d 05 b4 71 51 00 	lea    rax,[rip+0x5171b4]        # 61c280 <_ZZ5PrintE4line>
  1050cc:	0f be 04 08          	movsx  eax,BYTE PTR [rax+rcx*1]
  1050d0:	83 f8 0a             	cmp    eax,0xa
  1050d3:	0f 85 13 00 00 00    	jne    1050ec <Print+0x1dc>
  1050d9:	48 8d 3d a0 71 51 00 	lea    rdi,[rip+0x5171a0]        # 61c280 <_ZZ5PrintE4line>
  1050e0:	e8 ab fd ff ff       	call   104e90 <_Z12RegisterLinePKc>
  1050e5:	c6 05 94 71 51 00 00 	mov    BYTE PTR [rip+0x517194],0x0        # 61c280 <_ZZ5PrintE4line>
  1050ec:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  1050f3:	c7 45 dc 01 00 00 00 	mov    DWORD PTR [rbp-0x24],0x1
  1050fa:	e9 58 02 00 00       	jmp    105357 <Print+0x447>
  1050ff:	c7 05 6f 71 51 00 00 	mov    DWORD PTR [rip+0x51716f],0x0        # 61c278 <_ZZ5PrintE1y>
  105106:	00 00 00 
  105109:	8b 05 31 23 51 00    	mov    eax,DWORD PTR [rip+0x512331]        # 617440 <line_queue_head>
  10510f:	89 45 a0             	mov    DWORD PTR [rbp-0x60],eax
  105112:	8b 45 a0             	mov    eax,DWORD PTR [rbp-0x60]
  105115:	3b 05 29 23 51 00    	cmp    eax,DWORD PTR [rip+0x512329]        # 617444 <line_queue_end>
  10511b:	0f 84 f8 00 00 00    	je     105219 <Print+0x309>
  105121:	c7 45 98 00 00 00 00 	mov    DWORD PTR [rbp-0x68],0x0
  105128:	8b 05 4a 71 51 00    	mov    eax,DWORD PTR [rip+0x51714a]        # 61c278 <_ZZ5PrintE1y>
  10512e:	89 45 9c             	mov    DWORD PTR [rbp-0x64],eax
  105131:	8b 0d 99 04 01 00    	mov    ecx,DWORD PTR [rip+0x10499]        # 1155d0 <line_len_max>
  105137:	89 c8                	mov    eax,ecx
  105139:	8d 04 c0             	lea    eax,[rax+rax*8]
  10513c:	89 45 90             	mov    DWORD PTR [rbp-0x70],eax
  10513f:	8b 05 33 71 51 00    	mov    eax,DWORD PTR [rip+0x517133]        # 61c278 <_ZZ5PrintE1y>
  105145:	83 c0 11             	add    eax,0x11
  105148:	89 45 94             	mov    DWORD PTR [rbp-0x6c],eax
  10514b:	c6 45 88 00          	mov    BYTE PTR [rbp-0x78],0x0
  10514f:	c6 45 89 00          	mov    BYTE PTR [rbp-0x77],0x0
  105153:	c6 45 8a 00          	mov    BYTE PTR [rbp-0x76],0x0
  105157:	48 8b 7d 98          	mov    rdi,QWORD PTR [rbp-0x68]
  10515b:	48 8b 75 90          	mov    rsi,QWORD PTR [rbp-0x70]
  10515f:	8a 45 8a             	mov    al,BYTE PTR [rbp-0x76]
  105162:	88 45 86             	mov    BYTE PTR [rbp-0x7a],al
  105165:	66 8b 45 88          	mov    ax,WORD PTR [rbp-0x78]
  105169:	66 89 45 84          	mov    WORD PTR [rbp-0x7c],ax
  10516d:	0f b6 45 86          	movzx  eax,BYTE PTR [rbp-0x7a]
  105171:	c1 e0 10             	shl    eax,0x10
  105174:	0f b7 55 84          	movzx  edx,WORD PTR [rbp-0x7c]
  105178:	09 c2                	or     edx,eax
  10517a:	e8 b1 fa ff ff       	call   104c30 <_Z11WriteSquare6VectorS_5Color>
  10517f:	48 63 45 a0          	movsxd rax,DWORD PTR [rbp-0x60]
  105183:	48 6b c0 64          	imul   rax,rax,0x64
  105187:	48 8d 3d c2 22 51 00 	lea    rdi,[rip+0x5122c2]        # 617450 <line_queue>
  10518e:	48 01 c7             	add    rdi,rax
  105191:	c7 85 78 ff ff ff 00 	mov    DWORD PTR [rbp-0x88],0x0
  105198:	00 00 00 
  10519b:	8b 05 d7 70 51 00    	mov    eax,DWORD PTR [rip+0x5170d7]        # 61c278 <_ZZ5PrintE1y>
  1051a1:	89 85 7c ff ff ff    	mov    DWORD PTR [rbp-0x84],eax
  1051a7:	c6 85 70 ff ff ff ff 	mov    BYTE PTR [rbp-0x90],0xff
  1051ae:	c6 85 71 ff ff ff ff 	mov    BYTE PTR [rbp-0x8f],0xff
  1051b5:	c6 85 72 ff ff ff ff 	mov    BYTE PTR [rbp-0x8e],0xff
  1051bc:	48 8b b5 78 ff ff ff 	mov    rsi,QWORD PTR [rbp-0x88]
  1051c3:	8a 85 72 ff ff ff    	mov    al,BYTE PTR [rbp-0x8e]
  1051c9:	88 85 6e ff ff ff    	mov    BYTE PTR [rbp-0x92],al
  1051cf:	66 8b 85 70 ff ff ff 	mov    ax,WORD PTR [rbp-0x90]
  1051d6:	66 89 85 6c ff ff ff 	mov    WORD PTR [rbp-0x94],ax
  1051dd:	0f b6 85 6e ff ff ff 	movzx  eax,BYTE PTR [rbp-0x92]
  1051e4:	c1 e0 10             	shl    eax,0x10
  1051e7:	0f b7 95 6c ff ff ff 	movzx  edx,WORD PTR [rbp-0x94]
  1051ee:	09 c2                	or     edx,eax
  1051f0:	e8 7b fb ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  1051f5:	8b 05 7d 70 51 00    	mov    eax,DWORD PTR [rip+0x51707d]        # 61c278 <_ZZ5PrintE1y>
  1051fb:	83 c0 11             	add    eax,0x11
  1051fe:	89 05 74 70 51 00    	mov    DWORD PTR [rip+0x517074],eax        # 61c278 <_ZZ5PrintE1y>
  105204:	8b 45 a0             	mov    eax,DWORD PTR [rbp-0x60]
  105207:	83 c0 01             	add    eax,0x1
  10520a:	99                   	cdq
  10520b:	f7 3d 37 22 51 00    	idiv   DWORD PTR [rip+0x512237]        # 617448 <max_line>
  105211:	89 55 a0             	mov    DWORD PTR [rbp-0x60],edx
  105214:	e9 f9 fe ff ff       	jmp    105112 <Print+0x202>
  105219:	c7 85 60 ff ff ff 00 	mov    DWORD PTR [rbp-0xa0],0x0
  105220:	00 00 00 
  105223:	8b 05 4f 70 51 00    	mov    eax,DWORD PTR [rip+0x51704f]        # 61c278 <_ZZ5PrintE1y>
  105229:	89 85 64 ff ff ff    	mov    DWORD PTR [rbp-0x9c],eax
  10522f:	8b 0d 9b 03 01 00    	mov    ecx,DWORD PTR [rip+0x1039b]        # 1155d0 <line_len_max>
  105235:	89 c8                	mov    eax,ecx
  105237:	8d 04 c0             	lea    eax,[rax+rax*8]
  10523a:	89 85 58 ff ff ff    	mov    DWORD PTR [rbp-0xa8],eax
  105240:	8b 05 32 70 51 00    	mov    eax,DWORD PTR [rip+0x517032]        # 61c278 <_ZZ5PrintE1y>
  105246:	83 c0 11             	add    eax,0x11
  105249:	89 85 5c ff ff ff    	mov    DWORD PTR [rbp-0xa4],eax
  10524f:	c6 85 50 ff ff ff 00 	mov    BYTE PTR [rbp-0xb0],0x0
  105256:	c6 85 51 ff ff ff 00 	mov    BYTE PTR [rbp-0xaf],0x0
  10525d:	c6 85 52 ff ff ff 00 	mov    BYTE PTR [rbp-0xae],0x0
  105264:	48 8b bd 60 ff ff ff 	mov    rdi,QWORD PTR [rbp-0xa0]
  10526b:	48 8b b5 58 ff ff ff 	mov    rsi,QWORD PTR [rbp-0xa8]
  105272:	8a 85 52 ff ff ff    	mov    al,BYTE PTR [rbp-0xae]
  105278:	88 85 4e ff ff ff    	mov    BYTE PTR [rbp-0xb2],al
  10527e:	66 8b 85 50 ff ff ff 	mov    ax,WORD PTR [rbp-0xb0]
  105285:	66 89 85 4c ff ff ff 	mov    WORD PTR [rbp-0xb4],ax
  10528c:	0f b6 85 4e ff ff ff 	movzx  eax,BYTE PTR [rbp-0xb2]
  105293:	c1 e0 10             	shl    eax,0x10
  105296:	0f b7 95 4c ff ff ff 	movzx  edx,WORD PTR [rbp-0xb4]
  10529d:	09 c2                	or     edx,eax
  10529f:	e8 8c f9 ff ff       	call   104c30 <_Z11WriteSquare6VectorS_5Color>
  1052a4:	c7 85 40 ff ff ff 00 	mov    DWORD PTR [rbp-0xc0],0x0
  1052ab:	00 00 00 
  1052ae:	8b 05 c4 6f 51 00    	mov    eax,DWORD PTR [rip+0x516fc4]        # 61c278 <_ZZ5PrintE1y>
  1052b4:	89 85 44 ff ff ff    	mov    DWORD PTR [rbp-0xbc],eax
  1052ba:	c6 85 38 ff ff ff ff 	mov    BYTE PTR [rbp-0xc8],0xff
  1052c1:	c6 85 39 ff ff ff ff 	mov    BYTE PTR [rbp-0xc7],0xff
  1052c8:	c6 85 3a ff ff ff ff 	mov    BYTE PTR [rbp-0xc6],0xff
  1052cf:	48 8b b5 40 ff ff ff 	mov    rsi,QWORD PTR [rbp-0xc0]
  1052d6:	8a 85 3a ff ff ff    	mov    al,BYTE PTR [rbp-0xc6]
  1052dc:	88 85 36 ff ff ff    	mov    BYTE PTR [rbp-0xca],al
  1052e2:	66 8b 85 38 ff ff ff 	mov    ax,WORD PTR [rbp-0xc8]
  1052e9:	66 89 85 34 ff ff ff 	mov    WORD PTR [rbp-0xcc],ax
  1052f0:	0f b6 85 36 ff ff ff 	movzx  eax,BYTE PTR [rbp-0xca]
  1052f7:	c1 e0 10             	shl    eax,0x10
  1052fa:	0f b7 95 34 ff ff ff 	movzx  edx,WORD PTR [rbp-0xcc]
  105301:	09 c2                	or     edx,eax
  105303:	48 8d 3d 76 6f 51 00 	lea    rdi,[rip+0x516f76]        # 61c280 <_ZZ5PrintE4line>
  10530a:	e8 61 fa ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  10530f:	48 8d 3d 6a 6f 51 00 	lea    rdi,[rip+0x516f6a]        # 61c280 <_ZZ5PrintE4line>
  105316:	e8 65 06 00 00       	call   105980 <strlen>
  10531b:	48 89 c1             	mov    rcx,rax
  10531e:	48 83 e9 01          	sub    rcx,0x1
  105322:	48 8d 05 57 6f 51 00 	lea    rax,[rip+0x516f57]        # 61c280 <_ZZ5PrintE4line>
  105329:	0f be 04 08          	movsx  eax,BYTE PTR [rax+rcx*1]
  10532d:	83 f8 0a             	cmp    eax,0xa
  105330:	0f 85 13 00 00 00    	jne    105349 <Print+0x439>
  105336:	48 8d 3d 43 6f 51 00 	lea    rdi,[rip+0x516f43]        # 61c280 <_ZZ5PrintE4line>
  10533d:	e8 4e fb ff ff       	call   104e90 <_Z12RegisterLinePKc>
  105342:	c6 05 37 6f 51 00 00 	mov    BYTE PTR [rip+0x516f37],0x0        # 61c280 <_ZZ5PrintE4line>
  105349:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  105350:	c7 45 dc 01 00 00 00 	mov    DWORD PTR [rbp-0x24],0x1
  105357:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  10535b:	48 89 c4             	mov    rsp,rax
  10535e:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  105361:	48 89 ec             	mov    rsp,rbp
  105364:	5d                   	pop    rbp
  105365:	c3                   	ret
  105366:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10536d:	00 00 00 

0000000000105370 <Printf>:
  105370:	55                   	push   rbp
  105371:	48 89 e5             	mov    rbp,rsp
  105374:	48 81 ec e0 00 00 00 	sub    rsp,0xe0
  10537b:	84 c0                	test   al,al
  10537d:	0f 84 26 00 00 00    	je     1053a9 <Printf+0x39>
  105383:	0f 29 85 60 ff ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm0
  10538a:	0f 29 8d 70 ff ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm1
  105391:	0f 29 55 80          	movaps XMMWORD PTR [rbp-0x80],xmm2
  105395:	0f 29 5d 90          	movaps XMMWORD PTR [rbp-0x70],xmm3
  105399:	0f 29 65 a0          	movaps XMMWORD PTR [rbp-0x60],xmm4
  10539d:	0f 29 6d b0          	movaps XMMWORD PTR [rbp-0x50],xmm5
  1053a1:	0f 29 75 c0          	movaps XMMWORD PTR [rbp-0x40],xmm6
  1053a5:	0f 29 7d d0          	movaps XMMWORD PTR [rbp-0x30],xmm7
  1053a9:	4c 89 8d 58 ff ff ff 	mov    QWORD PTR [rbp-0xa8],r9
  1053b0:	4c 89 85 50 ff ff ff 	mov    QWORD PTR [rbp-0xb0],r8
  1053b7:	48 89 8d 48 ff ff ff 	mov    QWORD PTR [rbp-0xb8],rcx
  1053be:	48 89 95 40 ff ff ff 	mov    QWORD PTR [rbp-0xc0],rdx
  1053c5:	48 89 b5 38 ff ff ff 	mov    QWORD PTR [rbp-0xc8],rsi
  1053cc:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  1053d0:	48 8d 85 30 ff ff ff 	lea    rax,[rbp-0xd0]
  1053d7:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  1053db:	48 8d 45 10          	lea    rax,[rbp+0x10]
  1053df:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  1053e3:	c7 45 e4 30 00 00 00 	mov    DWORD PTR [rbp-0x1c],0x30
  1053ea:	c7 45 e0 08 00 00 00 	mov    DWORD PTR [rbp-0x20],0x8
  1053f1:	48 8b 75 f8          	mov    rsi,QWORD PTR [rbp-0x8]
  1053f5:	48 8d 3d 74 72 51 00 	lea    rdi,[rip+0x517274]        # 61c670 <_ZZ6PrintfE14str_for_Printf>
  1053fc:	48 89 bd 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],rdi
  105403:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
  105407:	e8 54 06 00 00       	call   105a60 <vsprintf>
  10540c:	48 8b bd 28 ff ff ff 	mov    rdi,QWORD PTR [rbp-0xd8]
  105413:	e8 f8 fa ff ff       	call   104f10 <Print>
  105418:	31 c0                	xor    eax,eax
  10541a:	48 81 c4 e0 00 00 00 	add    rsp,0xe0
  105421:	5d                   	pop    rbp
  105422:	c3                   	ret
  105423:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10542a:	84 00 00 00 00 00 

0000000000105430 <_Z6dPrintPci>:
  105430:	55                   	push   rbp
  105431:	48 89 e5             	mov    rbp,rsp
  105434:	48 83 ec 30          	sub    rsp,0x30
  105438:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  10543c:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi
  10543f:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
  105443:	e8 38 05 00 00       	call   105980 <strlen>
  105448:	48 89 c1             	mov    rcx,rax
  10544b:	48 89 c8             	mov    rax,rcx
  10544e:	48 83 c0 32          	add    rax,0x32
  105452:	48 89 e2             	mov    rdx,rsp
  105455:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
  105459:	48 83 c1 41          	add    rcx,0x41
  10545d:	48 83 e1 f0          	and    rcx,0xfffffffffffffff0
  105461:	48 89 e7             	mov    rdi,rsp
  105464:	48 29 cf             	sub    rdi,rcx
  105467:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
  10546b:	48 89 fc             	mov    rsp,rdi
  10546e:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  105472:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  105476:	8b 4d f4             	mov    ecx,DWORD PTR [rbp-0xc]
  105479:	48 8d 35 d7 af ff ff 	lea    rsi,[rip+0xffffffffffffafd7]        # 100457 <_svfprintf_r.blanks-0x689>
  105480:	b0 00                	mov    al,0x0
  105482:	e8 09 86 00 00       	call   10da90 <sprintf>
  105487:	48 8b 7d d8          	mov    rdi,QWORD PTR [rbp-0x28]
  10548b:	e8 80 fa ff ff       	call   104f10 <Print>
  105490:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  105494:	48 89 c4             	mov    rsp,rax
  105497:	48 89 ec             	mov    rsp,rbp
  10549a:	5d                   	pop    rbp
  10549b:	c3                   	ret
  10549c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000001054a0 <_Z7udPrintPcj>:
  1054a0:	55                   	push   rbp
  1054a1:	48 89 e5             	mov    rbp,rsp
  1054a4:	48 83 ec 30          	sub    rsp,0x30
  1054a8:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  1054ac:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi
  1054af:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
  1054b3:	e8 c8 04 00 00       	call   105980 <strlen>
  1054b8:	48 89 c1             	mov    rcx,rax
  1054bb:	48 89 c8             	mov    rax,rcx
  1054be:	48 83 c0 32          	add    rax,0x32
  1054c2:	48 89 e2             	mov    rdx,rsp
  1054c5:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
  1054c9:	48 83 c1 41          	add    rcx,0x41
  1054cd:	48 83 e1 f0          	and    rcx,0xfffffffffffffff0
  1054d1:	48 89 e7             	mov    rdi,rsp
  1054d4:	48 29 cf             	sub    rdi,rcx
  1054d7:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
  1054db:	48 89 fc             	mov    rsp,rdi
  1054de:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  1054e2:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  1054e6:	8b 4d f4             	mov    ecx,DWORD PTR [rbp-0xc]
  1054e9:	48 8d 35 67 af ff ff 	lea    rsi,[rip+0xffffffffffffaf67]        # 100457 <_svfprintf_r.blanks-0x689>
  1054f0:	b0 00                	mov    al,0x0
  1054f2:	e8 99 85 00 00       	call   10da90 <sprintf>
  1054f7:	48 8b 7d d8          	mov    rdi,QWORD PTR [rbp-0x28]
  1054fb:	e8 10 fa ff ff       	call   104f10 <Print>
  105500:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  105504:	48 89 c4             	mov    rsp,rax
  105507:	48 89 ec             	mov    rsp,rbp
  10550a:	5d                   	pop    rbp
  10550b:	c3                   	ret
  10550c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000105510 <_Z8uxdPrintPcj>:
  105510:	55                   	push   rbp
  105511:	48 89 e5             	mov    rbp,rsp
  105514:	48 83 ec 30          	sub    rsp,0x30
  105518:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  10551c:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi
  10551f:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
  105523:	e8 58 04 00 00       	call   105980 <strlen>
  105528:	48 89 c1             	mov    rcx,rax
  10552b:	48 89 c8             	mov    rax,rcx
  10552e:	48 83 c0 32          	add    rax,0x32
  105532:	48 89 e2             	mov    rdx,rsp
  105535:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
  105539:	48 83 c1 41          	add    rcx,0x41
  10553d:	48 83 e1 f0          	and    rcx,0xfffffffffffffff0
  105541:	48 89 e7             	mov    rdi,rsp
  105544:	48 29 cf             	sub    rdi,rcx
  105547:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
  10554b:	48 89 fc             	mov    rsp,rdi
  10554e:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  105552:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  105556:	8b 4d f4             	mov    ecx,DWORD PTR [rbp-0xc]
  105559:	48 8d 35 4c ae ff ff 	lea    rsi,[rip+0xffffffffffffae4c]        # 1003ac <_svfprintf_r.blanks-0x734>
  105560:	b0 00                	mov    al,0x0
  105562:	e8 29 85 00 00       	call   10da90 <sprintf>
  105567:	48 8b 7d d8          	mov    rdi,QWORD PTR [rbp-0x28]
  10556b:	e8 a0 f9 ff ff       	call   104f10 <Print>
  105570:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  105574:	48 89 c4             	mov    rsp,rax
  105577:	48 89 ec             	mov    rsp,rbp
  10557a:	5d                   	pop    rbp
  10557b:	c3                   	ret
  10557c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000105580 <_Z15WriteMandelbroti>:
  105580:	55                   	push   rbp
  105581:	48 89 e5             	mov    rbp,rsp
  105584:	48 83 ec 20          	sub    rsp,0x20
  105588:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  10558b:	c6 45 fb 00          	mov    BYTE PTR [rbp-0x5],0x0
  10558f:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
  105596:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  105599:	48 8b 0d 90 1e 51 00 	mov    rcx,QWORD PTR [rip+0x511e90]        # 617430 <vinfo>
  1055a0:	3b 41 14             	cmp    eax,DWORD PTR [rcx+0x14]
  1055a3:	0f 83 93 00 00 00    	jae    10563c <_Z15WriteMandelbroti+0xbc>
  1055a9:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [rbp-0x10],0x0
  1055b0:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  1055b3:	48 8b 0d 76 1e 51 00 	mov    rcx,QWORD PTR [rip+0x511e76]        # 617430 <vinfo>
  1055ba:	3b 41 10             	cmp    eax,DWORD PTR [rcx+0x10]
  1055bd:	0f 83 66 00 00 00    	jae    105629 <_Z15WriteMandelbroti+0xa9>
  1055c3:	8b 7d f0             	mov    edi,DWORD PTR [rbp-0x10]
  1055c6:	8b 75 f4             	mov    esi,DWORD PTR [rbp-0xc]
  1055c9:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
  1055cc:	e8 ff 00 00 00       	call   1056d0 <_Z14CalcMandelbrotiii>
  1055d1:	88 45 fb             	mov    BYTE PTR [rbp-0x5],al
  1055d4:	48 8b 05 95 6c 51 00 	mov    rax,QWORD PTR [rip+0x516c95]        # 61c270 <WritePixel>
  1055db:	8a 4d fb             	mov    cl,BYTE PTR [rbp-0x5]
  1055de:	c0 e1 02             	shl    cl,0x2
  1055e1:	88 4d e8             	mov    BYTE PTR [rbp-0x18],cl
  1055e4:	c6 45 e9 00          	mov    BYTE PTR [rbp-0x17],0x0
  1055e8:	c6 45 ea 00          	mov    BYTE PTR [rbp-0x16],0x0
  1055ec:	48 8b 0d 3d 1e 51 00 	mov    rcx,QWORD PTR [rip+0x511e3d]        # 617430 <vinfo>
  1055f3:	8b 71 10             	mov    esi,DWORD PTR [rcx+0x10]
  1055f6:	8b 4d f0             	mov    ecx,DWORD PTR [rbp-0x10]
  1055f9:	29 ce                	sub    esi,ecx
  1055fb:	8b 55 f4             	mov    edx,DWORD PTR [rbp-0xc]
  1055fe:	8a 4d ea             	mov    cl,BYTE PTR [rbp-0x16]
  105601:	88 4d e6             	mov    BYTE PTR [rbp-0x1a],cl
  105604:	66 8b 4d e8          	mov    cx,WORD PTR [rbp-0x18]
  105608:	66 89 4d e4          	mov    WORD PTR [rbp-0x1c],cx
  10560c:	0f b6 4d e6          	movzx  ecx,BYTE PTR [rbp-0x1a]
  105610:	c1 e1 10             	shl    ecx,0x10
  105613:	0f b7 7d e4          	movzx  edi,WORD PTR [rbp-0x1c]
  105617:	09 cf                	or     edi,ecx
  105619:	ff d0                	call   rax
  10561b:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  10561e:	83 c0 01             	add    eax,0x1
  105621:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
  105624:	e9 87 ff ff ff       	jmp    1055b0 <_Z15WriteMandelbroti+0x30>
  105629:	e9 00 00 00 00       	jmp    10562e <_Z15WriteMandelbroti+0xae>
  10562e:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  105631:	83 c0 01             	add    eax,0x1
  105634:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
  105637:	e9 5a ff ff ff       	jmp    105596 <_Z15WriteMandelbroti+0x16>
  10563c:	48 83 c4 20          	add    rsp,0x20
  105640:	5d                   	pop    rbp
  105641:	c3                   	ret
  105642:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  105649:	1f 84 00 00 00 00 00 

0000000000105650 <_Z5clearv>:
  105650:	55                   	push   rbp
  105651:	48 89 e5             	mov    rbp,rsp
  105654:	48 83 ec 20          	sub    rsp,0x20
  105658:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
  10565f:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  105666:	48 8b 05 c3 1d 51 00 	mov    rax,QWORD PTR [rip+0x511dc3]        # 617430 <vinfo>
  10566d:	8b 40 10             	mov    eax,DWORD PTR [rax+0x10]
  105670:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
  105673:	48 8b 05 b6 1d 51 00 	mov    rax,QWORD PTR [rip+0x511db6]        # 617430 <vinfo>
  10567a:	8b 40 14             	mov    eax,DWORD PTR [rax+0x14]
  10567d:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
  105680:	c6 45 e8 00          	mov    BYTE PTR [rbp-0x18],0x0
  105684:	c6 45 e9 00          	mov    BYTE PTR [rbp-0x17],0x0
  105688:	c6 45 ea 00          	mov    BYTE PTR [rbp-0x16],0x0
  10568c:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
  105690:	48 8b 75 f0          	mov    rsi,QWORD PTR [rbp-0x10]
  105694:	8a 45 ea             	mov    al,BYTE PTR [rbp-0x16]
  105697:	88 45 e6             	mov    BYTE PTR [rbp-0x1a],al
  10569a:	66 8b 45 e8          	mov    ax,WORD PTR [rbp-0x18]
  10569e:	66 89 45 e4          	mov    WORD PTR [rbp-0x1c],ax
  1056a2:	0f b6 45 e6          	movzx  eax,BYTE PTR [rbp-0x1a]
  1056a6:	c1 e0 10             	shl    eax,0x10
  1056a9:	0f b7 55 e4          	movzx  edx,WORD PTR [rbp-0x1c]
  1056ad:	09 c2                	or     edx,eax
  1056af:	e8 7c f5 ff ff       	call   104c30 <_Z11WriteSquare6VectorS_5Color>
  1056b4:	c7 05 82 1d 51 00 00 	mov    DWORD PTR [rip+0x511d82],0x0        # 617440 <line_queue_head>
  1056bb:	00 00 00 
  1056be:	c7 05 7c 1d 51 00 00 	mov    DWORD PTR [rip+0x511d7c],0x0        # 617444 <line_queue_end>
  1056c5:	00 00 00 
  1056c8:	48 83 c4 20          	add    rsp,0x20
  1056cc:	5d                   	pop    rbp
  1056cd:	c3                   	ret
  1056ce:	cc                   	int3
  1056cf:	cc                   	int3

00000000001056d0 <_Z14CalcMandelbrotiii>:
  1056d0:	55                   	push   rbp
  1056d1:	48 89 e5             	mov    rbp,rsp
  1056d4:	48 83 ec 50          	sub    rsp,0x50
  1056d8:	89 7d f8             	mov    DWORD PTR [rbp-0x8],edi
  1056db:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi
  1056de:	89 55 f0             	mov    DWORD PTR [rbp-0x10],edx
  1056e1:	48 8b 05 48 1d 51 00 	mov    rax,QWORD PTR [rip+0x511d48]        # 617430 <vinfo>
  1056e8:	8b 40 10             	mov    eax,DWORD PTR [rax+0x10]
  1056eb:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
  1056ee:	48 8b 05 3b 1d 51 00 	mov    rax,QWORD PTR [rip+0x511d3b]        # 617430 <vinfo>
  1056f5:	8b 40 14             	mov    eax,DWORD PTR [rax+0x14]
  1056f8:	89 45 e8             	mov    DWORD PTR [rbp-0x18],eax
  1056fb:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  1056fe:	3b 45 e8             	cmp    eax,DWORD PTR [rbp-0x18]
  105701:	0f 8e 0b 00 00 00    	jle    105712 <_Z14CalcMandelbrotiii+0x42>
  105707:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
  10570a:	89 45 b4             	mov    DWORD PTR [rbp-0x4c],eax
  10570d:	e9 06 00 00 00       	jmp    105718 <_Z14CalcMandelbrotiii+0x48>
  105712:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  105715:	89 45 b4             	mov    DWORD PTR [rbp-0x4c],eax
  105718:	8b 45 b4             	mov    eax,DWORD PTR [rbp-0x4c]
  10571b:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
  10571e:	0f 57 c0             	xorps  xmm0,xmm0
  105721:	f2 0f 11 45 d0       	movsd  QWORD PTR [rbp-0x30],xmm0
  105726:	0f 57 c0             	xorps  xmm0,xmm0
  105729:	f2 0f 11 45 d8       	movsd  QWORD PTR [rbp-0x28],xmm0
  10572e:	f2 0f 2a 4d f8       	cvtsi2sd xmm1,DWORD PTR [rbp-0x8]
  105733:	f2 0f 2a 45 ec       	cvtsi2sd xmm0,DWORD PTR [rbp-0x14]
  105738:	f2 0f 10 15 20 b1 ff 	movsd  xmm2,QWORD PTR [rip+0xffffffffffffb120]        # 100860 <_svfprintf_r.blanks-0x280>
  10573f:	ff 
  105740:	f2 0f 5e c2          	divsd  xmm0,xmm2
  105744:	f2 0f 5c c8          	subsd  xmm1,xmm0
  105748:	f2 0f 2a 45 e4       	cvtsi2sd xmm0,DWORD PTR [rbp-0x1c]
  10574d:	f2 0f 5e c8          	divsd  xmm1,xmm0
  105751:	f2 0f 10 05 27 b1 ff 	movsd  xmm0,QWORD PTR [rip+0xffffffffffffb127]        # 100880 <_svfprintf_r.blanks-0x260>
  105758:	ff 
  105759:	f2 0f 5e c8          	divsd  xmm1,xmm0
  10575d:	f2 0f 10 05 f3 b0 ff 	movsd  xmm0,QWORD PTR [rip+0xffffffffffffb0f3]        # 100858 <_svfprintf_r.blanks-0x288>
  105764:	ff 
  105765:	f2 0f 58 c1          	addsd  xmm0,xmm1
  105769:	f2 0f 11 45 c0       	movsd  QWORD PTR [rbp-0x40],xmm0
  10576e:	f2 0f 2a 4d f4       	cvtsi2sd xmm1,DWORD PTR [rbp-0xc]
  105773:	f2 0f 2a 45 e8       	cvtsi2sd xmm0,DWORD PTR [rbp-0x18]
  105778:	f2 0f 10 15 e0 b0 ff 	movsd  xmm2,QWORD PTR [rip+0xffffffffffffb0e0]        # 100860 <_svfprintf_r.blanks-0x280>
  10577f:	ff 
  105780:	f2 0f 5e c2          	divsd  xmm0,xmm2
  105784:	f2 0f 5c c8          	subsd  xmm1,xmm0
  105788:	f2 0f 2a 45 e4       	cvtsi2sd xmm0,DWORD PTR [rbp-0x1c]
  10578d:	f2 0f 5e c8          	divsd  xmm1,xmm0
  105791:	f2 0f 10 05 e7 b0 ff 	movsd  xmm0,QWORD PTR [rip+0xffffffffffffb0e7]        # 100880 <_svfprintf_r.blanks-0x260>
  105798:	ff 
  105799:	f2 0f 5e c8          	divsd  xmm1,xmm0
  10579d:	0f 57 c0             	xorps  xmm0,xmm0
  1057a0:	f2 0f 58 c1          	addsd  xmm0,xmm1
  1057a4:	f2 0f 11 45 b8       	movsd  QWORD PTR [rbp-0x48],xmm0
  1057a9:	c7 45 e0 00 00 00 00 	mov    DWORD PTR [rbp-0x20],0x0
  1057b0:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
  1057b3:	3b 45 f0             	cmp    eax,DWORD PTR [rbp-0x10]
  1057b6:	0f 8f b2 00 00 00    	jg     10586e <_Z14CalcMandelbrotiii+0x19e>
  1057bc:	f2 0f 10 45 d8       	movsd  xmm0,QWORD PTR [rbp-0x28]
  1057c1:	f2 0f 10 55 d8       	movsd  xmm2,QWORD PTR [rbp-0x28]
  1057c6:	f2 0f 10 4d d0       	movsd  xmm1,QWORD PTR [rbp-0x30]
  1057cb:	f2 0f 59 4d d0       	mulsd  xmm1,QWORD PTR [rbp-0x30]
  1057d0:	f2 0f 59 c2          	mulsd  xmm0,xmm2
  1057d4:	f2 0f 58 c1          	addsd  xmm0,xmm1
  1057d8:	f2 0f 10 0d 88 b0 ff 	movsd  xmm1,QWORD PTR [rip+0xffffffffffffb088]        # 100868 <_svfprintf_r.blanks-0x278>
  1057df:	ff 
  1057e0:	66 0f 2e c1          	ucomisd xmm0,xmm1
  1057e4:	0f 86 0b 00 00 00    	jbe    1057f5 <_Z14CalcMandelbrotiii+0x125>
  1057ea:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
  1057ed:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  1057f0:	e9 7f 00 00 00       	jmp    105874 <_Z14CalcMandelbrotiii+0x1a4>
  1057f5:	f2 0f 10 45 d8       	movsd  xmm0,QWORD PTR [rbp-0x28]
  1057fa:	f2 0f 10 55 d8       	movsd  xmm2,QWORD PTR [rbp-0x28]
  1057ff:	f2 0f 10 4d d0       	movsd  xmm1,QWORD PTR [rbp-0x30]
  105804:	f2 0f 59 4d d0       	mulsd  xmm1,QWORD PTR [rbp-0x30]
  105809:	66 48 0f 7e c8       	movq   rax,xmm1
  10580e:	48 b9 00 00 00 00 00 	movabs rcx,0x8000000000000000
  105815:	00 00 80 
  105818:	48 31 c8             	xor    rax,rcx
  10581b:	66 48 0f 6e c8       	movq   xmm1,rax
  105820:	f2 0f 59 c2          	mulsd  xmm0,xmm2
  105824:	f2 0f 58 c1          	addsd  xmm0,xmm1
  105828:	f2 0f 58 45 c0       	addsd  xmm0,QWORD PTR [rbp-0x40]
  10582d:	f2 0f 11 45 c8       	movsd  QWORD PTR [rbp-0x38],xmm0
  105832:	f2 0f 10 05 26 b0 ff 	movsd  xmm0,QWORD PTR [rip+0xffffffffffffb026]        # 100860 <_svfprintf_r.blanks-0x280>
  105839:	ff 
  10583a:	f2 0f 59 45 d8       	mulsd  xmm0,QWORD PTR [rbp-0x28]
  10583f:	f2 0f 10 55 d0       	movsd  xmm2,QWORD PTR [rbp-0x30]
  105844:	f2 0f 10 4d b8       	movsd  xmm1,QWORD PTR [rbp-0x48]
  105849:	f2 0f 59 c2          	mulsd  xmm0,xmm2
  10584d:	f2 0f 58 c1          	addsd  xmm0,xmm1
  105851:	f2 0f 11 45 d0       	movsd  QWORD PTR [rbp-0x30],xmm0
  105856:	f2 0f 10 45 c8       	movsd  xmm0,QWORD PTR [rbp-0x38]
  10585b:	f2 0f 11 45 d8       	movsd  QWORD PTR [rbp-0x28],xmm0
  105860:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
  105863:	83 c0 01             	add    eax,0x1
  105866:	89 45 e0             	mov    DWORD PTR [rbp-0x20],eax
  105869:	e9 42 ff ff ff       	jmp    1057b0 <_Z14CalcMandelbrotiii+0xe0>
  10586e:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
  105871:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  105874:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  105877:	48 83 c4 50          	add    rsp,0x50
  10587b:	5d                   	pop    rbp
  10587c:	c3                   	ret
  10587d:	cc                   	int3
  10587e:	cc                   	int3
  10587f:	cc                   	int3

0000000000105880 <strcpy>:
  105880:	48 89 f8             	mov    rax,rdi
  105883:	89 f1                	mov    ecx,esi
  105885:	09 c1                	or     ecx,eax
  105887:	f6 c1 07             	test   cl,0x7
  10588a:	75 29                	jne    1058b5 <strcpy+0x35>
  10588c:	49 b8 ff fe fe fe fe 	movabs r8,0xfefefefefefefeff
  105893:	fe fe fe 
  105896:	49 b9 80 80 80 80 80 	movabs r9,0x8080808080808080
  10589d:	80 80 80 
  1058a0:	48 8b 16             	mov    rdx,QWORD PTR [rsi]
  1058a3:	48 89 d1             	mov    rcx,rdx
  1058a6:	48 f7 d1             	not    rcx
  1058a9:	4a 8d 3c 02          	lea    rdi,[rdx+r8*1]
  1058ad:	48 21 cf             	and    rdi,rcx
  1058b0:	4c 85 cf             	test   rdi,r9
  1058b3:	74 1a                	je     1058cf <strcpy+0x4f>
  1058b5:	48 89 c7             	mov    rdi,rax
  1058b8:	31 d2                	xor    edx,edx
  1058ba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  1058c0:	0f b6 0c 16          	movzx  ecx,BYTE PTR [rsi+rdx*1]
  1058c4:	88 0c 17             	mov    BYTE PTR [rdi+rdx*1],cl
  1058c7:	48 ff c2             	inc    rdx
  1058ca:	84 c9                	test   cl,cl
  1058cc:	75 f2                	jne    1058c0 <strcpy+0x40>
  1058ce:	c3                   	ret
  1058cf:	48 89 c7             	mov    rdi,rax
  1058d2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  1058d9:	1f 84 00 00 00 00 00 
  1058e0:	48 89 17             	mov    QWORD PTR [rdi],rdx
  1058e3:	48 83 c7 08          	add    rdi,0x8
  1058e7:	48 8b 56 08          	mov    rdx,QWORD PTR [rsi+0x8]
  1058eb:	48 83 c6 08          	add    rsi,0x8
  1058ef:	48 89 d1             	mov    rcx,rdx
  1058f2:	48 f7 d1             	not    rcx
  1058f5:	4e 8d 14 02          	lea    r10,[rdx+r8*1]
  1058f9:	4c 21 c9             	and    rcx,r9
  1058fc:	4c 85 d1             	test   rcx,r10
  1058ff:	74 df                	je     1058e0 <strcpy+0x60>
  105901:	eb b5                	jmp    1058b8 <strcpy+0x38>
  105903:	cc                   	int3
  105904:	cc                   	int3
  105905:	cc                   	int3
  105906:	cc                   	int3
  105907:	cc                   	int3
  105908:	cc                   	int3
  105909:	cc                   	int3
  10590a:	cc                   	int3
  10590b:	cc                   	int3
  10590c:	cc                   	int3
  10590d:	cc                   	int3
  10590e:	cc                   	int3
  10590f:	cc                   	int3

0000000000105910 <strcat>:
  105910:	41 56                	push   r14
  105912:	53                   	push   rbx
  105913:	50                   	push   rax
  105914:	49 89 fe             	mov    r14,rdi
  105917:	41 f6 c6 07          	test   r14b,0x7
  10591b:	75 3c                	jne    105959 <strcat+0x49>
  10591d:	48 b8 80 80 80 80 80 	movabs rax,0x8080808080808080
  105924:	80 80 80 
  105927:	49 8d 7e f8          	lea    rdi,[r14-0x8]
  10592b:	48 b9 ff fe fe fe fe 	movabs rcx,0xfefefefefefefeff
  105932:	fe fe fe 
  105935:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  10593c:	00 00 00 00 
  105940:	48 8b 5f 08          	mov    rbx,QWORD PTR [rdi+0x8]
  105944:	48 83 c7 08          	add    rdi,0x8
  105948:	48 89 da             	mov    rdx,rbx
  10594b:	48 f7 d2             	not    rdx
  10594e:	48 21 c2             	and    rdx,rax
  105951:	48 01 cb             	add    rbx,rcx
  105954:	48 85 da             	test   rdx,rbx
  105957:	74 e7                	je     105940 <strcat+0x30>
  105959:	48 ff cf             	dec    rdi
  10595c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  105960:	80 7f 01 00          	cmp    BYTE PTR [rdi+0x1],0x0
  105964:	48 8d 7f 01          	lea    rdi,[rdi+0x1]
  105968:	75 f6                	jne    105960 <strcat+0x50>
  10596a:	e8 11 ff ff ff       	call   105880 <strcpy>
  10596f:	4c 89 f0             	mov    rax,r14
  105972:	48 83 c4 08          	add    rsp,0x8
  105976:	5b                   	pop    rbx
  105977:	41 5e                	pop    r14
  105979:	c3                   	ret
  10597a:	cc                   	int3
  10597b:	cc                   	int3
  10597c:	cc                   	int3
  10597d:	cc                   	int3
  10597e:	cc                   	int3
  10597f:	cc                   	int3

0000000000105980 <strlen>:
  105980:	48 89 f8             	mov    rax,rdi
  105983:	40 f6 c7 07          	test   dil,0x7
  105987:	74 77                	je     105a00 <strlen+0x80>
  105989:	80 3f 00             	cmp    BYTE PTR [rdi],0x0
  10598c:	48 89 f8             	mov    rax,rdi
  10598f:	0f 84 b8 00 00 00    	je     105a4d <strlen+0xcd>
  105995:	48 8d 47 01          	lea    rax,[rdi+0x1]
  105999:	a8 07                	test   al,0x7
  10599b:	74 63                	je     105a00 <strlen+0x80>
  10599d:	80 38 00             	cmp    BYTE PTR [rax],0x0
  1059a0:	0f 84 a7 00 00 00    	je     105a4d <strlen+0xcd>
  1059a6:	48 8d 47 02          	lea    rax,[rdi+0x2]
  1059aa:	a8 07                	test   al,0x7
  1059ac:	74 52                	je     105a00 <strlen+0x80>
  1059ae:	80 38 00             	cmp    BYTE PTR [rax],0x0
  1059b1:	0f 84 96 00 00 00    	je     105a4d <strlen+0xcd>
  1059b7:	48 8d 47 03          	lea    rax,[rdi+0x3]
  1059bb:	a8 07                	test   al,0x7
  1059bd:	74 41                	je     105a00 <strlen+0x80>
  1059bf:	80 38 00             	cmp    BYTE PTR [rax],0x0
  1059c2:	0f 84 85 00 00 00    	je     105a4d <strlen+0xcd>
  1059c8:	48 8d 47 04          	lea    rax,[rdi+0x4]
  1059cc:	a8 07                	test   al,0x7
  1059ce:	74 30                	je     105a00 <strlen+0x80>
  1059d0:	80 38 00             	cmp    BYTE PTR [rax],0x0
  1059d3:	74 78                	je     105a4d <strlen+0xcd>
  1059d5:	48 8d 47 05          	lea    rax,[rdi+0x5]
  1059d9:	a8 07                	test   al,0x7
  1059db:	74 23                	je     105a00 <strlen+0x80>
  1059dd:	80 38 00             	cmp    BYTE PTR [rax],0x0
  1059e0:	74 6b                	je     105a4d <strlen+0xcd>
  1059e2:	48 8d 47 06          	lea    rax,[rdi+0x6]
  1059e6:	a8 07                	test   al,0x7
  1059e8:	74 16                	je     105a00 <strlen+0x80>
  1059ea:	80 38 00             	cmp    BYTE PTR [rax],0x0
  1059ed:	74 5e                	je     105a4d <strlen+0xcd>
  1059ef:	48 8d 47 07          	lea    rax,[rdi+0x7]
  1059f3:	a8 07                	test   al,0x7
  1059f5:	74 09                	je     105a00 <strlen+0x80>
  1059f7:	80 38 00             	cmp    BYTE PTR [rax],0x0
  1059fa:	74 51                	je     105a4d <strlen+0xcd>
  1059fc:	48 8d 47 08          	lea    rax,[rdi+0x8]
  105a00:	49 b8 80 80 80 80 80 	movabs r8,0x8080808080808080
  105a07:	80 80 80 
  105a0a:	48 83 c0 f7          	add    rax,0xfffffffffffffff7
  105a0e:	48 be ff fe fe fe fe 	movabs rsi,0xfefefefefefefeff
  105a15:	fe fe fe 
  105a18:	48 89 c1             	mov    rcx,rax
  105a1b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  105a20:	48 8b 51 09          	mov    rdx,QWORD PTR [rcx+0x9]
  105a24:	48 89 d0             	mov    rax,rdx
  105a27:	48 f7 d0             	not    rax
  105a2a:	4c 21 c0             	and    rax,r8
  105a2d:	48 01 f2             	add    rdx,rsi
  105a30:	48 83 c1 08          	add    rcx,0x8
  105a34:	48 85 d0             	test   rax,rdx
  105a37:	74 e7                	je     105a20 <strlen+0xa0>
  105a39:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  105a40:	48 8d 41 01          	lea    rax,[rcx+0x1]
  105a44:	80 79 01 00          	cmp    BYTE PTR [rcx+0x1],0x0
  105a48:	48 89 c1             	mov    rcx,rax
  105a4b:	75 f3                	jne    105a40 <strlen+0xc0>
  105a4d:	48 29 f8             	sub    rax,rdi
  105a50:	c3                   	ret
  105a51:	cc                   	int3
  105a52:	cc                   	int3
  105a53:	cc                   	int3
  105a54:	cc                   	int3
  105a55:	cc                   	int3
  105a56:	cc                   	int3
  105a57:	cc                   	int3
  105a58:	cc                   	int3
  105a59:	cc                   	int3
  105a5a:	cc                   	int3
  105a5b:	cc                   	int3
  105a5c:	cc                   	int3
  105a5d:	cc                   	int3
  105a5e:	cc                   	int3
  105a5f:	cc                   	int3

0000000000105a60 <vsprintf>:
  105a60:	48 81 ec b8 00 00 00 	sub    rsp,0xb8
  105a67:	48 89 d1             	mov    rcx,rdx
  105a6a:	48 89 f2             	mov    rdx,rsi
  105a6d:	48 8d 05 64 fb 00 00 	lea    rax,[rip+0xfb64]        # 1155d8 <_impure_ptr>
  105a74:	48 8b 00             	mov    rax,QWORD PTR [rax]
  105a77:	48 89 7c 24 08       	mov    QWORD PTR [rsp+0x8],rdi
  105a7c:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
  105a81:	48 be ff ff ff 7f 08 	movabs rsi,0xffff02087fffffff
  105a88:	02 ff ff 
  105a8b:	48 89 74 24 14       	mov    QWORD PTR [rsp+0x14],rsi
  105a90:	c7 44 24 28 ff ff ff 	mov    DWORD PTR [rsp+0x28],0x7fffffff
  105a97:	7f 
  105a98:	48 8d 74 24 08       	lea    rsi,[rsp+0x8]
  105a9d:	48 89 c7             	mov    rdi,rax
  105aa0:	e8 6b 00 00 00       	call   105b10 <_svfprintf_r>
  105aa5:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
  105aaa:	c6 01 00             	mov    BYTE PTR [rcx],0x0
  105aad:	48 81 c4 b8 00 00 00 	add    rsp,0xb8
  105ab4:	c3                   	ret
  105ab5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  105abc:	00 00 00 00 

0000000000105ac0 <_vsprintf_r>:
  105ac0:	48 81 ec b8 00 00 00 	sub    rsp,0xb8
  105ac7:	48 89 74 24 08       	mov    QWORD PTR [rsp+0x8],rsi
  105acc:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
  105ad1:	48 b8 ff ff ff 7f 08 	movabs rax,0xffff02087fffffff
  105ad8:	02 ff ff 
  105adb:	48 89 44 24 14       	mov    QWORD PTR [rsp+0x14],rax
  105ae0:	c7 44 24 28 ff ff ff 	mov    DWORD PTR [rsp+0x28],0x7fffffff
  105ae7:	7f 
  105ae8:	48 8d 74 24 08       	lea    rsi,[rsp+0x8]
  105aed:	e8 1e 00 00 00       	call   105b10 <_svfprintf_r>
  105af2:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
  105af7:	c6 01 00             	mov    BYTE PTR [rcx],0x0
  105afa:	48 81 c4 b8 00 00 00 	add    rsp,0xb8
  105b01:	c3                   	ret
  105b02:	cc                   	int3
  105b03:	cc                   	int3
  105b04:	cc                   	int3
  105b05:	cc                   	int3
  105b06:	cc                   	int3
  105b07:	cc                   	int3
  105b08:	cc                   	int3
  105b09:	cc                   	int3
  105b0a:	cc                   	int3
  105b0b:	cc                   	int3
  105b0c:	cc                   	int3
  105b0d:	cc                   	int3
  105b0e:	cc                   	int3
  105b0f:	cc                   	int3

0000000000105b10 <_svfprintf_r>:
  105b10:	55                   	push   rbp
  105b11:	41 57                	push   r15
  105b13:	41 56                	push   r14
  105b15:	41 55                	push   r13
  105b17:	41 54                	push   r12
  105b19:	53                   	push   rbx
  105b1a:	48 81 ec a8 01 00 00 	sub    rsp,0x1a8
  105b21:	49 89 ce             	mov    r14,rcx
  105b24:	49 89 d4             	mov    r12,rdx
  105b27:	48 89 f3             	mov    rbx,rsi
  105b2a:	49 89 fd             	mov    r13,rdi
  105b2d:	e8 4e 21 00 00       	call   107c80 <_localeconv_r>
  105b32:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  105b35:	48 89 bc 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rdi
  105b3c:	00 
  105b3d:	e8 3e fe ff ff       	call   105980 <strlen>
  105b42:	48 89 c5             	mov    rbp,rax
  105b45:	f6 43 10 80          	test   BYTE PTR [rbx+0x10],0x80
  105b49:	74 2b                	je     105b76 <_svfprintf_r+0x66>
  105b4b:	48 83 7b 18 00       	cmp    QWORD PTR [rbx+0x18],0x0
  105b50:	75 24                	jne    105b76 <_svfprintf_r+0x66>
  105b52:	be 40 00 00 00       	mov    esi,0x40
  105b57:	4c 89 ef             	mov    rdi,r13
  105b5a:	e8 d1 23 00 00       	call   107f30 <_malloc_r>
  105b5f:	48 89 03             	mov    QWORD PTR [rbx],rax
  105b62:	48 89 43 18          	mov    QWORD PTR [rbx+0x18],rax
  105b66:	48 85 c0             	test   rax,rax
  105b69:	0f 84 d7 20 00 00    	je     107c46 <_svfprintf_r+0x2136>
  105b6f:	c7 43 20 40 00 00 00 	mov    DWORD PTR [rbx+0x20],0x40
  105b76:	48 89 5c 24 28       	mov    QWORD PTR [rsp+0x28],rbx
  105b7b:	4c 8d bc 24 20 01 00 	lea    r15,[rsp+0x120]
  105b82:	00 
  105b83:	4c 89 7c 24 10       	mov    QWORD PTR [rsp+0x10],r15
  105b88:	48 c7 44 24 20 00 00 	mov    QWORD PTR [rsp+0x20],0x0
  105b8f:	00 00 
  105b91:	c7 44 24 18 00 00 00 	mov    DWORD PTR [rsp+0x18],0x0
  105b98:	00 
  105b99:	4c 89 74 24 48       	mov    QWORD PTR [rsp+0x48],r14
  105b9e:	49 8d 46 08          	lea    rax,[r14+0x8]
  105ba2:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  105ba7:	48 89 e8             	mov    rax,rbp
  105baa:	48 89 ac 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rbp
  105bb1:	00 
  105bb2:	8d 45 01             	lea    eax,[rbp+0x1]
  105bb5:	89 84 24 c0 00 00 00 	mov    DWORD PTR [rsp+0xc0],eax
  105bbc:	66 0f 57 d2          	xorpd  xmm2,xmm2
  105bc0:	31 c0                	xor    eax,eax
  105bc2:	48 89 84 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rax
  105bc9:	00 
  105bca:	31 db                	xor    ebx,ebx
  105bcc:	31 c0                	xor    eax,eax
  105bce:	48 89 84 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rax
  105bd5:	00 
  105bd6:	31 c0                	xor    eax,eax
  105bd8:	48 89 84 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rax
  105bdf:	00 
  105be0:	4c 89 6c 24 38       	mov    QWORD PTR [rsp+0x38],r13
  105be5:	41 89 dd             	mov    r13d,ebx
  105be8:	4d 89 fe             	mov    r14,r15
  105beb:	49 8d 6c 24 01       	lea    rbp,[r12+0x1]
  105bf0:	31 db                	xor    ebx,ebx
  105bf2:	31 c0                	xor    eax,eax
  105bf4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  105bfb:	00 00 00 00 00 
  105c00:	0f b6 4d ff          	movzx  ecx,BYTE PTR [rbp-0x1]
  105c04:	85 c9                	test   ecx,ecx
  105c06:	74 28                	je     105c30 <_svfprintf_r+0x120>
  105c08:	83 f9 25             	cmp    ecx,0x25
  105c0b:	74 23                	je     105c30 <_svfprintf_r+0x120>
  105c0d:	48 ff c5             	inc    rbp
  105c10:	48 b9 00 00 00 00 01 	movabs rcx,0x100000000
  105c17:	00 00 00 
  105c1a:	48 01 c8             	add    rax,rcx
  105c1d:	ff cb                	dec    ebx
  105c1f:	eb df                	jmp    105c00 <_svfprintf_r+0xf0>
  105c21:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  105c28:	0f 1f 84 00 00 00 00 
  105c2f:	00 
  105c30:	85 db                	test   ebx,ebx
  105c32:	74 67                	je     105c9b <_svfprintf_r+0x18b>
  105c34:	4d 89 26             	mov    QWORD PTR [r14],r12
  105c37:	48 c1 f8 20          	sar    rax,0x20
  105c3b:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  105c3f:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  105c44:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  105c48:	8d 48 01             	lea    ecx,[rax+0x1]
  105c4b:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  105c4f:	83 f8 07             	cmp    eax,0x7
  105c52:	7c 3c                	jl     105c90 <_svfprintf_r+0x180>
  105c54:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  105c59:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
  105c5e:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  105c63:	66 0f 29 54 24 70    	movapd XMMWORD PTR [rsp+0x70],xmm2
  105c69:	e8 d2 2f 00 00       	call   108c40 <__ssprint_r>
  105c6e:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  105c74:	4c 8d b4 24 20 01 00 	lea    r14,[rsp+0x120]
  105c7b:	00 
  105c7c:	85 c0                	test   eax,eax
  105c7e:	74 14                	je     105c94 <_svfprintf_r+0x184>
  105c80:	e9 d0 1f 00 00       	jmp    107c55 <_svfprintf_r+0x2145>
  105c85:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  105c8c:	00 00 00 00 
  105c90:	49 83 c6 10          	add    r14,0x10
  105c94:	41 29 dd             	sub    r13d,ebx
  105c97:	0f b6 4d ff          	movzx  ecx,BYTE PTR [rbp-0x1]
  105c9b:	84 c9                	test   cl,cl
  105c9d:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  105ca2:	0f 84 82 1f 00 00    	je     107c2a <_svfprintf_r+0x211a>
  105ca8:	c6 44 24 0b 00       	mov    BYTE PTR [rsp+0xb],0x0
  105cad:	41 bf ff ff ff ff    	mov    r15d,0xffffffff
  105cb3:	31 c0                	xor    eax,eax
  105cb5:	c7 44 24 04 00 00 00 	mov    DWORD PTR [rsp+0x4],0x0
  105cbc:	00 
  105cbd:	45 31 db             	xor    r11d,r11d
  105cc0:	49 89 ec             	mov    r12,rbp
  105cc3:	41 0f b6 0c 24       	movzx  ecx,BYTE PTR [r12]
  105cc8:	49 ff c4             	inc    r12
  105ccb:	0f be e9             	movsx  ebp,cl
  105cce:	4c 89 5c 24 30       	mov    QWORD PTR [rsp+0x30],r11
  105cd3:	83 fd 78             	cmp    ebp,0x78
  105cd6:	0f 87 89 05 00 00    	ja     106265 <_svfprintf_r+0x755>
  105cdc:	89 e9                	mov    ecx,ebp
  105cde:	48 8d 15 0b ac ff ff 	lea    rdx,[rip+0xffffffffffffac0b]        # 1008f0 <_svfprintf_r.blanks-0x1f0>
  105ce5:	48 63 0c 8a          	movsxd rcx,DWORD PTR [rdx+rcx*4]
  105ce9:	48 01 d1             	add    rcx,rdx
  105cec:	ff e1                	jmp    rcx
  105cee:	41 0f be 2c 24       	movsx  ebp,BYTE PTR [r12]
  105cf3:	49 ff c4             	inc    r12
  105cf6:	83 fd 2a             	cmp    ebp,0x2a
  105cf9:	0f 84 e2 00 00 00    	je     105de1 <_svfprintf_r+0x2d1>
  105cff:	8d 55 d0             	lea    edx,[rbp-0x30]
  105d02:	31 c9                	xor    ecx,ecx
  105d04:	83 fa 09             	cmp    edx,0x9
  105d07:	77 1d                	ja     105d26 <_svfprintf_r+0x216>
  105d09:	31 c9                	xor    ecx,ecx
  105d0b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  105d10:	8d 0c 89             	lea    ecx,[rcx+rcx*4]
  105d13:	8d 0c 4a             	lea    ecx,[rdx+rcx*2]
  105d16:	41 0f be 2c 24       	movsx  ebp,BYTE PTR [r12]
  105d1b:	49 ff c4             	inc    r12
  105d1e:	8d 55 d0             	lea    edx,[rbp-0x30]
  105d21:	83 fa 0a             	cmp    edx,0xa
  105d24:	72 ea                	jb     105d10 <_svfprintf_r+0x200>
  105d26:	85 c9                	test   ecx,ecx
  105d28:	41 bf ff ff ff ff    	mov    r15d,0xffffffff
  105d2e:	44 0f 49 f9          	cmovns r15d,ecx
  105d32:	83 fd 78             	cmp    ebp,0x78
  105d35:	76 a5                	jbe    105cdc <_svfprintf_r+0x1cc>
  105d37:	e9 29 05 00 00       	jmp    106265 <_svfprintf_r+0x755>
  105d3c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  105d40:	45 31 db             	xor    r11d,r11d
  105d43:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  105d4a:	84 00 00 00 00 00 
  105d50:	43 8d 0c 9b          	lea    ecx,[r11+r11*4]
  105d54:	44 8d 5c 4d d0       	lea    r11d,[rbp+rcx*2-0x30]
  105d59:	41 0f b6 0c 24       	movzx  ecx,BYTE PTR [r12]
  105d5e:	49 ff c4             	inc    r12
  105d61:	0f be e9             	movsx  ebp,cl
  105d64:	8d 55 d0             	lea    edx,[rbp-0x30]
  105d67:	83 fa 0a             	cmp    edx,0xa
  105d6a:	72 e4                	jb     105d50 <_svfprintf_r+0x240>
  105d6c:	e9 5a ff ff ff       	jmp    105ccb <_svfprintf_r+0x1bb>
  105d71:	83 4c 24 04 10       	or     DWORD PTR [rsp+0x4],0x10
  105d76:	e9 48 ff ff ff       	jmp    105cc3 <_svfprintf_r+0x1b3>
  105d7b:	84 c0                	test   al,al
  105d7d:	0f 85 40 ff ff ff    	jne    105cc3 <_svfprintf_r+0x1b3>
  105d83:	c6 44 24 0b 20       	mov    BYTE PTR [rsp+0xb],0x20
  105d88:	b0 20                	mov    al,0x20
  105d8a:	e9 34 ff ff ff       	jmp    105cc3 <_svfprintf_r+0x1b3>
  105d8f:	83 4c 24 04 01       	or     DWORD PTR [rsp+0x4],0x1
  105d94:	e9 2a ff ff ff       	jmp    105cc3 <_svfprintf_r+0x1b3>
  105d99:	48 8b 74 24 48       	mov    rsi,QWORD PTR [rsp+0x48]
  105d9e:	8b 16                	mov    edx,DWORD PTR [rsi]
  105da0:	48 83 fa 28          	cmp    rdx,0x28
  105da4:	77 56                	ja     105dfc <_svfprintf_r+0x2ec>
  105da6:	48 89 d1             	mov    rcx,rdx
  105da9:	48 03 4e 10          	add    rcx,QWORD PTR [rsi+0x10]
  105dad:	83 c2 08             	add    edx,0x8
  105db0:	89 16                	mov    DWORD PTR [rsi],edx
  105db2:	eb 57                	jmp    105e0b <_svfprintf_r+0x2fb>
  105db4:	c6 44 24 0b 2b       	mov    BYTE PTR [rsp+0xb],0x2b
  105db9:	b0 2b                	mov    al,0x2b
  105dbb:	e9 03 ff ff ff       	jmp    105cc3 <_svfprintf_r+0x1b3>
  105dc0:	81 4c 24 04 80 00 00 	or     DWORD PTR [rsp+0x4],0x80
  105dc7:	00 
  105dc8:	e9 f6 fe ff ff       	jmp    105cc3 <_svfprintf_r+0x1b3>
  105dcd:	83 4c 24 04 08       	or     DWORD PTR [rsp+0x4],0x8
  105dd2:	e9 ec fe ff ff       	jmp    105cc3 <_svfprintf_r+0x1b3>
  105dd7:	83 4c 24 04 40       	or     DWORD PTR [rsp+0x4],0x40
  105ddc:	e9 e2 fe ff ff       	jmp    105cc3 <_svfprintf_r+0x1b3>
  105de1:	48 8b 74 24 48       	mov    rsi,QWORD PTR [rsp+0x48]
  105de6:	8b 16                	mov    edx,DWORD PTR [rsi]
  105de8:	48 83 fa 28          	cmp    rdx,0x28
  105dec:	77 36                	ja     105e24 <_svfprintf_r+0x314>
  105dee:	48 89 d1             	mov    rcx,rdx
  105df1:	48 03 4e 10          	add    rcx,QWORD PTR [rsi+0x10]
  105df5:	83 c2 08             	add    edx,0x8
  105df8:	89 16                	mov    DWORD PTR [rsi],edx
  105dfa:	eb 37                	jmp    105e33 <_svfprintf_r+0x323>
  105dfc:	48 8b 74 24 50       	mov    rsi,QWORD PTR [rsp+0x50]
  105e01:	48 8b 0e             	mov    rcx,QWORD PTR [rsi]
  105e04:	48 8d 51 08          	lea    rdx,[rcx+0x8]
  105e08:	48 89 16             	mov    QWORD PTR [rsi],rdx
  105e0b:	44 8b 19             	mov    r11d,DWORD PTR [rcx]
  105e0e:	45 85 db             	test   r11d,r11d
  105e11:	0f 89 ac fe ff ff    	jns    105cc3 <_svfprintf_r+0x1b3>
  105e17:	41 f7 db             	neg    r11d
  105e1a:	83 4c 24 04 04       	or     DWORD PTR [rsp+0x4],0x4
  105e1f:	e9 9f fe ff ff       	jmp    105cc3 <_svfprintf_r+0x1b3>
  105e24:	48 8b 74 24 50       	mov    rsi,QWORD PTR [rsp+0x50]
  105e29:	48 8b 0e             	mov    rcx,QWORD PTR [rsi]
  105e2c:	48 8d 51 08          	lea    rdx,[rcx+0x8]
  105e30:	48 89 16             	mov    QWORD PTR [rsi],rdx
  105e33:	8b 09                	mov    ecx,DWORD PTR [rcx]
  105e35:	85 c9                	test   ecx,ecx
  105e37:	41 bf ff ff ff ff    	mov    r15d,0xffffffff
  105e3d:	44 0f 49 f9          	cmovns r15d,ecx
  105e41:	e9 7d fe ff ff       	jmp    105cc3 <_svfprintf_r+0x1b3>
  105e46:	8b 44 24 04          	mov    eax,DWORD PTR [rsp+0x4]
  105e4a:	a8 10                	test   al,0x10
  105e4c:	75 1f                	jne    105e6d <_svfprintf_r+0x35d>
  105e4e:	a8 40                	test   al,0x40
  105e50:	75 36                	jne    105e88 <_svfprintf_r+0x378>
  105e52:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  105e57:	8b 0a                	mov    ecx,DWORD PTR [rdx]
  105e59:	48 83 f9 28          	cmp    rcx,0x28
  105e5d:	77 61                	ja     105ec0 <_svfprintf_r+0x3b0>
  105e5f:	48 89 c8             	mov    rax,rcx
  105e62:	48 03 42 10          	add    rax,QWORD PTR [rdx+0x10]
  105e66:	83 c1 08             	add    ecx,0x8
  105e69:	89 0a                	mov    DWORD PTR [rdx],ecx
  105e6b:	eb 62                	jmp    105ecf <_svfprintf_r+0x3bf>
  105e6d:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  105e72:	8b 0a                	mov    ecx,DWORD PTR [rdx]
  105e74:	48 83 f9 28          	cmp    rcx,0x28
  105e78:	77 29                	ja     105ea3 <_svfprintf_r+0x393>
  105e7a:	48 89 c8             	mov    rax,rcx
  105e7d:	48 03 42 10          	add    rax,QWORD PTR [rdx+0x10]
  105e81:	83 c1 08             	add    ecx,0x8
  105e84:	89 0a                	mov    DWORD PTR [rdx],ecx
  105e86:	eb 2a                	jmp    105eb2 <_svfprintf_r+0x3a2>
  105e88:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  105e8d:	8b 0a                	mov    ecx,DWORD PTR [rdx]
  105e8f:	48 83 f9 28          	cmp    rcx,0x28
  105e93:	77 45                	ja     105eda <_svfprintf_r+0x3ca>
  105e95:	48 89 c8             	mov    rax,rcx
  105e98:	48 03 42 10          	add    rax,QWORD PTR [rdx+0x10]
  105e9c:	83 c1 08             	add    ecx,0x8
  105e9f:	89 0a                	mov    DWORD PTR [rdx],ecx
  105ea1:	eb 46                	jmp    105ee9 <_svfprintf_r+0x3d9>
  105ea3:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  105ea8:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  105eab:	48 8d 48 08          	lea    rcx,[rax+0x8]
  105eaf:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  105eb2:	49 63 cd             	movsxd rcx,r13d
  105eb5:	48 8b 00             	mov    rax,QWORD PTR [rax]
  105eb8:	48 89 08             	mov    QWORD PTR [rax],rcx
  105ebb:	e9 2b fd ff ff       	jmp    105beb <_svfprintf_r+0xdb>
  105ec0:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  105ec5:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  105ec8:	48 8d 48 08          	lea    rcx,[rax+0x8]
  105ecc:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  105ecf:	48 8b 00             	mov    rax,QWORD PTR [rax]
  105ed2:	44 89 28             	mov    DWORD PTR [rax],r13d
  105ed5:	e9 11 fd ff ff       	jmp    105beb <_svfprintf_r+0xdb>
  105eda:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  105edf:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  105ee2:	48 8d 48 08          	lea    rcx,[rax+0x8]
  105ee6:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  105ee9:	48 8b 00             	mov    rax,QWORD PTR [rax]
  105eec:	66 44 89 28          	mov    WORD PTR [rax],r13w
  105ef0:	e9 f6 fc ff ff       	jmp    105beb <_svfprintf_r+0xdb>
  105ef5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  105efc:	00 00 00 00 
  105f00:	f6 44 24 04 08       	test   BYTE PTR [rsp+0x4],0x8
  105f05:	75 20                	jne    105f27 <_svfprintf_r+0x417>
  105f07:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  105f0c:	8b 4a 04             	mov    ecx,DWORD PTR [rdx+0x4]
  105f0f:	48 81 f9 a0 00 00 00 	cmp    rcx,0xa0
  105f16:	77 43                	ja     105f5b <_svfprintf_r+0x44b>
  105f18:	48 89 c8             	mov    rax,rcx
  105f1b:	48 03 42 10          	add    rax,QWORD PTR [rdx+0x10]
  105f1f:	83 c1 10             	add    ecx,0x10
  105f22:	89 4a 04             	mov    DWORD PTR [rdx+0x4],ecx
  105f25:	eb 43                	jmp    105f6a <_svfprintf_r+0x45a>
  105f27:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  105f2c:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  105f2f:	48 83 c0 0f          	add    rax,0xf
  105f33:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
  105f37:	48 8d 48 10          	lea    rcx,[rax+0x10]
  105f3b:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  105f3e:	db 28                	fld    TBYTE PTR [rax]
  105f40:	dd 9c 24 10 01 00 00 	fstp   QWORD PTR [rsp+0x110]
  105f47:	f2 0f 10 84 24 10 01 	movsd  xmm0,QWORD PTR [rsp+0x110]
  105f4e:	00 00 
  105f50:	eb 1c                	jmp    105f6e <_svfprintf_r+0x45e>
  105f52:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  105f56:	e9 51 01 00 00       	jmp    1060ac <_svfprintf_r+0x59c>
  105f5b:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  105f60:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  105f63:	48 8d 48 08          	lea    rcx,[rax+0x8]
  105f67:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  105f6a:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  105f6e:	66 0f 29 44 24 70    	movapd XMMWORD PTR [rsp+0x70],xmm0
  105f74:	e8 47 4d 00 00       	call   10acc0 <__fpclassifyd>
  105f79:	83 f8 01             	cmp    eax,0x1
  105f7c:	44 89 6c 24 0c       	mov    DWORD PTR [rsp+0xc],r13d
  105f81:	75 50                	jne    105fd3 <_svfprintf_r+0x4c3>
  105f83:	66 0f 57 c0          	xorpd  xmm0,xmm0
  105f87:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  105f8d:	66 0f 2e c2          	ucomisd xmm0,xmm2
  105f91:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  105f96:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  105f9a:	76 05                	jbe    105fa1 <_svfprintf_r+0x491>
  105f9c:	c6 44 24 0b 2d       	mov    BYTE PTR [rsp+0xb],0x2d
  105fa1:	83 fd 48             	cmp    ebp,0x48
  105fa4:	48 8d 05 47 a8 ff ff 	lea    rax,[rip+0xffffffffffffa847]        # 1007f2 <_svfprintf_r.blanks-0x2ee>
  105fab:	4c 8d 2d ff a3 ff ff 	lea    r13,[rip+0xffffffffffffa3ff]        # 1003b1 <_svfprintf_r.blanks-0x72f>
  105fb2:	4c 0f 42 e8          	cmovb  r13,rax
  105fb6:	81 e1 7f ff ff ff    	and    ecx,0xffffff7f
  105fbc:	ba 03 00 00 00       	mov    edx,0x3
  105fc1:	31 c0                	xor    eax,eax
  105fc3:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
  105fca:	00 
  105fcb:	45 31 ff             	xor    r15d,r15d
  105fce:	e9 1d 0c 00 00       	jmp    106bf0 <_svfprintf_r+0x10e0>
  105fd3:	66 0f 28 44 24 70    	movapd xmm0,XMMWORD PTR [rsp+0x70]
  105fd9:	e8 e2 4c 00 00       	call   10acc0 <__fpclassifyd>
  105fde:	85 c0                	test   eax,eax
  105fe0:	0f 84 0e 03 00 00    	je     1062f4 <_svfprintf_r+0x7e4>
  105fe6:	89 eb                	mov    ebx,ebp
  105fe8:	83 e3 df             	and    ebx,0xffffffdf
  105feb:	89 d8                	mov    eax,ebx
  105fed:	83 f0 47             	xor    eax,0x47
  105ff0:	44 09 f8             	or     eax,r15d
  105ff3:	b8 01 00 00 00       	mov    eax,0x1
  105ff8:	41 0f 45 c7          	cmovne eax,r15d
  105ffc:	41 83 ff ff          	cmp    r15d,0xffffffff
  106000:	b9 06 00 00 00       	mov    ecx,0x6
  106005:	0f 45 c8             	cmovne ecx,eax
  106008:	66 0f 6f 4c 24 70    	movdqa xmm1,XMMWORD PTR [rsp+0x70]
  10600e:	66 48 0f 7e c8       	movq   rax,xmm1
  106013:	66 0f 6f c1          	movdqa xmm0,xmm1
  106017:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
  10601c:	48 85 c0             	test   rax,rax
  10601f:	79 0c                	jns    10602d <_svfprintf_r+0x51d>
  106021:	66 0f 6f 05 a7 a8 ff 	movdqa xmm0,XMMWORD PTR [rip+0xffffffffffffa8a7]        # 1008d0 <_svfprintf_r.blanks-0x210>
  106028:	ff 
  106029:	66 0f ef c1          	pxor   xmm0,xmm1
  10602d:	31 f6                	xor    esi,esi
  10602f:	83 fb 46             	cmp    ebx,0x46
  106032:	40 0f 94 c6          	sete   sil
  106036:	31 d2                	xor    edx,edx
  106038:	83 fb 45             	cmp    ebx,0x45
  10603b:	0f 94 c2             	sete   dl
  10603e:	83 ce 02             	or     esi,0x2
  106041:	48 89 8c 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rcx
  106048:	00 
  106049:	01 ca                	add    edx,ecx
  10604b:	48 8d 4c 24 44       	lea    rcx,[rsp+0x44]
  106050:	4c 8d 84 24 1c 01 00 	lea    r8,[rsp+0x11c]
  106057:	00 
  106058:	4c 8d 8c 24 98 00 00 	lea    r9,[rsp+0x98]
  10605f:	00 
  106060:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  106065:	66 0f 7f 84 24 00 01 	movdqa XMMWORD PTR [rsp+0x100],xmm0
  10606c:	00 00 
  10606e:	41 89 d7             	mov    r15d,edx
  106071:	e8 aa 4c 00 00       	call   10ad20 <_dtoa_r>
  106076:	49 89 c5             	mov    r13,rax
  106079:	f6 44 24 04 01       	test   BYTE PTR [rsp+0x4],0x1
  10607e:	0f 85 b1 02 00 00    	jne    106335 <_svfprintf_r+0x825>
  106084:	83 fb 47             	cmp    ebx,0x47
  106087:	0f 85 a8 02 00 00    	jne    106335 <_svfprintf_r+0x825>
  10608d:	4c 8b 94 24 98 00 00 	mov    r10,QWORD PTR [rsp+0x98]
  106094:	00 
  106095:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  10609b:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  1060a0:	e9 18 08 00 00       	jmp    1068bd <_svfprintf_r+0xdad>
  1060a5:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  1060a9:	83 c9 10             	or     ecx,0x10
  1060ac:	f6 c1 10             	test   cl,0x10
  1060af:	89 4c 24 04          	mov    DWORD PTR [rsp+0x4],ecx
  1060b3:	75 2f                	jne    1060e4 <_svfprintf_r+0x5d4>
  1060b5:	48 8b 44 24 48       	mov    rax,QWORD PTR [rsp+0x48]
  1060ba:	8b 00                	mov    eax,DWORD PTR [rax]
  1060bc:	f6 c1 40             	test   cl,0x40
  1060bf:	0f 85 c2 02 00 00    	jne    106387 <_svfprintf_r+0x877>
  1060c5:	83 f8 28             	cmp    eax,0x28
  1060c8:	0f 87 88 04 00 00    	ja     106556 <_svfprintf_r+0xa46>
  1060ce:	48 89 c1             	mov    rcx,rax
  1060d1:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  1060d6:	48 03 4a 10          	add    rcx,QWORD PTR [rdx+0x10]
  1060da:	83 c0 08             	add    eax,0x8
  1060dd:	89 02                	mov    DWORD PTR [rdx],eax
  1060df:	e9 81 04 00 00       	jmp    106565 <_svfprintf_r+0xa55>
  1060e4:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  1060e9:	8b 02                	mov    eax,DWORD PTR [rdx]
  1060eb:	48 83 f8 28          	cmp    rax,0x28
  1060ef:	0f 87 b5 02 00 00    	ja     1063aa <_svfprintf_r+0x89a>
  1060f5:	48 89 c1             	mov    rcx,rax
  1060f8:	48 03 4a 10          	add    rcx,QWORD PTR [rdx+0x10]
  1060fc:	83 c0 08             	add    eax,0x8
  1060ff:	89 02                	mov    DWORD PTR [rdx],eax
  106101:	48 8b 09             	mov    rcx,QWORD PTR [rcx]
  106104:	e9 74 04 00 00       	jmp    10657d <_svfprintf_r+0xa6d>
  106109:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  10610d:	83 c9 10             	or     ecx,0x10
  106110:	eb 43                	jmp    106155 <_svfprintf_r+0x645>
  106112:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  106116:	83 c9 10             	or     ecx,0x10
  106119:	e9 c0 00 00 00       	jmp    1061de <_svfprintf_r+0x6ce>
  10611e:	48 8d 0d be a5 ff ff 	lea    rcx,[rip+0xffffffffffffa5be]        # 1006e3 <_svfprintf_r.blanks-0x3fd>
  106125:	e9 f7 00 00 00       	jmp    106221 <_svfprintf_r+0x711>
  10612a:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  10612f:	8b 0a                	mov    ecx,DWORD PTR [rdx]
  106131:	48 83 f9 28          	cmp    rcx,0x28
  106135:	44 89 6c 24 0c       	mov    DWORD PTR [rsp+0xc],r13d
  10613a:	0f 87 81 02 00 00    	ja     1063c1 <_svfprintf_r+0x8b1>
  106140:	48 89 c8             	mov    rax,rcx
  106143:	48 03 42 10          	add    rax,QWORD PTR [rdx+0x10]
  106147:	83 c1 08             	add    ecx,0x8
  10614a:	89 0a                	mov    DWORD PTR [rdx],ecx
  10614c:	e9 7f 02 00 00       	jmp    1063d0 <_svfprintf_r+0x8c0>
  106151:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  106155:	f6 c1 10             	test   cl,0x10
  106158:	89 4c 24 04          	mov    DWORD PTR [rsp+0x4],ecx
  10615c:	0f 85 29 01 00 00    	jne    10628b <_svfprintf_r+0x77b>
  106162:	48 8b 44 24 48       	mov    rax,QWORD PTR [rsp+0x48]
  106167:	8b 00                	mov    eax,DWORD PTR [rax]
  106169:	f6 c1 40             	test   cl,0x40
  10616c:	0f 85 91 02 00 00    	jne    106403 <_svfprintf_r+0x8f3>
  106172:	83 f8 28             	cmp    eax,0x28
  106175:	0f 87 56 04 00 00    	ja     1065d1 <_svfprintf_r+0xac1>
  10617b:	48 89 c1             	mov    rcx,rax
  10617e:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  106183:	48 03 4a 10          	add    rcx,QWORD PTR [rdx+0x10]
  106187:	83 c0 08             	add    eax,0x8
  10618a:	89 02                	mov    DWORD PTR [rdx],eax
  10618c:	e9 4f 04 00 00       	jmp    1065e0 <_svfprintf_r+0xad0>
  106191:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  106196:	8b 0a                	mov    ecx,DWORD PTR [rdx]
  106198:	48 83 f9 28          	cmp    rcx,0x28
  10619c:	0f 87 80 02 00 00    	ja     106422 <_svfprintf_r+0x912>
  1061a2:	48 89 c8             	mov    rax,rcx
  1061a5:	48 03 42 10          	add    rax,QWORD PTR [rdx+0x10]
  1061a9:	83 c1 08             	add    ecx,0x8
  1061ac:	89 0a                	mov    DWORD PTR [rdx],ecx
  1061ae:	e9 7e 02 00 00       	jmp    106431 <_svfprintf_r+0x921>
  1061b3:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  1061b8:	8b 0a                	mov    ecx,DWORD PTR [rdx]
  1061ba:	48 83 f9 28          	cmp    rcx,0x28
  1061be:	44 89 6c 24 0c       	mov    DWORD PTR [rsp+0xc],r13d
  1061c3:	0f 87 92 02 00 00    	ja     10645b <_svfprintf_r+0x94b>
  1061c9:	48 89 c8             	mov    rax,rcx
  1061cc:	48 03 42 10          	add    rax,QWORD PTR [rdx+0x10]
  1061d0:	83 c1 08             	add    ecx,0x8
  1061d3:	89 0a                	mov    DWORD PTR [rdx],ecx
  1061d5:	e9 90 02 00 00       	jmp    10646a <_svfprintf_r+0x95a>
  1061da:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  1061de:	f6 c1 10             	test   cl,0x10
  1061e1:	89 4c 24 04          	mov    DWORD PTR [rsp+0x4],ecx
  1061e5:	0f 85 c2 00 00 00    	jne    1062ad <_svfprintf_r+0x79d>
  1061eb:	48 8b 44 24 48       	mov    rax,QWORD PTR [rsp+0x48]
  1061f0:	8b 00                	mov    eax,DWORD PTR [rax]
  1061f2:	f6 c1 40             	test   cl,0x40
  1061f5:	0f 85 bb 02 00 00    	jne    1064b6 <_svfprintf_r+0x9a6>
  1061fb:	83 f8 28             	cmp    eax,0x28
  1061fe:	0f 87 e5 03 00 00    	ja     1065e9 <_svfprintf_r+0xad9>
  106204:	48 89 c1             	mov    rcx,rax
  106207:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  10620c:	48 03 4a 10          	add    rcx,QWORD PTR [rdx+0x10]
  106210:	83 c0 08             	add    eax,0x8
  106213:	89 02                	mov    DWORD PTR [rdx],eax
  106215:	e9 de 03 00 00       	jmp    1065f8 <_svfprintf_r+0xae8>
  10621a:	48 8d 0d 2f a1 ff ff 	lea    rcx,[rip+0xffffffffffffa12f]        # 100350 <_svfprintf_r.blanks-0x790>
  106221:	8b 54 24 04          	mov    edx,DWORD PTR [rsp+0x4]
  106225:	f6 c2 10             	test   dl,0x10
  106228:	48 89 8c 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rcx
  10622f:	00 
  106230:	0f 85 99 00 00 00    	jne    1062cf <_svfprintf_r+0x7bf>
  106236:	48 8b 44 24 48       	mov    rax,QWORD PTR [rsp+0x48]
  10623b:	8b 00                	mov    eax,DWORD PTR [rax]
  10623d:	f6 c2 40             	test   dl,0x40
  106240:	0f 85 8f 02 00 00    	jne    1064d5 <_svfprintf_r+0x9c5>
  106246:	83 f8 28             	cmp    eax,0x28
  106249:	0f 87 af 03 00 00    	ja     1065fe <_svfprintf_r+0xaee>
  10624f:	48 89 c1             	mov    rcx,rax
  106252:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  106257:	48 03 4a 10          	add    rcx,QWORD PTR [rdx+0x10]
  10625b:	83 c0 08             	add    eax,0x8
  10625e:	89 02                	mov    DWORD PTR [rdx],eax
  106260:	e9 a8 03 00 00       	jmp    10660d <_svfprintf_r+0xafd>
  106265:	44 89 6c 24 0c       	mov    DWORD PTR [rsp+0xc],r13d
  10626a:	40 88 ac 24 d0 00 00 	mov    BYTE PTR [rsp+0xd0],bpl
  106271:	00 
  106272:	c6 44 24 0b 00       	mov    BYTE PTR [rsp+0xb],0x0
  106277:	ba 01 00 00 00       	mov    edx,0x1
  10627c:	31 c0                	xor    eax,eax
  10627e:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
  106285:	00 
  106286:	e9 68 01 00 00       	jmp    1063f3 <_svfprintf_r+0x8e3>
  10628b:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  106290:	8b 0a                	mov    ecx,DWORD PTR [rdx]
  106292:	48 83 f9 28          	cmp    rcx,0x28
  106296:	0f 87 58 02 00 00    	ja     1064f4 <_svfprintf_r+0x9e4>
  10629c:	48 89 c8             	mov    rax,rcx
  10629f:	48 03 42 10          	add    rax,QWORD PTR [rdx+0x10]
  1062a3:	83 c1 08             	add    ecx,0x8
  1062a6:	89 0a                	mov    DWORD PTR [rdx],ecx
  1062a8:	e9 56 02 00 00       	jmp    106503 <_svfprintf_r+0x9f3>
  1062ad:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  1062b2:	8b 0a                	mov    ecx,DWORD PTR [rdx]
  1062b4:	48 83 f9 28          	cmp    rcx,0x28
  1062b8:	0f 87 4f 02 00 00    	ja     10650d <_svfprintf_r+0x9fd>
  1062be:	48 89 c8             	mov    rax,rcx
  1062c1:	48 03 42 10          	add    rax,QWORD PTR [rdx+0x10]
  1062c5:	83 c1 08             	add    ecx,0x8
  1062c8:	89 0a                	mov    DWORD PTR [rdx],ecx
  1062ca:	e9 4d 02 00 00       	jmp    10651c <_svfprintf_r+0xa0c>
  1062cf:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  1062d4:	8b 02                	mov    eax,DWORD PTR [rdx]
  1062d6:	48 83 f8 28          	cmp    rax,0x28
  1062da:	0f 87 46 02 00 00    	ja     106526 <_svfprintf_r+0xa16>
  1062e0:	48 89 c1             	mov    rcx,rax
  1062e3:	48 03 4a 10          	add    rcx,QWORD PTR [rdx+0x10]
  1062e7:	83 c0 08             	add    eax,0x8
  1062ea:	89 02                	mov    DWORD PTR [rdx],eax
  1062ec:	48 8b 09             	mov    rcx,QWORD PTR [rcx]
  1062ef:	e9 5b 03 00 00       	jmp    10664f <_svfprintf_r+0xb3f>
  1062f4:	83 fd 48             	cmp    ebp,0x48
  1062f7:	48 8d 05 d8 a4 ff ff 	lea    rax,[rip+0xffffffffffffa4d8]        # 1007d6 <_svfprintf_r.blanks-0x30a>
  1062fe:	4c 8d 2d 47 a0 ff ff 	lea    r13,[rip+0xffffffffffffa047]        # 10034c <_svfprintf_r.blanks-0x794>
  106305:	4c 0f 42 e8          	cmovb  r13,rax
  106309:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  10630d:	81 e1 7f ff ff ff    	and    ecx,0xffffff7f
  106313:	ba 03 00 00 00       	mov    edx,0x3
  106318:	31 c0                	xor    eax,eax
  10631a:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
  106321:	00 
  106322:	45 31 ff             	xor    r15d,r15d
  106325:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  10632b:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  106330:	e9 bb 08 00 00       	jmp    106bf0 <_svfprintf_r+0x10e0>
  106335:	49 63 cf             	movsxd rcx,r15d
  106338:	4c 89 e8             	mov    rax,r13
  10633b:	48 01 c8             	add    rax,rcx
  10633e:	83 fb 46             	cmp    ebx,0x46
  106341:	0f 85 f6 01 00 00    	jne    10653d <_svfprintf_r+0xa2d>
  106347:	66 0f ef c0          	pxor   xmm0,xmm0
  10634b:	66 0f 28 8c 24 00 01 	movapd xmm1,XMMWORD PTR [rsp+0x100]
  106352:	00 00 
  106354:	66 0f 2e c8          	ucomisd xmm1,xmm0
  106358:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  10635e:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  106363:	75 06                	jne    10636b <_svfprintf_r+0x85b>
  106365:	0f 8b 19 05 00 00    	jnp    106884 <_svfprintf_r+0xd74>
  10636b:	41 80 7d 00 30       	cmp    BYTE PTR [r13+0x0],0x30
  106370:	0f 85 0e 05 00 00    	jne    106884 <_svfprintf_r+0xd74>
  106376:	b9 01 00 00 00       	mov    ecx,0x1
  10637b:	44 29 f9             	sub    ecx,r15d
  10637e:	89 4c 24 44          	mov    DWORD PTR [rsp+0x44],ecx
  106382:	e9 01 05 00 00       	jmp    106888 <_svfprintf_r+0xd78>
  106387:	83 f8 28             	cmp    eax,0x28
  10638a:	0f 87 da 01 00 00    	ja     10656a <_svfprintf_r+0xa5a>
  106390:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  106395:	48 8b 4a 10          	mov    rcx,QWORD PTR [rdx+0x10]
  106399:	48 01 c1             	add    rcx,rax
  10639c:	83 c0 08             	add    eax,0x8
  10639f:	89 02                	mov    DWORD PTR [rdx],eax
  1063a1:	48 0f bf 09          	movsx  rcx,WORD PTR [rcx]
  1063a5:	e9 d3 01 00 00       	jmp    10657d <_svfprintf_r+0xa6d>
  1063aa:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  1063af:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  1063b2:	48 8d 48 08          	lea    rcx,[rax+0x8]
  1063b6:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  1063b9:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  1063bc:	e9 bc 01 00 00       	jmp    10657d <_svfprintf_r+0xa6d>
  1063c1:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  1063c6:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  1063c9:	48 8d 48 08          	lea    rcx,[rax+0x8]
  1063cd:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  1063d0:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  1063d3:	88 84 24 d0 00 00 00 	mov    BYTE PTR [rsp+0xd0],al
  1063da:	c6 44 24 0b 00       	mov    BYTE PTR [rsp+0xb],0x0
  1063df:	ba 01 00 00 00       	mov    edx,0x1
  1063e4:	31 c0                	xor    eax,eax
  1063e6:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
  1063ed:	00 
  1063ee:	bd 63 00 00 00       	mov    ebp,0x63
  1063f3:	4c 8d ac 24 d0 00 00 	lea    r13,[rsp+0xd0]
  1063fa:	00 
  1063fb:	45 31 ff             	xor    r15d,r15d
  1063fe:	e9 78 04 00 00       	jmp    10687b <_svfprintf_r+0xd6b>
  106403:	83 f8 28             	cmp    eax,0x28
  106406:	0f 87 05 02 00 00    	ja     106611 <_svfprintf_r+0xb01>
  10640c:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  106411:	48 8b 4a 10          	mov    rcx,QWORD PTR [rdx+0x10]
  106415:	48 01 c1             	add    rcx,rax
  106418:	83 c0 08             	add    eax,0x8
  10641b:	89 02                	mov    DWORD PTR [rdx],eax
  10641d:	e9 fe 01 00 00       	jmp    106620 <_svfprintf_r+0xb10>
  106422:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  106427:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  10642a:	48 8d 48 08          	lea    rcx,[rax+0x8]
  10642e:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  106431:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  106434:	83 4c 24 04 02       	or     DWORD PTR [rsp+0x4],0x2
  106439:	66 c7 44 24 6e 30 78 	mov    WORD PTR [rsp+0x6e],0x7830
  106440:	48 8d 05 09 9f ff ff 	lea    rax,[rip+0xffffffffffff9f09]        # 100350 <_svfprintf_r.blanks-0x790>
  106447:	48 89 84 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rax
  10644e:	00 
  10644f:	b0 02                	mov    al,0x2
  106451:	bd 78 00 00 00       	mov    ebp,0x78
  106456:	e9 15 02 00 00       	jmp    106670 <_svfprintf_r+0xb60>
  10645b:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  106460:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  106463:	48 8d 48 08          	lea    rcx,[rax+0x8]
  106467:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  10646a:	4c 8b 28             	mov    r13,QWORD PTR [rax]
  10646d:	c6 44 24 0b 00       	mov    BYTE PTR [rsp+0xb],0x0
  106472:	4d 85 ed             	test   r13,r13
  106475:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  106479:	0f 84 27 01 00 00    	je     1065a6 <_svfprintf_r+0xa96>
  10647f:	66 0f 29 54 24 70    	movapd XMMWORD PTR [rsp+0x70],xmm2
  106485:	45 85 ff             	test   r15d,r15d
  106488:	0f 88 c5 03 00 00    	js     106853 <_svfprintf_r+0xd43>
  10648e:	44 89 fa             	mov    edx,r15d
  106491:	31 c0                	xor    eax,eax
  106493:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
  10649a:	00 
  10649b:	4c 89 ef             	mov    rdi,r13
  10649e:	31 f6                	xor    esi,esi
  1064a0:	e8 9b 46 00 00       	call   10ab40 <memchr>
  1064a5:	89 c2                	mov    edx,eax
  1064a7:	44 29 ea             	sub    edx,r13d
  1064aa:	48 85 c0             	test   rax,rax
  1064ad:	41 0f 44 d7          	cmove  edx,r15d
  1064b1:	e9 b2 03 00 00       	jmp    106868 <_svfprintf_r+0xd58>
  1064b6:	83 f8 28             	cmp    eax,0x28
  1064b9:	0f 87 68 01 00 00    	ja     106627 <_svfprintf_r+0xb17>
  1064bf:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  1064c4:	48 8b 4a 10          	mov    rcx,QWORD PTR [rdx+0x10]
  1064c8:	48 01 c1             	add    rcx,rax
  1064cb:	83 c0 08             	add    eax,0x8
  1064ce:	89 02                	mov    DWORD PTR [rdx],eax
  1064d0:	e9 61 01 00 00       	jmp    106636 <_svfprintf_r+0xb26>
  1064d5:	83 f8 28             	cmp    eax,0x28
  1064d8:	0f 87 5f 01 00 00    	ja     10663d <_svfprintf_r+0xb2d>
  1064de:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  1064e3:	48 8b 4a 10          	mov    rcx,QWORD PTR [rdx+0x10]
  1064e7:	48 01 c1             	add    rcx,rax
  1064ea:	83 c0 08             	add    eax,0x8
  1064ed:	89 02                	mov    DWORD PTR [rdx],eax
  1064ef:	e9 58 01 00 00       	jmp    10664c <_svfprintf_r+0xb3c>
  1064f4:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  1064f9:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  1064fc:	48 8d 48 08          	lea    rcx,[rax+0x8]
  106500:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  106503:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  106506:	31 c0                	xor    eax,eax
  106508:	e9 63 01 00 00       	jmp    106670 <_svfprintf_r+0xb60>
  10650d:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  106512:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  106515:	48 8d 48 08          	lea    rcx,[rax+0x8]
  106519:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  10651c:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  10651f:	b0 01                	mov    al,0x1
  106521:	e9 4a 01 00 00       	jmp    106670 <_svfprintf_r+0xb60>
  106526:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  10652b:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  10652e:	48 8d 48 08          	lea    rcx,[rax+0x8]
  106532:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  106535:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  106538:	e9 12 01 00 00       	jmp    10664f <_svfprintf_r+0xb3f>
  10653d:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  106543:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  106548:	66 0f 28 8c 24 00 01 	movapd xmm1,XMMWORD PTR [rsp+0x100]
  10654f:	00 00 
  106551:	e9 38 03 00 00       	jmp    10688e <_svfprintf_r+0xd7e>
  106556:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  10655b:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  10655e:	48 8d 41 08          	lea    rax,[rcx+0x8]
  106562:	48 89 02             	mov    QWORD PTR [rdx],rax
  106565:	48 63 09             	movsxd rcx,DWORD PTR [rcx]
  106568:	eb 13                	jmp    10657d <_svfprintf_r+0xa6d>
  10656a:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  10656f:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  106572:	48 8d 48 08          	lea    rcx,[rax+0x8]
  106576:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  106579:	48 0f bf 08          	movsx  rcx,WORD PTR [rax]
  10657d:	b0 01                	mov    al,0x1
  10657f:	48 85 c9             	test   rcx,rcx
  106582:	0f 89 ed 00 00 00    	jns    106675 <_svfprintf_r+0xb65>
  106588:	48 f7 d9             	neg    rcx
  10658b:	c6 44 24 0b 2d       	mov    BYTE PTR [rsp+0xb],0x2d
  106590:	8b 5c 24 04          	mov    ebx,DWORD PTR [rsp+0x4]
  106594:	89 d8                	mov    eax,ebx
  106596:	25 7f ff ff ff       	and    eax,0xffffff7f
  10659b:	45 85 ff             	test   r15d,r15d
  10659e:	0f 49 d8             	cmovns ebx,eax
  1065a1:	e9 7f 01 00 00       	jmp    106725 <_svfprintf_r+0xc15>
  1065a6:	41 83 ff 06          	cmp    r15d,0x6
  1065aa:	ba 06 00 00 00       	mov    edx,0x6
  1065af:	41 0f 42 d7          	cmovb  edx,r15d
  1065b3:	31 c0                	xor    eax,eax
  1065b5:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
  1065bc:	00 
  1065bd:	bd 73 00 00 00       	mov    ebp,0x73
  1065c2:	4c 8d 2d d5 9b ff ff 	lea    r13,[rip+0xffffffffffff9bd5]        # 10019e <_svfprintf_r.blanks-0x942>
  1065c9:	45 31 ff             	xor    r15d,r15d
  1065cc:	e9 1f 06 00 00       	jmp    106bf0 <_svfprintf_r+0x10e0>
  1065d1:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  1065d6:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  1065d9:	48 8d 41 08          	lea    rax,[rcx+0x8]
  1065dd:	48 89 02             	mov    QWORD PTR [rdx],rax
  1065e0:	8b 09                	mov    ecx,DWORD PTR [rcx]
  1065e2:	31 c0                	xor    eax,eax
  1065e4:	e9 87 00 00 00       	jmp    106670 <_svfprintf_r+0xb60>
  1065e9:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  1065ee:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  1065f1:	48 8d 41 08          	lea    rax,[rcx+0x8]
  1065f5:	48 89 02             	mov    QWORD PTR [rdx],rax
  1065f8:	8b 09                	mov    ecx,DWORD PTR [rcx]
  1065fa:	b0 01                	mov    al,0x1
  1065fc:	eb 72                	jmp    106670 <_svfprintf_r+0xb60>
  1065fe:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  106603:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  106606:	48 8d 41 08          	lea    rax,[rcx+0x8]
  10660a:	48 89 02             	mov    QWORD PTR [rdx],rax
  10660d:	8b 09                	mov    ecx,DWORD PTR [rcx]
  10660f:	eb 3e                	jmp    10664f <_svfprintf_r+0xb3f>
  106611:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  106616:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  106619:	48 8d 41 08          	lea    rax,[rcx+0x8]
  10661d:	48 89 02             	mov    QWORD PTR [rdx],rax
  106620:	0f b7 09             	movzx  ecx,WORD PTR [rcx]
  106623:	31 c0                	xor    eax,eax
  106625:	eb 49                	jmp    106670 <_svfprintf_r+0xb60>
  106627:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  10662c:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  10662f:	48 8d 41 08          	lea    rax,[rcx+0x8]
  106633:	48 89 02             	mov    QWORD PTR [rdx],rax
  106636:	0f b7 09             	movzx  ecx,WORD PTR [rcx]
  106639:	b0 01                	mov    al,0x1
  10663b:	eb 33                	jmp    106670 <_svfprintf_r+0xb60>
  10663d:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  106642:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  106645:	48 8d 41 08          	lea    rax,[rcx+0x8]
  106649:	48 89 02             	mov    QWORD PTR [rdx],rax
  10664c:	0f b7 09             	movzx  ecx,WORD PTR [rcx]
  10664f:	b0 02                	mov    al,0x2
  106651:	f6 44 24 04 01       	test   BYTE PTR [rsp+0x4],0x1
  106656:	74 18                	je     106670 <_svfprintf_r+0xb60>
  106658:	48 85 c9             	test   rcx,rcx
  10665b:	74 13                	je     106670 <_svfprintf_r+0xb60>
  10665d:	c6 44 24 6e 30       	mov    BYTE PTR [rsp+0x6e],0x30
  106662:	40 88 6c 24 6f       	mov    BYTE PTR [rsp+0x6f],bpl
  106667:	83 4c 24 04 02       	or     DWORD PTR [rsp+0x4],0x2
  10666c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  106670:	c6 44 24 0b 00       	mov    BYTE PTR [rsp+0xb],0x0
  106675:	8b 5c 24 04          	mov    ebx,DWORD PTR [rsp+0x4]
  106679:	89 da                	mov    edx,ebx
  10667b:	81 e3 7f ff ff ff    	and    ebx,0xffffff7f
  106681:	45 85 ff             	test   r15d,r15d
  106684:	0f 48 da             	cmovs  ebx,edx
  106687:	48 85 c9             	test   rcx,rcx
  10668a:	75 44                	jne    1066d0 <_svfprintf_r+0xbc0>
  10668c:	45 85 ff             	test   r15d,r15d
  10668f:	75 3f                	jne    1066d0 <_svfprintf_r+0xbc0>
  106691:	45 31 ff             	xor    r15d,r15d
  106694:	84 c0                	test   al,al
  106696:	44 89 6c 24 0c       	mov    DWORD PTR [rsp+0xc],r13d
  10669b:	0f 85 e6 00 00 00    	jne    106787 <_svfprintf_r+0xc77>
  1066a1:	89 d9                	mov    ecx,ebx
  1066a3:	89 d8                	mov    eax,ebx
  1066a5:	83 e0 01             	and    eax,0x1
  1066a8:	0f 84 e6 00 00 00    	je     106794 <_svfprintf_r+0xc84>
  1066ae:	c6 84 24 f7 00 00 00 	mov    BYTE PTR [rsp+0xf7],0x30
  1066b5:	30 
  1066b6:	4c 8d ac 24 f7 00 00 	lea    r13,[rsp+0xf7]
  1066bd:	00 
  1066be:	e9 6f 01 00 00       	jmp    106832 <_svfprintf_r+0xd22>
  1066c3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  1066ca:	84 00 00 00 00 00 
  1066d0:	84 c0                	test   al,al
  1066d2:	0f 84 c9 00 00 00    	je     1067a1 <_svfprintf_r+0xc91>
  1066d8:	0f b6 c0             	movzx  eax,al
  1066db:	83 f8 01             	cmp    eax,0x1
  1066de:	74 45                	je     106725 <_svfprintf_r+0xc15>
  1066e0:	44 89 6c 24 0c       	mov    DWORD PTR [rsp+0xc],r13d
  1066e5:	4c 8d ac 24 f8 00 00 	lea    r13,[rsp+0xf8]
  1066ec:	00 
  1066ed:	83 f8 02             	cmp    eax,0x2
  1066f0:	48 8b 94 24 b8 00 00 	mov    rdx,QWORD PTR [rsp+0xb8]
  1066f7:	00 
  1066f8:	0f 85 f0 00 00 00    	jne    1067ee <_svfprintf_r+0xcde>
  1066fe:	66 90                	xchg   ax,ax
  106700:	89 c8                	mov    eax,ecx
  106702:	83 e0 0f             	and    eax,0xf
  106705:	0f b6 04 02          	movzx  eax,BYTE PTR [rdx+rax*1]
  106709:	41 88 45 ff          	mov    BYTE PTR [r13-0x1],al
  10670d:	49 ff cd             	dec    r13
  106710:	48 89 c8             	mov    rax,rcx
  106713:	48 c1 e8 04          	shr    rax,0x4
  106717:	48 83 f9 10          	cmp    rcx,0x10
  10671b:	48 89 c1             	mov    rcx,rax
  10671e:	73 e0                	jae    106700 <_svfprintf_r+0xbf0>
  106720:	e9 0b 01 00 00       	jmp    106830 <_svfprintf_r+0xd20>
  106725:	44 89 6c 24 0c       	mov    DWORD PTR [rsp+0xc],r13d
  10672a:	48 83 f9 0a          	cmp    rcx,0xa
  10672e:	73 17                	jae    106747 <_svfprintf_r+0xc37>
  106730:	80 c1 30             	add    cl,0x30
  106733:	88 8c 24 f7 00 00 00 	mov    BYTE PTR [rsp+0xf7],cl
  10673a:	4c 8d ac 24 f7 00 00 	lea    r13,[rsp+0xf7]
  106741:	00 
  106742:	e9 e9 00 00 00       	jmp    106830 <_svfprintf_r+0xd20>
  106747:	4c 8d ac 24 f8 00 00 	lea    r13,[rsp+0xf8]
  10674e:	00 
  10674f:	90                   	nop
  106750:	48 ba cd cc cc cc cc 	movabs rdx,0xcccccccccccccccd
  106757:	cc cc cc 
  10675a:	48 89 c8             	mov    rax,rcx
  10675d:	48 f7 e2             	mul    rdx
  106760:	48 c1 ea 03          	shr    rdx,0x3
  106764:	8d 04 12             	lea    eax,[rdx+rdx*1]
  106767:	8d 04 80             	lea    eax,[rax+rax*4]
  10676a:	89 ce                	mov    esi,ecx
  10676c:	29 c6                	sub    esi,eax
  10676e:	40 80 ce 30          	or     sil,0x30
  106772:	41 88 75 ff          	mov    BYTE PTR [r13-0x1],sil
  106776:	49 ff cd             	dec    r13
  106779:	48 83 f9 0a          	cmp    rcx,0xa
  10677d:	48 89 d1             	mov    rcx,rdx
  106780:	73 ce                	jae    106750 <_svfprintf_r+0xc40>
  106782:	e9 a9 00 00 00       	jmp    106830 <_svfprintf_r+0xd20>
  106787:	4c 8d ac 24 f8 00 00 	lea    r13,[rsp+0xf8]
  10678e:	00 
  10678f:	e9 9c 00 00 00       	jmp    106830 <_svfprintf_r+0xd20>
  106794:	4c 8d ac 24 f8 00 00 	lea    r13,[rsp+0xf8]
  10679b:	00 
  10679c:	e9 91 00 00 00       	jmp    106832 <_svfprintf_r+0xd22>
  1067a1:	44 89 6c 24 0c       	mov    DWORD PTR [rsp+0xc],r13d
  1067a6:	4c 8d ac 24 f7 00 00 	lea    r13,[rsp+0xf7]
  1067ad:	00 
  1067ae:	48 89 ca             	mov    rdx,rcx
  1067b1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  1067b8:	0f 1f 84 00 00 00 00 
  1067bf:	00 
  1067c0:	89 c8                	mov    eax,ecx
  1067c2:	24 07                	and    al,0x7
  1067c4:	0c 30                	or     al,0x30
  1067c6:	41 88 45 00          	mov    BYTE PTR [r13+0x0],al
  1067ca:	48 c1 ea 03          	shr    rdx,0x3
  1067ce:	49 ff cd             	dec    r13
  1067d1:	48 83 f9 07          	cmp    rcx,0x7
  1067d5:	48 89 d1             	mov    rcx,rdx
  1067d8:	77 e6                	ja     1067c0 <_svfprintf_r+0xcb0>
  1067da:	49 8d 4d 01          	lea    rcx,[r13+0x1]
  1067de:	f6 c3 01             	test   bl,0x1
  1067e1:	74 44                	je     106827 <_svfprintf_r+0xd17>
  1067e3:	3c 30                	cmp    al,0x30
  1067e5:	74 40                	je     106827 <_svfprintf_r+0xd17>
  1067e7:	41 c6 45 00 30       	mov    BYTE PTR [r13+0x0],0x30
  1067ec:	eb 42                	jmp    106830 <_svfprintf_r+0xd20>
  1067ee:	4c 8d 2d 80 9d ff ff 	lea    r13,[rip+0xffffffffffff9d80]        # 100575 <_svfprintf_r.blanks-0x56b>
  1067f5:	4c 89 ef             	mov    rdi,r13
  1067f8:	66 0f 29 54 24 70    	movapd XMMWORD PTR [rsp+0x70],xmm2
  1067fe:	e8 7d f1 ff ff       	call   105980 <strlen>
  106803:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  106808:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  10680e:	48 89 c2             	mov    rdx,rax
  106811:	31 c0                	xor    eax,eax
  106813:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
  10681a:	00 
  10681b:	89 d9                	mov    ecx,ebx
  10681d:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  106822:	e9 c9 03 00 00       	jmp    106bf0 <_svfprintf_r+0x10e0>
  106827:	49 89 cd             	mov    r13,rcx
  10682a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  106830:	89 d9                	mov    ecx,ebx
  106832:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  106837:	48 8d 84 24 f8 00 00 	lea    rax,[rsp+0xf8]
  10683e:	00 
  10683f:	89 c2                	mov    edx,eax
  106841:	44 29 ea             	sub    edx,r13d
  106844:	31 c0                	xor    eax,eax
  106846:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
  10684d:	00 
  10684e:	e9 9d 03 00 00       	jmp    106bf0 <_svfprintf_r+0x10e0>
  106853:	4c 89 ef             	mov    rdi,r13
  106856:	e8 25 f1 ff ff       	call   105980 <strlen>
  10685b:	48 89 c2             	mov    rdx,rax
  10685e:	31 c0                	xor    eax,eax
  106860:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
  106867:	00 
  106868:	bd 73 00 00 00       	mov    ebp,0x73
  10686d:	45 31 ff             	xor    r15d,r15d
  106870:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  106876:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  10687b:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  10687f:	e9 6c 03 00 00       	jmp    106bf0 <_svfprintf_r+0x10e0>
  106884:	8b 4c 24 44          	mov    ecx,DWORD PTR [rsp+0x44]
  106888:	48 63 c9             	movsxd rcx,ecx
  10688b:	48 01 c8             	add    rax,rcx
  10688e:	66 0f 57 c0          	xorpd  xmm0,xmm0
  106892:	66 0f 2e c8          	ucomisd xmm1,xmm0
  106896:	75 18                	jne    1068b0 <_svfprintf_r+0xda0>
  106898:	7a 16                	jp     1068b0 <_svfprintf_r+0xda0>
  10689a:	49 89 c2             	mov    r10,rax
  10689d:	eb 1e                	jmp    1068bd <_svfprintf_r+0xdad>
  10689f:	90                   	nop
  1068a0:	49 8d 4a 01          	lea    rcx,[r10+0x1]
  1068a4:	48 89 8c 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rcx
  1068ab:	00 
  1068ac:	41 c6 02 30          	mov    BYTE PTR [r10],0x30
  1068b0:	4c 8b 94 24 98 00 00 	mov    r10,QWORD PTR [rsp+0x98]
  1068b7:	00 
  1068b8:	49 39 c2             	cmp    r10,rax
  1068bb:	72 e3                	jb     1068a0 <_svfprintf_r+0xd90>
  1068bd:	45 29 ea             	sub    r10d,r13d
  1068c0:	83 fb 47             	cmp    ebx,0x47
  1068c3:	4c 89 94 24 90 00 00 	mov    QWORD PTR [rsp+0x90],r10
  1068ca:	00 
  1068cb:	75 29                	jne    1068f6 <_svfprintf_r+0xde6>
  1068cd:	8b 54 24 44          	mov    edx,DWORD PTR [rsp+0x44]
  1068d1:	83 c5 fe             	add    ebp,0xfffffffe
  1068d4:	83 fa fd             	cmp    edx,0xfffffffd
  1068d7:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  1068dc:	4c 8b bc 24 a8 00 00 	mov    r15,QWORD PTR [rsp+0xa8]
  1068e3:	00 
  1068e4:	7c 22                	jl     106908 <_svfprintf_r+0xdf8>
  1068e6:	b8 67 00 00 00       	mov    eax,0x67
  1068eb:	44 39 fa             	cmp    edx,r15d
  1068ee:	0f 8e 23 01 00 00    	jle    106a17 <_svfprintf_r+0xf07>
  1068f4:	eb 12                	jmp    106908 <_svfprintf_r+0xdf8>
  1068f6:	83 fd 65             	cmp    ebp,0x65
  1068f9:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  1068fe:	0f 8f b8 00 00 00    	jg     1069bc <_svfprintf_r+0xeac>
  106904:	8b 54 24 44          	mov    edx,DWORD PTR [rsp+0x44]
  106908:	8d 42 ff             	lea    eax,[rdx-0x1]
  10690b:	89 44 24 44          	mov    DWORD PTR [rsp+0x44],eax
  10690f:	40 88 6c 24 67       	mov    BYTE PTR [rsp+0x67],bpl
  106914:	85 d2                	test   edx,edx
  106916:	0f 9e c1             	setle  cl
  106919:	00 c9                	add    cl,cl
  10691b:	80 c1 2b             	add    cl,0x2b
  10691e:	89 c2                	mov    edx,eax
  106920:	f7 da                	neg    edx
  106922:	0f 48 d0             	cmovs  edx,eax
  106925:	88 4c 24 68          	mov    BYTE PTR [rsp+0x68],cl
  106929:	83 fa 0a             	cmp    edx,0xa
  10692c:	0f 82 cd 00 00 00    	jb     1069ff <_svfprintf_r+0xeef>
  106932:	b9 01 00 00 00       	mov    ecx,0x1
  106937:	31 c0                	xor    eax,eax
  106939:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  106940:	48 89 c7             	mov    rdi,rax
  106943:	48 63 f2             	movsxd rsi,edx
  106946:	48 69 d6 67 66 66 66 	imul   rdx,rsi,0x66666667
  10694d:	48 89 d0             	mov    rax,rdx
  106950:	48 c1 e8 3f          	shr    rax,0x3f
  106954:	48 c1 fa 22          	sar    rdx,0x22
  106958:	01 c2                	add    edx,eax
  10695a:	8d 04 12             	lea    eax,[rdx+rdx*1]
  10695d:	8d 04 80             	lea    eax,[rax+rax*4]
  106960:	89 f3                	mov    ebx,esi
  106962:	29 c3                	sub    ebx,eax
  106964:	80 c3 30             	add    bl,0x30
  106967:	88 9c 3c 9e 00 00 00 	mov    BYTE PTR [rsp+rdi*1+0x9e],bl
  10696e:	48 8d 47 ff          	lea    rax,[rdi-0x1]
  106972:	48 ff c1             	inc    rcx
  106975:	83 fe 63             	cmp    esi,0x63
  106978:	7f c6                	jg     106940 <_svfprintf_r+0xe30>
  10697a:	80 c2 30             	add    dl,0x30
  10697d:	88 94 04 9e 00 00 00 	mov    BYTE PTR [rsp+rax*1+0x9e],dl
  106984:	48 8d 50 08          	lea    rdx,[rax+0x8]
  106988:	48 8d 74 24 69       	lea    rsi,[rsp+0x69]
  10698d:	48 83 fa 08          	cmp    rdx,0x8
  106991:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  106996:	0f 8f ea 01 00 00    	jg     106b86 <_svfprintf_r+0x1076>
  10699c:	ba 01 00 00 00       	mov    edx,0x1
  1069a1:	48 29 c2             	sub    rdx,rax
  1069a4:	48 83 fa 20          	cmp    rdx,0x20
  1069a8:	0f 83 b0 00 00 00    	jae    106a5e <_svfprintf_r+0xf4e>
  1069ae:	48 83 c0 06          	add    rax,0x6
  1069b2:	48 8d 74 24 69       	lea    rsi,[rsp+0x69]
  1069b7:	e9 b4 01 00 00       	jmp    106b70 <_svfprintf_r+0x1060>
  1069bc:	8b 54 24 44          	mov    edx,DWORD PTR [rsp+0x44]
  1069c0:	83 fd 66             	cmp    ebp,0x66
  1069c3:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  1069c7:	75 4c                	jne    106a15 <_svfprintf_r+0xf05>
  1069c9:	89 c8                	mov    eax,ecx
  1069cb:	83 e0 01             	and    eax,0x1
  1069ce:	48 8b b4 24 a8 00 00 	mov    rsi,QWORD PTR [rsp+0xa8]
  1069d5:	00 
  1069d6:	09 f0                	or     eax,esi
  1069d8:	0f 94 c0             	sete   al
  1069db:	85 d2                	test   edx,edx
  1069dd:	48 89 94 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rdx
  1069e4:	00 
  1069e5:	0f 8e 02 01 00 00    	jle    106aed <_svfprintf_r+0xfdd>
  1069eb:	bd 66 00 00 00       	mov    ebp,0x66
  1069f0:	84 c0                	test   al,al
  1069f2:	0f 84 10 01 00 00    	je     106b08 <_svfprintf_r+0xff8>
  1069f8:	89 d6                	mov    esi,edx
  1069fa:	e9 c7 01 00 00       	jmp    106bc6 <_svfprintf_r+0x10b6>
  1069ff:	c6 44 24 69 30       	mov    BYTE PTR [rsp+0x69],0x30
  106a04:	80 c2 30             	add    dl,0x30
  106a07:	88 54 24 6a          	mov    BYTE PTR [rsp+0x6a],dl
  106a0b:	48 8d 74 24 6b       	lea    rsi,[rsp+0x6b]
  106a10:	e9 71 01 00 00       	jmp    106b86 <_svfprintf_r+0x1076>
  106a15:	89 e8                	mov    eax,ebp
  106a17:	44 39 d2             	cmp    edx,r10d
  106a1a:	48 89 94 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rdx
  106a21:	00 
  106a22:	7d 1f                	jge    106a43 <_svfprintf_r+0xf33>
  106a24:	48 8b 8c 24 a0 00 00 	mov    rcx,QWORD PTR [rsp+0xa0]
  106a2b:	00 
  106a2c:	41 8d 34 0a          	lea    esi,[r10+rcx*1]
  106a30:	85 d2                	test   edx,edx
  106a32:	7f 04                	jg     106a38 <_svfprintf_r+0xf28>
  106a34:	29 d6                	sub    esi,edx
  106a36:	ff c6                	inc    esi
  106a38:	89 c5                	mov    ebp,eax
  106a3a:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  106a3e:	e9 83 01 00 00       	jmp    106bc6 <_svfprintf_r+0x10b6>
  106a43:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  106a47:	89 ce                	mov    esi,ecx
  106a49:	83 e6 01             	and    esi,0x1
  106a4c:	f7 de                	neg    esi
  106a4e:	23 b4 24 a0 00 00 00 	and    esi,DWORD PTR [rsp+0xa0]
  106a55:	01 d6                	add    esi,edx
  106a57:	89 c5                	mov    ebp,eax
  106a59:	e9 68 01 00 00       	jmp    106bc6 <_svfprintf_r+0x10b6>
  106a5e:	49 89 d0             	mov    r8,rdx
  106a61:	49 83 e0 e0          	and    r8,0xffffffffffffffe0
  106a65:	49 8d 70 e0          	lea    rsi,[r8-0x20]
  106a69:	49 89 f1             	mov    r9,rsi
  106a6c:	49 c1 e9 05          	shr    r9,0x5
  106a70:	49 ff c1             	inc    r9
  106a73:	48 85 f6             	test   rsi,rsi
  106a76:	0f 84 a7 00 00 00    	je     106b23 <_svfprintf_r+0x1013>
  106a7c:	48 8d b4 24 ce 00 00 	lea    rsi,[rsp+0xce]
  106a83:	00 
  106a84:	48 01 c6             	add    rsi,rax
  106a87:	bb 02 00 00 00       	mov    ebx,0x2
  106a8c:	48 29 fb             	sub    rbx,rdi
  106a8f:	48 83 e3 e0          	and    rbx,0xffffffffffffffe0
  106a93:	48 83 c3 e0          	add    rbx,0xffffffffffffffe0
  106a97:	48 c1 eb 05          	shr    rbx,0x5
  106a9b:	48 ff c3             	inc    rbx
  106a9e:	48 83 e3 fe          	and    rbx,0xfffffffffffffffe
  106aa2:	31 ff                	xor    edi,edi
  106aa4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  106aab:	00 00 00 00 00 
  106ab0:	0f 10 44 3e d0       	movups xmm0,XMMWORD PTR [rsi+rdi*1-0x30]
  106ab5:	0f 10 4c 3e e0       	movups xmm1,XMMWORD PTR [rsi+rdi*1-0x20]
  106aba:	0f 11 44 3c 69       	movups XMMWORD PTR [rsp+rdi*1+0x69],xmm0
  106abf:	0f 11 4c 3c 79       	movups XMMWORD PTR [rsp+rdi*1+0x79],xmm1
  106ac4:	f3 0f 6f 44 3e f0    	movdqu xmm0,XMMWORD PTR [rsi+rdi*1-0x10]
  106aca:	f3 0f 6f 0c 3e       	movdqu xmm1,XMMWORD PTR [rsi+rdi*1]
  106acf:	f3 0f 7f 84 3c 89 00 	movdqu XMMWORD PTR [rsp+rdi*1+0x89],xmm0
  106ad6:	00 00 
  106ad8:	f3 0f 7f 8c 3c 99 00 	movdqu XMMWORD PTR [rsp+rdi*1+0x99],xmm1
  106adf:	00 00 
  106ae1:	48 83 c7 40          	add    rdi,0x40
  106ae5:	48 83 c3 fe          	add    rbx,0xfffffffffffffffe
  106ae9:	75 c5                	jne    106ab0 <_svfprintf_r+0xfa0>
  106aeb:	eb 38                	jmp    106b25 <_svfprintf_r+0x1015>
  106aed:	03 b4 24 c0 00 00 00 	add    esi,DWORD PTR [rsp+0xc0]
  106af4:	84 c0                	test   al,al
  106af6:	b8 01 00 00 00       	mov    eax,0x1
  106afb:	0f 45 f0             	cmovne esi,eax
  106afe:	bd 66 00 00 00       	mov    ebp,0x66
  106b03:	e9 be 00 00 00       	jmp    106bc6 <_svfprintf_r+0x10b6>
  106b08:	4c 8b bc 24 a8 00 00 	mov    r15,QWORD PTR [rsp+0xa8]
  106b0f:	00 
  106b10:	44 03 bc 24 a0 00 00 	add    r15d,DWORD PTR [rsp+0xa0]
  106b17:	00 
  106b18:	41 01 d7             	add    r15d,edx
  106b1b:	4c 89 fe             	mov    rsi,r15
  106b1e:	e9 a3 00 00 00       	jmp    106bc6 <_svfprintf_r+0x10b6>
  106b23:	31 ff                	xor    edi,edi
  106b25:	41 f6 c1 01          	test   r9b,0x1
  106b29:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  106b2e:	74 23                	je     106b53 <_svfprintf_r+0x1043>
  106b30:	48 8d b4 24 98 00 00 	lea    rsi,[rsp+0x98]
  106b37:	00 
  106b38:	48 01 fe             	add    rsi,rdi
  106b3b:	f3 0f 6f 44 30 06    	movdqu xmm0,XMMWORD PTR [rax+rsi*1+0x6]
  106b41:	f3 0f 6f 4c 30 16    	movdqu xmm1,XMMWORD PTR [rax+rsi*1+0x16]
  106b47:	f3 0f 7f 44 3c 69    	movdqu XMMWORD PTR [rsp+rdi*1+0x69],xmm0
  106b4d:	f3 0f 7f 4c 3c 79    	movdqu XMMWORD PTR [rsp+rdi*1+0x79],xmm1
  106b53:	48 8d 74 24 69       	lea    rsi,[rsp+0x69]
  106b58:	4c 01 c6             	add    rsi,r8
  106b5b:	4c 39 c2             	cmp    rdx,r8
  106b5e:	74 26                	je     106b86 <_svfprintf_r+0x1076>
  106b60:	48 83 e1 e0          	and    rcx,0xffffffffffffffe0
  106b64:	48 01 c8             	add    rax,rcx
  106b67:	48 83 c0 06          	add    rax,0x6
  106b6b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  106b70:	0f b6 8c 04 98 00 00 	movzx  ecx,BYTE PTR [rsp+rax*1+0x98]
  106b77:	00 
  106b78:	48 ff c0             	inc    rax
  106b7b:	88 0e                	mov    BYTE PTR [rsi],cl
  106b7d:	48 ff c6             	inc    rsi
  106b80:	48 83 f8 07          	cmp    rax,0x7
  106b84:	75 ea                	jne    106b70 <_svfprintf_r+0x1060>
  106b86:	8b 54 24 04          	mov    edx,DWORD PTR [rsp+0x4]
  106b8a:	89 d7                	mov    edi,edx
  106b8c:	83 e7 01             	and    edi,0x1
  106b8f:	f7 df                	neg    edi
  106b91:	48 8d 44 24 67       	lea    rax,[rsp+0x67]
  106b96:	29 c6                	sub    esi,eax
  106b98:	48 89 b4 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rsi
  106b9f:	00 
  106ba0:	42 8d 04 16          	lea    eax,[rsi+r10*1]
  106ba4:	48 8b 8c 24 a0 00 00 	mov    rcx,QWORD PTR [rsp+0xa0]
  106bab:	00 
  106bac:	21 cf                	and    edi,ecx
  106bae:	41 83 fa 02          	cmp    r10d,0x2
  106bb2:	0f 4d f9             	cmovge edi,ecx
  106bb5:	89 d1                	mov    ecx,edx
  106bb7:	01 c7                	add    edi,eax
  106bb9:	48 89 fe             	mov    rsi,rdi
  106bbc:	31 c0                	xor    eax,eax
  106bbe:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
  106bc5:	00 
  106bc6:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  106bcb:	81 c9 00 01 00 00    	or     ecx,0x100
  106bd1:	45 31 ff             	xor    r15d,r15d
  106bd4:	48 85 c0             	test   rax,rax
  106bd7:	79 05                	jns    106bde <_svfprintf_r+0x10ce>
  106bd9:	c6 44 24 0b 2d       	mov    BYTE PTR [rsp+0xb],0x2d
  106bde:	48 89 f2             	mov    rdx,rsi
  106be1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  106be8:	0f 1f 84 00 00 00 00 
  106bef:	00 
  106bf0:	41 39 d7             	cmp    r15d,edx
  106bf3:	48 89 94 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rdx
  106bfa:	00 
  106bfb:	89 d0                	mov    eax,edx
  106bfd:	41 0f 4f c7          	cmovg  eax,r15d
  106c01:	80 7c 24 0b 01       	cmp    BYTE PTR [rsp+0xb],0x1
  106c06:	83 d8 ff             	sbb    eax,0xffffffff
  106c09:	8d 50 02             	lea    edx,[rax+0x2]
  106c0c:	f6 c1 02             	test   cl,0x2
  106c0f:	0f 44 d0             	cmove  edx,eax
  106c12:	44 89 d8             	mov    eax,r11d
  106c15:	89 94 24 c4 00 00 00 	mov    DWORD PTR [rsp+0xc4],edx
  106c1c:	29 d0                	sub    eax,edx
  106c1e:	89 ca                	mov    edx,ecx
  106c20:	81 e2 84 00 00 00    	and    edx,0x84
  106c26:	89 94 24 00 01 00 00 	mov    DWORD PTR [rsp+0x100],edx
  106c2d:	66 0f 29 54 24 70    	movapd XMMWORD PTR [rsp+0x70],xmm2
  106c33:	89 4c 24 04          	mov    DWORD PTR [rsp+0x4],ecx
  106c37:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
  106c3c:	0f 85 ed 00 00 00    	jne    106d2f <_svfprintf_r+0x121f>
  106c42:	85 c0                	test   eax,eax
  106c44:	0f 8e e5 00 00 00    	jle    106d2f <_svfprintf_r+0x121f>
  106c4a:	83 f8 11             	cmp    eax,0x11
  106c4d:	0f 82 7d 00 00 00    	jb     106cd0 <_svfprintf_r+0x11c0>
  106c53:	89 c3                	mov    ebx,eax
  106c55:	eb 17                	jmp    106c6e <_svfprintf_r+0x115e>
  106c57:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  106c5e:	00 00 
  106c60:	49 83 c6 10          	add    r14,0x10
  106c64:	8d 43 f0             	lea    eax,[rbx-0x10]
  106c67:	83 fb 20             	cmp    ebx,0x20
  106c6a:	89 c3                	mov    ebx,eax
  106c6c:	7e 62                	jle    106cd0 <_svfprintf_r+0x11c0>
  106c6e:	48 8d 05 6b 9e ff ff 	lea    rax,[rip+0xffffffffffff9e6b]        # 100ae0 <_svfprintf_r.blanks>
  106c75:	49 89 06             	mov    QWORD PTR [r14],rax
  106c78:	49 c7 46 08 10 00 00 	mov    QWORD PTR [r14+0x8],0x10
  106c7f:	00 
  106c80:	48 83 44 24 20 10    	add    QWORD PTR [rsp+0x20],0x10
  106c86:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  106c8a:	8d 48 01             	lea    ecx,[rax+0x1]
  106c8d:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  106c91:	83 f8 07             	cmp    eax,0x7
  106c94:	7c ca                	jl     106c60 <_svfprintf_r+0x1150>
  106c96:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  106c9b:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
  106ca0:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  106ca5:	e8 96 1f 00 00       	call   108c40 <__ssprint_r>
  106caa:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  106caf:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  106cb5:	4c 8d b4 24 20 01 00 	lea    r14,[rsp+0x120]
  106cbc:	00 
  106cbd:	85 c0                	test   eax,eax
  106cbf:	74 a3                	je     106c64 <_svfprintf_r+0x1154>
  106cc1:	e9 38 0f 00 00       	jmp    107bfe <_svfprintf_r+0x20ee>
  106cc6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  106ccd:	00 00 00 
  106cd0:	48 8d 0d 09 9e ff ff 	lea    rcx,[rip+0xffffffffffff9e09]        # 100ae0 <_svfprintf_r.blanks>
  106cd7:	49 89 0e             	mov    QWORD PTR [r14],rcx
  106cda:	89 c0                	mov    eax,eax
  106cdc:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  106ce0:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  106ce5:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  106ce9:	8d 48 01             	lea    ecx,[rax+0x1]
  106cec:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  106cf0:	83 f8 07             	cmp    eax,0x7
  106cf3:	0f 8c b1 00 00 00    	jl     106daa <_svfprintf_r+0x129a>
  106cf9:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  106cfe:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  106d03:	48 89 de             	mov    rsi,rbx
  106d06:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  106d0b:	e8 30 1f 00 00       	call   108c40 <__ssprint_r>
  106d10:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  106d15:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  106d1b:	4c 8d b4 24 20 01 00 	lea    r14,[rsp+0x120]
  106d22:	00 
  106d23:	85 c0                	test   eax,eax
  106d25:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  106d29:	0f 85 d4 0e 00 00    	jne    107c03 <_svfprintf_r+0x20f3>
  106d2f:	80 7c 24 0b 00       	cmp    BYTE PTR [rsp+0xb],0x0
  106d34:	0f 84 96 00 00 00    	je     106dd0 <_svfprintf_r+0x12c0>
  106d3a:	48 8d 44 24 0b       	lea    rax,[rsp+0xb]
  106d3f:	49 89 06             	mov    QWORD PTR [r14],rax
  106d42:	49 c7 46 08 01 00 00 	mov    QWORD PTR [r14+0x8],0x1
  106d49:	00 
  106d4a:	48 ff 44 24 20       	inc    QWORD PTR [rsp+0x20]
  106d4f:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  106d53:	8d 48 01             	lea    ecx,[rax+0x1]
  106d56:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  106d5a:	83 f8 07             	cmp    eax,0x7
  106d5d:	7c 41                	jl     106da0 <_svfprintf_r+0x1290>
  106d5f:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  106d64:	48 89 de             	mov    rsi,rbx
  106d67:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  106d6c:	e8 cf 1e 00 00       	call   108c40 <__ssprint_r>
  106d71:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  106d76:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  106d7c:	4c 8d b4 24 20 01 00 	lea    r14,[rsp+0x120]
  106d83:	00 
  106d84:	85 c0                	test   eax,eax
  106d86:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  106d8a:	74 44                	je     106dd0 <_svfprintf_r+0x12c0>
  106d8c:	e9 72 0e 00 00       	jmp    107c03 <_svfprintf_r+0x20f3>
  106d91:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  106d98:	0f 1f 84 00 00 00 00 
  106d9f:	00 
  106da0:	49 83 c6 10          	add    r14,0x10
  106da4:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  106da8:	eb 26                	jmp    106dd0 <_svfprintf_r+0x12c0>
  106daa:	49 83 c6 10          	add    r14,0x10
  106dae:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  106db3:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  106db7:	80 7c 24 0b 00       	cmp    BYTE PTR [rsp+0xb],0x0
  106dbc:	0f 85 78 ff ff ff    	jne    106d3a <_svfprintf_r+0x122a>
  106dc2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  106dc9:	1f 84 00 00 00 00 00 
  106dd0:	f6 c1 02             	test   cl,0x2
  106dd3:	74 57                	je     106e2c <_svfprintf_r+0x131c>
  106dd5:	48 8d 44 24 6e       	lea    rax,[rsp+0x6e]
  106dda:	49 89 06             	mov    QWORD PTR [r14],rax
  106ddd:	49 c7 46 08 02 00 00 	mov    QWORD PTR [r14+0x8],0x2
  106de4:	00 
  106de5:	48 83 44 24 20 02    	add    QWORD PTR [rsp+0x20],0x2
  106deb:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  106def:	8d 48 01             	lea    ecx,[rax+0x1]
  106df2:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  106df6:	83 f8 07             	cmp    eax,0x7
  106df9:	7c 45                	jl     106e40 <_svfprintf_r+0x1330>
  106dfb:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  106e00:	48 89 de             	mov    rsi,rbx
  106e03:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  106e08:	e8 33 1e 00 00       	call   108c40 <__ssprint_r>
  106e0d:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  106e12:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  106e18:	4c 8d b4 24 20 01 00 	lea    r14,[rsp+0x120]
  106e1f:	00 
  106e20:	85 c0                	test   eax,eax
  106e22:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  106e26:	0f 85 d7 0d 00 00    	jne    107c03 <_svfprintf_r+0x20f3>
  106e2c:	81 bc 24 00 01 00 00 	cmp    DWORD PTR [rsp+0x100],0x80
  106e33:	80 00 00 00 
  106e37:	74 20                	je     106e59 <_svfprintf_r+0x1349>
  106e39:	e9 01 01 00 00       	jmp    106f3f <_svfprintf_r+0x142f>
  106e3e:	66 90                	xchg   ax,ax
  106e40:	49 83 c6 10          	add    r14,0x10
  106e44:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  106e48:	81 bc 24 00 01 00 00 	cmp    DWORD PTR [rsp+0x100],0x80
  106e4f:	80 00 00 00 
  106e53:	0f 85 e6 00 00 00    	jne    106f3f <_svfprintf_r+0x142f>
  106e59:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  106e5e:	85 c0                	test   eax,eax
  106e60:	0f 8e d9 00 00 00    	jle    106f3f <_svfprintf_r+0x142f>
  106e66:	83 f8 11             	cmp    eax,0x11
  106e69:	72 75                	jb     106ee0 <_svfprintf_r+0x13d0>
  106e6b:	89 c3                	mov    ebx,eax
  106e6d:	eb 0f                	jmp    106e7e <_svfprintf_r+0x136e>
  106e6f:	90                   	nop
  106e70:	49 83 c6 10          	add    r14,0x10
  106e74:	8d 43 f0             	lea    eax,[rbx-0x10]
  106e77:	83 fb 20             	cmp    ebx,0x20
  106e7a:	89 c3                	mov    ebx,eax
  106e7c:	7e 62                	jle    106ee0 <_svfprintf_r+0x13d0>
  106e7e:	48 8d 05 6b 9c ff ff 	lea    rax,[rip+0xffffffffffff9c6b]        # 100af0 <_svfprintf_r.zeroes>
  106e85:	49 89 06             	mov    QWORD PTR [r14],rax
  106e88:	49 c7 46 08 10 00 00 	mov    QWORD PTR [r14+0x8],0x10
  106e8f:	00 
  106e90:	48 83 44 24 20 10    	add    QWORD PTR [rsp+0x20],0x10
  106e96:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  106e9a:	8d 48 01             	lea    ecx,[rax+0x1]
  106e9d:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  106ea1:	83 f8 07             	cmp    eax,0x7
  106ea4:	7c ca                	jl     106e70 <_svfprintf_r+0x1360>
  106ea6:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  106eab:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
  106eb0:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  106eb5:	e8 86 1d 00 00       	call   108c40 <__ssprint_r>
  106eba:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  106ebf:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  106ec5:	4c 8d b4 24 20 01 00 	lea    r14,[rsp+0x120]
  106ecc:	00 
  106ecd:	85 c0                	test   eax,eax
  106ecf:	74 a3                	je     106e74 <_svfprintf_r+0x1364>
  106ed1:	e9 28 0d 00 00       	jmp    107bfe <_svfprintf_r+0x20ee>
  106ed6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  106edd:	00 00 00 
  106ee0:	48 8d 0d 09 9c ff ff 	lea    rcx,[rip+0xffffffffffff9c09]        # 100af0 <_svfprintf_r.zeroes>
  106ee7:	49 89 0e             	mov    QWORD PTR [r14],rcx
  106eea:	89 c0                	mov    eax,eax
  106eec:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  106ef0:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  106ef5:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  106ef9:	8d 48 01             	lea    ecx,[rax+0x1]
  106efc:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  106f00:	83 f8 07             	cmp    eax,0x7
  106f03:	0f 8c 28 01 00 00    	jl     107031 <_svfprintf_r+0x1521>
  106f09:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  106f0e:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  106f13:	48 89 de             	mov    rsi,rbx
  106f16:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  106f1b:	e8 20 1d 00 00       	call   108c40 <__ssprint_r>
  106f20:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  106f25:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  106f2b:	4c 8d b4 24 20 01 00 	lea    r14,[rsp+0x120]
  106f32:	00 
  106f33:	85 c0                	test   eax,eax
  106f35:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  106f39:	0f 85 c4 0c 00 00    	jne    107c03 <_svfprintf_r+0x20f3>
  106f3f:	44 2b bc 24 a8 00 00 	sub    r15d,DWORD PTR [rsp+0xa8]
  106f46:	00 
  106f47:	0f 8e 03 01 00 00    	jle    107050 <_svfprintf_r+0x1540>
  106f4d:	41 83 ff 11          	cmp    r15d,0x11
  106f51:	73 7e                	jae    106fd1 <_svfprintf_r+0x14c1>
  106f53:	44 89 f8             	mov    eax,r15d
  106f56:	48 8d 0d 93 9b ff ff 	lea    rcx,[rip+0xffffffffffff9b93]        # 100af0 <_svfprintf_r.zeroes>
  106f5d:	49 89 0e             	mov    QWORD PTR [r14],rcx
  106f60:	89 c0                	mov    eax,eax
  106f62:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  106f66:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  106f6b:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  106f6f:	8d 48 01             	lea    ecx,[rax+0x1]
  106f72:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  106f76:	83 f8 07             	cmp    eax,0x7
  106f79:	0f 8c a8 00 00 00    	jl     107027 <_svfprintf_r+0x1517>
  106f7f:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  106f84:	48 89 de             	mov    rsi,rbx
  106f87:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  106f8c:	e8 af 1c 00 00       	call   108c40 <__ssprint_r>
  106f91:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  106f96:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  106f9c:	4c 8d b4 24 20 01 00 	lea    r14,[rsp+0x120]
  106fa3:	00 
  106fa4:	85 c0                	test   eax,eax
  106fa6:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  106faa:	0f 84 a0 00 00 00    	je     107050 <_svfprintf_r+0x1540>
  106fb0:	e9 4e 0c 00 00       	jmp    107c03 <_svfprintf_r+0x20f3>
  106fb5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  106fbc:	00 00 00 00 
  106fc0:	49 83 c6 10          	add    r14,0x10
  106fc4:	41 8d 47 f0          	lea    eax,[r15-0x10]
  106fc8:	41 83 ff 20          	cmp    r15d,0x20
  106fcc:	41 89 c7             	mov    r15d,eax
  106fcf:	7e 85                	jle    106f56 <_svfprintf_r+0x1446>
  106fd1:	48 8d 05 18 9b ff ff 	lea    rax,[rip+0xffffffffffff9b18]        # 100af0 <_svfprintf_r.zeroes>
  106fd8:	49 89 06             	mov    QWORD PTR [r14],rax
  106fdb:	49 c7 46 08 10 00 00 	mov    QWORD PTR [r14+0x8],0x10
  106fe2:	00 
  106fe3:	48 83 44 24 20 10    	add    QWORD PTR [rsp+0x20],0x10
  106fe9:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  106fed:	8d 48 01             	lea    ecx,[rax+0x1]
  106ff0:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  106ff4:	83 f8 07             	cmp    eax,0x7
  106ff7:	7c c7                	jl     106fc0 <_svfprintf_r+0x14b0>
  106ff9:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  106ffe:	48 89 de             	mov    rsi,rbx
  107001:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107006:	e8 35 1c 00 00       	call   108c40 <__ssprint_r>
  10700b:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  107010:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  107016:	4c 8d b4 24 20 01 00 	lea    r14,[rsp+0x120]
  10701d:	00 
  10701e:	85 c0                	test   eax,eax
  107020:	74 a2                	je     106fc4 <_svfprintf_r+0x14b4>
  107022:	e9 dc 0b 00 00       	jmp    107c03 <_svfprintf_r+0x20f3>
  107027:	49 83 c6 10          	add    r14,0x10
  10702b:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  10702f:	eb 1f                	jmp    107050 <_svfprintf_r+0x1540>
  107031:	49 83 c6 10          	add    r14,0x10
  107035:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  10703a:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  10703e:	44 2b bc 24 a8 00 00 	sub    r15d,DWORD PTR [rsp+0xa8]
  107045:	00 
  107046:	0f 8f 01 ff ff ff    	jg     106f4d <_svfprintf_r+0x143d>
  10704c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  107050:	f7 c1 00 01 00 00    	test   ecx,0x100
  107056:	75 68                	jne    1070c0 <_svfprintf_r+0x15b0>
  107058:	4d 89 2e             	mov    QWORD PTR [r14],r13
  10705b:	48 63 84 24 a8 00 00 	movsxd rax,DWORD PTR [rsp+0xa8]
  107062:	00 
  107063:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  107067:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  10706c:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  107070:	8d 48 01             	lea    ecx,[rax+0x1]
  107073:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  107077:	83 f8 07             	cmp    eax,0x7
  10707a:	0f 8c c5 00 00 00    	jl     107145 <_svfprintf_r+0x1635>
  107080:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  107085:	48 89 de             	mov    rsi,rbx
  107088:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  10708d:	e8 ae 1b 00 00       	call   108c40 <__ssprint_r>
  107092:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  107097:	4c 8d bc 24 20 01 00 	lea    r15,[rsp+0x120]
  10709e:	00 
  10709f:	4d 89 fe             	mov    r14,r15
  1070a2:	85 c0                	test   eax,eax
  1070a4:	44 8b 6c 24 0c       	mov    r13d,DWORD PTR [rsp+0xc]
  1070a9:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  1070ad:	48 8b 6c 24 58       	mov    rbp,QWORD PTR [rsp+0x58]
  1070b2:	0f 84 58 09 00 00    	je     107a10 <_svfprintf_r+0x1f00>
  1070b8:	e9 4b 0b 00 00       	jmp    107c08 <_svfprintf_r+0x20f8>
  1070bd:	0f 1f 00             	nop    DWORD PTR [rax]
  1070c0:	83 fd 66             	cmp    ebp,0x66
  1070c3:	0f 8c a4 00 00 00    	jl     10716d <_svfprintf_r+0x165d>
  1070c9:	66 0f 2e 15 e7 97 ff 	ucomisd xmm2,QWORD PTR [rip+0xffffffffffff97e7]        # 1008b8 <_svfprintf_r.blanks-0x228>
  1070d0:	ff 
  1070d1:	4c 8d bc 24 20 01 00 	lea    r15,[rsp+0x120]
  1070d8:	00 
  1070d9:	0f 85 a1 01 00 00    	jne    107280 <_svfprintf_r+0x1770>
  1070df:	0f 8a 9b 01 00 00    	jp     107280 <_svfprintf_r+0x1770>
  1070e5:	48 8d 05 a2 90 ff ff 	lea    rax,[rip+0xffffffffffff90a2]        # 10018e <_svfprintf_r.blanks-0x952>
  1070ec:	49 89 06             	mov    QWORD PTR [r14],rax
  1070ef:	49 c7 46 08 01 00 00 	mov    QWORD PTR [r14+0x8],0x1
  1070f6:	00 
  1070f7:	48 ff 44 24 20       	inc    QWORD PTR [rsp+0x20]
  1070fc:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  107100:	8d 48 01             	lea    ecx,[rax+0x1]
  107103:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  107107:	83 f8 07             	cmp    eax,0x7
  10710a:	48 8b 6c 24 58       	mov    rbp,QWORD PTR [rsp+0x58]
  10710f:	0f 8c e6 01 00 00    	jl     1072fb <_svfprintf_r+0x17eb>
  107115:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  10711a:	48 89 de             	mov    rsi,rbx
  10711d:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107122:	e8 19 1b 00 00       	call   108c40 <__ssprint_r>
  107127:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  10712c:	4d 89 fe             	mov    r14,r15
  10712f:	85 c0                	test   eax,eax
  107131:	44 8b 6c 24 0c       	mov    r13d,DWORD PTR [rsp+0xc]
  107136:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  10713a:	0f 84 c8 01 00 00    	je     107308 <_svfprintf_r+0x17f8>
  107140:	e9 c3 0a 00 00       	jmp    107c08 <_svfprintf_r+0x20f8>
  107145:	49 83 c6 10          	add    r14,0x10
  107149:	44 8b 6c 24 0c       	mov    r13d,DWORD PTR [rsp+0xc]
  10714e:	4c 8d bc 24 20 01 00 	lea    r15,[rsp+0x120]
  107155:	00 
  107156:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  10715a:	48 8b 6c 24 58       	mov    rbp,QWORD PTR [rsp+0x58]
  10715f:	f6 c1 04             	test   cl,0x4
  107162:	0f 85 b1 08 00 00    	jne    107a19 <_svfprintf_r+0x1f09>
  107168:	e9 83 09 00 00       	jmp    107af0 <_svfprintf_r+0x1fe0>
  10716d:	4d 89 2e             	mov    QWORD PTR [r14],r13
  107170:	49 c7 46 08 01 00 00 	mov    QWORD PTR [r14+0x8],0x1
  107177:	00 
  107178:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
  10717d:	48 ff c0             	inc    rax
  107180:	49 83 c6 10          	add    r14,0x10
  107184:	8b 54 24 18          	mov    edx,DWORD PTR [rsp+0x18]
  107188:	8d 4a 01             	lea    ecx,[rdx+0x1]
  10718b:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  107190:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  107194:	83 bc 24 90 00 00 00 	cmp    DWORD PTR [rsp+0x90],0x1
  10719b:	01 
  10719c:	4c 8d bc 24 20 01 00 	lea    r15,[rsp+0x120]
  1071a3:	00 
  1071a4:	7f 43                	jg     1071e9 <_svfprintf_r+0x16d9>
  1071a6:	8b 74 24 04          	mov    esi,DWORD PTR [rsp+0x4]
  1071aa:	83 e6 01             	and    esi,0x1
  1071ad:	75 3a                	jne    1071e9 <_svfprintf_r+0x16d9>
  1071af:	83 fa 07             	cmp    edx,0x7
  1071b2:	44 8b 6c 24 0c       	mov    r13d,DWORD PTR [rsp+0xc]
  1071b7:	48 8b 6c 24 58       	mov    rbp,QWORD PTR [rsp+0x58]
  1071bc:	0f 8c f7 07 00 00    	jl     1079b9 <_svfprintf_r+0x1ea9>
  1071c2:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  1071c7:	48 89 de             	mov    rsi,rbx
  1071ca:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  1071cf:	e8 6c 1a 00 00       	call   108c40 <__ssprint_r>
  1071d4:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  1071d9:	4d 89 fe             	mov    r14,r15
  1071dc:	85 c0                	test   eax,eax
  1071de:	0f 84 d5 07 00 00    	je     1079b9 <_svfprintf_r+0x1ea9>
  1071e4:	e9 1f 0a 00 00       	jmp    107c08 <_svfprintf_r+0x20f8>
  1071e9:	83 fa 07             	cmp    edx,0x7
  1071ec:	48 8b 6c 24 58       	mov    rbp,QWORD PTR [rsp+0x58]
  1071f1:	7c 31                	jl     107224 <_svfprintf_r+0x1714>
  1071f3:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  1071f8:	48 89 de             	mov    rsi,rbx
  1071fb:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107200:	e8 3b 1a 00 00       	call   108c40 <__ssprint_r>
  107205:	85 c0                	test   eax,eax
  107207:	0f 85 f6 09 00 00    	jne    107c03 <_svfprintf_r+0x20f3>
  10720d:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
  107212:	8b 4c 24 18          	mov    ecx,DWORD PTR [rsp+0x18]
  107216:	4d 89 fe             	mov    r14,r15
  107219:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  10721f:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  107224:	48 8b 94 24 b0 00 00 	mov    rdx,QWORD PTR [rsp+0xb0]
  10722b:	00 
  10722c:	49 89 16             	mov    QWORD PTR [r14],rdx
  10722f:	48 8b 94 24 a0 00 00 	mov    rdx,QWORD PTR [rsp+0xa0]
  107236:	00 
  107237:	49 89 56 08          	mov    QWORD PTR [r14+0x8],rdx
  10723b:	48 01 d0             	add    rax,rdx
  10723e:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  107243:	8d 41 01             	lea    eax,[rcx+0x1]
  107246:	89 44 24 18          	mov    DWORD PTR [rsp+0x18],eax
  10724a:	83 f9 07             	cmp    ecx,0x7
  10724d:	0f 8c 25 01 00 00    	jl     107378 <_svfprintf_r+0x1868>
  107253:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  107258:	48 89 de             	mov    rsi,rbx
  10725b:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107260:	e8 db 19 00 00       	call   108c40 <__ssprint_r>
  107265:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  10726a:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  107270:	4d 89 fe             	mov    r14,r15
  107273:	85 c0                	test   eax,eax
  107275:	0f 84 01 01 00 00    	je     10737c <_svfprintf_r+0x186c>
  10727b:	e9 83 09 00 00       	jmp    107c03 <_svfprintf_r+0x20f3>
  107280:	8b 44 24 44          	mov    eax,DWORD PTR [rsp+0x44]
  107284:	85 c0                	test   eax,eax
  107286:	0f 8e 6f 02 00 00    	jle    1074fb <_svfprintf_r+0x19eb>
  10728c:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  107293:	00 
  107294:	4c 8b bc 24 88 00 00 	mov    r15,QWORD PTR [rsp+0x88]
  10729b:	00 
  10729c:	44 39 f8             	cmp    eax,r15d
  10729f:	44 89 fd             	mov    ebp,r15d
  1072a2:	0f 4c e8             	cmovl  ebp,eax
  1072a5:	85 ed                	test   ebp,ebp
  1072a7:	0f 8e bf 02 00 00    	jle    10756c <_svfprintf_r+0x1a5c>
  1072ad:	4d 89 2e             	mov    QWORD PTR [r14],r13
  1072b0:	89 e8                	mov    eax,ebp
  1072b2:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  1072b6:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  1072bb:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  1072bf:	8d 48 01             	lea    ecx,[rax+0x1]
  1072c2:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  1072c6:	83 f8 07             	cmp    eax,0x7
  1072c9:	0f 8c 99 02 00 00    	jl     107568 <_svfprintf_r+0x1a58>
  1072cf:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  1072d4:	48 89 de             	mov    rsi,rbx
  1072d7:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  1072dc:	e8 5f 19 00 00       	call   108c40 <__ssprint_r>
  1072e1:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  1072e6:	4c 8d b4 24 20 01 00 	lea    r14,[rsp+0x120]
  1072ed:	00 
  1072ee:	85 c0                	test   eax,eax
  1072f0:	0f 84 76 02 00 00    	je     10756c <_svfprintf_r+0x1a5c>
  1072f6:	e9 08 09 00 00       	jmp    107c03 <_svfprintf_r+0x20f3>
  1072fb:	49 83 c6 10          	add    r14,0x10
  1072ff:	44 8b 6c 24 0c       	mov    r13d,DWORD PTR [rsp+0xc]
  107304:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  107308:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  10730f:	00 
  107310:	39 44 24 44          	cmp    DWORD PTR [rsp+0x44],eax
  107314:	7c 0b                	jl     107321 <_svfprintf_r+0x1811>
  107316:	89 c8                	mov    eax,ecx
  107318:	83 e0 01             	and    eax,0x1
  10731b:	0f 84 ef 06 00 00    	je     107a10 <_svfprintf_r+0x1f00>
  107321:	48 8b 84 24 b0 00 00 	mov    rax,QWORD PTR [rsp+0xb0]
  107328:	00 
  107329:	49 89 06             	mov    QWORD PTR [r14],rax
  10732c:	48 8b 84 24 a0 00 00 	mov    rax,QWORD PTR [rsp+0xa0]
  107333:	00 
  107334:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  107338:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  10733d:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  107341:	8d 48 01             	lea    ecx,[rax+0x1]
  107344:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  107348:	83 f8 07             	cmp    eax,0x7
  10734b:	0f 8c 12 01 00 00    	jl     107463 <_svfprintf_r+0x1953>
  107351:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  107356:	48 89 de             	mov    rsi,rbx
  107359:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  10735e:	e8 dd 18 00 00       	call   108c40 <__ssprint_r>
  107363:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  107368:	4d 89 fe             	mov    r14,r15
  10736b:	85 c0                	test   eax,eax
  10736d:	0f 84 f4 00 00 00    	je     107467 <_svfprintf_r+0x1957>
  107373:	e9 90 08 00 00       	jmp    107c08 <_svfprintf_r+0x20f8>
  107378:	49 83 c6 10          	add    r14,0x10
  10737c:	66 0f 2e 15 34 95 ff 	ucomisd xmm2,QWORD PTR [rip+0xffffffffffff9534]        # 1008b8 <_svfprintf_r.blanks-0x228>
  107383:	ff 
  107384:	75 02                	jne    107388 <_svfprintf_r+0x1878>
  107386:	7b 5a                	jnp    1073e2 <_svfprintf_r+0x18d2>
  107388:	49 ff c5             	inc    r13
  10738b:	4d 89 2e             	mov    QWORD PTR [r14],r13
  10738e:	48 63 84 24 90 00 00 	movsxd rax,DWORD PTR [rsp+0x90]
  107395:	00 
  107396:	48 ff c8             	dec    rax
  107399:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  10739d:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  1073a2:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  1073a6:	8d 48 01             	lea    ecx,[rax+0x1]
  1073a9:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  1073ad:	83 f8 07             	cmp    eax,0x7
  1073b0:	0f 8c 37 01 00 00    	jl     1074ed <_svfprintf_r+0x19dd>
  1073b6:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  1073bb:	48 89 de             	mov    rsi,rbx
  1073be:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  1073c3:	e8 78 18 00 00       	call   108c40 <__ssprint_r>
  1073c8:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  1073cd:	4d 89 fe             	mov    r14,r15
  1073d0:	85 c0                	test   eax,eax
  1073d2:	44 8b 6c 24 0c       	mov    r13d,DWORD PTR [rsp+0xc]
  1073d7:	0f 84 dc 05 00 00    	je     1079b9 <_svfprintf_r+0x1ea9>
  1073dd:	e9 26 08 00 00       	jmp    107c08 <_svfprintf_r+0x20f8>
  1073e2:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  1073e9:	00 
  1073ea:	83 f8 02             	cmp    eax,0x2
  1073ed:	0f 8c 63 01 00 00    	jl     107556 <_svfprintf_r+0x1a46>
  1073f3:	83 f8 12             	cmp    eax,0x12
  1073f6:	0f 82 0f 05 00 00    	jb     10790b <_svfprintf_r+0x1dfb>
  1073fc:	8d 58 0f             	lea    ebx,[rax+0xf]
  1073ff:	44 8b 6c 24 0c       	mov    r13d,DWORD PTR [rsp+0xc]
  107404:	eb 10                	jmp    107416 <_svfprintf_r+0x1906>
  107406:	49 83 c6 10          	add    r14,0x10
  10740a:	83 c3 f0             	add    ebx,0xfffffff0
  10740d:	83 fb 20             	cmp    ebx,0x20
  107410:	0f 8e 63 05 00 00    	jle    107979 <_svfprintf_r+0x1e69>
  107416:	48 8d 05 d3 96 ff ff 	lea    rax,[rip+0xffffffffffff96d3]        # 100af0 <_svfprintf_r.zeroes>
  10741d:	49 89 06             	mov    QWORD PTR [r14],rax
  107420:	49 c7 46 08 10 00 00 	mov    QWORD PTR [r14+0x8],0x10
  107427:	00 
  107428:	48 83 44 24 20 10    	add    QWORD PTR [rsp+0x20],0x10
  10742e:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  107432:	8d 48 01             	lea    ecx,[rax+0x1]
  107435:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  107439:	83 f8 07             	cmp    eax,0x7
  10743c:	7c c8                	jl     107406 <_svfprintf_r+0x18f6>
  10743e:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  107443:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
  107448:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  10744d:	e8 ee 17 00 00       	call   108c40 <__ssprint_r>
  107452:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  107457:	4d 89 fe             	mov    r14,r15
  10745a:	85 c0                	test   eax,eax
  10745c:	74 ac                	je     10740a <_svfprintf_r+0x18fa>
  10745e:	e9 f2 07 00 00       	jmp    107c55 <_svfprintf_r+0x2145>
  107463:	49 83 c6 10          	add    r14,0x10
  107467:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  10746e:	00 
  10746f:	83 f8 02             	cmp    eax,0x2
  107472:	0f 8c 65 06 00 00    	jl     107add <_svfprintf_r+0x1fcd>
  107478:	83 f8 12             	cmp    eax,0x12
  10747b:	0f 82 df 00 00 00    	jb     107560 <_svfprintf_r+0x1a50>
  107481:	8d 58 0f             	lea    ebx,[rax+0xf]
  107484:	eb 1a                	jmp    1074a0 <_svfprintf_r+0x1990>
  107486:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10748d:	00 00 00 
  107490:	49 83 c6 10          	add    r14,0x10
  107494:	83 c3 f0             	add    ebx,0xfffffff0
  107497:	83 fb 20             	cmp    ebx,0x20
  10749a:	0f 8e 26 04 00 00    	jle    1078c6 <_svfprintf_r+0x1db6>
  1074a0:	48 8d 05 49 96 ff ff 	lea    rax,[rip+0xffffffffffff9649]        # 100af0 <_svfprintf_r.zeroes>
  1074a7:	49 89 06             	mov    QWORD PTR [r14],rax
  1074aa:	49 c7 46 08 10 00 00 	mov    QWORD PTR [r14+0x8],0x10
  1074b1:	00 
  1074b2:	48 83 44 24 20 10    	add    QWORD PTR [rsp+0x20],0x10
  1074b8:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  1074bc:	8d 48 01             	lea    ecx,[rax+0x1]
  1074bf:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  1074c3:	83 f8 07             	cmp    eax,0x7
  1074c6:	7c c8                	jl     107490 <_svfprintf_r+0x1980>
  1074c8:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  1074cd:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
  1074d2:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  1074d7:	e8 64 17 00 00       	call   108c40 <__ssprint_r>
  1074dc:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  1074e1:	4d 89 fe             	mov    r14,r15
  1074e4:	85 c0                	test   eax,eax
  1074e6:	74 ac                	je     107494 <_svfprintf_r+0x1984>
  1074e8:	e9 68 07 00 00       	jmp    107c55 <_svfprintf_r+0x2145>
  1074ed:	49 83 c6 10          	add    r14,0x10
  1074f1:	44 8b 6c 24 0c       	mov    r13d,DWORD PTR [rsp+0xc]
  1074f6:	e9 be 04 00 00       	jmp    1079b9 <_svfprintf_r+0x1ea9>
  1074fb:	48 8d 0d 8c 8c ff ff 	lea    rcx,[rip+0xffffffffffff8c8c]        # 10018e <_svfprintf_r.blanks-0x952>
  107502:	49 89 0e             	mov    QWORD PTR [r14],rcx
  107505:	49 c7 46 08 01 00 00 	mov    QWORD PTR [r14+0x8],0x1
  10750c:	00 
  10750d:	48 ff 44 24 20       	inc    QWORD PTR [rsp+0x20]
  107512:	8b 4c 24 18          	mov    ecx,DWORD PTR [rsp+0x18]
  107516:	8d 51 01             	lea    edx,[rcx+0x1]
  107519:	89 54 24 18          	mov    DWORD PTR [rsp+0x18],edx
  10751d:	83 f9 07             	cmp    ecx,0x7
  107520:	0f 8c 37 01 00 00    	jl     10765d <_svfprintf_r+0x1b4d>
  107526:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  10752b:	48 89 de             	mov    rsi,rbx
  10752e:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107533:	e8 08 17 00 00       	call   108c40 <__ssprint_r>
  107538:	85 c0                	test   eax,eax
  10753a:	48 8b 6c 24 58       	mov    rbp,QWORD PTR [rsp+0x58]
  10753f:	0f 85 be 06 00 00    	jne    107c03 <_svfprintf_r+0x20f3>
  107545:	8b 44 24 44          	mov    eax,DWORD PTR [rsp+0x44]
  107549:	4d 89 fe             	mov    r14,r15
  10754c:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  107551:	e9 10 01 00 00       	jmp    107666 <_svfprintf_r+0x1b56>
  107556:	44 8b 6c 24 0c       	mov    r13d,DWORD PTR [rsp+0xc]
  10755b:	e9 59 04 00 00       	jmp    1079b9 <_svfprintf_r+0x1ea9>
  107560:	8d 58 ff             	lea    ebx,[rax-0x1]
  107563:	e9 61 03 00 00       	jmp    1078c9 <_svfprintf_r+0x1db9>
  107568:	49 83 c6 10          	add    r14,0x10
  10756c:	85 ed                	test   ebp,ebp
  10756e:	b8 00 00 00 00       	mov    eax,0x0
  107573:	0f 4e e8             	cmovle ebp,eax
  107576:	44 89 fb             	mov    ebx,r15d
  107579:	29 eb                	sub    ebx,ebp
  10757b:	0f 8e ca 00 00 00    	jle    10764b <_svfprintf_r+0x1b3b>
  107581:	83 fb 11             	cmp    ebx,0x11
  107584:	48 8d ac 24 20 01 00 	lea    rbp,[rsp+0x120]
  10758b:	00 
  10758c:	73 70                	jae    1075fe <_svfprintf_r+0x1aee>
  10758e:	89 d8                	mov    eax,ebx
  107590:	48 8d 0d 59 95 ff ff 	lea    rcx,[rip+0xffffffffffff9559]        # 100af0 <_svfprintf_r.zeroes>
  107597:	49 89 0e             	mov    QWORD PTR [r14],rcx
  10759a:	89 c0                	mov    eax,eax
  10759c:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  1075a0:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  1075a5:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  1075a9:	8d 48 01             	lea    ecx,[rax+0x1]
  1075ac:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  1075b0:	83 f8 07             	cmp    eax,0x7
  1075b3:	0f 8c 23 01 00 00    	jl     1076dc <_svfprintf_r+0x1bcc>
  1075b9:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  1075be:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  1075c3:	48 89 de             	mov    rsi,rbx
  1075c6:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  1075cb:	e8 70 16 00 00       	call   108c40 <__ssprint_r>
  1075d0:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  1075d5:	49 89 ee             	mov    r14,rbp
  1075d8:	85 c0                	test   eax,eax
  1075da:	0f 84 05 01 00 00    	je     1076e5 <_svfprintf_r+0x1bd5>
  1075e0:	e9 1e 06 00 00       	jmp    107c03 <_svfprintf_r+0x20f3>
  1075e5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  1075ec:	00 00 00 00 
  1075f0:	49 83 c6 10          	add    r14,0x10
  1075f4:	8d 43 f0             	lea    eax,[rbx-0x10]
  1075f7:	83 fb 20             	cmp    ebx,0x20
  1075fa:	89 c3                	mov    ebx,eax
  1075fc:	7e 92                	jle    107590 <_svfprintf_r+0x1a80>
  1075fe:	48 8d 05 eb 94 ff ff 	lea    rax,[rip+0xffffffffffff94eb]        # 100af0 <_svfprintf_r.zeroes>
  107605:	49 89 06             	mov    QWORD PTR [r14],rax
  107608:	49 c7 46 08 10 00 00 	mov    QWORD PTR [r14+0x8],0x10
  10760f:	00 
  107610:	48 83 44 24 20 10    	add    QWORD PTR [rsp+0x20],0x10
  107616:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  10761a:	8d 48 01             	lea    ecx,[rax+0x1]
  10761d:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  107621:	83 f8 07             	cmp    eax,0x7
  107624:	7c ca                	jl     1075f0 <_svfprintf_r+0x1ae0>
  107626:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  10762b:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
  107630:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107635:	e8 06 16 00 00       	call   108c40 <__ssprint_r>
  10763a:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  10763f:	49 89 ee             	mov    r14,rbp
  107642:	85 c0                	test   eax,eax
  107644:	74 ae                	je     1075f4 <_svfprintf_r+0x1ae4>
  107646:	e9 b3 05 00 00       	jmp    107bfe <_svfprintf_r+0x20ee>
  10764b:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  107650:	48 8d ac 24 20 01 00 	lea    rbp,[rsp+0x120]
  107657:	00 
  107658:	e9 88 00 00 00       	jmp    1076e5 <_svfprintf_r+0x1bd5>
  10765d:	49 83 c6 10          	add    r14,0x10
  107661:	48 8b 6c 24 58       	mov    rbp,QWORD PTR [rsp+0x58]
  107666:	85 c0                	test   eax,eax
  107668:	75 17                	jne    107681 <_svfprintf_r+0x1b71>
  10766a:	83 bc 24 90 00 00 00 	cmp    DWORD PTR [rsp+0x90],0x0
  107671:	00 
  107672:	75 0d                	jne    107681 <_svfprintf_r+0x1b71>
  107674:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  107678:	83 e1 01             	and    ecx,0x1
  10767b:	0f 84 ee 02 00 00    	je     10796f <_svfprintf_r+0x1e5f>
  107681:	48 8b 8c 24 b0 00 00 	mov    rcx,QWORD PTR [rsp+0xb0]
  107688:	00 
  107689:	49 89 0e             	mov    QWORD PTR [r14],rcx
  10768c:	48 8b 8c 24 a0 00 00 	mov    rcx,QWORD PTR [rsp+0xa0]
  107693:	00 
  107694:	49 89 4e 08          	mov    QWORD PTR [r14+0x8],rcx
  107698:	48 01 4c 24 20       	add    QWORD PTR [rsp+0x20],rcx
  10769d:	8b 4c 24 18          	mov    ecx,DWORD PTR [rsp+0x18]
  1076a1:	8d 51 01             	lea    edx,[rcx+0x1]
  1076a4:	89 54 24 18          	mov    DWORD PTR [rsp+0x18],edx
  1076a8:	83 f9 07             	cmp    ecx,0x7
  1076ab:	0f 8c 64 02 00 00    	jl     107915 <_svfprintf_r+0x1e05>
  1076b1:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  1076b6:	48 89 de             	mov    rsi,rbx
  1076b9:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  1076be:	e8 7d 15 00 00       	call   108c40 <__ssprint_r>
  1076c3:	85 c0                	test   eax,eax
  1076c5:	0f 85 38 05 00 00    	jne    107c03 <_svfprintf_r+0x20f3>
  1076cb:	8b 44 24 44          	mov    eax,DWORD PTR [rsp+0x44]
  1076cf:	4d 89 fe             	mov    r14,r15
  1076d2:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  1076d7:	e9 3d 02 00 00       	jmp    107919 <_svfprintf_r+0x1e09>
  1076dc:	49 83 c6 10          	add    r14,0x10
  1076e0:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  1076e5:	8b 44 24 44          	mov    eax,DWORD PTR [rsp+0x44]
  1076e9:	3b 84 24 90 00 00 00 	cmp    eax,DWORD PTR [rsp+0x90]
  1076f0:	7c 09                	jl     1076fb <_svfprintf_r+0x1beb>
  1076f2:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  1076f6:	83 e1 01             	and    ecx,0x1
  1076f9:	74 58                	je     107753 <_svfprintf_r+0x1c43>
  1076fb:	48 8b 8c 24 b0 00 00 	mov    rcx,QWORD PTR [rsp+0xb0]
  107702:	00 
  107703:	49 89 0e             	mov    QWORD PTR [r14],rcx
  107706:	48 8b 8c 24 a0 00 00 	mov    rcx,QWORD PTR [rsp+0xa0]
  10770d:	00 
  10770e:	49 89 4e 08          	mov    QWORD PTR [r14+0x8],rcx
  107712:	48 01 4c 24 20       	add    QWORD PTR [rsp+0x20],rcx
  107717:	8b 4c 24 18          	mov    ecx,DWORD PTR [rsp+0x18]
  10771b:	8d 51 01             	lea    edx,[rcx+0x1]
  10771e:	89 54 24 18          	mov    DWORD PTR [rsp+0x18],edx
  107722:	83 f9 07             	cmp    ecx,0x7
  107725:	7c 28                	jl     10774f <_svfprintf_r+0x1c3f>
  107727:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  10772c:	48 89 de             	mov    rsi,rbx
  10772f:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107734:	e8 07 15 00 00       	call   108c40 <__ssprint_r>
  107739:	85 c0                	test   eax,eax
  10773b:	0f 85 c2 04 00 00    	jne    107c03 <_svfprintf_r+0x20f3>
  107741:	8b 44 24 44          	mov    eax,DWORD PTR [rsp+0x44]
  107745:	49 89 ee             	mov    r14,rbp
  107748:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  10774d:	eb 04                	jmp    107753 <_svfprintf_r+0x1c43>
  10774f:	49 83 c6 10          	add    r14,0x10
  107753:	49 63 cf             	movsxd rcx,r15d
  107756:	4c 01 e9             	add    rcx,r13
  107759:	48 8b 94 24 90 00 00 	mov    rdx,QWORD PTR [rsp+0x90]
  107760:	00 
  107761:	41 01 d5             	add    r13d,edx
  107764:	41 29 cd             	sub    r13d,ecx
  107767:	89 d3                	mov    ebx,edx
  107769:	29 c3                	sub    ebx,eax
  10776b:	44 39 eb             	cmp    ebx,r13d
  10776e:	41 0f 4d dd          	cmovge ebx,r13d
  107772:	85 db                	test   ebx,ebx
  107774:	7e 4d                	jle    1077c3 <_svfprintf_r+0x1cb3>
  107776:	49 89 0e             	mov    QWORD PTR [r14],rcx
  107779:	89 d9                	mov    ecx,ebx
  10777b:	49 89 4e 08          	mov    QWORD PTR [r14+0x8],rcx
  10777f:	48 01 4c 24 20       	add    QWORD PTR [rsp+0x20],rcx
  107784:	8b 4c 24 18          	mov    ecx,DWORD PTR [rsp+0x18]
  107788:	8d 51 01             	lea    edx,[rcx+0x1]
  10778b:	89 54 24 18          	mov    DWORD PTR [rsp+0x18],edx
  10778f:	83 f9 07             	cmp    ecx,0x7
  107792:	44 8b 6c 24 0c       	mov    r13d,DWORD PTR [rsp+0xc]
  107797:	7c 31                	jl     1077ca <_svfprintf_r+0x1cba>
  107799:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  10779e:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
  1077a3:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  1077a8:	e8 93 14 00 00       	call   108c40 <__ssprint_r>
  1077ad:	85 c0                	test   eax,eax
  1077af:	0f 85 a0 04 00 00    	jne    107c55 <_svfprintf_r+0x2145>
  1077b5:	8b 44 24 44          	mov    eax,DWORD PTR [rsp+0x44]
  1077b9:	49 89 ee             	mov    r14,rbp
  1077bc:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  1077c1:	eb 0b                	jmp    1077ce <_svfprintf_r+0x1cbe>
  1077c3:	44 8b 6c 24 0c       	mov    r13d,DWORD PTR [rsp+0xc]
  1077c8:	eb 04                	jmp    1077ce <_svfprintf_r+0x1cbe>
  1077ca:	49 83 c6 10          	add    r14,0x10
  1077ce:	85 db                	test   ebx,ebx
  1077d0:	b9 00 00 00 00       	mov    ecx,0x0
  1077d5:	0f 4e d9             	cmovle ebx,ecx
  1077d8:	01 c3                	add    ebx,eax
  1077da:	48 8b ac 24 90 00 00 	mov    rbp,QWORD PTR [rsp+0x90]
  1077e1:	00 
  1077e2:	29 dd                	sub    ebp,ebx
  1077e4:	85 ed                	test   ebp,ebp
  1077e6:	7e 76                	jle    10785e <_svfprintf_r+0x1d4e>
  1077e8:	83 fd 11             	cmp    ebp,0x11
  1077eb:	72 7b                	jb     107868 <_svfprintf_r+0x1d58>
  1077ed:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  1077f2:	eb 1a                	jmp    10780e <_svfprintf_r+0x1cfe>
  1077f4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  1077fb:	00 00 00 00 00 
  107800:	49 83 c6 10          	add    r14,0x10
  107804:	8d 45 f0             	lea    eax,[rbp-0x10]
  107807:	83 fd 20             	cmp    ebp,0x20
  10780a:	89 c5                	mov    ebp,eax
  10780c:	7e 61                	jle    10786f <_svfprintf_r+0x1d5f>
  10780e:	48 8d 05 db 92 ff ff 	lea    rax,[rip+0xffffffffffff92db]        # 100af0 <_svfprintf_r.zeroes>
  107815:	49 89 06             	mov    QWORD PTR [r14],rax
  107818:	49 c7 46 08 10 00 00 	mov    QWORD PTR [r14+0x8],0x10
  10781f:	00 
  107820:	48 83 44 24 20 10    	add    QWORD PTR [rsp+0x20],0x10
  107826:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  10782a:	8d 48 01             	lea    ecx,[rax+0x1]
  10782d:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  107831:	83 f8 07             	cmp    eax,0x7
  107834:	7c ca                	jl     107800 <_svfprintf_r+0x1cf0>
  107836:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  10783b:	48 89 de             	mov    rsi,rbx
  10783e:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107843:	e8 f8 13 00 00       	call   108c40 <__ssprint_r>
  107848:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  10784d:	4c 8d b4 24 20 01 00 	lea    r14,[rsp+0x120]
  107854:	00 
  107855:	85 c0                	test   eax,eax
  107857:	74 ab                	je     107804 <_svfprintf_r+0x1cf4>
  107859:	e9 aa 03 00 00       	jmp    107c08 <_svfprintf_r+0x20f8>
  10785e:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  107863:	e9 e6 f8 ff ff       	jmp    10714e <_svfprintf_r+0x163e>
  107868:	89 e8                	mov    eax,ebp
  10786a:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  10786f:	48 8d 0d 7a 92 ff ff 	lea    rcx,[rip+0xffffffffffff927a]        # 100af0 <_svfprintf_r.zeroes>
  107876:	49 89 0e             	mov    QWORD PTR [r14],rcx
  107879:	89 c0                	mov    eax,eax
  10787b:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  10787f:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  107884:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  107888:	8d 48 01             	lea    ecx,[rax+0x1]
  10788b:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  10788f:	83 f8 07             	cmp    eax,0x7
  107892:	7c 29                	jl     1078bd <_svfprintf_r+0x1dad>
  107894:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  107899:	48 89 de             	mov    rsi,rbx
  10789c:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  1078a1:	e8 9a 13 00 00       	call   108c40 <__ssprint_r>
  1078a6:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  1078ab:	4c 8d bc 24 20 01 00 	lea    r15,[rsp+0x120]
  1078b2:	00 
  1078b3:	4d 89 fe             	mov    r14,r15
  1078b6:	85 c0                	test   eax,eax
  1078b8:	e9 ec f7 ff ff       	jmp    1070a9 <_svfprintf_r+0x1599>
  1078bd:	49 83 c6 10          	add    r14,0x10
  1078c1:	e9 88 f8 ff ff       	jmp    10714e <_svfprintf_r+0x163e>
  1078c6:	83 c3 f0             	add    ebx,0xfffffff0
  1078c9:	48 8d 05 20 92 ff ff 	lea    rax,[rip+0xffffffffffff9220]        # 100af0 <_svfprintf_r.zeroes>
  1078d0:	49 89 06             	mov    QWORD PTR [r14],rax
  1078d3:	89 d8                	mov    eax,ebx
  1078d5:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  1078d9:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  1078de:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  1078e2:	8d 48 01             	lea    ecx,[rax+0x1]
  1078e5:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  1078e9:	83 f8 07             	cmp    eax,0x7
  1078ec:	7c 0f                	jl     1078fd <_svfprintf_r+0x1ded>
  1078ee:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  1078f3:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  1078f8:	e9 ee 00 00 00       	jmp    1079eb <_svfprintf_r+0x1edb>
  1078fd:	49 83 c6 10          	add    r14,0x10
  107901:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  107906:	e9 d2 01 00 00       	jmp    107add <_svfprintf_r+0x1fcd>
  10790b:	8d 58 ff             	lea    ebx,[rax-0x1]
  10790e:	44 8b 6c 24 0c       	mov    r13d,DWORD PTR [rsp+0xc]
  107913:	eb 67                	jmp    10797c <_svfprintf_r+0x1e6c>
  107915:	49 83 c6 10          	add    r14,0x10
  107919:	85 c0                	test   eax,eax
  10791b:	0f 88 1a 02 00 00    	js     107b3b <_svfprintf_r+0x202b>
  107921:	4d 89 2e             	mov    QWORD PTR [r14],r13
  107924:	48 63 84 24 90 00 00 	movsxd rax,DWORD PTR [rsp+0x90]
  10792b:	00 
  10792c:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  107930:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  107935:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  107939:	8d 48 01             	lea    ecx,[rax+0x1]
  10793c:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  107940:	83 f8 07             	cmp    eax,0x7
  107943:	7c 26                	jl     10796b <_svfprintf_r+0x1e5b>
  107945:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  10794a:	48 89 de             	mov    rsi,rbx
  10794d:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107952:	e8 e9 12 00 00       	call   108c40 <__ssprint_r>
  107957:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  10795c:	4d 89 fe             	mov    r14,r15
  10795f:	85 c0                	test   eax,eax
  107961:	44 8b 6c 24 0c       	mov    r13d,DWORD PTR [rsp+0xc]
  107966:	e9 97 00 00 00       	jmp    107a02 <_svfprintf_r+0x1ef2>
  10796b:	49 83 c6 10          	add    r14,0x10
  10796f:	44 8b 6c 24 0c       	mov    r13d,DWORD PTR [rsp+0xc]
  107974:	e9 64 01 00 00       	jmp    107add <_svfprintf_r+0x1fcd>
  107979:	83 c3 f0             	add    ebx,0xfffffff0
  10797c:	48 8d 05 6d 91 ff ff 	lea    rax,[rip+0xffffffffffff916d]        # 100af0 <_svfprintf_r.zeroes>
  107983:	49 89 06             	mov    QWORD PTR [r14],rax
  107986:	89 d8                	mov    eax,ebx
  107988:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  10798c:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  107991:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  107995:	8d 48 01             	lea    ecx,[rax+0x1]
  107998:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  10799c:	83 f8 07             	cmp    eax,0x7
  10799f:	7c 0f                	jl     1079b0 <_svfprintf_r+0x1ea0>
  1079a1:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  1079a6:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  1079ab:	e9 17 f8 ff ff       	jmp    1071c7 <_svfprintf_r+0x16b7>
  1079b0:	49 83 c6 10          	add    r14,0x10
  1079b4:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  1079b9:	48 8d 44 24 67       	lea    rax,[rsp+0x67]
  1079be:	49 89 06             	mov    QWORD PTR [r14],rax
  1079c1:	48 63 84 24 c8 00 00 	movsxd rax,DWORD PTR [rsp+0xc8]
  1079c8:	00 
  1079c9:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  1079cd:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  1079d2:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  1079d6:	8d 48 01             	lea    ecx,[rax+0x1]
  1079d9:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  1079dd:	83 f8 07             	cmp    eax,0x7
  1079e0:	0f 8c f3 00 00 00    	jl     107ad9 <_svfprintf_r+0x1fc9>
  1079e6:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  1079eb:	48 89 de             	mov    rsi,rbx
  1079ee:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  1079f3:	e8 48 12 00 00       	call   108c40 <__ssprint_r>
  1079f8:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  1079fd:	4d 89 fe             	mov    r14,r15
  107a00:	85 c0                	test   eax,eax
  107a02:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  107a06:	0f 85 fc 01 00 00    	jne    107c08 <_svfprintf_r+0x20f8>
  107a0c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  107a10:	f6 c1 04             	test   cl,0x4
  107a13:	0f 84 d7 00 00 00    	je     107af0 <_svfprintf_r+0x1fe0>
  107a19:	85 ed                	test   ebp,ebp
  107a1b:	0f 8e cf 00 00 00    	jle    107af0 <_svfprintf_r+0x1fe0>
  107a21:	83 fd 11             	cmp    ebp,0x11
  107a24:	73 68                	jae    107a8e <_svfprintf_r+0x1f7e>
  107a26:	89 e8                	mov    eax,ebp
  107a28:	48 8d 0d b1 90 ff ff 	lea    rcx,[rip+0xffffffffffff90b1]        # 100ae0 <_svfprintf_r.blanks>
  107a2f:	49 89 0e             	mov    QWORD PTR [r14],rcx
  107a32:	89 c0                	mov    eax,eax
  107a34:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  107a38:	48 03 44 24 20       	add    rax,QWORD PTR [rsp+0x20]
  107a3d:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  107a42:	8b 4c 24 18          	mov    ecx,DWORD PTR [rsp+0x18]
  107a46:	8d 51 01             	lea    edx,[rcx+0x1]
  107a49:	89 54 24 18          	mov    DWORD PTR [rsp+0x18],edx
  107a4d:	83 f9 07             	cmp    ecx,0x7
  107a50:	0f 8c 9f 00 00 00    	jl     107af5 <_svfprintf_r+0x1fe5>
  107a56:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  107a5b:	48 89 de             	mov    rsi,rbx
  107a5e:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107a63:	e8 d8 11 00 00       	call   108c40 <__ssprint_r>
  107a68:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  107a6d:	85 c0                	test   eax,eax
  107a6f:	74 7f                	je     107af0 <_svfprintf_r+0x1fe0>
  107a71:	e9 92 01 00 00       	jmp    107c08 <_svfprintf_r+0x20f8>
  107a76:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  107a7d:	00 00 00 
  107a80:	49 83 c6 10          	add    r14,0x10
  107a84:	8d 45 f0             	lea    eax,[rbp-0x10]
  107a87:	83 fd 20             	cmp    ebp,0x20
  107a8a:	89 c5                	mov    ebp,eax
  107a8c:	7e 9a                	jle    107a28 <_svfprintf_r+0x1f18>
  107a8e:	48 8d 05 4b 90 ff ff 	lea    rax,[rip+0xffffffffffff904b]        # 100ae0 <_svfprintf_r.blanks>
  107a95:	49 89 06             	mov    QWORD PTR [r14],rax
  107a98:	49 c7 46 08 10 00 00 	mov    QWORD PTR [r14+0x8],0x10
  107a9f:	00 
  107aa0:	48 83 44 24 20 10    	add    QWORD PTR [rsp+0x20],0x10
  107aa6:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  107aaa:	8d 48 01             	lea    ecx,[rax+0x1]
  107aad:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  107ab1:	83 f8 07             	cmp    eax,0x7
  107ab4:	7c ca                	jl     107a80 <_svfprintf_r+0x1f70>
  107ab6:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  107abb:	48 89 de             	mov    rsi,rbx
  107abe:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107ac3:	e8 78 11 00 00       	call   108c40 <__ssprint_r>
  107ac8:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  107acd:	4d 89 fe             	mov    r14,r15
  107ad0:	85 c0                	test   eax,eax
  107ad2:	74 b0                	je     107a84 <_svfprintf_r+0x1f74>
  107ad4:	e9 2f 01 00 00       	jmp    107c08 <_svfprintf_r+0x20f8>
  107ad9:	49 83 c6 10          	add    r14,0x10
  107add:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
  107ae1:	f6 c1 04             	test   cl,0x4
  107ae4:	0f 85 2f ff ff ff    	jne    107a19 <_svfprintf_r+0x1f09>
  107aea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  107af0:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
  107af5:	48 89 dd             	mov    rbp,rbx
  107af8:	8b 9c 24 c4 00 00 00 	mov    ebx,DWORD PTR [rsp+0xc4]
  107aff:	41 39 db             	cmp    r11d,ebx
  107b02:	41 0f 4f db          	cmovg  ebx,r11d
  107b06:	44 01 eb             	add    ebx,r13d
  107b09:	48 85 c0             	test   rax,rax
  107b0c:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  107b11:	74 15                	je     107b28 <_svfprintf_r+0x2018>
  107b13:	48 89 ee             	mov    rsi,rbp
  107b16:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107b1b:	e8 20 11 00 00       	call   108c40 <__ssprint_r>
  107b20:	85 c0                	test   eax,eax
  107b22:	0f 85 34 01 00 00    	jne    107c5c <_svfprintf_r+0x214c>
  107b28:	c7 44 24 18 00 00 00 	mov    DWORD PTR [rsp+0x18],0x0
  107b2f:	00 
  107b30:	66 0f 28 54 24 70    	movapd xmm2,XMMWORD PTR [rsp+0x70]
  107b36:	e9 aa e0 ff ff       	jmp    105be5 <_svfprintf_r+0xd5>
  107b3b:	89 c3                	mov    ebx,eax
  107b3d:	f7 db                	neg    ebx
  107b3f:	83 f8 ef             	cmp    eax,0xffffffef
  107b42:	76 62                	jbe    107ba6 <_svfprintf_r+0x2096>
  107b44:	89 d8                	mov    eax,ebx
  107b46:	48 8d 0d a3 8f ff ff 	lea    rcx,[rip+0xffffffffffff8fa3]        # 100af0 <_svfprintf_r.zeroes>
  107b4d:	49 89 0e             	mov    QWORD PTR [r14],rcx
  107b50:	89 c0                	mov    eax,eax
  107b52:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  107b56:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  107b5b:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  107b5f:	8d 48 01             	lea    ecx,[rax+0x1]
  107b62:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  107b66:	83 f8 07             	cmp    eax,0x7
  107b69:	0f 8c 81 00 00 00    	jl     107bf0 <_svfprintf_r+0x20e0>
  107b6f:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  107b74:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  107b79:	48 89 de             	mov    rsi,rbx
  107b7c:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107b81:	e8 ba 10 00 00       	call   108c40 <__ssprint_r>
  107b86:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  107b8b:	4d 89 fe             	mov    r14,r15
  107b8e:	85 c0                	test   eax,eax
  107b90:	0f 84 8b fd ff ff    	je     107921 <_svfprintf_r+0x1e11>
  107b96:	eb 6b                	jmp    107c03 <_svfprintf_r+0x20f3>
  107b98:	49 83 c6 10          	add    r14,0x10
  107b9c:	8d 43 f0             	lea    eax,[rbx-0x10]
  107b9f:	83 fb 20             	cmp    ebx,0x20
  107ba2:	89 c3                	mov    ebx,eax
  107ba4:	7e a0                	jle    107b46 <_svfprintf_r+0x2036>
  107ba6:	48 8d 05 43 8f ff ff 	lea    rax,[rip+0xffffffffffff8f43]        # 100af0 <_svfprintf_r.zeroes>
  107bad:	49 89 06             	mov    QWORD PTR [r14],rax
  107bb0:	49 c7 46 08 10 00 00 	mov    QWORD PTR [r14+0x8],0x10
  107bb7:	00 
  107bb8:	48 83 44 24 20 10    	add    QWORD PTR [rsp+0x20],0x10
  107bbe:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  107bc2:	8d 48 01             	lea    ecx,[rax+0x1]
  107bc5:	89 4c 24 18          	mov    DWORD PTR [rsp+0x18],ecx
  107bc9:	83 f8 07             	cmp    eax,0x7
  107bcc:	7c ca                	jl     107b98 <_svfprintf_r+0x2088>
  107bce:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  107bd3:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
  107bd8:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107bdd:	e8 5e 10 00 00       	call   108c40 <__ssprint_r>
  107be2:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  107be7:	4d 89 fe             	mov    r14,r15
  107bea:	85 c0                	test   eax,eax
  107bec:	74 ae                	je     107b9c <_svfprintf_r+0x208c>
  107bee:	eb 0e                	jmp    107bfe <_svfprintf_r+0x20ee>
  107bf0:	49 83 c6 10          	add    r14,0x10
  107bf4:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  107bf9:	e9 23 fd ff ff       	jmp    107921 <_svfprintf_r+0x1e11>
  107bfe:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  107c03:	44 8b 6c 24 0c       	mov    r13d,DWORD PTR [rsp+0xc]
  107c08:	0f b6 4b 10          	movzx  ecx,BYTE PTR [rbx+0x10]
  107c0c:	80 e1 40             	and    cl,0x40
  107c0f:	31 c0                	xor    eax,eax
  107c11:	f6 d9                	neg    cl
  107c13:	19 c0                	sbb    eax,eax
  107c15:	44 09 e8             	or     eax,r13d
  107c18:	48 81 c4 a8 01 00 00 	add    rsp,0x1a8
  107c1f:	5b                   	pop    rbx
  107c20:	41 5c                	pop    r12
  107c22:	41 5d                	pop    r13
  107c24:	41 5e                	pop    r14
  107c26:	41 5f                	pop    r15
  107c28:	5d                   	pop    rbp
  107c29:	c3                   	ret
  107c2a:	48 83 7c 24 20 00    	cmp    QWORD PTR [rsp+0x20],0x0
  107c30:	74 d6                	je     107c08 <_svfprintf_r+0x20f8>
  107c32:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
  107c37:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  107c3c:	48 89 de             	mov    rsi,rbx
  107c3f:	e8 fc 0f 00 00       	call   108c40 <__ssprint_r>
  107c44:	eb c2                	jmp    107c08 <_svfprintf_r+0x20f8>
  107c46:	41 c7 45 00 0c 00 00 	mov    DWORD PTR [r13+0x0],0xc
  107c4d:	00 
  107c4e:	b8 ff ff ff ff       	mov    eax,0xffffffff
  107c53:	eb c3                	jmp    107c18 <_svfprintf_r+0x2108>
  107c55:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  107c5a:	eb ac                	jmp    107c08 <_svfprintf_r+0x20f8>
  107c5c:	41 89 dd             	mov    r13d,ebx
  107c5f:	48 89 eb             	mov    rbx,rbp
  107c62:	eb a4                	jmp    107c08 <_svfprintf_r+0x20f8>
  107c64:	cc                   	int3
  107c65:	cc                   	int3
  107c66:	cc                   	int3
  107c67:	cc                   	int3
  107c68:	cc                   	int3
  107c69:	cc                   	int3
  107c6a:	cc                   	int3
  107c6b:	cc                   	int3
  107c6c:	cc                   	int3
  107c6d:	cc                   	int3
  107c6e:	cc                   	int3
  107c6f:	cc                   	int3

0000000000107c70 <__localeconv_l>:
  107c70:	48 8d 87 00 01 00 00 	lea    rax,[rdi+0x100]
  107c77:	c3                   	ret
  107c78:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  107c7f:	00 

0000000000107c80 <_localeconv_r>:
  107c80:	48 8d 05 51 d9 00 00 	lea    rax,[rip+0xd951]        # 1155d8 <_impure_ptr>
  107c87:	48 8b 00             	mov    rax,QWORD PTR [rax]
  107c8a:	48 8b 40 48          	mov    rax,QWORD PTR [rax+0x48]
  107c8e:	48 85 c0             	test   rax,rax
  107c91:	75 07                	jne    107c9a <_localeconv_r+0x1a>
  107c93:	48 8d 05 8e e0 00 00 	lea    rax,[rip+0xe08e]        # 115d28 <__global_locale>
  107c9a:	48 05 00 01 00 00    	add    rax,0x100
  107ca0:	c3                   	ret
  107ca1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  107ca8:	0f 1f 84 00 00 00 00 
  107caf:	00 

0000000000107cb0 <localeconv>:
  107cb0:	48 8d 05 21 d9 00 00 	lea    rax,[rip+0xd921]        # 1155d8 <_impure_ptr>
  107cb7:	48 8b 00             	mov    rax,QWORD PTR [rax]
  107cba:	48 8b 40 48          	mov    rax,QWORD PTR [rax+0x48]
  107cbe:	48 85 c0             	test   rax,rax
  107cc1:	75 07                	jne    107cca <localeconv+0x1a>
  107cc3:	48 8d 05 5e e0 00 00 	lea    rax,[rip+0xe05e]        # 115d28 <__global_locale>
  107cca:	48 05 00 01 00 00    	add    rax,0x100
  107cd0:	c3                   	ret
  107cd1:	cc                   	int3
  107cd2:	cc                   	int3
  107cd3:	cc                   	int3
  107cd4:	cc                   	int3
  107cd5:	cc                   	int3
  107cd6:	cc                   	int3
  107cd7:	cc                   	int3
  107cd8:	cc                   	int3
  107cd9:	cc                   	int3
  107cda:	cc                   	int3
  107cdb:	cc                   	int3
  107cdc:	cc                   	int3
  107cdd:	cc                   	int3
  107cde:	cc                   	int3
  107cdf:	cc                   	int3

0000000000107ce0 <_setlocale_r>:
  107ce0:	53                   	push   rbx
  107ce1:	48 85 d2             	test   rdx,rdx
  107ce4:	74 40                	je     107d26 <_setlocale_r+0x46>
  107ce6:	48 89 d3             	mov    rbx,rdx
  107ce9:	48 8d 35 20 88 ff ff 	lea    rsi,[rip+0xffffffffffff8820]        # 100510 <_svfprintf_r.blanks-0x5d0>
  107cf0:	48 89 d7             	mov    rdi,rdx
  107cf3:	e8 f8 00 00 00       	call   107df0 <strcmp>
  107cf8:	85 c0                	test   eax,eax
  107cfa:	74 2a                	je     107d26 <_setlocale_r+0x46>
  107cfc:	48 8d 35 d7 8a ff ff 	lea    rsi,[rip+0xffffffffffff8ad7]        # 1007da <_svfprintf_r.blanks-0x306>
  107d03:	48 89 df             	mov    rdi,rbx
  107d06:	e8 e5 00 00 00       	call   107df0 <strcmp>
  107d0b:	85 c0                	test   eax,eax
  107d0d:	74 17                	je     107d26 <_setlocale_r+0x46>
  107d0f:	48 8d 35 9f 86 ff ff 	lea    rsi,[rip+0xffffffffffff869f]        # 1003b5 <_svfprintf_r.blanks-0x72b>
  107d16:	48 89 df             	mov    rdi,rbx
  107d19:	e8 d2 00 00 00       	call   107df0 <strcmp>
  107d1e:	85 c0                	test   eax,eax
  107d20:	74 04                	je     107d26 <_setlocale_r+0x46>
  107d22:	31 c0                	xor    eax,eax
  107d24:	5b                   	pop    rbx
  107d25:	c3                   	ret
  107d26:	48 8d 05 ad 8a ff ff 	lea    rax,[rip+0xffffffffffff8aad]        # 1007da <_svfprintf_r.blanks-0x306>
  107d2d:	5b                   	pop    rbx
  107d2e:	c3                   	ret
  107d2f:	90                   	nop

0000000000107d30 <__locale_mb_cur_max>:
  107d30:	48 8d 05 a1 d8 00 00 	lea    rax,[rip+0xd8a1]        # 1155d8 <_impure_ptr>
  107d37:	48 8b 00             	mov    rax,QWORD PTR [rax]
  107d3a:	48 8b 40 48          	mov    rax,QWORD PTR [rax+0x48]
  107d3e:	48 85 c0             	test   rax,rax
  107d41:	48 8d 0d e0 df 00 00 	lea    rcx,[rip+0xdfe0]        # 115d28 <__global_locale>
  107d48:	48 0f 45 c8          	cmovne rcx,rax
  107d4c:	0f be 81 60 01 00 00 	movsx  eax,BYTE PTR [rcx+0x160]
  107d53:	c3                   	ret
  107d54:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  107d5b:	00 00 00 00 00 

0000000000107d60 <__locale_ctype_ptr_l>:
  107d60:	48 8b 87 f8 00 00 00 	mov    rax,QWORD PTR [rdi+0xf8]
  107d67:	c3                   	ret
  107d68:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  107d6f:	00 

0000000000107d70 <__locale_ctype_ptr>:
  107d70:	48 8d 05 61 d8 00 00 	lea    rax,[rip+0xd861]        # 1155d8 <_impure_ptr>
  107d77:	48 8b 00             	mov    rax,QWORD PTR [rax]
  107d7a:	48 8b 40 48          	mov    rax,QWORD PTR [rax+0x48]
  107d7e:	48 85 c0             	test   rax,rax
  107d81:	48 8d 0d a0 df 00 00 	lea    rcx,[rip+0xdfa0]        # 115d28 <__global_locale>
  107d88:	48 0f 45 c8          	cmovne rcx,rax
  107d8c:	48 8b 81 f8 00 00 00 	mov    rax,QWORD PTR [rcx+0xf8]
  107d93:	c3                   	ret
  107d94:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  107d9b:	00 00 00 00 00 

0000000000107da0 <setlocale>:
  107da0:	53                   	push   rbx
  107da1:	48 85 f6             	test   rsi,rsi
  107da4:	74 40                	je     107de6 <setlocale+0x46>
  107da6:	48 89 f3             	mov    rbx,rsi
  107da9:	48 8d 35 60 87 ff ff 	lea    rsi,[rip+0xffffffffffff8760]        # 100510 <_svfprintf_r.blanks-0x5d0>
  107db0:	48 89 df             	mov    rdi,rbx
  107db3:	e8 38 00 00 00       	call   107df0 <strcmp>
  107db8:	85 c0                	test   eax,eax
  107dba:	74 2a                	je     107de6 <setlocale+0x46>
  107dbc:	48 8d 35 17 8a ff ff 	lea    rsi,[rip+0xffffffffffff8a17]        # 1007da <_svfprintf_r.blanks-0x306>
  107dc3:	48 89 df             	mov    rdi,rbx
  107dc6:	e8 25 00 00 00       	call   107df0 <strcmp>
  107dcb:	85 c0                	test   eax,eax
  107dcd:	74 17                	je     107de6 <setlocale+0x46>
  107dcf:	48 8d 35 df 85 ff ff 	lea    rsi,[rip+0xffffffffffff85df]        # 1003b5 <_svfprintf_r.blanks-0x72b>
  107dd6:	48 89 df             	mov    rdi,rbx
  107dd9:	e8 12 00 00 00       	call   107df0 <strcmp>
  107dde:	85 c0                	test   eax,eax
  107de0:	74 04                	je     107de6 <setlocale+0x46>
  107de2:	31 c0                	xor    eax,eax
  107de4:	5b                   	pop    rbx
  107de5:	c3                   	ret
  107de6:	48 8d 05 ed 89 ff ff 	lea    rax,[rip+0xffffffffffff89ed]        # 1007da <_svfprintf_r.blanks-0x306>
  107ded:	5b                   	pop    rbx
  107dee:	c3                   	ret
  107def:	cc                   	int3

0000000000107df0 <strcmp>:
  107df0:	89 f0                	mov    eax,esi
  107df2:	09 f8                	or     eax,edi
  107df4:	a8 07                	test   al,0x7
  107df6:	74 05                	je     107dfd <strcmp+0xd>
  107df8:	0f b6 07             	movzx  eax,BYTE PTR [rdi]
  107dfb:	eb 4a                	jmp    107e47 <strcmp+0x57>
  107dfd:	48 8b 07             	mov    rax,QWORD PTR [rdi]
  107e00:	48 3b 06             	cmp    rax,QWORD PTR [rsi]
  107e03:	75 42                	jne    107e47 <strcmp+0x57>
  107e05:	49 b8 80 80 80 80 80 	movabs r8,0x8080808080808080
  107e0c:	80 80 80 
  107e0f:	48 ba ff fe fe fe fe 	movabs rdx,0xfefefefefefefeff
  107e16:	fe fe fe 
  107e19:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  107e20:	48 8d 0c 10          	lea    rcx,[rax+rdx*1]
  107e24:	48 f7 d0             	not    rax
  107e27:	4c 21 c0             	and    rax,r8
  107e2a:	48 85 c8             	test   rax,rcx
  107e2d:	75 3d                	jne    107e6c <strcmp+0x7c>
  107e2f:	48 8d 4e 08          	lea    rcx,[rsi+0x8]
  107e33:	48 8b 47 08          	mov    rax,QWORD PTR [rdi+0x8]
  107e37:	48 83 c7 08          	add    rdi,0x8
  107e3b:	48 3b 46 08          	cmp    rax,QWORD PTR [rsi+0x8]
  107e3f:	48 89 ce             	mov    rsi,rcx
  107e42:	74 dc                	je     107e20 <strcmp+0x30>
  107e44:	48 89 ce             	mov    rsi,rcx
  107e47:	84 c0                	test   al,al
  107e49:	74 16                	je     107e61 <strcmp+0x71>
  107e4b:	48 ff c7             	inc    rdi
  107e4e:	66 90                	xchg   ax,ax
  107e50:	3a 06                	cmp    al,BYTE PTR [rsi]
  107e52:	75 0f                	jne    107e63 <strcmp+0x73>
  107e54:	48 ff c6             	inc    rsi
  107e57:	0f b6 07             	movzx  eax,BYTE PTR [rdi]
  107e5a:	48 ff c7             	inc    rdi
  107e5d:	84 c0                	test   al,al
  107e5f:	75 ef                	jne    107e50 <strcmp+0x60>
  107e61:	31 c0                	xor    eax,eax
  107e63:	0f b6 c0             	movzx  eax,al
  107e66:	0f b6 0e             	movzx  ecx,BYTE PTR [rsi]
  107e69:	29 c8                	sub    eax,ecx
  107e6b:	c3                   	ret
  107e6c:	31 c0                	xor    eax,eax
  107e6e:	c3                   	ret
  107e6f:	cc                   	int3

0000000000107e70 <_wctomb_r>:
  107e70:	48 8d 05 61 d7 00 00 	lea    rax,[rip+0xd761]        # 1155d8 <_impure_ptr>
  107e77:	48 8b 00             	mov    rax,QWORD PTR [rax]
  107e7a:	48 8b 40 48          	mov    rax,QWORD PTR [rax+0x48]
  107e7e:	48 85 c0             	test   rax,rax
  107e81:	75 07                	jne    107e8a <_wctomb_r+0x1a>
  107e83:	48 8d 05 9e de 00 00 	lea    rax,[rip+0xde9e]        # 115d28 <__global_locale>
  107e8a:	48 8b 80 e0 00 00 00 	mov    rax,QWORD PTR [rax+0xe0]
  107e91:	ff e0                	jmp    rax
  107e93:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  107e9a:	84 00 00 00 00 00 

0000000000107ea0 <__ascii_wctomb>:
  107ea0:	48 85 f6             	test   rsi,rsi
  107ea3:	74 14                	je     107eb9 <__ascii_wctomb+0x19>
  107ea5:	81 fa 00 01 00 00    	cmp    edx,0x100
  107eab:	72 0f                	jb     107ebc <__ascii_wctomb+0x1c>
  107ead:	c7 07 8a 00 00 00    	mov    DWORD PTR [rdi],0x8a
  107eb3:	b8 ff ff ff ff       	mov    eax,0xffffffff
  107eb8:	c3                   	ret
  107eb9:	31 c0                	xor    eax,eax
  107ebb:	c3                   	ret
  107ebc:	88 16                	mov    BYTE PTR [rsi],dl
  107ebe:	b8 01 00 00 00       	mov    eax,0x1
  107ec3:	c3                   	ret
  107ec4:	cc                   	int3
  107ec5:	cc                   	int3
  107ec6:	cc                   	int3
  107ec7:	cc                   	int3
  107ec8:	cc                   	int3
  107ec9:	cc                   	int3
  107eca:	cc                   	int3
  107ecb:	cc                   	int3
  107ecc:	cc                   	int3
  107ecd:	cc                   	int3
  107ece:	cc                   	int3
  107ecf:	cc                   	int3

0000000000107ed0 <_mbtowc_r>:
  107ed0:	48 8d 05 01 d7 00 00 	lea    rax,[rip+0xd701]        # 1155d8 <_impure_ptr>
  107ed7:	48 8b 00             	mov    rax,QWORD PTR [rax]
  107eda:	48 8b 40 48          	mov    rax,QWORD PTR [rax+0x48]
  107ede:	48 85 c0             	test   rax,rax
  107ee1:	75 07                	jne    107eea <_mbtowc_r+0x1a>
  107ee3:	48 8d 05 3e de 00 00 	lea    rax,[rip+0xde3e]        # 115d28 <__global_locale>
  107eea:	48 8b 80 e8 00 00 00 	mov    rax,QWORD PTR [rax+0xe8]
  107ef1:	ff e0                	jmp    rax
  107ef3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  107efa:	84 00 00 00 00 00 

0000000000107f00 <__ascii_mbtowc>:
  107f00:	48 85 f6             	test   rsi,rsi
  107f03:	48 8d 44 24 fc       	lea    rax,[rsp-0x4]
  107f08:	48 0f 45 c6          	cmovne rax,rsi
  107f0c:	48 85 d2             	test   rdx,rdx
  107f0f:	74 13                	je     107f24 <__ascii_mbtowc+0x24>
  107f11:	48 85 c9             	test   rcx,rcx
  107f14:	74 11                	je     107f27 <__ascii_mbtowc+0x27>
  107f16:	0f b6 0a             	movzx  ecx,BYTE PTR [rdx]
  107f19:	89 08                	mov    DWORD PTR [rax],ecx
  107f1b:	31 c0                	xor    eax,eax
  107f1d:	80 3a 00             	cmp    BYTE PTR [rdx],0x0
  107f20:	0f 95 c0             	setne  al
  107f23:	c3                   	ret
  107f24:	31 c0                	xor    eax,eax
  107f26:	c3                   	ret
  107f27:	b8 fe ff ff ff       	mov    eax,0xfffffffe
  107f2c:	c3                   	ret
  107f2d:	cc                   	int3
  107f2e:	cc                   	int3
  107f2f:	cc                   	int3

0000000000107f30 <_malloc_r>:
  107f30:	55                   	push   rbp
  107f31:	41 57                	push   r15
  107f33:	41 56                	push   r14
  107f35:	41 55                	push   r13
  107f37:	41 54                	push   r12
  107f39:	53                   	push   rbx
  107f3a:	48 83 ec 18          	sub    rsp,0x18
  107f3e:	49 89 fe             	mov    r14,rdi
  107f41:	48 8d 46 17          	lea    rax,[rsi+0x17]
  107f45:	48 89 c1             	mov    rcx,rax
  107f48:	48 83 e1 f0          	and    rcx,0xfffffffffffffff0
  107f4c:	48 83 f8 2f          	cmp    rax,0x2f
  107f50:	41 bd 20 00 00 00    	mov    r13d,0x20
  107f56:	4c 0f 43 e9          	cmovae r13,rcx
  107f5a:	49 81 fd ff ff ff 7f 	cmp    r13,0x7fffffff
  107f61:	77 64                	ja     107fc7 <_malloc_r+0x97>
  107f63:	49 39 f5             	cmp    r13,rsi
  107f66:	72 5f                	jb     107fc7 <_malloc_r+0x97>
  107f68:	4c 89 f7             	mov    rdi,r14
  107f6b:	e8 d0 07 00 00       	call   108740 <__malloc_lock>
  107f70:	49 81 fd f7 01 00 00 	cmp    r13,0x1f7
  107f77:	77 5d                	ja     107fd6 <_malloc_r+0xa6>
  107f79:	48 b9 f0 ff ff ff 03 	movabs rcx,0x3fffffff0
  107f80:	00 00 00 
  107f83:	4c 21 e9             	and    rcx,r13
  107f86:	48 8d 15 43 df 00 00 	lea    rdx,[rip+0xdf43]        # 115ed0 <__malloc_av_>
  107f8d:	48 8d 04 4a          	lea    rax,[rdx+rcx*2]
  107f91:	4c 8b 7c 4a 18       	mov    r15,QWORD PTR [rdx+rcx*2+0x18]
  107f96:	49 39 c7             	cmp    r15,rax
  107f99:	74 63                	je     107ffe <_malloc_r+0xce>
  107f9b:	49 39 c7             	cmp    r15,rax
  107f9e:	74 6f                	je     10800f <_malloc_r+0xdf>
  107fa0:	49 8b 47 08          	mov    rax,QWORD PTR [r15+0x8]
  107fa4:	49 8b 4f 10          	mov    rcx,QWORD PTR [r15+0x10]
  107fa8:	48 83 e0 fc          	and    rax,0xfffffffffffffffc
  107fac:	49 8b 57 18          	mov    rdx,QWORD PTR [r15+0x18]
  107fb0:	48 89 51 18          	mov    QWORD PTR [rcx+0x18],rdx
  107fb4:	48 89 4a 10          	mov    QWORD PTR [rdx+0x10],rcx
  107fb8:	41 80 4c 07 08 01    	or     BYTE PTR [r15+rax*1+0x8],0x1
  107fbe:	49 83 c7 10          	add    r15,0x10
  107fc2:	e9 7e 05 00 00       	jmp    108545 <_malloc_r+0x615>
  107fc7:	41 c7 06 0c 00 00 00 	mov    DWORD PTR [r14],0xc
  107fce:	45 31 ff             	xor    r15d,r15d
  107fd1:	e9 3e 07 00 00       	jmp    108714 <_malloc_r+0x7e4>
  107fd6:	ba 3f 00 00 00       	mov    edx,0x3f
  107fdb:	49 81 fd 00 02 00 00 	cmp    r13,0x200
  107fe2:	0f 82 93 00 00 00    	jb     10807b <_malloc_r+0x14b>
  107fe8:	49 81 fd ff 09 00 00 	cmp    r13,0x9ff
  107fef:	77 2d                	ja     10801e <_malloc_r+0xee>
  107ff1:	4c 89 ea             	mov    rdx,r13
  107ff4:	48 c1 ea 06          	shr    rdx,0x6
  107ff8:	48 83 c2 38          	add    rdx,0x38
  107ffc:	eb 7d                	jmp    10807b <_malloc_r+0x14b>
  107ffe:	48 8d 04 4a          	lea    rax,[rdx+rcx*2]
  108002:	48 83 c0 10          	add    rax,0x10
  108006:	4c 8b 78 18          	mov    r15,QWORD PTR [rax+0x18]
  10800a:	49 39 c7             	cmp    r15,rax
  10800d:	75 91                	jne    107fa0 <_malloc_r+0x70>
  10800f:	4c 89 ea             	mov    rdx,r13
  108012:	48 c1 ea 03          	shr    rdx,0x3
  108016:	83 c2 02             	add    edx,0x2
  108019:	e9 b1 00 00 00       	jmp    1080cf <_malloc_r+0x19f>
  10801e:	49 81 fd ff 29 00 00 	cmp    r13,0x29ff
  108025:	77 0d                	ja     108034 <_malloc_r+0x104>
  108027:	4c 89 ea             	mov    rdx,r13
  10802a:	48 c1 ea 09          	shr    rdx,0x9
  10802e:	48 83 c2 5b          	add    rdx,0x5b
  108032:	eb 47                	jmp    10807b <_malloc_r+0x14b>
  108034:	49 81 fd ff a9 00 00 	cmp    r13,0xa9ff
  10803b:	77 0d                	ja     10804a <_malloc_r+0x11a>
  10803d:	4c 89 ea             	mov    rdx,r13
  108040:	48 c1 ea 0c          	shr    rdx,0xc
  108044:	48 83 c2 6e          	add    rdx,0x6e
  108048:	eb 31                	jmp    10807b <_malloc_r+0x14b>
  10804a:	49 81 fd ff a9 02 00 	cmp    r13,0x2a9ff
  108051:	77 0d                	ja     108060 <_malloc_r+0x130>
  108053:	4c 89 ea             	mov    rdx,r13
  108056:	48 c1 ea 0f          	shr    rdx,0xf
  10805a:	48 83 c2 77          	add    rdx,0x77
  10805e:	eb 1b                	jmp    10807b <_malloc_r+0x14b>
  108060:	4c 89 e8             	mov    rax,r13
  108063:	48 c1 e8 12          	shr    rax,0x12
  108067:	48 83 c0 7c          	add    rax,0x7c
  10806b:	49 81 fd 00 aa 0a 00 	cmp    r13,0xaaa00
  108072:	ba 7e 00 00 00       	mov    edx,0x7e
  108077:	48 0f 42 d0          	cmovb  rdx,rax
  10807b:	8d 04 12             	lea    eax,[rdx+rdx*1]
  10807e:	83 c0 02             	add    eax,0x2
  108081:	48 8d 35 48 de 00 00 	lea    rsi,[rip+0xde48]        # 115ed0 <__malloc_av_>
  108088:	48 8d 0c c6          	lea    rcx,[rsi+rax*8]
  10808c:	48 83 c1 f0          	add    rcx,0xfffffffffffffff0
  108090:	48 8b 44 c6 08       	mov    rax,QWORD PTR [rsi+rax*8+0x8]
  108095:	48 39 c8             	cmp    rax,rcx
  108098:	74 33                	je     1080cd <_malloc_r+0x19d>
  10809a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  1080a0:	48 8b 68 08          	mov    rbp,QWORD PTR [rax+0x8]
  1080a4:	48 83 e5 fc          	and    rbp,0xfffffffffffffffc
  1080a8:	48 89 ee             	mov    rsi,rbp
  1080ab:	4c 29 ee             	sub    rsi,r13
  1080ae:	48 83 fe 20          	cmp    rsi,0x20
  1080b2:	7d 17                	jge    1080cb <_malloc_r+0x19b>
  1080b4:	48 8b 78 18          	mov    rdi,QWORD PTR [rax+0x18]
  1080b8:	48 85 f6             	test   rsi,rsi
  1080bb:	0f 89 96 00 00 00    	jns    108157 <_malloc_r+0x227>
  1080c1:	48 89 f8             	mov    rax,rdi
  1080c4:	48 39 cf             	cmp    rdi,rcx
  1080c7:	75 d7                	jne    1080a0 <_malloc_r+0x170>
  1080c9:	eb 02                	jmp    1080cd <_malloc_r+0x19d>
  1080cb:	ff ca                	dec    edx
  1080cd:	ff c2                	inc    edx
  1080cf:	4c 8b 3d 1a de 00 00 	mov    r15,QWORD PTR [rip+0xde1a]        # 115ef0 <__malloc_av_+0x20>
  1080d6:	4c 8d 0d 03 de 00 00 	lea    r9,[rip+0xde03]        # 115ee0 <__malloc_av_+0x10>
  1080dd:	4d 39 cf             	cmp    r15,r9
  1080e0:	0f 84 b2 01 00 00    	je     108298 <_malloc_r+0x368>
  1080e6:	49 8b 77 08          	mov    rsi,QWORD PTR [r15+0x8]
  1080ea:	48 89 f1             	mov    rcx,rsi
  1080ed:	48 83 e1 fc          	and    rcx,0xfffffffffffffffc
  1080f1:	48 89 c8             	mov    rax,rcx
  1080f4:	4c 29 e8             	sub    rax,r13
  1080f7:	48 83 f8 20          	cmp    rax,0x20
  1080fb:	7c 3c                	jl     108139 <_malloc_r+0x209>
  1080fd:	4b 8d 14 2f          	lea    rdx,[r15+r13*1]
  108101:	4c 89 ee             	mov    rsi,r13
  108104:	48 83 ce 01          	or     rsi,0x1
  108108:	49 89 77 08          	mov    QWORD PTR [r15+0x8],rsi
  10810c:	48 89 15 e5 dd 00 00 	mov    QWORD PTR [rip+0xdde5],rdx        # 115ef8 <__malloc_av_+0x28>
  108113:	48 89 15 d6 dd 00 00 	mov    QWORD PTR [rip+0xddd6],rdx        # 115ef0 <__malloc_av_+0x20>
  10811a:	4f 89 4c 2f 18       	mov    QWORD PTR [r15+r13*1+0x18],r9
  10811f:	4f 89 4c 2f 10       	mov    QWORD PTR [r15+r13*1+0x10],r9
  108124:	48 89 c2             	mov    rdx,rax
  108127:	48 83 ca 01          	or     rdx,0x1
  10812b:	4b 89 54 2f 08       	mov    QWORD PTR [r15+r13*1+0x8],rdx
  108130:	49 89 04 0f          	mov    QWORD PTR [r15+rcx*1],rax
  108134:	e9 cf 05 00 00       	jmp    108708 <_malloc_r+0x7d8>
  108139:	4c 89 0d b8 dd 00 00 	mov    QWORD PTR [rip+0xddb8],r9        # 115ef8 <__malloc_av_+0x28>
  108140:	4c 89 0d a9 dd 00 00 	mov    QWORD PTR [rip+0xdda9],r9        # 115ef0 <__malloc_av_+0x20>
  108147:	48 85 c0             	test   rax,rax
  10814a:	78 25                	js     108171 <_malloc_r+0x241>
  10814c:	41 80 4c 0f 08 01    	or     BYTE PTR [r15+rcx*1+0x8],0x1
  108152:	e9 b1 05 00 00       	jmp    108708 <_malloc_r+0x7d8>
  108157:	4c 8d 78 10          	lea    r15,[rax+0x10]
  10815b:	48 8b 48 10          	mov    rcx,QWORD PTR [rax+0x10]
  10815f:	48 89 79 18          	mov    QWORD PTR [rcx+0x18],rdi
  108163:	48 89 4f 10          	mov    QWORD PTR [rdi+0x10],rcx
  108167:	80 4c 28 08 01       	or     BYTE PTR [rax+rbp*1+0x8],0x1
  10816c:	e9 d4 03 00 00       	jmp    108545 <_malloc_r+0x615>
  108171:	48 81 f9 ff 01 00 00 	cmp    rcx,0x1ff
  108178:	77 45                	ja     1081bf <_malloc_r+0x28f>
  10817a:	48 c1 ee 03          	shr    rsi,0x3
  10817e:	8d 4e 03             	lea    ecx,[rsi+0x3]
  108181:	85 f6                	test   esi,esi
  108183:	0f 49 ce             	cmovns ecx,esi
  108186:	c1 e9 02             	shr    ecx,0x2
  108189:	b8 01 00 00 00       	mov    eax,0x1
  10818e:	48 d3 e0             	shl    rax,cl
  108191:	48 09 05 40 dd 00 00 	or     QWORD PTR [rip+0xdd40],rax        # 115ed8 <__malloc_av_+0x8>
  108198:	48 8d 05 31 dd 00 00 	lea    rax,[rip+0xdd31]        # 115ed0 <__malloc_av_>
  10819f:	8d 0c 36             	lea    ecx,[rsi+rsi*1]
  1081a2:	83 c1 02             	add    ecx,0x2
  1081a5:	48 8d 74 c8 f0       	lea    rsi,[rax+rcx*8-0x10]
  1081aa:	48 8b 3c c8          	mov    rdi,QWORD PTR [rax+rcx*8]
  1081ae:	49 89 77 18          	mov    QWORD PTR [r15+0x18],rsi
  1081b2:	49 89 7f 10          	mov    QWORD PTR [r15+0x10],rdi
  1081b6:	4c 89 3c c8          	mov    QWORD PTR [rax+rcx*8],r15
  1081ba:	e9 d5 00 00 00       	jmp    108294 <_malloc_r+0x364>
  1081bf:	48 81 fe ff 09 00 00 	cmp    rsi,0x9ff
  1081c6:	77 0a                	ja     1081d2 <_malloc_r+0x2a2>
  1081c8:	48 c1 ee 06          	shr    rsi,0x6
  1081cc:	48 83 c6 38          	add    rsi,0x38
  1081d0:	eb 54                	jmp    108226 <_malloc_r+0x2f6>
  1081d2:	48 81 fe ff 29 00 00 	cmp    rsi,0x29ff
  1081d9:	77 0a                	ja     1081e5 <_malloc_r+0x2b5>
  1081db:	48 c1 ee 09          	shr    rsi,0x9
  1081df:	48 83 c6 5b          	add    rsi,0x5b
  1081e3:	eb 41                	jmp    108226 <_malloc_r+0x2f6>
  1081e5:	48 81 fe ff a9 00 00 	cmp    rsi,0xa9ff
  1081ec:	77 0a                	ja     1081f8 <_malloc_r+0x2c8>
  1081ee:	48 c1 ee 0c          	shr    rsi,0xc
  1081f2:	48 83 c6 6e          	add    rsi,0x6e
  1081f6:	eb 2e                	jmp    108226 <_malloc_r+0x2f6>
  1081f8:	48 81 fe ff a9 02 00 	cmp    rsi,0x2a9ff
  1081ff:	77 0a                	ja     10820b <_malloc_r+0x2db>
  108201:	48 c1 ee 0f          	shr    rsi,0xf
  108205:	48 83 c6 77          	add    rsi,0x77
  108209:	eb 1b                	jmp    108226 <_malloc_r+0x2f6>
  10820b:	48 89 f0             	mov    rax,rsi
  10820e:	48 c1 e8 12          	shr    rax,0x12
  108212:	48 83 c0 7c          	add    rax,0x7c
  108216:	48 81 fe 00 aa 0a 00 	cmp    rsi,0xaaa00
  10821d:	be 7e 00 00 00       	mov    esi,0x7e
  108222:	48 0f 42 f0          	cmovb  rsi,rax
  108226:	8d 04 36             	lea    eax,[rsi+rsi*1]
  108229:	48 98                	cdqe
  10822b:	48 8d 2d 9e dc 00 00 	lea    rbp,[rip+0xdc9e]        # 115ed0 <__malloc_av_>
  108232:	48 8d 3c c5 00 00 00 	lea    rdi,[rax*8+0x0]
  108239:	00 
  10823a:	48 01 ef             	add    rdi,rbp
  10823d:	48 8b 44 c5 10       	mov    rax,QWORD PTR [rbp+rax*8+0x10]
  108242:	48 39 f8             	cmp    rax,rdi
  108245:	74 1b                	je     108262 <_malloc_r+0x332>
  108247:	48 8b 70 08          	mov    rsi,QWORD PTR [rax+0x8]
  10824b:	48 83 e6 fc          	and    rsi,0xfffffffffffffffc
  10824f:	48 39 f1             	cmp    rcx,rsi
  108252:	73 2d                	jae    108281 <_malloc_r+0x351>
  108254:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
  108258:	48 39 f8             	cmp    rax,rdi
  10825b:	75 ea                	jne    108247 <_malloc_r+0x317>
  10825d:	48 89 f8             	mov    rax,rdi
  108260:	eb 22                	jmp    108284 <_malloc_r+0x354>
  108262:	8d 4e 03             	lea    ecx,[rsi+0x3]
  108265:	85 f6                	test   esi,esi
  108267:	0f 49 ce             	cmovns ecx,esi
  10826a:	c1 e9 02             	shr    ecx,0x2
  10826d:	b8 01 00 00 00       	mov    eax,0x1
  108272:	48 d3 e0             	shl    rax,cl
  108275:	48 09 05 5c dc 00 00 	or     QWORD PTR [rip+0xdc5c],rax        # 115ed8 <__malloc_av_+0x8>
  10827c:	48 89 f8             	mov    rax,rdi
  10827f:	eb 07                	jmp    108288 <_malloc_r+0x358>
  108281:	48 89 c7             	mov    rdi,rax
  108284:	48 8b 40 18          	mov    rax,QWORD PTR [rax+0x18]
  108288:	49 89 47 18          	mov    QWORD PTR [r15+0x18],rax
  10828c:	49 89 7f 10          	mov    QWORD PTR [r15+0x10],rdi
  108290:	4c 89 78 10          	mov    QWORD PTR [rax+0x10],r15
  108294:	4c 89 7f 18          	mov    QWORD PTR [rdi+0x18],r15
  108298:	8d 4a 03             	lea    ecx,[rdx+0x3]
  10829b:	85 d2                	test   edx,edx
  10829d:	0f 49 ca             	cmovns ecx,edx
  1082a0:	c1 f9 02             	sar    ecx,0x2
  1082a3:	bf 01 00 00 00       	mov    edi,0x1
  1082a8:	48 d3 e7             	shl    rdi,cl
  1082ab:	48 8b 35 26 dc 00 00 	mov    rsi,QWORD PTR [rip+0xdc26]        # 115ed8 <__malloc_av_+0x8>
  1082b2:	48 39 f7             	cmp    rdi,rsi
  1082b5:	0f 86 bc 00 00 00    	jbe    108377 <_malloc_r+0x447>
  1082bb:	4c 8b 3d 1e dc 00 00 	mov    r15,QWORD PTR [rip+0xdc1e]        # 115ee0 <__malloc_av_+0x10>
  1082c2:	49 8b 6f 08          	mov    rbp,QWORD PTR [r15+0x8]
  1082c6:	48 83 e5 fc          	and    rbp,0xfffffffffffffffc
  1082ca:	48 89 e8             	mov    rax,rbp
  1082cd:	4c 29 e8             	sub    rax,r13
  1082d0:	72 0a                	jb     1082dc <_malloc_r+0x3ac>
  1082d2:	48 83 f8 1f          	cmp    rax,0x1f
  1082d6:	0f 8f 0d 04 00 00    	jg     1086e9 <_malloc_r+0x7b9>
  1082dc:	48 8b 05 7d 47 51 00 	mov    rax,QWORD PTR [rip+0x51477d]        # 61ca60 <__malloc_top_pad>
  1082e3:	4a 8d 0c 28          	lea    rcx,[rax+r13*1]
  1082e7:	48 83 c1 20          	add    rcx,0x20
  1082eb:	4e 8d 24 28          	lea    r12,[rax+r13*1]
  1082ef:	49 81 c4 1f 10 00 00 	add    r12,0x101f
  1082f6:	49 81 e4 00 f0 ff ff 	and    r12,0xfffffffffffff000
  1082fd:	48 83 3d e3 e3 00 00 	cmp    QWORD PTR [rip+0xe3e3],0xffffffffffffffff        # 1166e8 <__malloc_sbrk_base>
  108304:	ff 
  108305:	4c 0f 44 e1          	cmove  r12,rcx
  108309:	4c 89 f7             	mov    rdi,r14
  10830c:	4c 89 e6             	mov    rsi,r12
  10830f:	e8 4c 04 00 00       	call   108760 <_sbrk_r>
  108314:	48 83 f8 ff          	cmp    rax,0xffffffffffffffff
  108318:	0f 84 b1 03 00 00    	je     1086cf <_malloc_r+0x79f>
  10831e:	48 89 c3             	mov    rbx,rax
  108321:	49 8d 04 2f          	lea    rax,[r15+rbp*1]
  108325:	48 8d 0d a4 db 00 00 	lea    rcx,[rip+0xdba4]        # 115ed0 <__malloc_av_>
  10832c:	49 39 cf             	cmp    r15,rcx
  10832f:	74 09                	je     10833a <_malloc_r+0x40a>
  108331:	48 39 c3             	cmp    rbx,rax
  108334:	0f 82 95 03 00 00    	jb     1086cf <_malloc_r+0x79f>
  10833a:	8b 0d 38 47 51 00    	mov    ecx,DWORD PTR [rip+0x514738]        # 61ca78 <__malloc_current_mallinfo>
  108340:	44 01 e1             	add    ecx,r12d
  108343:	89 0d 2f 47 51 00    	mov    DWORD PTR [rip+0x51472f],ecx        # 61ca78 <__malloc_current_mallinfo>
  108349:	48 39 c3             	cmp    rbx,rax
  10834c:	0f 85 5e 02 00 00    	jne    1085b0 <_malloc_r+0x680>
  108352:	89 c2                	mov    edx,eax
  108354:	81 e2 ff 0f 00 00    	and    edx,0xfff
  10835a:	0f 85 50 02 00 00    	jne    1085b0 <_malloc_r+0x680>
  108360:	49 01 ec             	add    r12,rbp
  108363:	49 83 cc 01          	or     r12,0x1
  108367:	48 8b 05 72 db 00 00 	mov    rax,QWORD PTR [rip+0xdb72]        # 115ee0 <__malloc_av_+0x10>
  10836e:	4c 89 60 08          	mov    QWORD PTR [rax+0x8],r12
  108372:	e9 35 03 00 00       	jmp    1086ac <_malloc_r+0x77c>
  108377:	48 85 fe             	test   rsi,rdi
  10837a:	0f 84 fb 01 00 00    	je     10857b <_malloc_r+0x64b>
  108380:	4c 8d 05 49 db 00 00 	lea    r8,[rip+0xdb49]        # 115ed0 <__malloc_av_>
  108387:	8d 04 12             	lea    eax,[rdx+rdx*1]
  10838a:	48 98                	cdqe
  10838c:	4d 8d 14 c0          	lea    r10,[r8+rax*8]
  108390:	49 83 c2 10          	add    r10,0x10
  108394:	49 8d 2c c0          	lea    rbp,[r8+rax*8]
  108398:	48 89 eb             	mov    rbx,rbp
  10839b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  1083a0:	48 8b 5b 18          	mov    rbx,QWORD PTR [rbx+0x18]
  1083a4:	48 39 eb             	cmp    rbx,rbp
  1083a7:	74 22                	je     1083cb <_malloc_r+0x49b>
  1083a9:	48 8b 43 08          	mov    rax,QWORD PTR [rbx+0x8]
  1083ad:	48 83 e0 fc          	and    rax,0xfffffffffffffffc
  1083b1:	48 89 c1             	mov    rcx,rax
  1083b4:	4c 29 e9             	sub    rcx,r13
  1083b7:	48 83 f9 20          	cmp    rcx,0x20
  1083bb:	0f 8d 39 01 00 00    	jge    1084fa <_malloc_r+0x5ca>
  1083c1:	48 85 c9             	test   rcx,rcx
  1083c4:	78 da                	js     1083a0 <_malloc_r+0x470>
  1083c6:	e9 87 01 00 00       	jmp    108552 <_malloc_r+0x622>
  1083cb:	8d 5a 01             	lea    ebx,[rdx+0x1]
  1083ce:	f6 c3 03             	test   bl,0x3
  1083d1:	0f 84 ab 00 00 00    	je     108482 <_malloc_r+0x552>
  1083d7:	4c 89 d3             	mov    rbx,r10
  1083da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  1083e0:	48 8b 5b 18          	mov    rbx,QWORD PTR [rbx+0x18]
  1083e4:	4c 39 d3             	cmp    rbx,r10
  1083e7:	74 22                	je     10840b <_malloc_r+0x4db>
  1083e9:	48 8b 43 08          	mov    rax,QWORD PTR [rbx+0x8]
  1083ed:	48 83 e0 fc          	and    rax,0xfffffffffffffffc
  1083f1:	48 89 c1             	mov    rcx,rax
  1083f4:	4c 29 e9             	sub    rcx,r13
  1083f7:	48 83 f9 1f          	cmp    rcx,0x1f
  1083fb:	0f 8f f9 00 00 00    	jg     1084fa <_malloc_r+0x5ca>
  108401:	48 85 c9             	test   rcx,rcx
  108404:	78 da                	js     1083e0 <_malloc_r+0x4b0>
  108406:	e9 47 01 00 00       	jmp    108552 <_malloc_r+0x622>
  10840b:	8d 5a 02             	lea    ebx,[rdx+0x2]
  10840e:	f6 c3 03             	test   bl,0x3
  108411:	74 6f                	je     108482 <_malloc_r+0x552>
  108413:	49 8d 6a 10          	lea    rbp,[r10+0x10]
  108417:	48 89 eb             	mov    rbx,rbp
  10841a:	48 8b 5b 18          	mov    rbx,QWORD PTR [rbx+0x18]
  10841e:	48 39 eb             	cmp    rbx,rbp
  108421:	74 22                	je     108445 <_malloc_r+0x515>
  108423:	48 8b 43 08          	mov    rax,QWORD PTR [rbx+0x8]
  108427:	48 83 e0 fc          	and    rax,0xfffffffffffffffc
  10842b:	48 89 c1             	mov    rcx,rax
  10842e:	4c 29 e9             	sub    rcx,r13
  108431:	48 83 f9 1f          	cmp    rcx,0x1f
  108435:	0f 8f bf 00 00 00    	jg     1084fa <_malloc_r+0x5ca>
  10843b:	48 85 c9             	test   rcx,rcx
  10843e:	78 da                	js     10841a <_malloc_r+0x4ea>
  108440:	e9 0d 01 00 00       	jmp    108552 <_malloc_r+0x622>
  108445:	8d 5a 03             	lea    ebx,[rdx+0x3]
  108448:	f6 c3 03             	test   bl,0x3
  10844b:	74 35                	je     108482 <_malloc_r+0x552>
  10844d:	49 8d 6a 20          	lea    rbp,[r10+0x20]
  108451:	48 89 eb             	mov    rbx,rbp
  108454:	48 8b 5b 18          	mov    rbx,QWORD PTR [rbx+0x18]
  108458:	48 39 eb             	cmp    rbx,rbp
  10845b:	74 22                	je     10847f <_malloc_r+0x54f>
  10845d:	48 8b 43 08          	mov    rax,QWORD PTR [rbx+0x8]
  108461:	48 83 e0 fc          	and    rax,0xfffffffffffffffc
  108465:	48 89 c1             	mov    rcx,rax
  108468:	4c 29 e9             	sub    rcx,r13
  10846b:	48 83 f9 1f          	cmp    rcx,0x1f
  10846f:	0f 8f 85 00 00 00    	jg     1084fa <_malloc_r+0x5ca>
  108475:	48 85 c9             	test   rcx,rcx
  108478:	78 da                	js     108454 <_malloc_r+0x524>
  10847a:	e9 d3 00 00 00       	jmp    108552 <_malloc_r+0x622>
  10847f:	8d 5a 04             	lea    ebx,[rdx+0x4]
  108482:	f6 c2 03             	test   dl,0x3
  108485:	74 33                	je     1084ba <_malloc_r+0x58a>
  108487:	49 8d 42 e0          	lea    rax,[r10-0x20]
  10848b:	49 39 42 f0          	cmp    QWORD PTR [r10-0x10],rax
  10848f:	75 39                	jne    1084ca <_malloc_r+0x59a>
  108491:	8d 42 ff             	lea    eax,[rdx-0x1]
  108494:	a8 03                	test   al,0x3
  108496:	74 22                	je     1084ba <_malloc_r+0x58a>
  108498:	49 8d 42 d0          	lea    rax,[r10-0x30]
  10849c:	49 39 42 e0          	cmp    QWORD PTR [r10-0x20],rax
  1084a0:	75 28                	jne    1084ca <_malloc_r+0x59a>
  1084a2:	8d 42 02             	lea    eax,[rdx+0x2]
  1084a5:	a8 03                	test   al,0x3
  1084a7:	74 11                	je     1084ba <_malloc_r+0x58a>
  1084a9:	49 8d 42 c0          	lea    rax,[r10-0x40]
  1084ad:	49 39 42 d0          	cmp    QWORD PTR [r10-0x30],rax
  1084b1:	75 17                	jne    1084ca <_malloc_r+0x59a>
  1084b3:	ff c2                	inc    edx
  1084b5:	f6 c2 03             	test   dl,0x3
  1084b8:	75 10                	jne    1084ca <_malloc_r+0x59a>
  1084ba:	48 89 f8             	mov    rax,rdi
  1084bd:	48 f7 d0             	not    rax
  1084c0:	48 21 c6             	and    rsi,rax
  1084c3:	48 89 35 0e da 00 00 	mov    QWORD PTR [rip+0xda0e],rsi        # 115ed8 <__malloc_av_+0x8>
  1084ca:	48 8d 04 3f          	lea    rax,[rdi+rdi*1]
  1084ce:	48 ff c8             	dec    rax
  1084d1:	48 39 f0             	cmp    rax,rsi
  1084d4:	0f 83 e1 fd ff ff    	jae    1082bb <_malloc_r+0x38b>
  1084da:	48 01 ff             	add    rdi,rdi
  1084dd:	89 da                	mov    edx,ebx
  1084df:	48 85 f7             	test   rdi,rsi
  1084e2:	0f 85 9f fe ff ff    	jne    108387 <_malloc_r+0x457>
  1084e8:	83 c3 04             	add    ebx,0x4
  1084eb:	48 01 ff             	add    rdi,rdi
  1084ee:	48 85 f7             	test   rdi,rsi
  1084f1:	74 f5                	je     1084e8 <_malloc_r+0x5b8>
  1084f3:	89 da                	mov    edx,ebx
  1084f5:	e9 8d fe ff ff       	jmp    108387 <_malloc_r+0x457>
  1084fa:	4a 8d 14 2b          	lea    rdx,[rbx+r13*1]
  1084fe:	4c 89 ee             	mov    rsi,r13
  108501:	48 83 ce 01          	or     rsi,0x1
  108505:	48 89 73 08          	mov    QWORD PTR [rbx+0x8],rsi
  108509:	48 8b 73 10          	mov    rsi,QWORD PTR [rbx+0x10]
  10850d:	48 8b 7b 18          	mov    rdi,QWORD PTR [rbx+0x18]
  108511:	4c 8d 7b 10          	lea    r15,[rbx+0x10]
  108515:	48 89 7e 18          	mov    QWORD PTR [rsi+0x18],rdi
  108519:	48 89 77 10          	mov    QWORD PTR [rdi+0x10],rsi
  10851d:	48 89 15 d4 d9 00 00 	mov    QWORD PTR [rip+0xd9d4],rdx        # 115ef8 <__malloc_av_+0x28>
  108524:	48 89 15 c5 d9 00 00 	mov    QWORD PTR [rip+0xd9c5],rdx        # 115ef0 <__malloc_av_+0x20>
  10852b:	4e 89 4c 2b 18       	mov    QWORD PTR [rbx+r13*1+0x18],r9
  108530:	4e 89 4c 2b 10       	mov    QWORD PTR [rbx+r13*1+0x10],r9
  108535:	48 89 ca             	mov    rdx,rcx
  108538:	48 83 ca 01          	or     rdx,0x1
  10853c:	4a 89 54 2b 08       	mov    QWORD PTR [rbx+r13*1+0x8],rdx
  108541:	48 89 0c 03          	mov    QWORD PTR [rbx+rax*1],rcx
  108545:	4c 89 f7             	mov    rdi,r14
  108548:	e8 03 02 00 00       	call   108750 <__malloc_unlock>
  10854d:	e9 c2 01 00 00       	jmp    108714 <_malloc_r+0x7e4>
  108552:	80 4c 03 08 01       	or     BYTE PTR [rbx+rax*1+0x8],0x1
  108557:	48 8b 43 10          	mov    rax,QWORD PTR [rbx+0x10]
  10855b:	48 8b 4b 18          	mov    rcx,QWORD PTR [rbx+0x18]
  10855f:	48 83 c3 10          	add    rbx,0x10
  108563:	48 89 48 18          	mov    QWORD PTR [rax+0x18],rcx
  108567:	48 89 41 10          	mov    QWORD PTR [rcx+0x10],rax
  10856b:	4c 89 f7             	mov    rdi,r14
  10856e:	e8 dd 01 00 00       	call   108750 <__malloc_unlock>
  108573:	49 89 df             	mov    r15,rbx
  108576:	e9 99 01 00 00       	jmp    108714 <_malloc_r+0x7e4>
  10857b:	83 c2 04             	add    edx,0x4
  10857e:	83 e2 fc             	and    edx,0xfffffffc
  108581:	bf 02 00 00 00       	mov    edi,0x2
  108586:	48 d3 e7             	shl    rdi,cl
  108589:	48 85 f7             	test   rdi,rsi
  10858c:	0f 85 ee fd ff ff    	jne    108380 <_malloc_r+0x450>
  108592:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  108599:	1f 84 00 00 00 00 00 
  1085a0:	83 c2 04             	add    edx,0x4
  1085a3:	48 01 ff             	add    rdi,rdi
  1085a6:	48 85 f7             	test   rdi,rsi
  1085a9:	74 f5                	je     1085a0 <_malloc_r+0x670>
  1085ab:	e9 d0 fd ff ff       	jmp    108380 <_malloc_r+0x450>
  1085b0:	48 83 3d 30 e1 00 00 	cmp    QWORD PTR [rip+0xe130],0xffffffffffffffff        # 1166e8 <__malloc_sbrk_base>
  1085b7:	ff 
  1085b8:	74 0e                	je     1085c8 <_malloc_r+0x698>
  1085ba:	89 da                	mov    edx,ebx
  1085bc:	29 c2                	sub    edx,eax
  1085be:	01 d1                	add    ecx,edx
  1085c0:	89 0d b2 44 51 00    	mov    DWORD PTR [rip+0x5144b2],ecx        # 61ca78 <__malloc_current_mallinfo>
  1085c6:	eb 07                	jmp    1085cf <_malloc_r+0x69f>
  1085c8:	48 89 1d 19 e1 00 00 	mov    QWORD PTR [rip+0xe119],rbx        # 1166e8 <__malloc_sbrk_base>
  1085cf:	8d 43 10             	lea    eax,[rbx+0x10]
  1085d2:	83 e0 0f             	and    eax,0xf
  1085d5:	b9 10 00 00 00       	mov    ecx,0x10
  1085da:	48 29 c1             	sub    rcx,rax
  1085dd:	48 85 c0             	test   rax,rax
  1085e0:	48 0f 44 c8          	cmove  rcx,rax
  1085e4:	48 89 d8             	mov    rax,rbx
  1085e7:	48 01 c8             	add    rax,rcx
  1085ea:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  1085ef:	48 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],rcx
  1085f4:	41 01 c4             	add    r12d,eax
  1085f7:	41 81 e4 ff 0f 00 00 	and    r12d,0xfff
  1085fe:	49 f7 dc             	neg    r12
  108601:	49 01 cc             	add    r12,rcx
  108604:	49 81 c4 00 10 00 00 	add    r12,0x1000
  10860b:	4c 89 f7             	mov    rdi,r14
  10860e:	4c 89 e6             	mov    rsi,r12
  108611:	e8 4a 01 00 00       	call   108760 <_sbrk_r>
  108616:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
  10861b:	31 d2                	xor    edx,edx
  10861d:	48 83 f8 ff          	cmp    rax,0xffffffffffffffff
  108621:	48 0f 44 c6          	cmove  rax,rsi
  108625:	49 0f 45 d4          	cmovne rdx,r12
  108629:	8b 0d 49 44 51 00    	mov    ecx,DWORD PTR [rip+0x514449]        # 61ca78 <__malloc_current_mallinfo>
  10862f:	01 d1                	add    ecx,edx
  108631:	48 29 f2             	sub    rdx,rsi
  108634:	48 01 c2             	add    rdx,rax
  108637:	48 83 ca 01          	or     rdx,0x1
  10863b:	89 0d 37 44 51 00    	mov    DWORD PTR [rip+0x514437],ecx        # 61ca78 <__malloc_current_mallinfo>
  108641:	48 89 35 98 d8 00 00 	mov    QWORD PTR [rip+0xd898],rsi        # 115ee0 <__malloc_av_+0x10>
  108648:	48 8b 44 24 10       	mov    rax,QWORD PTR [rsp+0x10]
  10864d:	48 89 54 03 08       	mov    QWORD PTR [rbx+rax*1+0x8],rdx
  108652:	48 8d 05 77 d8 00 00 	lea    rax,[rip+0xd877]        # 115ed0 <__malloc_av_>
  108659:	49 39 c7             	cmp    r15,rax
  10865c:	74 4e                	je     1086ac <_malloc_r+0x77c>
  10865e:	48 83 fd 1f          	cmp    rbp,0x1f
  108662:	77 0a                	ja     10866e <_malloc_r+0x73e>
  108664:	48 c7 46 08 01 00 00 	mov    QWORD PTR [rsi+0x8],0x1
  10866b:	00 
  10866c:	eb 61                	jmp    1086cf <_malloc_r+0x79f>
  10866e:	48 83 c5 e8          	add    rbp,0xffffffffffffffe8
  108672:	48 83 e5 f0          	and    rbp,0xfffffffffffffff0
  108676:	49 8b 47 08          	mov    rax,QWORD PTR [r15+0x8]
  10867a:	83 e0 01             	and    eax,0x1
  10867d:	48 09 e8             	or     rax,rbp
  108680:	49 89 47 08          	mov    QWORD PTR [r15+0x8],rax
  108684:	0f 28 05 55 82 ff ff 	movaps xmm0,XMMWORD PTR [rip+0xffffffffffff8255]        # 1008e0 <_svfprintf_r.blanks-0x200>
  10868b:	41 0f 11 44 2f 08    	movups XMMWORD PTR [r15+rbp*1+0x8],xmm0
  108691:	48 83 fd 20          	cmp    rbp,0x20
  108695:	72 15                	jb     1086ac <_malloc_r+0x77c>
  108697:	49 83 c7 10          	add    r15,0x10
  10869b:	4c 89 f7             	mov    rdi,r14
  10869e:	4c 89 fe             	mov    rsi,r15
  1086a1:	e8 2a 02 00 00       	call   1088d0 <_free_r>
  1086a6:	8b 0d cc 43 51 00    	mov    ecx,DWORD PTR [rip+0x5143cc]        # 61ca78 <__malloc_current_mallinfo>
  1086ac:	48 63 c1             	movsxd rax,ecx
  1086af:	48 39 05 b2 43 51 00 	cmp    QWORD PTR [rip+0x5143b2],rax        # 61ca68 <__malloc_max_sbrked_mem>
  1086b6:	73 07                	jae    1086bf <_malloc_r+0x78f>
  1086b8:	48 89 05 a9 43 51 00 	mov    QWORD PTR [rip+0x5143a9],rax        # 61ca68 <__malloc_max_sbrked_mem>
  1086bf:	48 39 05 aa 43 51 00 	cmp    QWORD PTR [rip+0x5143aa],rax        # 61ca70 <__malloc_max_total_mem>
  1086c6:	73 07                	jae    1086cf <_malloc_r+0x79f>
  1086c8:	48 89 05 a1 43 51 00 	mov    QWORD PTR [rip+0x5143a1],rax        # 61ca70 <__malloc_max_total_mem>
  1086cf:	4c 8b 3d 0a d8 00 00 	mov    r15,QWORD PTR [rip+0xd80a]        # 115ee0 <__malloc_av_+0x10>
  1086d6:	49 8b 47 08          	mov    rax,QWORD PTR [r15+0x8]
  1086da:	48 83 e0 fc          	and    rax,0xfffffffffffffffc
  1086de:	4c 29 e8             	sub    rax,r13
  1086e1:	72 43                	jb     108726 <_malloc_r+0x7f6>
  1086e3:	48 83 f8 1f          	cmp    rax,0x1f
  1086e7:	7e 3d                	jle    108726 <_malloc_r+0x7f6>
  1086e9:	4c 89 e9             	mov    rcx,r13
  1086ec:	48 83 c9 01          	or     rcx,0x1
  1086f0:	49 89 4f 08          	mov    QWORD PTR [r15+0x8],rcx
  1086f4:	4b 8d 0c 2f          	lea    rcx,[r15+r13*1]
  1086f8:	48 89 0d e1 d7 00 00 	mov    QWORD PTR [rip+0xd7e1],rcx        # 115ee0 <__malloc_av_+0x10>
  1086ff:	48 83 c8 01          	or     rax,0x1
  108703:	4b 89 44 2f 08       	mov    QWORD PTR [r15+r13*1+0x8],rax
  108708:	4c 89 f7             	mov    rdi,r14
  10870b:	e8 40 00 00 00       	call   108750 <__malloc_unlock>
  108710:	49 83 c7 10          	add    r15,0x10
  108714:	4c 89 f8             	mov    rax,r15
  108717:	48 83 c4 18          	add    rsp,0x18
  10871b:	5b                   	pop    rbx
  10871c:	41 5c                	pop    r12
  10871e:	41 5d                	pop    r13
  108720:	41 5e                	pop    r14
  108722:	41 5f                	pop    r15
  108724:	5d                   	pop    rbp
  108725:	c3                   	ret
  108726:	4c 89 f7             	mov    rdi,r14
  108729:	e8 22 00 00 00       	call   108750 <__malloc_unlock>
  10872e:	45 31 ff             	xor    r15d,r15d
  108731:	eb e1                	jmp    108714 <_malloc_r+0x7e4>
  108733:	cc                   	int3
  108734:	cc                   	int3
  108735:	cc                   	int3
  108736:	cc                   	int3
  108737:	cc                   	int3
  108738:	cc                   	int3
  108739:	cc                   	int3
  10873a:	cc                   	int3
  10873b:	cc                   	int3
  10873c:	cc                   	int3
  10873d:	cc                   	int3
  10873e:	cc                   	int3
  10873f:	cc                   	int3

0000000000108740 <__malloc_lock>:
  108740:	c3                   	ret
  108741:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  108748:	0f 1f 84 00 00 00 00 
  10874f:	00 

0000000000108750 <__malloc_unlock>:
  108750:	c3                   	ret
  108751:	cc                   	int3
  108752:	cc                   	int3
  108753:	cc                   	int3
  108754:	cc                   	int3
  108755:	cc                   	int3
  108756:	cc                   	int3
  108757:	cc                   	int3
  108758:	cc                   	int3
  108759:	cc                   	int3
  10875a:	cc                   	int3
  10875b:	cc                   	int3
  10875c:	cc                   	int3
  10875d:	cc                   	int3
  10875e:	cc                   	int3
  10875f:	cc                   	int3

0000000000108760 <_sbrk_r>:
  108760:	41 56                	push   r14
  108762:	53                   	push   rbx
  108763:	50                   	push   rax
  108764:	49 89 fe             	mov    r14,rdi
  108767:	48 8d 1d 32 43 51 00 	lea    rbx,[rip+0x514332]        # 61caa0 <errno>
  10876e:	c7 03 00 00 00 00    	mov    DWORD PTR [rbx],0x0
  108774:	48 89 f7             	mov    rdi,rsi
  108777:	e8 54 5f 00 00       	call   10e6d0 <sbrk>
  10877c:	48 83 f8 ff          	cmp    rax,0xffffffffffffffff
  108780:	75 09                	jne    10878b <_sbrk_r+0x2b>
  108782:	8b 0b                	mov    ecx,DWORD PTR [rbx]
  108784:	85 c9                	test   ecx,ecx
  108786:	74 03                	je     10878b <_sbrk_r+0x2b>
  108788:	41 89 0e             	mov    DWORD PTR [r14],ecx
  10878b:	48 83 c4 08          	add    rsp,0x8
  10878f:	5b                   	pop    rbx
  108790:	41 5e                	pop    r14
  108792:	c3                   	ret
  108793:	cc                   	int3
  108794:	cc                   	int3
  108795:	cc                   	int3
  108796:	cc                   	int3
  108797:	cc                   	int3
  108798:	cc                   	int3
  108799:	cc                   	int3
  10879a:	cc                   	int3
  10879b:	cc                   	int3
  10879c:	cc                   	int3
  10879d:	cc                   	int3
  10879e:	cc                   	int3
  10879f:	cc                   	int3

00000000001087a0 <cleanup_glue>:
  1087a0:	41 56                	push   r14
  1087a2:	53                   	push   rbx
  1087a3:	50                   	push   rax
  1087a4:	48 89 f3             	mov    rbx,rsi
  1087a7:	49 89 fe             	mov    r14,rdi
  1087aa:	48 8b 36             	mov    rsi,QWORD PTR [rsi]
  1087ad:	48 85 f6             	test   rsi,rsi
  1087b0:	74 08                	je     1087ba <cleanup_glue+0x1a>
  1087b2:	4c 89 f7             	mov    rdi,r14
  1087b5:	e8 e6 ff ff ff       	call   1087a0 <cleanup_glue>
  1087ba:	4c 89 f7             	mov    rdi,r14
  1087bd:	48 89 de             	mov    rsi,rbx
  1087c0:	48 83 c4 08          	add    rsp,0x8
  1087c4:	5b                   	pop    rbx
  1087c5:	41 5e                	pop    r14
  1087c7:	e9 04 01 00 00       	jmp    1088d0 <_free_r>
  1087cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000001087d0 <_reclaim_reent>:
  1087d0:	41 57                	push   r15
  1087d2:	41 56                	push   r14
  1087d4:	53                   	push   rbx
  1087d5:	48 8d 05 fc cd 00 00 	lea    rax,[rip+0xcdfc]        # 1155d8 <_impure_ptr>
  1087dc:	48 39 38             	cmp    QWORD PTR [rax],rdi
  1087df:	0f 84 d9 00 00 00    	je     1088be <_reclaim_reent+0xee>
  1087e5:	49 89 ff             	mov    r15,rdi
  1087e8:	48 83 7f 78 00       	cmp    QWORD PTR [rdi+0x78],0x0
  1087ed:	74 52                	je     108841 <_reclaim_reent+0x71>
  1087ef:	45 31 f6             	xor    r14d,r14d
  1087f2:	eb 15                	jmp    108809 <_reclaim_reent+0x39>
  1087f4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  1087fb:	00 00 00 00 00 
  108800:	49 ff c6             	inc    r14
  108803:	49 83 fe 40          	cmp    r14,0x40
  108807:	74 2c                	je     108835 <_reclaim_reent+0x65>
  108809:	49 8b 47 78          	mov    rax,QWORD PTR [r15+0x78]
  10880d:	4a 8b 34 f0          	mov    rsi,QWORD PTR [rax+r14*8]
  108811:	48 85 f6             	test   rsi,rsi
  108814:	74 ea                	je     108800 <_reclaim_reent+0x30>
  108816:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10881d:	00 00 00 
  108820:	48 8b 1e             	mov    rbx,QWORD PTR [rsi]
  108823:	4c 89 ff             	mov    rdi,r15
  108826:	e8 a5 00 00 00       	call   1088d0 <_free_r>
  10882b:	48 89 de             	mov    rsi,rbx
  10882e:	48 85 db             	test   rbx,rbx
  108831:	75 ed                	jne    108820 <_reclaim_reent+0x50>
  108833:	eb cb                	jmp    108800 <_reclaim_reent+0x30>
  108835:	49 8b 77 78          	mov    rsi,QWORD PTR [r15+0x78]
  108839:	4c 89 ff             	mov    rdi,r15
  10883c:	e8 8f 00 00 00       	call   1088d0 <_free_r>
  108841:	49 8b 77 60          	mov    rsi,QWORD PTR [r15+0x60]
  108845:	48 85 f6             	test   rsi,rsi
  108848:	74 08                	je     108852 <_reclaim_reent+0x82>
  10884a:	4c 89 ff             	mov    rdi,r15
  10884d:	e8 7e 00 00 00       	call   1088d0 <_free_r>
  108852:	49 8b b7 f8 01 00 00 	mov    rsi,QWORD PTR [r15+0x1f8]
  108859:	48 85 f6             	test   rsi,rsi
  10885c:	74 25                	je     108883 <_reclaim_reent+0xb3>
  10885e:	4d 8d b7 00 02 00 00 	lea    r14,[r15+0x200]
  108865:	4c 39 f6             	cmp    rsi,r14
  108868:	74 19                	je     108883 <_reclaim_reent+0xb3>
  10886a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  108870:	48 8b 1e             	mov    rbx,QWORD PTR [rsi]
  108873:	4c 89 ff             	mov    rdi,r15
  108876:	e8 55 00 00 00       	call   1088d0 <_free_r>
  10887b:	48 89 de             	mov    rsi,rbx
  10887e:	4c 39 f3             	cmp    rbx,r14
  108881:	75 ed                	jne    108870 <_reclaim_reent+0xa0>
  108883:	49 8b b7 88 00 00 00 	mov    rsi,QWORD PTR [r15+0x88]
  10888a:	48 85 f6             	test   rsi,rsi
  10888d:	74 08                	je     108897 <_reclaim_reent+0xc7>
  10888f:	4c 89 ff             	mov    rdi,r15
  108892:	e8 39 00 00 00       	call   1088d0 <_free_r>
  108897:	41 83 7f 50 00       	cmp    DWORD PTR [r15+0x50],0x0
  10889c:	74 20                	je     1088be <_reclaim_reent+0xee>
  10889e:	4c 89 ff             	mov    rdi,r15
  1088a1:	41 ff 57 58          	call   QWORD PTR [r15+0x58]
  1088a5:	49 8b b7 20 05 00 00 	mov    rsi,QWORD PTR [r15+0x520]
  1088ac:	48 85 f6             	test   rsi,rsi
  1088af:	74 0d                	je     1088be <_reclaim_reent+0xee>
  1088b1:	4c 89 ff             	mov    rdi,r15
  1088b4:	5b                   	pop    rbx
  1088b5:	41 5e                	pop    r14
  1088b7:	41 5f                	pop    r15
  1088b9:	e9 e2 fe ff ff       	jmp    1087a0 <cleanup_glue>
  1088be:	5b                   	pop    rbx
  1088bf:	41 5e                	pop    r14
  1088c1:	41 5f                	pop    r15
  1088c3:	c3                   	ret
  1088c4:	cc                   	int3
  1088c5:	cc                   	int3
  1088c6:	cc                   	int3
  1088c7:	cc                   	int3
  1088c8:	cc                   	int3
  1088c9:	cc                   	int3
  1088ca:	cc                   	int3
  1088cb:	cc                   	int3
  1088cc:	cc                   	int3
  1088cd:	cc                   	int3
  1088ce:	cc                   	int3
  1088cf:	cc                   	int3

00000000001088d0 <_free_r>:
  1088d0:	48 85 f6             	test   rsi,rsi
  1088d3:	0f 84 f0 00 00 00    	je     1089c9 <_free_r+0xf9>
  1088d9:	41 56                	push   r14
  1088db:	53                   	push   rbx
  1088dc:	50                   	push   rax
  1088dd:	48 89 f3             	mov    rbx,rsi
  1088e0:	49 89 fe             	mov    r14,rdi
  1088e3:	e8 58 fe ff ff       	call   108740 <__malloc_lock>
  1088e8:	48 8d 43 f0          	lea    rax,[rbx-0x10]
  1088ec:	48 8b 53 f8          	mov    rdx,QWORD PTR [rbx-0x8]
  1088f0:	48 89 d6             	mov    rsi,rdx
  1088f3:	48 83 e6 fe          	and    rsi,0xfffffffffffffffe
  1088f7:	48 8d 3c 33          	lea    rdi,[rbx+rsi*1]
  1088fb:	48 83 c7 f0          	add    rdi,0xfffffffffffffff0
  1088ff:	48 8b 4c 33 f8       	mov    rcx,QWORD PTR [rbx+rsi*1-0x8]
  108904:	48 83 e1 fc          	and    rcx,0xfffffffffffffffc
  108908:	4c 8d 05 c1 d5 00 00 	lea    r8,[rip+0xd5c1]        # 115ed0 <__malloc_av_>
  10890f:	49 3b 78 10          	cmp    rdi,QWORD PTR [r8+0x10]
  108913:	0f 84 b1 00 00 00    	je     1089ca <_free_r+0xfa>
  108919:	48 89 4f 08          	mov    QWORD PTR [rdi+0x8],rcx
  10891d:	f6 c2 01             	test   dl,0x1
  108920:	75 26                	jne    108948 <_free_r+0x78>
  108922:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  108925:	48 29 d0             	sub    rax,rdx
  108928:	48 01 d6             	add    rsi,rdx
  10892b:	48 8b 50 10          	mov    rdx,QWORD PTR [rax+0x10]
  10892f:	49 8d 58 10          	lea    rbx,[r8+0x10]
  108933:	48 39 da             	cmp    rdx,rbx
  108936:	0f 84 fe 00 00 00    	je     108a3a <_free_r+0x16a>
  10893c:	48 8b 58 18          	mov    rbx,QWORD PTR [rax+0x18]
  108940:	48 89 5a 18          	mov    QWORD PTR [rdx+0x18],rbx
  108944:	48 89 53 10          	mov    QWORD PTR [rbx+0x10],rdx
  108948:	f6 44 0f 08 01       	test   BYTE PTR [rdi+rcx*1+0x8],0x1
  10894d:	75 20                	jne    10896f <_free_r+0x9f>
  10894f:	48 01 ce             	add    rsi,rcx
  108952:	48 8b 4f 10          	mov    rcx,QWORD PTR [rdi+0x10]
  108956:	49 8d 50 10          	lea    rdx,[r8+0x10]
  10895a:	48 39 d1             	cmp    rcx,rdx
  10895d:	0f 84 09 01 00 00    	je     108a6c <_free_r+0x19c>
  108963:	48 8b 57 18          	mov    rdx,QWORD PTR [rdi+0x18]
  108967:	48 89 51 18          	mov    QWORD PTR [rcx+0x18],rdx
  10896b:	48 89 4a 10          	mov    QWORD PTR [rdx+0x10],rcx
  10896f:	48 89 f1             	mov    rcx,rsi
  108972:	48 83 c9 01          	or     rcx,0x1
  108976:	48 89 48 08          	mov    QWORD PTR [rax+0x8],rcx
  10897a:	48 89 34 30          	mov    QWORD PTR [rax+rsi*1],rsi
  10897e:	48 81 fe ff 01 00 00 	cmp    rsi,0x1ff
  108985:	0f 87 96 00 00 00    	ja     108a21 <_free_r+0x151>
  10898b:	48 89 f1             	mov    rcx,rsi
  10898e:	48 c1 e9 05          	shr    rcx,0x5
  108992:	ba 01 00 00 00       	mov    edx,0x1
  108997:	48 d3 e2             	shl    rdx,cl
  10899a:	49 09 50 08          	or     QWORD PTR [r8+0x8],rdx
  10899e:	48 c1 ee 02          	shr    rsi,0x2
  1089a2:	83 e6 fe             	and    esi,0xfffffffe
  1089a5:	83 c6 02             	add    esi,0x2
  1089a8:	49 8d 0c f0          	lea    rcx,[r8+rsi*8]
  1089ac:	48 83 c1 f0          	add    rcx,0xfffffffffffffff0
  1089b0:	49 8b 14 f0          	mov    rdx,QWORD PTR [r8+rsi*8]
  1089b4:	48 89 48 18          	mov    QWORD PTR [rax+0x18],rcx
  1089b8:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
  1089bc:	49 89 04 f0          	mov    QWORD PTR [r8+rsi*8],rax
  1089c0:	48 89 42 18          	mov    QWORD PTR [rdx+0x18],rax
  1089c4:	e9 70 01 00 00       	jmp    108b39 <_free_r+0x269>
  1089c9:	c3                   	ret
  1089ca:	48 01 f1             	add    rcx,rsi
  1089cd:	f6 c2 01             	test   dl,0x1
  1089d0:	75 19                	jne    1089eb <_free_r+0x11b>
  1089d2:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  1089d5:	48 29 d0             	sub    rax,rdx
  1089d8:	48 01 d1             	add    rcx,rdx
  1089db:	48 8b 50 10          	mov    rdx,QWORD PTR [rax+0x10]
  1089df:	48 8b 70 18          	mov    rsi,QWORD PTR [rax+0x18]
  1089e3:	48 89 72 18          	mov    QWORD PTR [rdx+0x18],rsi
  1089e7:	48 89 56 10          	mov    QWORD PTR [rsi+0x10],rdx
  1089eb:	48 89 ca             	mov    rdx,rcx
  1089ee:	48 83 ca 01          	or     rdx,0x1
  1089f2:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
  1089f6:	49 89 40 10          	mov    QWORD PTR [r8+0x10],rax
  1089fa:	48 8d 05 df dc 00 00 	lea    rax,[rip+0xdcdf]        # 1166e0 <__malloc_trim_threshold>
  108a01:	48 3b 08             	cmp    rcx,QWORD PTR [rax]
  108a04:	0f 82 2f 01 00 00    	jb     108b39 <_free_r+0x269>
  108a0a:	48 8d 05 4f 40 51 00 	lea    rax,[rip+0x51404f]        # 61ca60 <__malloc_top_pad>
  108a11:	48 8b 30             	mov    rsi,QWORD PTR [rax]
  108a14:	4c 89 f7             	mov    rdi,r14
  108a17:	e8 34 01 00 00       	call   108b50 <_malloc_trim_r>
  108a1c:	e9 18 01 00 00       	jmp    108b39 <_free_r+0x269>
  108a21:	48 81 fe ff 09 00 00 	cmp    rsi,0x9ff
  108a28:	77 2c                	ja     108a56 <_free_r+0x186>
  108a2a:	48 89 f3             	mov    rbx,rsi
  108a2d:	48 c1 eb 06          	shr    rbx,0x6
  108a31:	48 83 c3 38          	add    rbx,0x38
  108a35:	e9 9d 00 00 00       	jmp    108ad7 <_free_r+0x207>
  108a3a:	f6 44 0f 08 01       	test   BYTE PTR [rdi+rcx*1+0x8],0x1
  108a3f:	75 3b                	jne    108a7c <_free_r+0x1ac>
  108a41:	48 01 ce             	add    rsi,rcx
  108a44:	48 8b 4f 10          	mov    rcx,QWORD PTR [rdi+0x10]
  108a48:	48 8b 57 18          	mov    rdx,QWORD PTR [rdi+0x18]
  108a4c:	48 89 51 18          	mov    QWORD PTR [rcx+0x18],rdx
  108a50:	48 89 4a 10          	mov    QWORD PTR [rdx+0x10],rcx
  108a54:	eb 26                	jmp    108a7c <_free_r+0x1ac>
  108a56:	48 81 fe ff 29 00 00 	cmp    rsi,0x29ff
  108a5d:	77 31                	ja     108a90 <_free_r+0x1c0>
  108a5f:	48 89 f3             	mov    rbx,rsi
  108a62:	48 c1 eb 09          	shr    rbx,0x9
  108a66:	48 83 c3 5b          	add    rbx,0x5b
  108a6a:	eb 6b                	jmp    108ad7 <_free_r+0x207>
  108a6c:	49 89 40 28          	mov    QWORD PTR [r8+0x28],rax
  108a70:	49 89 40 20          	mov    QWORD PTR [r8+0x20],rax
  108a74:	48 89 50 18          	mov    QWORD PTR [rax+0x18],rdx
  108a78:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
  108a7c:	48 89 f1             	mov    rcx,rsi
  108a7f:	48 83 c9 01          	or     rcx,0x1
  108a83:	48 89 48 08          	mov    QWORD PTR [rax+0x8],rcx
  108a87:	48 89 34 30          	mov    QWORD PTR [rax+rsi*1],rsi
  108a8b:	e9 a9 00 00 00       	jmp    108b39 <_free_r+0x269>
  108a90:	48 81 fe ff a9 00 00 	cmp    rsi,0xa9ff
  108a97:	77 0d                	ja     108aa6 <_free_r+0x1d6>
  108a99:	48 89 f3             	mov    rbx,rsi
  108a9c:	48 c1 eb 0c          	shr    rbx,0xc
  108aa0:	48 83 c3 6e          	add    rbx,0x6e
  108aa4:	eb 31                	jmp    108ad7 <_free_r+0x207>
  108aa6:	48 81 fe ff a9 02 00 	cmp    rsi,0x2a9ff
  108aad:	77 0d                	ja     108abc <_free_r+0x1ec>
  108aaf:	48 89 f3             	mov    rbx,rsi
  108ab2:	48 c1 eb 0f          	shr    rbx,0xf
  108ab6:	48 83 c3 77          	add    rbx,0x77
  108aba:	eb 1b                	jmp    108ad7 <_free_r+0x207>
  108abc:	48 89 f1             	mov    rcx,rsi
  108abf:	48 c1 e9 12          	shr    rcx,0x12
  108ac3:	48 83 c1 7c          	add    rcx,0x7c
  108ac7:	48 81 fe 00 aa 0a 00 	cmp    rsi,0xaaa00
  108ace:	bb 7e 00 00 00       	mov    ebx,0x7e
  108ad3:	48 0f 42 d9          	cmovb  rbx,rcx
  108ad7:	8d 0c 1b             	lea    ecx,[rbx+rbx*1]
  108ada:	48 63 c9             	movsxd rcx,ecx
  108add:	49 8d 3c c8          	lea    rdi,[r8+rcx*8]
  108ae1:	49 8b 4c c8 10       	mov    rcx,QWORD PTR [r8+rcx*8+0x10]
  108ae6:	48 39 f9             	cmp    rcx,rdi
  108ae9:	74 24                	je     108b0f <_free_r+0x23f>
  108aeb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  108af0:	48 8b 51 08          	mov    rdx,QWORD PTR [rcx+0x8]
  108af4:	48 83 e2 fc          	and    rdx,0xfffffffffffffffc
  108af8:	48 39 d6             	cmp    rsi,rdx
  108afb:	73 0c                	jae    108b09 <_free_r+0x239>
  108afd:	48 8b 49 10          	mov    rcx,QWORD PTR [rcx+0x10]
  108b01:	48 39 f9             	cmp    rcx,rdi
  108b04:	75 ea                	jne    108af0 <_free_r+0x220>
  108b06:	48 89 f9             	mov    rcx,rdi
  108b09:	48 8b 79 18          	mov    rdi,QWORD PTR [rcx+0x18]
  108b0d:	eb 1a                	jmp    108b29 <_free_r+0x259>
  108b0f:	8d 4b 03             	lea    ecx,[rbx+0x3]
  108b12:	85 db                	test   ebx,ebx
  108b14:	0f 49 cb             	cmovns ecx,ebx
  108b17:	c1 e9 02             	shr    ecx,0x2
  108b1a:	ba 01 00 00 00       	mov    edx,0x1
  108b1f:	48 d3 e2             	shl    rdx,cl
  108b22:	49 09 50 08          	or     QWORD PTR [r8+0x8],rdx
  108b26:	48 89 f9             	mov    rcx,rdi
  108b29:	48 89 78 18          	mov    QWORD PTR [rax+0x18],rdi
  108b2d:	48 89 48 10          	mov    QWORD PTR [rax+0x10],rcx
  108b31:	48 89 47 10          	mov    QWORD PTR [rdi+0x10],rax
  108b35:	48 89 41 18          	mov    QWORD PTR [rcx+0x18],rax
  108b39:	4c 89 f7             	mov    rdi,r14
  108b3c:	48 83 c4 08          	add    rsp,0x8
  108b40:	5b                   	pop    rbx
  108b41:	41 5e                	pop    r14
  108b43:	e9 08 fc ff ff       	jmp    108750 <__malloc_unlock>
  108b48:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  108b4f:	00 

0000000000108b50 <_malloc_trim_r>:
  108b50:	41 57                	push   r15
  108b52:	41 56                	push   r14
  108b54:	41 55                	push   r13
  108b56:	41 54                	push   r12
  108b58:	53                   	push   rbx
  108b59:	49 89 f4             	mov    r12,rsi
  108b5c:	49 89 fe             	mov    r14,rdi
  108b5f:	e8 dc fb ff ff       	call   108740 <__malloc_lock>
  108b64:	4c 8d 3d 65 d3 00 00 	lea    r15,[rip+0xd365]        # 115ed0 <__malloc_av_>
  108b6b:	49 8b 47 10          	mov    rax,QWORD PTR [r15+0x10]
  108b6f:	4c 8b 68 08          	mov    r13,QWORD PTR [rax+0x8]
  108b73:	49 83 e5 fc          	and    r13,0xfffffffffffffffc
  108b77:	4c 89 eb             	mov    rbx,r13
  108b7a:	4c 29 e3             	sub    rbx,r12
  108b7d:	48 83 c3 df          	add    rbx,0xffffffffffffffdf
  108b81:	48 81 e3 00 f0 ff ff 	and    rbx,0xfffffffffffff000
  108b88:	45 31 e4             	xor    r12d,r12d
  108b8b:	48 81 fb 00 10 00 00 	cmp    rbx,0x1000
  108b92:	0f 8c 84 00 00 00    	jl     108c1c <_malloc_trim_r+0xcc>
  108b98:	45 31 e4             	xor    r12d,r12d
  108b9b:	4c 89 f7             	mov    rdi,r14
  108b9e:	31 f6                	xor    esi,esi
  108ba0:	e8 bb fb ff ff       	call   108760 <_sbrk_r>
  108ba5:	49 8b 4f 10          	mov    rcx,QWORD PTR [r15+0x10]
  108ba9:	4c 01 e9             	add    rcx,r13
  108bac:	48 39 c8             	cmp    rax,rcx
  108baf:	75 6b                	jne    108c1c <_malloc_trim_r+0xcc>
  108bb1:	48 89 de             	mov    rsi,rbx
  108bb4:	48 f7 de             	neg    rsi
  108bb7:	4c 89 f7             	mov    rdi,r14
  108bba:	e8 a1 fb ff ff       	call   108760 <_sbrk_r>
  108bbf:	48 83 f8 ff          	cmp    rax,0xffffffffffffffff
  108bc3:	74 20                	je     108be5 <_malloc_trim_r+0x95>
  108bc5:	49 29 dd             	sub    r13,rbx
  108bc8:	49 83 cd 01          	or     r13,0x1
  108bcc:	49 8b 47 10          	mov    rax,QWORD PTR [r15+0x10]
  108bd0:	4c 89 68 08          	mov    QWORD PTR [rax+0x8],r13
  108bd4:	48 8d 05 9d 3e 51 00 	lea    rax,[rip+0x513e9d]        # 61ca78 <__malloc_current_mallinfo>
  108bdb:	29 18                	sub    DWORD PTR [rax],ebx
  108bdd:	41 bc 01 00 00 00    	mov    r12d,0x1
  108be3:	eb 37                	jmp    108c1c <_malloc_trim_r+0xcc>
  108be5:	45 31 e4             	xor    r12d,r12d
  108be8:	4c 89 f7             	mov    rdi,r14
  108beb:	31 f6                	xor    esi,esi
  108bed:	e8 6e fb ff ff       	call   108760 <_sbrk_r>
  108bf2:	49 8b 4f 10          	mov    rcx,QWORD PTR [r15+0x10]
  108bf6:	48 89 c2             	mov    rdx,rax
  108bf9:	48 29 ca             	sub    rdx,rcx
  108bfc:	48 83 fa 20          	cmp    rdx,0x20
  108c00:	7c 1a                	jl     108c1c <_malloc_trim_r+0xcc>
  108c02:	48 8d 35 df da 00 00 	lea    rsi,[rip+0xdadf]        # 1166e8 <__malloc_sbrk_base>
  108c09:	2b 06                	sub    eax,DWORD PTR [rsi]
  108c0b:	48 8d 35 66 3e 51 00 	lea    rsi,[rip+0x513e66]        # 61ca78 <__malloc_current_mallinfo>
  108c12:	89 06                	mov    DWORD PTR [rsi],eax
  108c14:	48 83 ca 01          	or     rdx,0x1
  108c18:	48 89 51 08          	mov    QWORD PTR [rcx+0x8],rdx
  108c1c:	4c 89 f7             	mov    rdi,r14
  108c1f:	e8 2c fb ff ff       	call   108750 <__malloc_unlock>
  108c24:	44 89 e0             	mov    eax,r12d
  108c27:	5b                   	pop    rbx
  108c28:	41 5c                	pop    r12
  108c2a:	41 5d                	pop    r13
  108c2c:	41 5e                	pop    r14
  108c2e:	41 5f                	pop    r15
  108c30:	c3                   	ret
  108c31:	cc                   	int3
  108c32:	cc                   	int3
  108c33:	cc                   	int3
  108c34:	cc                   	int3
  108c35:	cc                   	int3
  108c36:	cc                   	int3
  108c37:	cc                   	int3
  108c38:	cc                   	int3
  108c39:	cc                   	int3
  108c3a:	cc                   	int3
  108c3b:	cc                   	int3
  108c3c:	cc                   	int3
  108c3d:	cc                   	int3
  108c3e:	cc                   	int3
  108c3f:	cc                   	int3

0000000000108c40 <__ssprint_r>:
  108c40:	55                   	push   rbp
  108c41:	41 57                	push   r15
  108c43:	41 56                	push   r14
  108c45:	41 55                	push   r13
  108c47:	41 54                	push   r12
  108c49:	53                   	push   rbx
  108c4a:	48 83 ec 18          	sub    rsp,0x18
  108c4e:	49 89 d5             	mov    r13,rdx
  108c51:	48 89 3c 24          	mov    QWORD PTR [rsp],rdi
  108c55:	48 83 7a 10 00       	cmp    QWORD PTR [rdx+0x10],0x0
  108c5a:	0f 84 49 01 00 00    	je     108da9 <__ssprint_r+0x169>
  108c60:	49 89 f4             	mov    r12,rsi
  108c63:	4d 8b 7d 00          	mov    r15,QWORD PTR [r13+0x0]
  108c67:	45 31 f6             	xor    r14d,r14d
  108c6a:	31 db                	xor    ebx,ebx
  108c6c:	4c 89 6c 24 10       	mov    QWORD PTR [rsp+0x10],r13
  108c71:	eb 73                	jmp    108ce6 <__ssprint_r+0xa6>
  108c73:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
  108c77:	e8 94 11 00 00       	call   109e10 <_realloc_r>
  108c7c:	48 89 c5             	mov    rbp,rax
  108c7f:	48 85 c0             	test   rax,rax
  108c82:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  108c87:	0f 84 20 01 00 00    	je     108dad <__ssprint_r+0x16d>
  108c8d:	49 89 6c 24 18       	mov    QWORD PTR [r12+0x18],rbp
  108c92:	48 01 d5             	add    rbp,rdx
  108c95:	49 89 2c 24          	mov    QWORD PTR [r12],rbp
  108c99:	45 89 6c 24 20       	mov    DWORD PTR [r12+0x20],r13d
  108c9e:	41 29 d5             	sub    r13d,edx
  108ca1:	45 89 6c 24 0c       	mov    DWORD PTR [r12+0xc],r13d
  108ca6:	49 63 d6             	movsxd rdx,r14d
  108ca9:	44 89 f1             	mov    ecx,r14d
  108cac:	4c 8b 6c 24 10       	mov    r13,QWORD PTR [rsp+0x10]
  108cb1:	49 39 d6             	cmp    r14,rdx
  108cb4:	41 0f 42 ce          	cmovb  ecx,r14d
  108cb8:	49 8b 3c 24          	mov    rdi,QWORD PTR [r12]
  108cbc:	48 63 e9             	movsxd rbp,ecx
  108cbf:	48 89 de             	mov    rsi,rbx
  108cc2:	48 89 ea             	mov    rdx,rbp
  108cc5:	e8 76 17 00 00       	call   10a440 <memmove>
  108cca:	41 29 6c 24 0c       	sub    DWORD PTR [r12+0xc],ebp
  108ccf:	49 01 2c 24          	add    QWORD PTR [r12],rbp
  108cd3:	49 63 c6             	movsxd rax,r14d
  108cd6:	48 01 c3             	add    rbx,rax
  108cd9:	49 29 c6             	sub    r14,rax
  108cdc:	49 29 45 10          	sub    QWORD PTR [r13+0x10],rax
  108ce0:	0f 84 bf 00 00 00    	je     108da5 <__ssprint_r+0x165>
  108ce6:	4d 85 f6             	test   r14,r14
  108ce9:	75 16                	jne    108d01 <__ssprint_r+0xc1>
  108ceb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  108cf0:	4d 8b 77 08          	mov    r14,QWORD PTR [r15+0x8]
  108cf4:	49 83 c7 10          	add    r15,0x10
  108cf8:	4d 85 f6             	test   r14,r14
  108cfb:	74 f3                	je     108cf0 <__ssprint_r+0xb0>
  108cfd:	49 8b 5f f0          	mov    rbx,QWORD PTR [r15-0x10]
  108d01:	41 8b 4c 24 0c       	mov    ecx,DWORD PTR [r12+0xc]
  108d06:	48 63 d1             	movsxd rdx,ecx
  108d09:	49 39 d6             	cmp    r14,rdx
  108d0c:	72 a3                	jb     108cb1 <__ssprint_r+0x71>
  108d0e:	41 0f b7 44 24 10    	movzx  eax,WORD PTR [r12+0x10]
  108d14:	a9 80 04 00 00       	test   eax,0x480
  108d19:	74 96                	je     108cb1 <__ssprint_r+0x71>
  108d1b:	49 8b 0c 24          	mov    rcx,QWORD PTR [r12]
  108d1f:	49 8b 74 24 18       	mov    rsi,QWORD PTR [r12+0x18]
  108d24:	48 29 f1             	sub    rcx,rsi
  108d27:	41 8b 54 24 20       	mov    edx,DWORD PTR [r12+0x20]
  108d2c:	8d 14 52             	lea    edx,[rdx+rdx*2]
  108d2f:	89 d7                	mov    edi,edx
  108d31:	c1 ef 1f             	shr    edi,0x1f
  108d34:	01 d7                	add    edi,edx
  108d36:	d1 ff                	sar    edi,1
  108d38:	4c 63 ef             	movsxd r13,edi
  108d3b:	48 63 c9             	movsxd rcx,ecx
  108d3e:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
  108d43:	4c 01 f1             	add    rcx,r14
  108d46:	48 ff c1             	inc    rcx
  108d49:	4c 39 e9             	cmp    rcx,r13
  108d4c:	44 0f 47 e9          	cmova  r13d,ecx
  108d50:	49 63 d5             	movsxd rdx,r13d
  108d53:	a9 00 04 00 00       	test   eax,0x400
  108d58:	0f 84 15 ff ff ff    	je     108c73 <__ssprint_r+0x33>
  108d5e:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
  108d62:	48 89 d6             	mov    rsi,rdx
  108d65:	e8 c6 f1 ff ff       	call   107f30 <_malloc_r>
  108d6a:	48 85 c0             	test   rax,rax
  108d6d:	74 4c                	je     108dbb <__ssprint_r+0x17b>
  108d6f:	48 89 c5             	mov    rbp,rax
  108d72:	49 8b 74 24 18       	mov    rsi,QWORD PTR [r12+0x18]
  108d77:	48 89 c7             	mov    rdi,rax
  108d7a:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  108d7f:	e8 8c 1c 00 00       	call   10aa10 <memcpy>
  108d84:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  108d89:	41 8b 44 24 10       	mov    eax,DWORD PTR [r12+0x10]
  108d8e:	b9 7f fb ff ff       	mov    ecx,0xfffffb7f
  108d93:	21 c8                	and    eax,ecx
  108d95:	0d 80 00 00 00       	or     eax,0x80
  108d9a:	66 41 89 44 24 10    	mov    WORD PTR [r12+0x10],ax
  108da0:	e9 e8 fe ff ff       	jmp    108c8d <__ssprint_r+0x4d>
  108da5:	31 c0                	xor    eax,eax
  108da7:	eb 2c                	jmp    108dd5 <__ssprint_r+0x195>
  108da9:	31 c0                	xor    eax,eax
  108dab:	eb 30                	jmp    108ddd <__ssprint_r+0x19d>
  108dad:	49 8b 74 24 18       	mov    rsi,QWORD PTR [r12+0x18]
  108db2:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
  108db6:	e8 15 fb ff ff       	call   1088d0 <_free_r>
  108dbb:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
  108dbf:	c7 00 0c 00 00 00    	mov    DWORD PTR [rax],0xc
  108dc5:	41 80 4c 24 10 40    	or     BYTE PTR [r12+0x10],0x40
  108dcb:	b8 ff ff ff ff       	mov    eax,0xffffffff
  108dd0:	4c 8b 6c 24 10       	mov    r13,QWORD PTR [rsp+0x10]
  108dd5:	49 c7 45 10 00 00 00 	mov    QWORD PTR [r13+0x10],0x0
  108ddc:	00 
  108ddd:	41 c7 45 08 00 00 00 	mov    DWORD PTR [r13+0x8],0x0
  108de4:	00 
  108de5:	48 83 c4 18          	add    rsp,0x18
  108de9:	5b                   	pop    rbx
  108dea:	41 5c                	pop    r12
  108dec:	41 5d                	pop    r13
  108dee:	41 5e                	pop    r14
  108df0:	41 5f                	pop    r15
  108df2:	5d                   	pop    rbp
  108df3:	c3                   	ret
  108df4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  108dfb:	00 00 00 00 00 

0000000000108e00 <_svfiprintf_r>:
  108e00:	55                   	push   rbp
  108e01:	41 57                	push   r15
  108e03:	41 56                	push   r14
  108e05:	41 55                	push   r13
  108e07:	41 54                	push   r12
  108e09:	53                   	push   rbx
  108e0a:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  108e11:	49 89 ce             	mov    r14,rcx
  108e14:	49 89 d5             	mov    r13,rdx
  108e17:	48 89 f3             	mov    rbx,rsi
  108e1a:	48 89 fd             	mov    rbp,rdi
  108e1d:	f6 46 10 80          	test   BYTE PTR [rsi+0x10],0x80
  108e21:	74 2b                	je     108e4e <_svfiprintf_r+0x4e>
  108e23:	48 83 7b 18 00       	cmp    QWORD PTR [rbx+0x18],0x0
  108e28:	75 24                	jne    108e4e <_svfiprintf_r+0x4e>
  108e2a:	be 40 00 00 00       	mov    esi,0x40
  108e2f:	48 89 ef             	mov    rdi,rbp
  108e32:	e8 f9 f0 ff ff       	call   107f30 <_malloc_r>
  108e37:	48 89 03             	mov    QWORD PTR [rbx],rax
  108e3a:	48 89 43 18          	mov    QWORD PTR [rbx+0x18],rax
  108e3e:	48 85 c0             	test   rax,rax
  108e41:	0f 84 a8 0f 00 00    	je     109def <_svfiprintf_r+0xfef>
  108e47:	c7 43 20 40 00 00 00 	mov    DWORD PTR [rbx+0x20],0x40
  108e4e:	48 89 6c 24 48       	mov    QWORD PTR [rsp+0x48],rbp
  108e53:	48 89 5c 24 38       	mov    QWORD PTR [rsp+0x38],rbx
  108e58:	4c 8d a4 24 a0 00 00 	lea    r12,[rsp+0xa0]
  108e5f:	00 
  108e60:	4c 89 64 24 20       	mov    QWORD PTR [rsp+0x20],r12
  108e65:	48 c7 44 24 30 00 00 	mov    QWORD PTR [rsp+0x30],0x0
  108e6c:	00 00 
  108e6e:	c7 44 24 28 00 00 00 	mov    DWORD PTR [rsp+0x28],0x0
  108e75:	00 
  108e76:	49 8d 46 08          	lea    rax,[r14+0x8]
  108e7a:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  108e7f:	31 db                	xor    ebx,ebx
  108e81:	48 be 00 00 00 00 01 	movabs rsi,0x100000000
  108e88:	00 00 00 
  108e8b:	31 c0                	xor    eax,eax
  108e8d:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  108e92:	4c 89 b4 24 98 00 00 	mov    QWORD PTR [rsp+0x98],r14
  108e99:	00 
  108e9a:	41 89 df             	mov    r15d,ebx
  108e9d:	49 8d 5d 01          	lea    rbx,[r13+0x1]
  108ea1:	31 ed                	xor    ebp,ebp
  108ea3:	31 c0                	xor    eax,eax
  108ea5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  108eac:	00 00 00 00 
  108eb0:	0f b6 4b ff          	movzx  ecx,BYTE PTR [rbx-0x1]
  108eb4:	85 c9                	test   ecx,ecx
  108eb6:	74 18                	je     108ed0 <_svfiprintf_r+0xd0>
  108eb8:	83 f9 25             	cmp    ecx,0x25
  108ebb:	74 13                	je     108ed0 <_svfiprintf_r+0xd0>
  108ebd:	48 ff c3             	inc    rbx
  108ec0:	48 01 f0             	add    rax,rsi
  108ec3:	ff cd                	dec    ebp
  108ec5:	eb e9                	jmp    108eb0 <_svfiprintf_r+0xb0>
  108ec7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  108ece:	00 00 
  108ed0:	85 ed                	test   ebp,ebp
  108ed2:	74 4c                	je     108f20 <_svfiprintf_r+0x120>
  108ed4:	4d 89 2c 24          	mov    QWORD PTR [r12],r13
  108ed8:	48 c1 f8 20          	sar    rax,0x20
  108edc:	49 89 44 24 08       	mov    QWORD PTR [r12+0x8],rax
  108ee1:	48 01 44 24 30       	add    QWORD PTR [rsp+0x30],rax
  108ee6:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
  108eea:	8d 48 01             	lea    ecx,[rax+0x1]
  108eed:	89 4c 24 28          	mov    DWORD PTR [rsp+0x28],ecx
  108ef1:	83 f8 07             	cmp    eax,0x7
  108ef4:	7c 3a                	jl     108f30 <_svfiprintf_r+0x130>
  108ef6:	48 8b 7c 24 48       	mov    rdi,QWORD PTR [rsp+0x48]
  108efb:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  108f00:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  108f05:	e8 36 fd ff ff       	call   108c40 <__ssprint_r>
  108f0a:	4c 8d a4 24 a0 00 00 	lea    r12,[rsp+0xa0]
  108f11:	00 
  108f12:	85 c0                	test   eax,eax
  108f14:	74 1e                	je     108f34 <_svfiprintf_r+0x134>
  108f16:	e9 ad 0e 00 00       	jmp    109dc8 <_svfiprintf_r+0xfc8>
  108f1b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  108f20:	44 89 7c 24 0c       	mov    DWORD PTR [rsp+0xc],r15d
  108f25:	eb 19                	jmp    108f40 <_svfiprintf_r+0x140>
  108f27:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  108f2e:	00 00 
  108f30:	49 83 c4 10          	add    r12,0x10
  108f34:	41 29 ef             	sub    r15d,ebp
  108f37:	44 89 7c 24 0c       	mov    DWORD PTR [rsp+0xc],r15d
  108f3c:	0f b6 4b ff          	movzx  ecx,BYTE PTR [rbx-0x1]
  108f40:	84 c9                	test   cl,cl
  108f42:	48 8b 7c 24 48       	mov    rdi,QWORD PTR [rsp+0x48]
  108f47:	48 8d 2d 42 7e ff ff 	lea    rbp,[rip+0xffffffffffff7e42]        # 100d90 <_ctype_+0x110>
  108f4e:	0f 84 58 0e 00 00    	je     109dac <_svfiprintf_r+0xfac>
  108f54:	c6 44 24 07 00       	mov    BYTE PTR [rsp+0x7],0x0
  108f59:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
  108f5f:	31 c0                	xor    eax,eax
  108f61:	c7 44 24 08 00 00 00 	mov    DWORD PTR [rsp+0x8],0x0
  108f68:	00 
  108f69:	49 89 dd             	mov    r13,rbx
  108f6c:	31 db                	xor    ebx,ebx
  108f6e:	41 0f b6 4d 00       	movzx  ecx,BYTE PTR [r13+0x0]
  108f73:	49 ff c5             	inc    r13
  108f76:	0f be d1             	movsx  edx,cl
  108f79:	83 fa 78             	cmp    edx,0x78
  108f7c:	0f 87 85 03 00 00    	ja     109307 <_svfiprintf_r+0x507>
  108f82:	89 d1                	mov    ecx,edx
  108f84:	48 63 4c 8d 00       	movsxd rcx,DWORD PTR [rbp+rcx*4+0x0]
  108f89:	48 01 e9             	add    rcx,rbp
  108f8c:	ff e1                	jmp    rcx
  108f8e:	41 0f be 55 00       	movsx  edx,BYTE PTR [r13+0x0]
  108f93:	49 ff c5             	inc    r13
  108f96:	83 fa 2a             	cmp    edx,0x2a
  108f99:	0f 84 d5 00 00 00    	je     109074 <_svfiprintf_r+0x274>
  108f9f:	8d 72 d0             	lea    esi,[rdx-0x30]
  108fa2:	31 c9                	xor    ecx,ecx
  108fa4:	83 fe 09             	cmp    esi,0x9
  108fa7:	77 1d                	ja     108fc6 <_svfiprintf_r+0x1c6>
  108fa9:	31 c9                	xor    ecx,ecx
  108fab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  108fb0:	8d 0c 89             	lea    ecx,[rcx+rcx*4]
  108fb3:	8d 0c 4e             	lea    ecx,[rsi+rcx*2]
  108fb6:	41 0f be 55 00       	movsx  edx,BYTE PTR [r13+0x0]
  108fbb:	49 ff c5             	inc    r13
  108fbe:	8d 72 d0             	lea    esi,[rdx-0x30]
  108fc1:	83 fe 0a             	cmp    esi,0xa
  108fc4:	72 ea                	jb     108fb0 <_svfiprintf_r+0x1b0>
  108fc6:	85 c9                	test   ecx,ecx
  108fc8:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
  108fce:	44 0f 49 c1          	cmovns r8d,ecx
  108fd2:	83 fa 78             	cmp    edx,0x78
  108fd5:	76 ab                	jbe    108f82 <_svfiprintf_r+0x182>
  108fd7:	e9 2b 03 00 00       	jmp    109307 <_svfiprintf_r+0x507>
  108fdc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  108fe0:	31 db                	xor    ebx,ebx
  108fe2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  108fe9:	1f 84 00 00 00 00 00 
  108ff0:	8d 0c 9b             	lea    ecx,[rbx+rbx*4]
  108ff3:	8d 1c 4a             	lea    ebx,[rdx+rcx*2]
  108ff6:	83 c3 d0             	add    ebx,0xffffffd0
  108ff9:	41 0f b6 4d 00       	movzx  ecx,BYTE PTR [r13+0x0]
  108ffe:	49 ff c5             	inc    r13
  109001:	0f be d1             	movsx  edx,cl
  109004:	8d 72 d0             	lea    esi,[rdx-0x30]
  109007:	83 fe 0a             	cmp    esi,0xa
  10900a:	72 e4                	jb     108ff0 <_svfiprintf_r+0x1f0>
  10900c:	e9 65 ff ff ff       	jmp    108f76 <_svfiprintf_r+0x176>
  109011:	83 4c 24 08 10       	or     DWORD PTR [rsp+0x8],0x10
  109016:	e9 53 ff ff ff       	jmp    108f6e <_svfiprintf_r+0x16e>
  10901b:	84 c0                	test   al,al
  10901d:	0f 85 4b ff ff ff    	jne    108f6e <_svfiprintf_r+0x16e>
  109023:	c6 44 24 07 20       	mov    BYTE PTR [rsp+0x7],0x20
  109028:	b0 20                	mov    al,0x20
  10902a:	e9 3f ff ff ff       	jmp    108f6e <_svfiprintf_r+0x16e>
  10902f:	83 4c 24 08 01       	or     DWORD PTR [rsp+0x8],0x1
  109034:	e9 35 ff ff ff       	jmp    108f6e <_svfiprintf_r+0x16e>
  109039:	41 8b 16             	mov    edx,DWORD PTR [r14]
  10903c:	48 83 fa 28          	cmp    rdx,0x28
  109040:	77 4a                	ja     10908c <_svfiprintf_r+0x28c>
  109042:	48 89 d1             	mov    rcx,rdx
  109045:	49 03 4e 10          	add    rcx,QWORD PTR [r14+0x10]
  109049:	83 c2 08             	add    edx,0x8
  10904c:	41 89 16             	mov    DWORD PTR [r14],edx
  10904f:	eb 4a                	jmp    10909b <_svfiprintf_r+0x29b>
  109051:	c6 44 24 07 2b       	mov    BYTE PTR [rsp+0x7],0x2b
  109056:	b0 2b                	mov    al,0x2b
  109058:	e9 11 ff ff ff       	jmp    108f6e <_svfiprintf_r+0x16e>
  10905d:	81 4c 24 08 80 00 00 	or     DWORD PTR [rsp+0x8],0x80
  109064:	00 
  109065:	e9 04 ff ff ff       	jmp    108f6e <_svfiprintf_r+0x16e>
  10906a:	83 4c 24 08 40       	or     DWORD PTR [rsp+0x8],0x40
  10906f:	e9 fa fe ff ff       	jmp    108f6e <_svfiprintf_r+0x16e>
  109074:	41 8b 16             	mov    edx,DWORD PTR [r14]
  109077:	48 83 fa 28          	cmp    rdx,0x28
  10907b:	77 34                	ja     1090b1 <_svfiprintf_r+0x2b1>
  10907d:	48 89 d1             	mov    rcx,rdx
  109080:	49 03 4e 10          	add    rcx,QWORD PTR [r14+0x10]
  109084:	83 c2 08             	add    edx,0x8
  109087:	41 89 16             	mov    DWORD PTR [r14],edx
  10908a:	eb 34                	jmp    1090c0 <_svfiprintf_r+0x2c0>
  10908c:	48 8b 74 24 18       	mov    rsi,QWORD PTR [rsp+0x18]
  109091:	48 8b 0e             	mov    rcx,QWORD PTR [rsi]
  109094:	48 8d 51 08          	lea    rdx,[rcx+0x8]
  109098:	48 89 16             	mov    QWORD PTR [rsi],rdx
  10909b:	8b 19                	mov    ebx,DWORD PTR [rcx]
  10909d:	85 db                	test   ebx,ebx
  10909f:	0f 89 c9 fe ff ff    	jns    108f6e <_svfiprintf_r+0x16e>
  1090a5:	f7 db                	neg    ebx
  1090a7:	83 4c 24 08 04       	or     DWORD PTR [rsp+0x8],0x4
  1090ac:	e9 bd fe ff ff       	jmp    108f6e <_svfiprintf_r+0x16e>
  1090b1:	48 8b 74 24 18       	mov    rsi,QWORD PTR [rsp+0x18]
  1090b6:	48 8b 0e             	mov    rcx,QWORD PTR [rsi]
  1090b9:	48 8d 51 08          	lea    rdx,[rcx+0x8]
  1090bd:	48 89 16             	mov    QWORD PTR [rsi],rdx
  1090c0:	8b 09                	mov    ecx,DWORD PTR [rcx]
  1090c2:	85 c9                	test   ecx,ecx
  1090c4:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
  1090ca:	44 0f 49 c1          	cmovns r8d,ecx
  1090ce:	e9 9b fe ff ff       	jmp    108f6e <_svfiprintf_r+0x16e>
  1090d3:	8b 44 24 08          	mov    eax,DWORD PTR [rsp+0x8]
  1090d7:	a8 10                	test   al,0x10
  1090d9:	75 2b                	jne    109106 <_svfiprintf_r+0x306>
  1090db:	a8 40                	test   al,0x40
  1090dd:	75 3f                	jne    10911e <_svfiprintf_r+0x31e>
  1090df:	41 8b 0e             	mov    ecx,DWORD PTR [r14]
  1090e2:	48 83 f9 28          	cmp    rcx,0x28
  1090e6:	44 8b 7c 24 0c       	mov    r15d,DWORD PTR [rsp+0xc]
  1090eb:	48 be 00 00 00 00 01 	movabs rsi,0x100000000
  1090f2:	00 00 00 
  1090f5:	77 7a                	ja     109171 <_svfiprintf_r+0x371>
  1090f7:	48 89 c8             	mov    rax,rcx
  1090fa:	49 03 46 10          	add    rax,QWORD PTR [r14+0x10]
  1090fe:	83 c1 08             	add    ecx,0x8
  109101:	41 89 0e             	mov    DWORD PTR [r14],ecx
  109104:	eb 7a                	jmp    109180 <_svfiprintf_r+0x380>
  109106:	41 8b 0e             	mov    ecx,DWORD PTR [r14]
  109109:	48 83 f9 28          	cmp    rcx,0x28
  10910d:	77 36                	ja     109145 <_svfiprintf_r+0x345>
  10910f:	48 89 c8             	mov    rax,rcx
  109112:	49 03 46 10          	add    rax,QWORD PTR [r14+0x10]
  109116:	83 c1 08             	add    ecx,0x8
  109119:	41 89 0e             	mov    DWORD PTR [r14],ecx
  10911c:	eb 36                	jmp    109154 <_svfiprintf_r+0x354>
  10911e:	41 8b 0e             	mov    ecx,DWORD PTR [r14]
  109121:	48 83 f9 28          	cmp    rcx,0x28
  109125:	44 8b 7c 24 0c       	mov    r15d,DWORD PTR [rsp+0xc]
  10912a:	48 be 00 00 00 00 01 	movabs rsi,0x100000000
  109131:	00 00 00 
  109134:	77 55                	ja     10918b <_svfiprintf_r+0x38b>
  109136:	48 89 c8             	mov    rax,rcx
  109139:	49 03 46 10          	add    rax,QWORD PTR [r14+0x10]
  10913d:	83 c1 08             	add    ecx,0x8
  109140:	41 89 0e             	mov    DWORD PTR [r14],ecx
  109143:	eb 55                	jmp    10919a <_svfiprintf_r+0x39a>
  109145:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  10914a:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  10914d:	48 8d 48 08          	lea    rcx,[rax+0x8]
  109151:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  109154:	44 8b 7c 24 0c       	mov    r15d,DWORD PTR [rsp+0xc]
  109159:	48 be 00 00 00 00 01 	movabs rsi,0x100000000
  109160:	00 00 00 
  109163:	49 63 cf             	movsxd rcx,r15d
  109166:	48 8b 00             	mov    rax,QWORD PTR [rax]
  109169:	48 89 08             	mov    QWORD PTR [rax],rcx
  10916c:	e9 2c fd ff ff       	jmp    108e9d <_svfiprintf_r+0x9d>
  109171:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  109176:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  109179:	48 8d 48 08          	lea    rcx,[rax+0x8]
  10917d:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  109180:	48 8b 00             	mov    rax,QWORD PTR [rax]
  109183:	44 89 38             	mov    DWORD PTR [rax],r15d
  109186:	e9 12 fd ff ff       	jmp    108e9d <_svfiprintf_r+0x9d>
  10918b:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  109190:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  109193:	48 8d 48 08          	lea    rcx,[rax+0x8]
  109197:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  10919a:	48 8b 00             	mov    rax,QWORD PTR [rax]
  10919d:	66 44 89 38          	mov    WORD PTR [rax],r15w
  1091a1:	e9 f7 fc ff ff       	jmp    108e9d <_svfiprintf_r+0x9d>
  1091a6:	8b 6c 24 08          	mov    ebp,DWORD PTR [rsp+0x8]
  1091aa:	eb 07                	jmp    1091b3 <_svfiprintf_r+0x3b3>
  1091ac:	8b 6c 24 08          	mov    ebp,DWORD PTR [rsp+0x8]
  1091b0:	83 cd 10             	or     ebp,0x10
  1091b3:	40 f6 c5 10          	test   bpl,0x10
  1091b7:	48 89 5c 24 50       	mov    QWORD PTR [rsp+0x50],rbx
  1091bc:	75 28                	jne    1091e6 <_svfiprintf_r+0x3e6>
  1091be:	41 8b 06             	mov    eax,DWORD PTR [r14]
  1091c1:	40 f6 c5 40          	test   bpl,0x40
  1091c5:	0f 85 eb 01 00 00    	jne    1093b6 <_svfiprintf_r+0x5b6>
  1091cb:	83 f8 28             	cmp    eax,0x28
  1091ce:	0f 87 66 03 00 00    	ja     10953a <_svfiprintf_r+0x73a>
  1091d4:	48 89 c1             	mov    rcx,rax
  1091d7:	49 03 4e 10          	add    rcx,QWORD PTR [r14+0x10]
  1091db:	83 c0 08             	add    eax,0x8
  1091de:	41 89 06             	mov    DWORD PTR [r14],eax
  1091e1:	e9 63 03 00 00       	jmp    109549 <_svfiprintf_r+0x749>
  1091e6:	41 8b 06             	mov    eax,DWORD PTR [r14]
  1091e9:	48 83 f8 28          	cmp    rax,0x28
  1091ed:	0f 87 e2 01 00 00    	ja     1093d5 <_svfiprintf_r+0x5d5>
  1091f3:	48 89 c1             	mov    rcx,rax
  1091f6:	49 03 4e 10          	add    rcx,QWORD PTR [r14+0x10]
  1091fa:	83 c0 08             	add    eax,0x8
  1091fd:	41 89 06             	mov    DWORD PTR [r14],eax
  109200:	48 8b 09             	mov    rcx,QWORD PTR [rcx]
  109203:	e9 5e 03 00 00       	jmp    109566 <_svfiprintf_r+0x766>
  109208:	8b 6c 24 08          	mov    ebp,DWORD PTR [rsp+0x8]
  10920c:	83 cd 10             	or     ebp,0x10
  10920f:	eb 40                	jmp    109251 <_svfiprintf_r+0x451>
  109211:	8b 6c 24 08          	mov    ebp,DWORD PTR [rsp+0x8]
  109215:	83 cd 10             	or     ebp,0x10
  109218:	e9 b7 00 00 00       	jmp    1092d4 <_svfiprintf_r+0x4d4>
  10921d:	48 8d 3d bf 74 ff ff 	lea    rdi,[rip+0xffffffffffff74bf]        # 1006e3 <_svfprintf_r.blanks-0x3fd>
  109224:	e9 31 01 00 00       	jmp    10935a <_svfiprintf_r+0x55a>
  109229:	41 8b 0e             	mov    ecx,DWORD PTR [r14]
  10922c:	48 83 f9 28          	cmp    rcx,0x28
  109230:	48 89 5c 24 50       	mov    QWORD PTR [rsp+0x50],rbx
  109235:	0f 87 b1 01 00 00    	ja     1093ec <_svfiprintf_r+0x5ec>
  10923b:	48 89 c8             	mov    rax,rcx
  10923e:	49 03 46 10          	add    rax,QWORD PTR [r14+0x10]
  109242:	83 c1 08             	add    ecx,0x8
  109245:	41 89 0e             	mov    DWORD PTR [r14],ecx
  109248:	e9 ae 01 00 00       	jmp    1093fb <_svfiprintf_r+0x5fb>
  10924d:	8b 6c 24 08          	mov    ebp,DWORD PTR [rsp+0x8]
  109251:	40 f6 c5 10          	test   bpl,0x10
  109255:	48 89 5c 24 50       	mov    QWORD PTR [rsp+0x50],rbx
  10925a:	0f 85 b5 00 00 00    	jne    109315 <_svfiprintf_r+0x515>
  109260:	41 8b 06             	mov    eax,DWORD PTR [r14]
  109263:	40 f6 c5 40          	test   bpl,0x40
  109267:	0f 85 ac 01 00 00    	jne    109419 <_svfiprintf_r+0x619>
  10926d:	83 f8 28             	cmp    eax,0x28
  109270:	0f 87 36 03 00 00    	ja     1095ac <_svfiprintf_r+0x7ac>
  109276:	48 89 c1             	mov    rcx,rax
  109279:	49 03 4e 10          	add    rcx,QWORD PTR [r14+0x10]
  10927d:	83 c0 08             	add    eax,0x8
  109280:	41 89 06             	mov    DWORD PTR [r14],eax
  109283:	e9 33 03 00 00       	jmp    1095bb <_svfiprintf_r+0x7bb>
  109288:	41 8b 0e             	mov    ecx,DWORD PTR [r14]
  10928b:	48 83 f9 28          	cmp    rcx,0x28
  10928f:	48 89 5c 24 50       	mov    QWORD PTR [rsp+0x50],rbx
  109294:	0f 87 9a 01 00 00    	ja     109434 <_svfiprintf_r+0x634>
  10929a:	48 89 c8             	mov    rax,rcx
  10929d:	49 03 46 10          	add    rax,QWORD PTR [r14+0x10]
  1092a1:	83 c1 08             	add    ecx,0x8
  1092a4:	41 89 0e             	mov    DWORD PTR [r14],ecx
  1092a7:	e9 97 01 00 00       	jmp    109443 <_svfiprintf_r+0x643>
  1092ac:	41 8b 0e             	mov    ecx,DWORD PTR [r14]
  1092af:	48 83 f9 28          	cmp    rcx,0x28
  1092b3:	48 89 5c 24 50       	mov    QWORD PTR [rsp+0x50],rbx
  1092b8:	0f 87 a4 01 00 00    	ja     109462 <_svfiprintf_r+0x662>
  1092be:	48 89 c8             	mov    rax,rcx
  1092c1:	49 03 46 10          	add    rax,QWORD PTR [r14+0x10]
  1092c5:	83 c1 08             	add    ecx,0x8
  1092c8:	41 89 0e             	mov    DWORD PTR [r14],ecx
  1092cb:	e9 a1 01 00 00       	jmp    109471 <_svfiprintf_r+0x671>
  1092d0:	8b 6c 24 08          	mov    ebp,DWORD PTR [rsp+0x8]
  1092d4:	40 f6 c5 10          	test   bpl,0x10
  1092d8:	48 89 5c 24 50       	mov    QWORD PTR [rsp+0x50],rbx
  1092dd:	75 55                	jne    109334 <_svfiprintf_r+0x534>
  1092df:	41 8b 06             	mov    eax,DWORD PTR [r14]
  1092e2:	40 f6 c5 40          	test   bpl,0x40
  1092e6:	0f 85 c2 01 00 00    	jne    1094ae <_svfiprintf_r+0x6ae>
  1092ec:	83 f8 28             	cmp    eax,0x28
  1092ef:	0f 87 d4 02 00 00    	ja     1095c9 <_svfiprintf_r+0x7c9>
  1092f5:	48 89 c1             	mov    rcx,rax
  1092f8:	49 03 4e 10          	add    rcx,QWORD PTR [r14+0x10]
  1092fc:	83 c0 08             	add    eax,0x8
  1092ff:	41 89 06             	mov    DWORD PTR [r14],eax
  109302:	e9 d1 02 00 00       	jmp    1095d8 <_svfiprintf_r+0x7d8>
  109307:	48 89 5c 24 50       	mov    QWORD PTR [rsp+0x50],rbx
  10930c:	88 54 24 70          	mov    BYTE PTR [rsp+0x70],dl
  109310:	e9 ed 00 00 00       	jmp    109402 <_svfiprintf_r+0x602>
  109315:	41 8b 0e             	mov    ecx,DWORD PTR [r14]
  109318:	48 83 f9 28          	cmp    rcx,0x28
  10931c:	0f 87 a7 01 00 00    	ja     1094c9 <_svfiprintf_r+0x6c9>
  109322:	48 89 c8             	mov    rax,rcx
  109325:	49 03 46 10          	add    rax,QWORD PTR [r14+0x10]
  109329:	83 c1 08             	add    ecx,0x8
  10932c:	41 89 0e             	mov    DWORD PTR [r14],ecx
  10932f:	e9 a4 01 00 00       	jmp    1094d8 <_svfiprintf_r+0x6d8>
  109334:	41 8b 0e             	mov    ecx,DWORD PTR [r14]
  109337:	48 83 f9 28          	cmp    rcx,0x28
  10933b:	0f 87 a6 01 00 00    	ja     1094e7 <_svfiprintf_r+0x6e7>
  109341:	48 89 c8             	mov    rax,rcx
  109344:	49 03 46 10          	add    rax,QWORD PTR [r14+0x10]
  109348:	83 c1 08             	add    ecx,0x8
  10934b:	41 89 0e             	mov    DWORD PTR [r14],ecx
  10934e:	e9 a3 01 00 00       	jmp    1094f6 <_svfiprintf_r+0x6f6>
  109353:	48 8d 3d f6 6f ff ff 	lea    rdi,[rip+0xffffffffffff6ff6]        # 100350 <_svfprintf_r.blanks-0x790>
  10935a:	8b 6c 24 08          	mov    ebp,DWORD PTR [rsp+0x8]
  10935e:	40 f6 c5 10          	test   bpl,0x10
  109362:	48 89 5c 24 50       	mov    QWORD PTR [rsp+0x50],rbx
  109367:	75 28                	jne    109391 <_svfiprintf_r+0x591>
  109369:	41 8b 06             	mov    eax,DWORD PTR [r14]
  10936c:	40 f6 c5 40          	test   bpl,0x40
  109370:	0f 85 8f 01 00 00    	jne    109505 <_svfiprintf_r+0x705>
  109376:	83 f8 28             	cmp    eax,0x28
  109379:	0f 87 67 02 00 00    	ja     1095e6 <_svfiprintf_r+0x7e6>
  10937f:	48 89 c1             	mov    rcx,rax
  109382:	49 03 4e 10          	add    rcx,QWORD PTR [r14+0x10]
  109386:	83 c0 08             	add    eax,0x8
  109389:	41 89 06             	mov    DWORD PTR [r14],eax
  10938c:	e9 64 02 00 00       	jmp    1095f5 <_svfiprintf_r+0x7f5>
  109391:	41 8b 06             	mov    eax,DWORD PTR [r14]
  109394:	48 83 f8 28          	cmp    rax,0x28
  109398:	0f 87 82 01 00 00    	ja     109520 <_svfiprintf_r+0x720>
  10939e:	48 89 c1             	mov    rcx,rax
  1093a1:	49 03 4e 10          	add    rcx,QWORD PTR [r14+0x10]
  1093a5:	83 c0 08             	add    eax,0x8
  1093a8:	41 89 06             	mov    DWORD PTR [r14],eax
  1093ab:	48 8b 09             	mov    rcx,QWORD PTR [rcx]
  1093ae:	48 89 fe             	mov    rsi,rdi
  1093b1:	e9 91 02 00 00       	jmp    109647 <_svfiprintf_r+0x847>
  1093b6:	83 f8 28             	cmp    eax,0x28
  1093b9:	0f 87 94 01 00 00    	ja     109553 <_svfiprintf_r+0x753>
  1093bf:	49 8b 4e 10          	mov    rcx,QWORD PTR [r14+0x10]
  1093c3:	48 01 c1             	add    rcx,rax
  1093c6:	83 c0 08             	add    eax,0x8
  1093c9:	41 89 06             	mov    DWORD PTR [r14],eax
  1093cc:	48 0f bf 09          	movsx  rcx,WORD PTR [rcx]
  1093d0:	e9 91 01 00 00       	jmp    109566 <_svfiprintf_r+0x766>
  1093d5:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  1093da:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  1093dd:	48 8d 48 08          	lea    rcx,[rax+0x8]
  1093e1:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  1093e4:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  1093e7:	e9 7a 01 00 00       	jmp    109566 <_svfiprintf_r+0x766>
  1093ec:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  1093f1:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  1093f4:	48 8d 48 08          	lea    rcx,[rax+0x8]
  1093f8:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  1093fb:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  1093fe:	88 44 24 70          	mov    BYTE PTR [rsp+0x70],al
  109402:	c6 44 24 07 00       	mov    BYTE PTR [rsp+0x7],0x0
  109407:	45 31 c0             	xor    r8d,r8d
  10940a:	4c 8d 7c 24 70       	lea    r15,[rsp+0x70]
  10940f:	bd 01 00 00 00       	mov    ebp,0x1
  109414:	e9 d4 03 00 00       	jmp    1097ed <_svfiprintf_r+0x9ed>
  109419:	83 f8 28             	cmp    eax,0x28
  10941c:	0f 87 da 01 00 00    	ja     1095fc <_svfiprintf_r+0x7fc>
  109422:	49 8b 4e 10          	mov    rcx,QWORD PTR [r14+0x10]
  109426:	48 01 c1             	add    rcx,rax
  109429:	83 c0 08             	add    eax,0x8
  10942c:	41 89 06             	mov    DWORD PTR [r14],eax
  10942f:	e9 d7 01 00 00       	jmp    10960b <_svfiprintf_r+0x80b>
  109434:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  109439:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  10943c:	48 8d 48 08          	lea    rcx,[rax+0x8]
  109440:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  109443:	8b 6c 24 08          	mov    ebp,DWORD PTR [rsp+0x8]
  109447:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  10944a:	83 cd 02             	or     ebp,0x2
  10944d:	66 c7 44 24 46 30 78 	mov    WORD PTR [rsp+0x46],0x7830
  109454:	48 8d 35 f5 6e ff ff 	lea    rsi,[rip+0xffffffffffff6ef5]        # 100350 <_svfprintf_r.blanks-0x790>
  10945b:	b0 02                	mov    al,0x2
  10945d:	e9 fe 01 00 00       	jmp    109660 <_svfiprintf_r+0x860>
  109462:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  109467:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  10946a:	48 8d 48 08          	lea    rcx,[rax+0x8]
  10946e:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  109471:	4c 8b 38             	mov    r15,QWORD PTR [rax]
  109474:	c6 44 24 07 00       	mov    BYTE PTR [rsp+0x7],0x0
  109479:	4d 85 ff             	test   r15,r15
  10947c:	0f 84 0e 01 00 00    	je     109590 <_svfiprintf_r+0x790>
  109482:	45 85 c0             	test   r8d,r8d
  109485:	0f 88 0e 09 00 00    	js     109d99 <_svfiprintf_r+0xf99>
  10948b:	44 89 c2             	mov    edx,r8d
  10948e:	4c 89 ff             	mov    rdi,r15
  109491:	31 f6                	xor    esi,esi
  109493:	4c 89 c3             	mov    rbx,r8
  109496:	e8 a5 16 00 00       	call   10ab40 <memchr>
  10949b:	89 c5                	mov    ebp,eax
  10949d:	44 29 fd             	sub    ebp,r15d
  1094a0:	48 85 c0             	test   rax,rax
  1094a3:	0f 44 eb             	cmove  ebp,ebx
  1094a6:	45 31 c0             	xor    r8d,r8d
  1094a9:	e9 3f 03 00 00       	jmp    1097ed <_svfiprintf_r+0x9ed>
  1094ae:	83 f8 28             	cmp    eax,0x28
  1094b1:	0f 87 60 01 00 00    	ja     109617 <_svfiprintf_r+0x817>
  1094b7:	49 8b 4e 10          	mov    rcx,QWORD PTR [r14+0x10]
  1094bb:	48 01 c1             	add    rcx,rax
  1094be:	83 c0 08             	add    eax,0x8
  1094c1:	41 89 06             	mov    DWORD PTR [r14],eax
  1094c4:	e9 5d 01 00 00       	jmp    109626 <_svfiprintf_r+0x826>
  1094c9:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  1094ce:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  1094d1:	48 8d 48 08          	lea    rcx,[rax+0x8]
  1094d5:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  1094d8:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
  1094dd:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  1094e0:	31 c0                	xor    eax,eax
  1094e2:	e9 79 01 00 00       	jmp    109660 <_svfiprintf_r+0x860>
  1094e7:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  1094ec:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  1094ef:	48 8d 48 08          	lea    rcx,[rax+0x8]
  1094f3:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  1094f6:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
  1094fb:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  1094fe:	b0 01                	mov    al,0x1
  109500:	e9 5b 01 00 00       	jmp    109660 <_svfiprintf_r+0x860>
  109505:	83 f8 28             	cmp    eax,0x28
  109508:	0f 87 24 01 00 00    	ja     109632 <_svfiprintf_r+0x832>
  10950e:	49 8b 4e 10          	mov    rcx,QWORD PTR [r14+0x10]
  109512:	48 01 c1             	add    rcx,rax
  109515:	83 c0 08             	add    eax,0x8
  109518:	41 89 06             	mov    DWORD PTR [r14],eax
  10951b:	e9 21 01 00 00       	jmp    109641 <_svfiprintf_r+0x841>
  109520:	48 8b 74 24 18       	mov    rsi,QWORD PTR [rsp+0x18]
  109525:	48 8b 06             	mov    rax,QWORD PTR [rsi]
  109528:	48 8d 48 08          	lea    rcx,[rax+0x8]
  10952c:	48 89 0e             	mov    QWORD PTR [rsi],rcx
  10952f:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  109532:	48 89 fe             	mov    rsi,rdi
  109535:	e9 0d 01 00 00       	jmp    109647 <_svfiprintf_r+0x847>
  10953a:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  10953f:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  109542:	48 8d 41 08          	lea    rax,[rcx+0x8]
  109546:	48 89 02             	mov    QWORD PTR [rdx],rax
  109549:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
  10954e:	48 63 09             	movsxd rcx,DWORD PTR [rcx]
  109551:	eb 18                	jmp    10956b <_svfiprintf_r+0x76b>
  109553:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  109558:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  10955b:	48 8d 48 08          	lea    rcx,[rax+0x8]
  10955f:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  109562:	48 0f bf 08          	movsx  rcx,WORD PTR [rax]
  109566:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
  10956b:	b0 01                	mov    al,0x1
  10956d:	48 85 c9             	test   rcx,rcx
  109570:	0f 89 ef 00 00 00    	jns    109665 <_svfiprintf_r+0x865>
  109576:	48 f7 d9             	neg    rcx
  109579:	c6 44 24 07 2d       	mov    BYTE PTR [rsp+0x7],0x2d
  10957e:	89 e8                	mov    eax,ebp
  109580:	25 7f ff ff ff       	and    eax,0xffffff7f
  109585:	45 85 c0             	test   r8d,r8d
  109588:	0f 49 e8             	cmovns ebp,eax
  10958b:	e9 75 01 00 00       	jmp    109705 <_svfiprintf_r+0x905>
  109590:	41 83 f8 06          	cmp    r8d,0x6
  109594:	bd 06 00 00 00       	mov    ebp,0x6
  109599:	41 0f 42 e8          	cmovb  ebp,r8d
  10959d:	45 31 c0             	xor    r8d,r8d
  1095a0:	4c 8d 3d f7 6b ff ff 	lea    r15,[rip+0xffffffffffff6bf7]        # 10019e <_svfprintf_r.blanks-0x942>
  1095a7:	e9 41 02 00 00       	jmp    1097ed <_svfiprintf_r+0x9ed>
  1095ac:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  1095b1:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  1095b4:	48 8d 41 08          	lea    rax,[rcx+0x8]
  1095b8:	48 89 02             	mov    QWORD PTR [rdx],rax
  1095bb:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
  1095c0:	8b 09                	mov    ecx,DWORD PTR [rcx]
  1095c2:	31 c0                	xor    eax,eax
  1095c4:	e9 97 00 00 00       	jmp    109660 <_svfiprintf_r+0x860>
  1095c9:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  1095ce:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  1095d1:	48 8d 41 08          	lea    rax,[rcx+0x8]
  1095d5:	48 89 02             	mov    QWORD PTR [rdx],rax
  1095d8:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
  1095dd:	8b 09                	mov    ecx,DWORD PTR [rcx]
  1095df:	b0 01                	mov    al,0x1
  1095e1:	e9 7a 00 00 00       	jmp    109660 <_svfiprintf_r+0x860>
  1095e6:	48 8b 74 24 18       	mov    rsi,QWORD PTR [rsp+0x18]
  1095eb:	48 8b 0e             	mov    rcx,QWORD PTR [rsi]
  1095ee:	48 8d 41 08          	lea    rax,[rcx+0x8]
  1095f2:	48 89 06             	mov    QWORD PTR [rsi],rax
  1095f5:	48 89 fe             	mov    rsi,rdi
  1095f8:	8b 09                	mov    ecx,DWORD PTR [rcx]
  1095fa:	eb 4b                	jmp    109647 <_svfiprintf_r+0x847>
  1095fc:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  109601:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  109604:	48 8d 41 08          	lea    rax,[rcx+0x8]
  109608:	48 89 02             	mov    QWORD PTR [rdx],rax
  10960b:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
  109610:	0f b7 09             	movzx  ecx,WORD PTR [rcx]
  109613:	31 c0                	xor    eax,eax
  109615:	eb 49                	jmp    109660 <_svfiprintf_r+0x860>
  109617:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  10961c:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  10961f:	48 8d 41 08          	lea    rax,[rcx+0x8]
  109623:	48 89 02             	mov    QWORD PTR [rdx],rax
  109626:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
  10962b:	0f b7 09             	movzx  ecx,WORD PTR [rcx]
  10962e:	b0 01                	mov    al,0x1
  109630:	eb 2e                	jmp    109660 <_svfiprintf_r+0x860>
  109632:	48 8b 74 24 18       	mov    rsi,QWORD PTR [rsp+0x18]
  109637:	48 8b 0e             	mov    rcx,QWORD PTR [rsi]
  10963a:	48 8d 41 08          	lea    rax,[rcx+0x8]
  10963e:	48 89 06             	mov    QWORD PTR [rsi],rax
  109641:	48 89 fe             	mov    rsi,rdi
  109644:	0f b7 09             	movzx  ecx,WORD PTR [rcx]
  109647:	b0 02                	mov    al,0x2
  109649:	40 f6 c5 01          	test   bpl,0x1
  10964d:	74 11                	je     109660 <_svfiprintf_r+0x860>
  10964f:	48 85 c9             	test   rcx,rcx
  109652:	74 0c                	je     109660 <_svfiprintf_r+0x860>
  109654:	c6 44 24 46 30       	mov    BYTE PTR [rsp+0x46],0x30
  109659:	88 54 24 47          	mov    BYTE PTR [rsp+0x47],dl
  10965d:	83 cd 02             	or     ebp,0x2
  109660:	c6 44 24 07 00       	mov    BYTE PTR [rsp+0x7],0x0
  109665:	89 ea                	mov    edx,ebp
  109667:	81 e5 7f ff ff ff    	and    ebp,0xffffff7f
  10966d:	45 85 c0             	test   r8d,r8d
  109670:	0f 48 ea             	cmovs  ebp,edx
  109673:	48 85 c9             	test   rcx,rcx
  109676:	75 38                	jne    1096b0 <_svfiprintf_r+0x8b0>
  109678:	45 85 c0             	test   r8d,r8d
  10967b:	75 33                	jne    1096b0 <_svfiprintf_r+0x8b0>
  10967d:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  109682:	45 31 c0             	xor    r8d,r8d
  109685:	84 c0                	test   al,al
  109687:	89 6c 24 08          	mov    DWORD PTR [rsp+0x8],ebp
  10968b:	0f 85 9e 00 00 00    	jne    10972f <_svfiprintf_r+0x92f>
  109691:	89 e8                	mov    eax,ebp
  109693:	83 e0 01             	and    eax,0x1
  109696:	0f 84 93 00 00 00    	je     10972f <_svfiprintf_r+0x92f>
  10969c:	c6 84 24 97 00 00 00 	mov    BYTE PTR [rsp+0x97],0x30
  1096a3:	30 
  1096a4:	eb 7c                	jmp    109722 <_svfiprintf_r+0x922>
  1096a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  1096ad:	00 00 00 
  1096b0:	84 c0                	test   al,al
  1096b2:	0f 84 84 00 00 00    	je     10973c <_svfiprintf_r+0x93c>
  1096b8:	0f b6 c0             	movzx  eax,al
  1096bb:	83 f8 01             	cmp    eax,0x1
  1096be:	74 45                	je     109705 <_svfiprintf_r+0x905>
  1096c0:	89 6c 24 08          	mov    DWORD PTR [rsp+0x8],ebp
  1096c4:	4c 8d bc 24 98 00 00 	lea    r15,[rsp+0x98]
  1096cb:	00 
  1096cc:	83 f8 02             	cmp    eax,0x2
  1096cf:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  1096d4:	0f 85 a4 00 00 00    	jne    10977e <_svfiprintf_r+0x97e>
  1096da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  1096e0:	89 c8                	mov    eax,ecx
  1096e2:	83 e0 0f             	and    eax,0xf
  1096e5:	0f b6 04 06          	movzx  eax,BYTE PTR [rsi+rax*1]
  1096e9:	41 88 47 ff          	mov    BYTE PTR [r15-0x1],al
  1096ed:	49 ff cf             	dec    r15
  1096f0:	48 89 c8             	mov    rax,rcx
  1096f3:	48 c1 e8 04          	shr    rax,0x4
  1096f7:	48 83 f9 10          	cmp    rcx,0x10
  1096fb:	48 89 c1             	mov    rcx,rax
  1096fe:	73 e0                	jae    1096e0 <_svfiprintf_r+0x8e0>
  109700:	e9 db 00 00 00       	jmp    1097e0 <_svfiprintf_r+0x9e0>
  109705:	89 6c 24 08          	mov    DWORD PTR [rsp+0x8],ebp
  109709:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  10970e:	48 83 f9 0a          	cmp    rcx,0xa
  109712:	0f 83 80 00 00 00    	jae    109798 <_svfiprintf_r+0x998>
  109718:	80 c1 30             	add    cl,0x30
  10971b:	88 8c 24 97 00 00 00 	mov    BYTE PTR [rsp+0x97],cl
  109722:	4c 8d bc 24 97 00 00 	lea    r15,[rsp+0x97]
  109729:	00 
  10972a:	e9 b1 00 00 00       	jmp    1097e0 <_svfiprintf_r+0x9e0>
  10972f:	4c 8d bc 24 98 00 00 	lea    r15,[rsp+0x98]
  109736:	00 
  109737:	e9 a4 00 00 00       	jmp    1097e0 <_svfiprintf_r+0x9e0>
  10973c:	89 6c 24 08          	mov    DWORD PTR [rsp+0x8],ebp
  109740:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  109745:	4c 8d bc 24 97 00 00 	lea    r15,[rsp+0x97]
  10974c:	00 
  10974d:	48 89 ca             	mov    rdx,rcx
  109750:	89 c8                	mov    eax,ecx
  109752:	24 07                	and    al,0x7
  109754:	0c 30                	or     al,0x30
  109756:	41 88 07             	mov    BYTE PTR [r15],al
  109759:	48 c1 ea 03          	shr    rdx,0x3
  10975d:	49 ff cf             	dec    r15
  109760:	48 83 f9 07          	cmp    rcx,0x7
  109764:	48 89 d1             	mov    rcx,rdx
  109767:	77 e7                	ja     109750 <_svfiprintf_r+0x950>
  109769:	49 8d 4f 01          	lea    rcx,[r15+0x1]
  10976d:	f6 44 24 08 01       	test   BYTE PTR [rsp+0x8],0x1
  109772:	74 60                	je     1097d4 <_svfiprintf_r+0x9d4>
  109774:	3c 30                	cmp    al,0x30
  109776:	74 5c                	je     1097d4 <_svfiprintf_r+0x9d4>
  109778:	41 c6 07 30          	mov    BYTE PTR [r15],0x30
  10977c:	eb 62                	jmp    1097e0 <_svfiprintf_r+0x9e0>
  10977e:	4c 8d 3d f0 6d ff ff 	lea    r15,[rip+0xffffffffffff6df0]        # 100575 <_svfprintf_r.blanks-0x56b>
  109785:	4c 89 ff             	mov    rdi,r15
  109788:	4d 89 c6             	mov    r14,r8
  10978b:	e8 f0 c1 ff ff       	call   105980 <strlen>
  109790:	4d 89 f0             	mov    r8,r14
  109793:	48 89 c5             	mov    rbp,rax
  109796:	eb 55                	jmp    1097ed <_svfiprintf_r+0x9ed>
  109798:	4c 8d bc 24 98 00 00 	lea    r15,[rsp+0x98]
  10979f:	00 
  1097a0:	48 ba cd cc cc cc cc 	movabs rdx,0xcccccccccccccccd
  1097a7:	cc cc cc 
  1097aa:	48 89 c8             	mov    rax,rcx
  1097ad:	48 f7 e2             	mul    rdx
  1097b0:	48 c1 ea 03          	shr    rdx,0x3
  1097b4:	8d 04 12             	lea    eax,[rdx+rdx*1]
  1097b7:	8d 04 80             	lea    eax,[rax+rax*4]
  1097ba:	89 ce                	mov    esi,ecx
  1097bc:	29 c6                	sub    esi,eax
  1097be:	40 80 ce 30          	or     sil,0x30
  1097c2:	41 88 77 ff          	mov    BYTE PTR [r15-0x1],sil
  1097c6:	49 ff cf             	dec    r15
  1097c9:	48 83 f9 0a          	cmp    rcx,0xa
  1097cd:	48 89 d1             	mov    rcx,rdx
  1097d0:	73 ce                	jae    1097a0 <_svfiprintf_r+0x9a0>
  1097d2:	eb 0c                	jmp    1097e0 <_svfiprintf_r+0x9e0>
  1097d4:	49 89 cf             	mov    r15,rcx
  1097d7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  1097de:	00 00 
  1097e0:	48 8d 84 24 98 00 00 	lea    rax,[rsp+0x98]
  1097e7:	00 
  1097e8:	89 c5                	mov    ebp,eax
  1097ea:	44 29 fd             	sub    ebp,r15d
  1097ed:	41 39 e8             	cmp    r8d,ebp
  1097f0:	89 e8                	mov    eax,ebp
  1097f2:	41 0f 4f c0          	cmovg  eax,r8d
  1097f6:	80 7c 24 07 01       	cmp    BYTE PTR [rsp+0x7],0x1
  1097fb:	83 d8 ff             	sbb    eax,0xffffffff
  1097fe:	8d 50 02             	lea    edx,[rax+0x2]
  109801:	8b 4c 24 08          	mov    ecx,DWORD PTR [rsp+0x8]
  109805:	f6 c1 02             	test   cl,0x2
  109808:	0f 44 d0             	cmove  edx,eax
  10980b:	4c 8b 74 24 50       	mov    r14,QWORD PTR [rsp+0x50]
  109810:	48 89 54 24 68       	mov    QWORD PTR [rsp+0x68],rdx
  109815:	41 29 d6             	sub    r14d,edx
  109818:	89 cb                	mov    ebx,ecx
  10981a:	81 e3 84 00 00 00    	and    ebx,0x84
  109820:	4c 89 44 24 58       	mov    QWORD PTR [rsp+0x58],r8
  109825:	0f 85 f0 00 00 00    	jne    10991b <_svfiprintf_r+0xb1b>
  10982b:	45 85 f6             	test   r14d,r14d
  10982e:	0f 8e e7 00 00 00    	jle    10991b <_svfiprintf_r+0xb1b>
  109834:	89 5c 24 64          	mov    DWORD PTR [rsp+0x64],ebx
  109838:	41 83 fe 11          	cmp    r14d,0x11
  10983c:	0f 82 7e 00 00 00    	jb     1098c0 <_svfiprintf_r+0xac0>
  109842:	44 89 f3             	mov    ebx,r14d
  109845:	eb 17                	jmp    10985e <_svfiprintf_r+0xa5e>
  109847:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  10984e:	00 00 
  109850:	49 83 c4 10          	add    r12,0x10
  109854:	8d 43 f0             	lea    eax,[rbx-0x10]
  109857:	83 fb 20             	cmp    ebx,0x20
  10985a:	89 c3                	mov    ebx,eax
  10985c:	7e 65                	jle    1098c3 <_svfiprintf_r+0xac3>
  10985e:	48 8d 05 1b 77 ff ff 	lea    rax,[rip+0xffffffffffff771b]        # 100f80 <_svfiprintf_r.blanks>
  109865:	49 89 04 24          	mov    QWORD PTR [r12],rax
  109869:	49 c7 44 24 08 10 00 	mov    QWORD PTR [r12+0x8],0x10
  109870:	00 00 
  109872:	48 83 44 24 30 10    	add    QWORD PTR [rsp+0x30],0x10
  109878:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
  10987c:	8d 48 01             	lea    ecx,[rax+0x1]
  10987f:	89 4c 24 28          	mov    DWORD PTR [rsp+0x28],ecx
  109883:	83 f8 07             	cmp    eax,0x7
  109886:	7c c8                	jl     109850 <_svfiprintf_r+0xa50>
  109888:	48 8b 7c 24 48       	mov    rdi,QWORD PTR [rsp+0x48]
  10988d:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  109892:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  109897:	e8 a4 f3 ff ff       	call   108c40 <__ssprint_r>
  10989c:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  1098a1:	4c 8d a4 24 a0 00 00 	lea    r12,[rsp+0xa0]
  1098a8:	00 
  1098a9:	85 c0                	test   eax,eax
  1098ab:	74 a7                	je     109854 <_svfiprintf_r+0xa54>
  1098ad:	e9 11 05 00 00       	jmp    109dc3 <_svfiprintf_r+0xfc3>
  1098b2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  1098b9:	1f 84 00 00 00 00 00 
  1098c0:	44 89 f0             	mov    eax,r14d
  1098c3:	48 8d 0d b6 76 ff ff 	lea    rcx,[rip+0xffffffffffff76b6]        # 100f80 <_svfiprintf_r.blanks>
  1098ca:	49 89 0c 24          	mov    QWORD PTR [r12],rcx
  1098ce:	89 c0                	mov    eax,eax
  1098d0:	49 89 44 24 08       	mov    QWORD PTR [r12+0x8],rax
  1098d5:	48 01 44 24 30       	add    QWORD PTR [rsp+0x30],rax
  1098da:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
  1098de:	8d 48 01             	lea    ecx,[rax+0x1]
  1098e1:	89 4c 24 28          	mov    DWORD PTR [rsp+0x28],ecx
  1098e5:	83 f8 07             	cmp    eax,0x7
  1098e8:	8b 5c 24 64          	mov    ebx,DWORD PTR [rsp+0x64]
  1098ec:	0f 8c 94 00 00 00    	jl     109986 <_svfiprintf_r+0xb86>
  1098f2:	48 8b 7c 24 48       	mov    rdi,QWORD PTR [rsp+0x48]
  1098f7:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  1098fc:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  109901:	e8 3a f3 ff ff       	call   108c40 <__ssprint_r>
  109906:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  10990b:	4c 8d a4 24 a0 00 00 	lea    r12,[rsp+0xa0]
  109912:	00 
  109913:	85 c0                	test   eax,eax
  109915:	0f 85 a8 04 00 00    	jne    109dc3 <_svfiprintf_r+0xfc3>
  10991b:	80 7c 24 07 00       	cmp    BYTE PTR [rsp+0x7],0x0
  109920:	74 7e                	je     1099a0 <_svfiprintf_r+0xba0>
  109922:	48 8d 44 24 07       	lea    rax,[rsp+0x7]
  109927:	49 89 04 24          	mov    QWORD PTR [r12],rax
  10992b:	49 c7 44 24 08 01 00 	mov    QWORD PTR [r12+0x8],0x1
  109932:	00 00 
  109934:	48 ff 44 24 30       	inc    QWORD PTR [rsp+0x30]
  109939:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
  10993d:	8d 48 01             	lea    ecx,[rax+0x1]
  109940:	89 4c 24 28          	mov    DWORD PTR [rsp+0x28],ecx
  109944:	83 f8 07             	cmp    eax,0x7
  109947:	7c 37                	jl     109980 <_svfiprintf_r+0xb80>
  109949:	48 8b 7c 24 48       	mov    rdi,QWORD PTR [rsp+0x48]
  10994e:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  109953:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  109958:	e8 e3 f2 ff ff       	call   108c40 <__ssprint_r>
  10995d:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  109962:	4c 8d a4 24 a0 00 00 	lea    r12,[rsp+0xa0]
  109969:	00 
  10996a:	85 c0                	test   eax,eax
  10996c:	74 32                	je     1099a0 <_svfiprintf_r+0xba0>
  10996e:	e9 50 04 00 00       	jmp    109dc3 <_svfiprintf_r+0xfc3>
  109973:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10997a:	84 00 00 00 00 00 
  109980:	49 83 c4 10          	add    r12,0x10
  109984:	eb 1a                	jmp    1099a0 <_svfiprintf_r+0xba0>
  109986:	49 83 c4 10          	add    r12,0x10
  10998a:	80 7c 24 07 00       	cmp    BYTE PTR [rsp+0x7],0x0
  10998f:	75 91                	jne    109922 <_svfiprintf_r+0xb22>
  109991:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  109998:	0f 1f 84 00 00 00 00 
  10999f:	00 
  1099a0:	f6 44 24 08 02       	test   BYTE PTR [rsp+0x8],0x2
  1099a5:	74 51                	je     1099f8 <_svfiprintf_r+0xbf8>
  1099a7:	48 8d 44 24 46       	lea    rax,[rsp+0x46]
  1099ac:	49 89 04 24          	mov    QWORD PTR [r12],rax
  1099b0:	49 c7 44 24 08 02 00 	mov    QWORD PTR [r12+0x8],0x2
  1099b7:	00 00 
  1099b9:	48 83 44 24 30 02    	add    QWORD PTR [rsp+0x30],0x2
  1099bf:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
  1099c3:	8d 48 01             	lea    ecx,[rax+0x1]
  1099c6:	89 4c 24 28          	mov    DWORD PTR [rsp+0x28],ecx
  1099ca:	83 f8 07             	cmp    eax,0x7
  1099cd:	7c 41                	jl     109a10 <_svfiprintf_r+0xc10>
  1099cf:	48 8b 7c 24 48       	mov    rdi,QWORD PTR [rsp+0x48]
  1099d4:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  1099d9:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  1099de:	e8 5d f2 ff ff       	call   108c40 <__ssprint_r>
  1099e3:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  1099e8:	4c 8d a4 24 a0 00 00 	lea    r12,[rsp+0xa0]
  1099ef:	00 
  1099f0:	85 c0                	test   eax,eax
  1099f2:	0f 85 cb 03 00 00    	jne    109dc3 <_svfiprintf_r+0xfc3>
  1099f8:	81 fb 80 00 00 00    	cmp    ebx,0x80
  1099fe:	74 20                	je     109a20 <_svfiprintf_r+0xc20>
  109a00:	e9 f4 00 00 00       	jmp    109af9 <_svfiprintf_r+0xcf9>
  109a05:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  109a0c:	00 00 00 00 
  109a10:	49 83 c4 10          	add    r12,0x10
  109a14:	81 fb 80 00 00 00    	cmp    ebx,0x80
  109a1a:	0f 85 d9 00 00 00    	jne    109af9 <_svfiprintf_r+0xcf9>
  109a20:	45 85 f6             	test   r14d,r14d
  109a23:	0f 8e d0 00 00 00    	jle    109af9 <_svfiprintf_r+0xcf9>
  109a29:	41 83 fe 11          	cmp    r14d,0x11
  109a2d:	72 73                	jb     109aa2 <_svfiprintf_r+0xca2>
  109a2f:	44 89 f3             	mov    ebx,r14d
  109a32:	eb 1a                	jmp    109a4e <_svfiprintf_r+0xc4e>
  109a34:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  109a3b:	00 00 00 00 00 
  109a40:	49 83 c4 10          	add    r12,0x10
  109a44:	8d 43 f0             	lea    eax,[rbx-0x10]
  109a47:	83 fb 20             	cmp    ebx,0x20
  109a4a:	89 c3                	mov    ebx,eax
  109a4c:	7e 57                	jle    109aa5 <_svfiprintf_r+0xca5>
  109a4e:	48 8d 05 3b 75 ff ff 	lea    rax,[rip+0xffffffffffff753b]        # 100f90 <_svfiprintf_r.zeroes>
  109a55:	49 89 04 24          	mov    QWORD PTR [r12],rax
  109a59:	49 c7 44 24 08 10 00 	mov    QWORD PTR [r12+0x8],0x10
  109a60:	00 00 
  109a62:	48 83 44 24 30 10    	add    QWORD PTR [rsp+0x30],0x10
  109a68:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
  109a6c:	8d 48 01             	lea    ecx,[rax+0x1]
  109a6f:	89 4c 24 28          	mov    DWORD PTR [rsp+0x28],ecx
  109a73:	83 f8 07             	cmp    eax,0x7
  109a76:	7c c8                	jl     109a40 <_svfiprintf_r+0xc40>
  109a78:	48 8b 7c 24 48       	mov    rdi,QWORD PTR [rsp+0x48]
  109a7d:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  109a82:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  109a87:	e8 b4 f1 ff ff       	call   108c40 <__ssprint_r>
  109a8c:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  109a91:	4c 8d a4 24 a0 00 00 	lea    r12,[rsp+0xa0]
  109a98:	00 
  109a99:	85 c0                	test   eax,eax
  109a9b:	74 a7                	je     109a44 <_svfiprintf_r+0xc44>
  109a9d:	e9 21 03 00 00       	jmp    109dc3 <_svfiprintf_r+0xfc3>
  109aa2:	44 89 f0             	mov    eax,r14d
  109aa5:	48 8d 0d e4 74 ff ff 	lea    rcx,[rip+0xffffffffffff74e4]        # 100f90 <_svfiprintf_r.zeroes>
  109aac:	49 89 0c 24          	mov    QWORD PTR [r12],rcx
  109ab0:	89 c0                	mov    eax,eax
  109ab2:	49 89 44 24 08       	mov    QWORD PTR [r12+0x8],rax
  109ab7:	48 01 44 24 30       	add    QWORD PTR [rsp+0x30],rax
  109abc:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
  109ac0:	8d 48 01             	lea    ecx,[rax+0x1]
  109ac3:	89 4c 24 28          	mov    DWORD PTR [rsp+0x28],ecx
  109ac7:	83 f8 07             	cmp    eax,0x7
  109aca:	0f 8c fc 00 00 00    	jl     109bcc <_svfiprintf_r+0xdcc>
  109ad0:	48 8b 7c 24 48       	mov    rdi,QWORD PTR [rsp+0x48]
  109ad5:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  109ada:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  109adf:	e8 5c f1 ff ff       	call   108c40 <__ssprint_r>
  109ae4:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  109ae9:	4c 8d a4 24 a0 00 00 	lea    r12,[rsp+0xa0]
  109af0:	00 
  109af1:	85 c0                	test   eax,eax
  109af3:	0f 85 ca 02 00 00    	jne    109dc3 <_svfiprintf_r+0xfc3>
  109af9:	41 29 e8             	sub    r8d,ebp
  109afc:	0f 8e de 00 00 00    	jle    109be0 <_svfiprintf_r+0xde0>
  109b02:	41 83 f8 11          	cmp    r8d,0x11
  109b06:	73 69                	jae    109b71 <_svfiprintf_r+0xd71>
  109b08:	44 89 c0             	mov    eax,r8d
  109b0b:	48 8d 0d 7e 74 ff ff 	lea    rcx,[rip+0xffffffffffff747e]        # 100f90 <_svfiprintf_r.zeroes>
  109b12:	49 89 0c 24          	mov    QWORD PTR [r12],rcx
  109b16:	89 c0                	mov    eax,eax
  109b18:	49 89 44 24 08       	mov    QWORD PTR [r12+0x8],rax
  109b1d:	48 01 44 24 30       	add    QWORD PTR [rsp+0x30],rax
  109b22:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
  109b26:	8d 48 01             	lea    ecx,[rax+0x1]
  109b29:	89 4c 24 28          	mov    DWORD PTR [rsp+0x28],ecx
  109b2d:	83 f8 07             	cmp    eax,0x7
  109b30:	0f 8c 90 00 00 00    	jl     109bc6 <_svfiprintf_r+0xdc6>
  109b36:	48 8b 7c 24 48       	mov    rdi,QWORD PTR [rsp+0x48]
  109b3b:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  109b40:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  109b45:	e8 f6 f0 ff ff       	call   108c40 <__ssprint_r>
  109b4a:	4c 8d a4 24 a0 00 00 	lea    r12,[rsp+0xa0]
  109b51:	00 
  109b52:	85 c0                	test   eax,eax
  109b54:	0f 84 86 00 00 00    	je     109be0 <_svfiprintf_r+0xde0>
  109b5a:	e9 64 02 00 00       	jmp    109dc3 <_svfiprintf_r+0xfc3>
  109b5f:	90                   	nop
  109b60:	49 83 c4 10          	add    r12,0x10
  109b64:	41 8d 40 f0          	lea    eax,[r8-0x10]
  109b68:	41 83 f8 20          	cmp    r8d,0x20
  109b6c:	41 89 c0             	mov    r8d,eax
  109b6f:	7e 9a                	jle    109b0b <_svfiprintf_r+0xd0b>
  109b71:	48 8d 05 18 74 ff ff 	lea    rax,[rip+0xffffffffffff7418]        # 100f90 <_svfiprintf_r.zeroes>
  109b78:	49 89 04 24          	mov    QWORD PTR [r12],rax
  109b7c:	49 c7 44 24 08 10 00 	mov    QWORD PTR [r12+0x8],0x10
  109b83:	00 00 
  109b85:	48 83 44 24 30 10    	add    QWORD PTR [rsp+0x30],0x10
  109b8b:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
  109b8f:	8d 48 01             	lea    ecx,[rax+0x1]
  109b92:	89 4c 24 28          	mov    DWORD PTR [rsp+0x28],ecx
  109b96:	83 f8 07             	cmp    eax,0x7
  109b99:	7c c5                	jl     109b60 <_svfiprintf_r+0xd60>
  109b9b:	48 8b 7c 24 48       	mov    rdi,QWORD PTR [rsp+0x48]
  109ba0:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  109ba5:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  109baa:	4c 89 c3             	mov    rbx,r8
  109bad:	e8 8e f0 ff ff       	call   108c40 <__ssprint_r>
  109bb2:	49 89 d8             	mov    r8,rbx
  109bb5:	4c 8d a4 24 a0 00 00 	lea    r12,[rsp+0xa0]
  109bbc:	00 
  109bbd:	85 c0                	test   eax,eax
  109bbf:	74 a3                	je     109b64 <_svfiprintf_r+0xd64>
  109bc1:	e9 fd 01 00 00       	jmp    109dc3 <_svfiprintf_r+0xfc3>
  109bc6:	49 83 c4 10          	add    r12,0x10
  109bca:	eb 14                	jmp    109be0 <_svfiprintf_r+0xde0>
  109bcc:	49 83 c4 10          	add    r12,0x10
  109bd0:	41 29 e8             	sub    r8d,ebp
  109bd3:	0f 8f 29 ff ff ff    	jg     109b02 <_svfiprintf_r+0xd02>
  109bd9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  109be0:	4d 89 3c 24          	mov    QWORD PTR [r12],r15
  109be4:	48 63 c5             	movsxd rax,ebp
  109be7:	49 89 44 24 08       	mov    QWORD PTR [r12+0x8],rax
  109bec:	48 01 44 24 30       	add    QWORD PTR [rsp+0x30],rax
  109bf1:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
  109bf5:	8d 48 01             	lea    ecx,[rax+0x1]
  109bf8:	89 4c 24 28          	mov    DWORD PTR [rsp+0x28],ecx
  109bfc:	83 f8 07             	cmp    eax,0x7
  109bff:	7c 4f                	jl     109c50 <_svfiprintf_r+0xe50>
  109c01:	48 8b 6c 24 48       	mov    rbp,QWORD PTR [rsp+0x48]
  109c06:	48 89 ef             	mov    rdi,rbp
  109c09:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  109c0e:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  109c13:	e8 28 f0 ff ff       	call   108c40 <__ssprint_r>
  109c18:	4c 8d a4 24 a0 00 00 	lea    r12,[rsp+0xa0]
  109c1f:	00 
  109c20:	85 c0                	test   eax,eax
  109c22:	48 be 00 00 00 00 01 	movabs rsi,0x100000000
  109c29:	00 00 00 
  109c2c:	48 8b 5c 24 68       	mov    rbx,QWORD PTR [rsp+0x68]
  109c31:	0f 85 8c 01 00 00    	jne    109dc3 <_svfiprintf_r+0xfc3>
  109c37:	f6 44 24 08 04       	test   BYTE PTR [rsp+0x8],0x4
  109c3c:	75 31                	jne    109c6f <_svfiprintf_r+0xe6f>
  109c3e:	e9 8e 00 00 00       	jmp    109cd1 <_svfiprintf_r+0xed1>
  109c43:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  109c4a:	84 00 00 00 00 00 
  109c50:	49 83 c4 10          	add    r12,0x10
  109c54:	48 8b 6c 24 48       	mov    rbp,QWORD PTR [rsp+0x48]
  109c59:	48 be 00 00 00 00 01 	movabs rsi,0x100000000
  109c60:	00 00 00 
  109c63:	48 8b 5c 24 68       	mov    rbx,QWORD PTR [rsp+0x68]
  109c68:	f6 44 24 08 04       	test   BYTE PTR [rsp+0x8],0x4
  109c6d:	74 62                	je     109cd1 <_svfiprintf_r+0xed1>
  109c6f:	45 85 f6             	test   r14d,r14d
  109c72:	7e 5d                	jle    109cd1 <_svfiprintf_r+0xed1>
  109c74:	41 83 fe 11          	cmp    r14d,0x11
  109c78:	0f 83 c7 00 00 00    	jae    109d45 <_svfiprintf_r+0xf45>
  109c7e:	44 89 f0             	mov    eax,r14d
  109c81:	48 8d 0d f8 72 ff ff 	lea    rcx,[rip+0xffffffffffff72f8]        # 100f80 <_svfiprintf_r.blanks>
  109c88:	49 89 0c 24          	mov    QWORD PTR [r12],rcx
  109c8c:	89 c0                	mov    eax,eax
  109c8e:	49 89 44 24 08       	mov    QWORD PTR [r12+0x8],rax
  109c93:	48 03 44 24 30       	add    rax,QWORD PTR [rsp+0x30]
  109c98:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  109c9d:	8b 4c 24 28          	mov    ecx,DWORD PTR [rsp+0x28]
  109ca1:	8d 51 01             	lea    edx,[rcx+0x1]
  109ca4:	89 54 24 28          	mov    DWORD PTR [rsp+0x28],edx
  109ca8:	83 f9 07             	cmp    ecx,0x7
  109cab:	7c 29                	jl     109cd6 <_svfiprintf_r+0xed6>
  109cad:	48 89 ef             	mov    rdi,rbp
  109cb0:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  109cb5:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  109cba:	e8 81 ef ff ff       	call   108c40 <__ssprint_r>
  109cbf:	48 be 00 00 00 00 01 	movabs rsi,0x100000000
  109cc6:	00 00 00 
  109cc9:	85 c0                	test   eax,eax
  109ccb:	0f 85 f2 00 00 00    	jne    109dc3 <_svfiprintf_r+0xfc3>
  109cd1:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  109cd6:	48 8b 4c 24 50       	mov    rcx,QWORD PTR [rsp+0x50]
  109cdb:	39 d9                	cmp    ecx,ebx
  109cdd:	0f 4f d9             	cmovg  ebx,ecx
  109ce0:	03 5c 24 0c          	add    ebx,DWORD PTR [rsp+0xc]
  109ce4:	48 85 c0             	test   rax,rax
  109ce7:	74 24                	je     109d0d <_svfiprintf_r+0xf0d>
  109ce9:	48 89 ef             	mov    rdi,rbp
  109cec:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  109cf1:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  109cf6:	e8 45 ef ff ff       	call   108c40 <__ssprint_r>
  109cfb:	48 be 00 00 00 00 01 	movabs rsi,0x100000000
  109d02:	00 00 00 
  109d05:	85 c0                	test   eax,eax
  109d07:	0f 85 f0 00 00 00    	jne    109dfd <_svfiprintf_r+0xffd>
  109d0d:	c7 44 24 28 00 00 00 	mov    DWORD PTR [rsp+0x28],0x0
  109d14:	00 
  109d15:	4c 8b b4 24 98 00 00 	mov    r14,QWORD PTR [rsp+0x98]
  109d1c:	00 
  109d1d:	4c 8d a4 24 a0 00 00 	lea    r12,[rsp+0xa0]
  109d24:	00 
  109d25:	e9 70 f1 ff ff       	jmp    108e9a <_svfiprintf_r+0x9a>
  109d2a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  109d30:	49 83 c4 10          	add    r12,0x10
  109d34:	41 8d 46 f0          	lea    eax,[r14-0x10]
  109d38:	41 83 fe 20          	cmp    r14d,0x20
  109d3c:	41 89 c6             	mov    r14d,eax
  109d3f:	0f 8e 3c ff ff ff    	jle    109c81 <_svfiprintf_r+0xe81>
  109d45:	48 8d 05 34 72 ff ff 	lea    rax,[rip+0xffffffffffff7234]        # 100f80 <_svfiprintf_r.blanks>
  109d4c:	49 89 04 24          	mov    QWORD PTR [r12],rax
  109d50:	49 c7 44 24 08 10 00 	mov    QWORD PTR [r12+0x8],0x10
  109d57:	00 00 
  109d59:	48 83 44 24 30 10    	add    QWORD PTR [rsp+0x30],0x10
  109d5f:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
  109d63:	8d 48 01             	lea    ecx,[rax+0x1]
  109d66:	89 4c 24 28          	mov    DWORD PTR [rsp+0x28],ecx
  109d6a:	83 f8 07             	cmp    eax,0x7
  109d6d:	7c c1                	jl     109d30 <_svfiprintf_r+0xf30>
  109d6f:	48 89 ef             	mov    rdi,rbp
  109d72:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  109d77:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  109d7c:	e8 bf ee ff ff       	call   108c40 <__ssprint_r>
  109d81:	48 be 00 00 00 00 01 	movabs rsi,0x100000000
  109d88:	00 00 00 
  109d8b:	4c 8d a4 24 a0 00 00 	lea    r12,[rsp+0xa0]
  109d92:	00 
  109d93:	85 c0                	test   eax,eax
  109d95:	74 9d                	je     109d34 <_svfiprintf_r+0xf34>
  109d97:	eb 2a                	jmp    109dc3 <_svfiprintf_r+0xfc3>
  109d99:	4c 89 ff             	mov    rdi,r15
  109d9c:	e8 df bb ff ff       	call   105980 <strlen>
  109da1:	48 89 c5             	mov    rbp,rax
  109da4:	45 31 c0             	xor    r8d,r8d
  109da7:	e9 41 fa ff ff       	jmp    1097ed <_svfiprintf_r+0x9ed>
  109dac:	48 83 7c 24 30 00    	cmp    QWORD PTR [rsp+0x30],0x0
  109db2:	74 0f                	je     109dc3 <_svfiprintf_r+0xfc3>
  109db4:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  109db9:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  109dbe:	e8 7d ee ff ff       	call   108c40 <__ssprint_r>
  109dc3:	44 8b 7c 24 0c       	mov    r15d,DWORD PTR [rsp+0xc]
  109dc8:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  109dcd:	0f b6 48 10          	movzx  ecx,BYTE PTR [rax+0x10]
  109dd1:	80 e1 40             	and    cl,0x40
  109dd4:	31 c0                	xor    eax,eax
  109dd6:	f6 d9                	neg    cl
  109dd8:	19 c0                	sbb    eax,eax
  109dda:	44 09 f8             	or     eax,r15d
  109ddd:	48 81 c4 28 01 00 00 	add    rsp,0x128
  109de4:	5b                   	pop    rbx
  109de5:	41 5c                	pop    r12
  109de7:	41 5d                	pop    r13
  109de9:	41 5e                	pop    r14
  109deb:	41 5f                	pop    r15
  109ded:	5d                   	pop    rbp
  109dee:	c3                   	ret
  109def:	c7 45 00 0c 00 00 00 	mov    DWORD PTR [rbp+0x0],0xc
  109df6:	b8 ff ff ff ff       	mov    eax,0xffffffff
  109dfb:	eb e0                	jmp    109ddd <_svfiprintf_r+0xfdd>
  109dfd:	41 89 df             	mov    r15d,ebx
  109e00:	eb c6                	jmp    109dc8 <_svfiprintf_r+0xfc8>
  109e02:	cc                   	int3
  109e03:	cc                   	int3
  109e04:	cc                   	int3
  109e05:	cc                   	int3
  109e06:	cc                   	int3
  109e07:	cc                   	int3
  109e08:	cc                   	int3
  109e09:	cc                   	int3
  109e0a:	cc                   	int3
  109e0b:	cc                   	int3
  109e0c:	cc                   	int3
  109e0d:	cc                   	int3
  109e0e:	cc                   	int3
  109e0f:	cc                   	int3

0000000000109e10 <_realloc_r>:
  109e10:	55                   	push   rbp
  109e11:	41 57                	push   r15
  109e13:	41 56                	push   r14
  109e15:	41 55                	push   r13
  109e17:	41 54                	push   r12
  109e19:	53                   	push   rbx
  109e1a:	48 83 ec 18          	sub    rsp,0x18
  109e1e:	48 89 d3             	mov    rbx,rdx
  109e21:	48 89 fd             	mov    rbp,rdi
  109e24:	48 85 f6             	test   rsi,rsi
  109e27:	0f 84 a3 00 00 00    	je     109ed0 <_realloc_r+0xc0>
  109e2d:	49 89 f4             	mov    r12,rsi
  109e30:	48 89 ef             	mov    rdi,rbp
  109e33:	e8 08 e9 ff ff       	call   108740 <__malloc_lock>
  109e38:	48 8d 43 17          	lea    rax,[rbx+0x17]
  109e3c:	48 89 c1             	mov    rcx,rax
  109e3f:	48 83 e1 f0          	and    rcx,0xfffffffffffffff0
  109e43:	48 83 f8 2f          	cmp    rax,0x2f
  109e47:	41 bf 20 00 00 00    	mov    r15d,0x20
  109e4d:	4c 0f 43 f9          	cmovae r15,rcx
  109e51:	49 81 ff ff ff ff 7f 	cmp    r15,0x7fffffff
  109e58:	0f 87 8b 00 00 00    	ja     109ee9 <_realloc_r+0xd9>
  109e5e:	49 39 df             	cmp    r15,rbx
  109e61:	0f 82 82 00 00 00    	jb     109ee9 <_realloc_r+0xd9>
  109e67:	4d 8d 74 24 f0       	lea    r14,[r12-0x10]
  109e6c:	49 8b 4c 24 f8       	mov    rcx,QWORD PTR [r12-0x8]
  109e71:	49 89 cd             	mov    r13,rcx
  109e74:	49 83 e5 fc          	and    r13,0xfffffffffffffffc
  109e78:	4d 39 fd             	cmp    r13,r15
  109e7b:	7d 78                	jge    109ef5 <_realloc_r+0xe5>
  109e7d:	4b 8d 34 2e          	lea    rsi,[r14+r13*1]
  109e81:	4c 8d 1d 48 c0 00 00 	lea    r11,[rip+0xc048]        # 115ed0 <__malloc_av_>
  109e88:	4d 8b 43 10          	mov    r8,QWORD PTR [r11+0x10]
  109e8c:	4b 8b 7c 2e 08       	mov    rdi,QWORD PTR [r14+r13*1+0x8]
  109e91:	4c 39 c6             	cmp    rsi,r8
  109e94:	0f 84 ce 00 00 00    	je     109f68 <_realloc_r+0x158>
  109e9a:	48 89 f8             	mov    rax,rdi
  109e9d:	48 83 e0 fe          	and    rax,0xfffffffffffffffe
  109ea1:	45 31 d2             	xor    r10d,r10d
  109ea4:	f6 44 06 08 01       	test   BYTE PTR [rsi+rax*1+0x8],0x1
  109ea9:	ba 00 00 00 00       	mov    edx,0x0
  109eae:	0f 85 cf 00 00 00    	jne    109f83 <_realloc_r+0x173>
  109eb4:	48 83 e7 fc          	and    rdi,0xfffffffffffffffc
  109eb8:	4e 8d 14 2f          	lea    r10,[rdi+r13*1]
  109ebc:	4d 39 fa             	cmp    r10,r15
  109ebf:	0f 8d d2 01 00 00    	jge    10a097 <_realloc_r+0x287>
  109ec5:	49 89 fa             	mov    r10,rdi
  109ec8:	48 89 f2             	mov    rdx,rsi
  109ecb:	e9 b3 00 00 00       	jmp    109f83 <_realloc_r+0x173>
  109ed0:	48 89 ef             	mov    rdi,rbp
  109ed3:	48 89 de             	mov    rsi,rbx
  109ed6:	48 83 c4 18          	add    rsp,0x18
  109eda:	5b                   	pop    rbx
  109edb:	41 5c                	pop    r12
  109edd:	41 5d                	pop    r13
  109edf:	41 5e                	pop    r14
  109ee1:	41 5f                	pop    r15
  109ee3:	5d                   	pop    rbp
  109ee4:	e9 47 e0 ff ff       	jmp    107f30 <_malloc_r>
  109ee9:	c7 45 00 0c 00 00 00 	mov    DWORD PTR [rbp+0x0],0xc
  109ef0:	45 31 e4             	xor    r12d,r12d
  109ef3:	eb 61                	jmp    109f56 <_realloc_r+0x146>
  109ef5:	4d 89 ea             	mov    r10,r13
  109ef8:	4c 89 d0             	mov    rax,r10
  109efb:	4c 29 f8             	sub    rax,r15
  109efe:	48 83 f8 20          	cmp    rax,0x20
  109f02:	72 2f                	jb     109f33 <_realloc_r+0x123>
  109f04:	49 8b 4e 08          	mov    rcx,QWORD PTR [r14+0x8]
  109f08:	83 e1 01             	and    ecx,0x1
  109f0b:	4c 09 f9             	or     rcx,r15
  109f0e:	49 89 4e 08          	mov    QWORD PTR [r14+0x8],rcx
  109f12:	48 83 c8 01          	or     rax,0x1
  109f16:	4b 89 44 3e 08       	mov    QWORD PTR [r14+r15*1+0x8],rax
  109f1b:	43 80 4c 16 08 01    	or     BYTE PTR [r14+r10*1+0x8],0x1
  109f21:	4b 8d 34 3e          	lea    rsi,[r14+r15*1]
  109f25:	48 83 c6 10          	add    rsi,0x10
  109f29:	48 89 ef             	mov    rdi,rbp
  109f2c:	e8 9f e9 ff ff       	call   1088d0 <_free_r>
  109f31:	eb 14                	jmp    109f47 <_realloc_r+0x137>
  109f33:	49 8b 46 08          	mov    rax,QWORD PTR [r14+0x8]
  109f37:	83 e0 01             	and    eax,0x1
  109f3a:	4c 09 d0             	or     rax,r10
  109f3d:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  109f41:	43 80 4c 16 08 01    	or     BYTE PTR [r14+r10*1+0x8],0x1
  109f47:	48 89 ef             	mov    rdi,rbp
  109f4a:	e8 01 e8 ff ff       	call   108750 <__malloc_unlock>
  109f4f:	49 83 c6 10          	add    r14,0x10
  109f53:	4d 89 f4             	mov    r12,r14
  109f56:	4c 89 e0             	mov    rax,r12
  109f59:	48 83 c4 18          	add    rsp,0x18
  109f5d:	5b                   	pop    rbx
  109f5e:	41 5c                	pop    r12
  109f60:	41 5d                	pop    r13
  109f62:	41 5e                	pop    r14
  109f64:	41 5f                	pop    r15
  109f66:	5d                   	pop    rbp
  109f67:	c3                   	ret
  109f68:	48 83 e7 fc          	and    rdi,0xfffffffffffffffc
  109f6c:	4a 8d 04 2f          	lea    rax,[rdi+r13*1]
  109f70:	4d 8d 4f 20          	lea    r9,[r15+0x20]
  109f74:	49 89 fa             	mov    r10,rdi
  109f77:	48 89 f2             	mov    rdx,rsi
  109f7a:	4c 39 c8             	cmp    rax,r9
  109f7d:	0f 8d e4 00 00 00    	jge    10a067 <_realloc_r+0x257>
  109f83:	4c 89 64 24 08       	mov    QWORD PTR [rsp+0x8],r12
  109f88:	48 89 6c 24 10       	mov    QWORD PTR [rsp+0x10],rbp
  109f8d:	f6 c1 01             	test   cl,0x1
  109f90:	0f 85 2c 01 00 00    	jne    10a0c2 <_realloc_r+0x2b2>
  109f96:	49 8b 06             	mov    rax,QWORD PTR [r14]
  109f99:	4c 89 f1             	mov    rcx,r14
  109f9c:	48 29 c1             	sub    rcx,rax
  109f9f:	48 89 ce             	mov    rsi,rcx
  109fa2:	48 f7 d8             	neg    rax
  109fa5:	4d 8b 64 06 08       	mov    r12,QWORD PTR [r14+rax*1+0x8]
  109faa:	49 83 e4 fc          	and    r12,0xfffffffffffffffc
  109fae:	4d 01 ec             	add    r12,r13
  109fb1:	48 85 d2             	test   rdx,rdx
  109fb4:	0f 84 ff 00 00 00    	je     10a0b9 <_realloc_r+0x2a9>
  109fba:	4d 01 e2             	add    r10,r12
  109fbd:	4c 39 c2             	cmp    rdx,r8
  109fc0:	0f 84 e6 00 00 00    	je     10a0ac <_realloc_r+0x29c>
  109fc6:	4d 39 fa             	cmp    r10,r15
  109fc9:	0f 8c ea 00 00 00    	jl     10a0b9 <_realloc_r+0x2a9>
  109fcf:	48 8b 42 10          	mov    rax,QWORD PTR [rdx+0x10]
  109fd3:	48 8b 4a 18          	mov    rcx,QWORD PTR [rdx+0x18]
  109fd7:	48 89 48 18          	mov    QWORD PTR [rax+0x18],rcx
  109fdb:	48 89 41 10          	mov    QWORD PTR [rcx+0x10],rax
  109fdf:	49 89 f6             	mov    r14,rsi
  109fe2:	48 8b 46 10          	mov    rax,QWORD PTR [rsi+0x10]
  109fe6:	48 8b 4e 18          	mov    rcx,QWORD PTR [rsi+0x18]
  109fea:	48 8d 7e 10          	lea    rdi,[rsi+0x10]
  109fee:	48 89 48 18          	mov    QWORD PTR [rax+0x18],rcx
  109ff2:	48 89 41 10          	mov    QWORD PTR [rcx+0x10],rax
  109ff6:	49 83 c5 f8          	add    r13,0xfffffffffffffff8
  109ffa:	49 83 fd 48          	cmp    r13,0x48
  109ffe:	0f 87 d1 02 00 00    	ja     10a2d5 <_realloc_r+0x4c5>
  10a004:	49 83 fd 28          	cmp    r13,0x28
  10a008:	48 8b 6c 24 10       	mov    rbp,QWORD PTR [rsp+0x10]
  10a00d:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
  10a012:	0f 82 b1 03 00 00    	jb     10a3c9 <_realloc_r+0x5b9>
  10a018:	48 8b 01             	mov    rax,QWORD PTR [rcx]
  10a01b:	48 89 07             	mov    QWORD PTR [rdi],rax
  10a01e:	48 8b 41 08          	mov    rax,QWORD PTR [rcx+0x8]
  10a022:	48 89 47 08          	mov    QWORD PTR [rdi+0x8],rax
  10a026:	49 83 fd 38          	cmp    r13,0x38
  10a02a:	0f 82 51 03 00 00    	jb     10a381 <_realloc_r+0x571>
  10a030:	48 8b 41 10          	mov    rax,QWORD PTR [rcx+0x10]
  10a034:	48 89 47 10          	mov    QWORD PTR [rdi+0x10],rax
  10a038:	48 8b 41 18          	mov    rax,QWORD PTR [rcx+0x18]
  10a03c:	48 89 47 18          	mov    QWORD PTR [rdi+0x18],rax
  10a040:	49 83 fd 48          	cmp    r13,0x48
  10a044:	0f 82 77 03 00 00    	jb     10a3c1 <_realloc_r+0x5b1>
  10a04a:	48 8b 41 20          	mov    rax,QWORD PTR [rcx+0x20]
  10a04e:	48 89 47 20          	mov    QWORD PTR [rdi+0x20],rax
  10a052:	48 8b 41 28          	mov    rax,QWORD PTR [rcx+0x28]
  10a056:	48 83 c1 30          	add    rcx,0x30
  10a05a:	48 89 47 28          	mov    QWORD PTR [rdi+0x28],rax
  10a05e:	48 83 c7 30          	add    rdi,0x30
  10a062:	e9 62 03 00 00       	jmp    10a3c9 <_realloc_r+0x5b9>
  10a067:	4d 01 fe             	add    r14,r15
  10a06a:	4d 89 73 10          	mov    QWORD PTR [r11+0x10],r14
  10a06e:	4c 29 f8             	sub    rax,r15
  10a071:	48 83 c8 01          	or     rax,0x1
  10a075:	4b 89 44 3c f8       	mov    QWORD PTR [r12+r15*1-0x8],rax
  10a07a:	49 8b 44 24 f8       	mov    rax,QWORD PTR [r12-0x8]
  10a07f:	83 e0 01             	and    eax,0x1
  10a082:	4c 09 f8             	or     rax,r15
  10a085:	49 89 44 24 f8       	mov    QWORD PTR [r12-0x8],rax
  10a08a:	48 89 ef             	mov    rdi,rbp
  10a08d:	e8 be e6 ff ff       	call   108750 <__malloc_unlock>
  10a092:	e9 bf fe ff ff       	jmp    109f56 <_realloc_r+0x146>
  10a097:	48 8b 46 10          	mov    rax,QWORD PTR [rsi+0x10]
  10a09b:	48 8b 4e 18          	mov    rcx,QWORD PTR [rsi+0x18]
  10a09f:	48 89 48 18          	mov    QWORD PTR [rax+0x18],rcx
  10a0a3:	48 89 41 10          	mov    QWORD PTR [rcx+0x10],rax
  10a0a7:	e9 4c fe ff ff       	jmp    109ef8 <_realloc_r+0xe8>
  10a0ac:	49 8d 47 20          	lea    rax,[r15+0x20]
  10a0b0:	49 39 c2             	cmp    r10,rax
  10a0b3:	0f 8d 92 01 00 00    	jge    10a24b <_realloc_r+0x43b>
  10a0b9:	4d 39 fc             	cmp    r12,r15
  10a0bc:	0f 8d c6 00 00 00    	jge    10a188 <_realloc_r+0x378>
  10a0c2:	48 8b 6c 24 10       	mov    rbp,QWORD PTR [rsp+0x10]
  10a0c7:	48 89 ef             	mov    rdi,rbp
  10a0ca:	48 89 de             	mov    rsi,rbx
  10a0cd:	e8 5e de ff ff       	call   107f30 <_malloc_r>
  10a0d2:	48 85 c0             	test   rax,rax
  10a0d5:	0f 84 9d 00 00 00    	je     10a178 <_realloc_r+0x368>
  10a0db:	49 89 c4             	mov    r12,rax
  10a0de:	48 83 c0 f0          	add    rax,0xfffffffffffffff0
  10a0e2:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
  10a0e7:	48 8b 49 f8          	mov    rcx,QWORD PTR [rcx-0x8]
  10a0eb:	48 83 e1 fe          	and    rcx,0xfffffffffffffffe
  10a0ef:	4c 01 f1             	add    rcx,r14
  10a0f2:	48 39 c8             	cmp    rax,rcx
  10a0f5:	0f 84 10 01 00 00    	je     10a20b <_realloc_r+0x3fb>
  10a0fb:	49 83 c5 f8          	add    r13,0xfffffffffffffff8
  10a0ff:	49 83 fd 48          	cmp    r13,0x48
  10a103:	0f 87 18 01 00 00    	ja     10a221 <_realloc_r+0x411>
  10a109:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
  10a10e:	4c 89 e1             	mov    rcx,r12
  10a111:	49 83 fd 28          	cmp    r13,0x28
  10a115:	0f 82 24 02 00 00    	jb     10a33f <_realloc_r+0x52f>
  10a11b:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
  10a120:	48 8b 01             	mov    rax,QWORD PTR [rcx]
  10a123:	49 89 04 24          	mov    QWORD PTR [r12],rax
  10a127:	48 8b 41 08          	mov    rax,QWORD PTR [rcx+0x8]
  10a12b:	49 89 44 24 08       	mov    QWORD PTR [r12+0x8],rax
  10a130:	49 83 fd 38          	cmp    r13,0x38
  10a134:	0f 82 c2 01 00 00    	jb     10a2fc <_realloc_r+0x4ec>
  10a13a:	48 8b 41 10          	mov    rax,QWORD PTR [rcx+0x10]
  10a13e:	49 89 44 24 10       	mov    QWORD PTR [r12+0x10],rax
  10a143:	48 8b 41 18          	mov    rax,QWORD PTR [rcx+0x18]
  10a147:	49 89 44 24 18       	mov    QWORD PTR [r12+0x18],rax
  10a14c:	49 83 fd 48          	cmp    r13,0x48
  10a150:	0f 82 de 01 00 00    	jb     10a334 <_realloc_r+0x524>
  10a156:	48 8b 41 20          	mov    rax,QWORD PTR [rcx+0x20]
  10a15a:	49 89 44 24 20       	mov    QWORD PTR [r12+0x20],rax
  10a15f:	48 8d 41 30          	lea    rax,[rcx+0x30]
  10a163:	48 8b 51 28          	mov    rdx,QWORD PTR [rcx+0x28]
  10a167:	4c 89 e1             	mov    rcx,r12
  10a16a:	48 83 c1 30          	add    rcx,0x30
  10a16e:	49 89 54 24 28       	mov    QWORD PTR [r12+0x28],rdx
  10a173:	e9 c7 01 00 00       	jmp    10a33f <_realloc_r+0x52f>
  10a178:	48 89 ef             	mov    rdi,rbp
  10a17b:	e8 d0 e5 ff ff       	call   108750 <__malloc_unlock>
  10a180:	45 31 e4             	xor    r12d,r12d
  10a183:	e9 ce fd ff ff       	jmp    109f56 <_realloc_r+0x146>
  10a188:	49 89 f6             	mov    r14,rsi
  10a18b:	48 8b 46 10          	mov    rax,QWORD PTR [rsi+0x10]
  10a18f:	48 8b 4e 18          	mov    rcx,QWORD PTR [rsi+0x18]
  10a193:	48 8d 7e 10          	lea    rdi,[rsi+0x10]
  10a197:	48 89 48 18          	mov    QWORD PTR [rax+0x18],rcx
  10a19b:	48 89 41 10          	mov    QWORD PTR [rcx+0x10],rax
  10a19f:	49 83 c5 f8          	add    r13,0xfffffffffffffff8
  10a1a3:	49 83 fd 48          	cmp    r13,0x48
  10a1a7:	0f 87 8c 00 00 00    	ja     10a239 <_realloc_r+0x429>
  10a1ad:	49 83 fd 28          	cmp    r13,0x28
  10a1b1:	0f 82 3b 01 00 00    	jb     10a2f2 <_realloc_r+0x4e2>
  10a1b7:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
  10a1bc:	48 8b 01             	mov    rax,QWORD PTR [rcx]
  10a1bf:	48 89 07             	mov    QWORD PTR [rdi],rax
  10a1c2:	48 8b 41 08          	mov    rax,QWORD PTR [rcx+0x8]
  10a1c6:	48 89 47 08          	mov    QWORD PTR [rdi+0x8],rax
  10a1ca:	49 83 fd 38          	cmp    r13,0x38
  10a1ce:	0f 82 56 01 00 00    	jb     10a32a <_realloc_r+0x51a>
  10a1d4:	48 8b 41 10          	mov    rax,QWORD PTR [rcx+0x10]
  10a1d8:	48 89 47 10          	mov    QWORD PTR [rdi+0x10],rax
  10a1dc:	48 8b 41 18          	mov    rax,QWORD PTR [rcx+0x18]
  10a1e0:	48 89 47 18          	mov    QWORD PTR [rdi+0x18],rax
  10a1e4:	49 83 fd 48          	cmp    r13,0x48
  10a1e8:	0f 82 9d 01 00 00    	jb     10a38b <_realloc_r+0x57b>
  10a1ee:	48 8b 41 20          	mov    rax,QWORD PTR [rcx+0x20]
  10a1f2:	48 89 47 20          	mov    QWORD PTR [rdi+0x20],rax
  10a1f6:	48 8b 41 28          	mov    rax,QWORD PTR [rcx+0x28]
  10a1fa:	48 83 c1 30          	add    rcx,0x30
  10a1fe:	48 89 47 28          	mov    QWORD PTR [rdi+0x28],rax
  10a202:	48 83 c7 30          	add    rdi,0x30
  10a206:	e9 88 01 00 00       	jmp    10a393 <_realloc_r+0x583>
  10a20b:	4d 8b 54 24 f8       	mov    r10,QWORD PTR [r12-0x8]
  10a210:	49 83 e2 fc          	and    r10,0xfffffffffffffffc
  10a214:	4d 01 ea             	add    r10,r13
  10a217:	48 8b 6c 24 10       	mov    rbp,QWORD PTR [rsp+0x10]
  10a21c:	e9 d7 fc ff ff       	jmp    109ef8 <_realloc_r+0xe8>
  10a221:	4c 89 e7             	mov    rdi,r12
  10a224:	48 8b 6c 24 08       	mov    rbp,QWORD PTR [rsp+0x8]
  10a229:	48 89 ee             	mov    rsi,rbp
  10a22c:	4c 89 ea             	mov    rdx,r13
  10a22f:	e8 0c 02 00 00       	call   10a440 <memmove>
  10a234:	e9 21 01 00 00       	jmp    10a35a <_realloc_r+0x54a>
  10a239:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
  10a23e:	4c 89 ea             	mov    rdx,r13
  10a241:	e8 fa 01 00 00       	call   10a440 <memmove>
  10a246:	e9 5e 01 00 00       	jmp    10a3a9 <_realloc_r+0x599>
  10a24b:	48 89 f3             	mov    rbx,rsi
  10a24e:	48 8b 46 10          	mov    rax,QWORD PTR [rsi+0x10]
  10a252:	48 8b 4e 18          	mov    rcx,QWORD PTR [rsi+0x18]
  10a256:	4c 8d 66 10          	lea    r12,[rsi+0x10]
  10a25a:	48 89 48 18          	mov    QWORD PTR [rax+0x18],rcx
  10a25e:	48 89 41 10          	mov    QWORD PTR [rcx+0x10],rax
  10a262:	49 83 c5 f8          	add    r13,0xfffffffffffffff8
  10a266:	49 83 fd 48          	cmp    r13,0x48
  10a26a:	0f 87 99 00 00 00    	ja     10a309 <_realloc_r+0x4f9>
  10a270:	49 83 fd 28          	cmp    r13,0x28
  10a274:	0f 82 fd 00 00 00    	jb     10a377 <_realloc_r+0x567>
  10a27a:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  10a27f:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  10a282:	49 89 04 24          	mov    QWORD PTR [r12],rax
  10a286:	48 8b 42 08          	mov    rax,QWORD PTR [rdx+0x8]
  10a28a:	49 89 44 24 08       	mov    QWORD PTR [r12+0x8],rax
  10a28f:	49 83 fd 38          	cmp    r13,0x38
  10a293:	0f 82 1d 01 00 00    	jb     10a3b6 <_realloc_r+0x5a6>
  10a299:	48 8b 42 10          	mov    rax,QWORD PTR [rdx+0x10]
  10a29d:	49 89 44 24 10       	mov    QWORD PTR [r12+0x10],rax
  10a2a2:	48 8b 42 18          	mov    rax,QWORD PTR [rdx+0x18]
  10a2a6:	49 89 44 24 18       	mov    QWORD PTR [r12+0x18],rax
  10a2ab:	49 83 fd 48          	cmp    r13,0x48
  10a2af:	0f 82 2f 01 00 00    	jb     10a3e4 <_realloc_r+0x5d4>
  10a2b5:	48 8b 42 20          	mov    rax,QWORD PTR [rdx+0x20]
  10a2b9:	49 89 44 24 20       	mov    QWORD PTR [r12+0x20],rax
  10a2be:	48 8b 4a 28          	mov    rcx,QWORD PTR [rdx+0x28]
  10a2c2:	48 83 c2 30          	add    rdx,0x30
  10a2c6:	49 8d 44 24 30       	lea    rax,[r12+0x30]
  10a2cb:	49 89 4c 24 28       	mov    QWORD PTR [r12+0x28],rcx
  10a2d0:	e9 18 01 00 00       	jmp    10a3ed <_realloc_r+0x5dd>
  10a2d5:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
  10a2da:	4c 89 ea             	mov    rdx,r13
  10a2dd:	4c 89 d3             	mov    rbx,r10
  10a2e0:	e8 5b 01 00 00       	call   10a440 <memmove>
  10a2e5:	49 89 da             	mov    r10,rbx
  10a2e8:	48 8b 6c 24 10       	mov    rbp,QWORD PTR [rsp+0x10]
  10a2ed:	e9 06 fc ff ff       	jmp    109ef8 <_realloc_r+0xe8>
  10a2f2:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
  10a2f7:	e9 97 00 00 00       	jmp    10a393 <_realloc_r+0x583>
  10a2fc:	48 8d 41 10          	lea    rax,[rcx+0x10]
  10a300:	4c 89 e1             	mov    rcx,r12
  10a303:	48 83 c1 10          	add    rcx,0x10
  10a307:	eb 36                	jmp    10a33f <_realloc_r+0x52f>
  10a309:	4c 89 e7             	mov    rdi,r12
  10a30c:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
  10a311:	4c 89 ea             	mov    rdx,r13
  10a314:	4c 89 d5             	mov    rbp,r10
  10a317:	4d 89 de             	mov    r14,r11
  10a31a:	e8 21 01 00 00       	call   10a440 <memmove>
  10a31f:	4d 89 f3             	mov    r11,r14
  10a322:	49 89 ea             	mov    r10,rbp
  10a325:	e9 d9 00 00 00       	jmp    10a403 <_realloc_r+0x5f3>
  10a32a:	48 83 c1 10          	add    rcx,0x10
  10a32e:	48 83 c7 10          	add    rdi,0x10
  10a332:	eb 5f                	jmp    10a393 <_realloc_r+0x583>
  10a334:	48 8d 41 20          	lea    rax,[rcx+0x20]
  10a338:	4c 89 e1             	mov    rcx,r12
  10a33b:	48 83 c1 20          	add    rcx,0x20
  10a33f:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  10a342:	48 89 11             	mov    QWORD PTR [rcx],rdx
  10a345:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
  10a349:	48 89 51 08          	mov    QWORD PTR [rcx+0x8],rdx
  10a34d:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
  10a351:	48 89 41 10          	mov    QWORD PTR [rcx+0x10],rax
  10a355:	48 8b 6c 24 08       	mov    rbp,QWORD PTR [rsp+0x8]
  10a35a:	48 8b 5c 24 10       	mov    rbx,QWORD PTR [rsp+0x10]
  10a35f:	48 89 df             	mov    rdi,rbx
  10a362:	48 89 ee             	mov    rsi,rbp
  10a365:	e8 66 e5 ff ff       	call   1088d0 <_free_r>
  10a36a:	48 89 df             	mov    rdi,rbx
  10a36d:	e8 de e3 ff ff       	call   108750 <__malloc_unlock>
  10a372:	e9 df fb ff ff       	jmp    109f56 <_realloc_r+0x146>
  10a377:	4c 89 e0             	mov    rax,r12
  10a37a:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  10a37f:	eb 6c                	jmp    10a3ed <_realloc_r+0x5dd>
  10a381:	48 83 c1 10          	add    rcx,0x10
  10a385:	48 83 c7 10          	add    rdi,0x10
  10a389:	eb 3e                	jmp    10a3c9 <_realloc_r+0x5b9>
  10a38b:	48 83 c1 20          	add    rcx,0x20
  10a38f:	48 83 c7 20          	add    rdi,0x20
  10a393:	48 8b 01             	mov    rax,QWORD PTR [rcx]
  10a396:	48 89 07             	mov    QWORD PTR [rdi],rax
  10a399:	48 8b 41 08          	mov    rax,QWORD PTR [rcx+0x8]
  10a39d:	48 89 47 08          	mov    QWORD PTR [rdi+0x8],rax
  10a3a1:	48 8b 41 10          	mov    rax,QWORD PTR [rcx+0x10]
  10a3a5:	48 89 47 10          	mov    QWORD PTR [rdi+0x10],rax
  10a3a9:	4d 89 e2             	mov    r10,r12
  10a3ac:	48 8b 6c 24 10       	mov    rbp,QWORD PTR [rsp+0x10]
  10a3b1:	e9 42 fb ff ff       	jmp    109ef8 <_realloc_r+0xe8>
  10a3b6:	48 83 c2 10          	add    rdx,0x10
  10a3ba:	49 8d 44 24 10       	lea    rax,[r12+0x10]
  10a3bf:	eb 2c                	jmp    10a3ed <_realloc_r+0x5dd>
  10a3c1:	48 83 c1 20          	add    rcx,0x20
  10a3c5:	48 83 c7 20          	add    rdi,0x20
  10a3c9:	48 8b 01             	mov    rax,QWORD PTR [rcx]
  10a3cc:	48 89 07             	mov    QWORD PTR [rdi],rax
  10a3cf:	48 8b 41 08          	mov    rax,QWORD PTR [rcx+0x8]
  10a3d3:	48 89 47 08          	mov    QWORD PTR [rdi+0x8],rax
  10a3d7:	48 8b 41 10          	mov    rax,QWORD PTR [rcx+0x10]
  10a3db:	48 89 47 10          	mov    QWORD PTR [rdi+0x10],rax
  10a3df:	e9 14 fb ff ff       	jmp    109ef8 <_realloc_r+0xe8>
  10a3e4:	48 83 c2 20          	add    rdx,0x20
  10a3e8:	49 8d 44 24 20       	lea    rax,[r12+0x20]
  10a3ed:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  10a3f0:	48 89 08             	mov    QWORD PTR [rax],rcx
  10a3f3:	48 8b 4a 08          	mov    rcx,QWORD PTR [rdx+0x8]
  10a3f7:	48 89 48 08          	mov    QWORD PTR [rax+0x8],rcx
  10a3fb:	48 8b 4a 10          	mov    rcx,QWORD PTR [rdx+0x10]
  10a3ff:	48 89 48 10          	mov    QWORD PTR [rax+0x10],rcx
  10a403:	4a 8d 04 3b          	lea    rax,[rbx+r15*1]
  10a407:	49 89 43 10          	mov    QWORD PTR [r11+0x10],rax
  10a40b:	4d 29 fa             	sub    r10,r15
  10a40e:	49 83 ca 01          	or     r10,0x1
  10a412:	4e 89 54 3b 08       	mov    QWORD PTR [rbx+r15*1+0x8],r10
  10a417:	48 8b 43 08          	mov    rax,QWORD PTR [rbx+0x8]
  10a41b:	83 e0 01             	and    eax,0x1
  10a41e:	4c 09 f8             	or     rax,r15
  10a421:	48 89 43 08          	mov    QWORD PTR [rbx+0x8],rax
  10a425:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
  10a42a:	e8 21 e3 ff ff       	call   108750 <__malloc_unlock>
  10a42f:	e9 22 fb ff ff       	jmp    109f56 <_realloc_r+0x146>
  10a434:	cc                   	int3
  10a435:	cc                   	int3
  10a436:	cc                   	int3
  10a437:	cc                   	int3
  10a438:	cc                   	int3
  10a439:	cc                   	int3
  10a43a:	cc                   	int3
  10a43b:	cc                   	int3
  10a43c:	cc                   	int3
  10a43d:	cc                   	int3
  10a43e:	cc                   	int3
  10a43f:	cc                   	int3

000000000010a440 <memmove>:
  10a440:	55                   	push   rbp
  10a441:	41 56                	push   r14
  10a443:	53                   	push   rbx
  10a444:	48 89 f8             	mov    rax,rdi
  10a447:	48 39 fe             	cmp    rsi,rdi
  10a44a:	0f 83 d6 00 00 00    	jae    10a526 <memmove+0xe6>
  10a450:	4c 8d 0c 16          	lea    r9,[rsi+rdx*1]
  10a454:	49 39 c1             	cmp    r9,rax
  10a457:	0f 86 c9 00 00 00    	jbe    10a526 <memmove+0xe6>
  10a45d:	48 85 d2             	test   rdx,rdx
  10a460:	0f 84 29 04 00 00    	je     10a88f <memmove+0x44f>
  10a466:	4c 8d 04 10          	lea    r8,[rax+rdx*1]
  10a46a:	48 83 fa 04          	cmp    rdx,0x4
  10a46e:	72 14                	jb     10a484 <memmove+0x44>
  10a470:	48 8d 0c 16          	lea    rcx,[rsi+rdx*1]
  10a474:	48 29 c1             	sub    rcx,rax
  10a477:	48 29 d1             	sub    rcx,rdx
  10a47a:	48 83 f9 10          	cmp    rcx,0x10
  10a47e:	0f 83 67 03 00 00    	jae    10a7eb <memmove+0x3ab>
  10a484:	4c 89 ce             	mov    rsi,r9
  10a487:	4c 89 c1             	mov    rcx,r8
  10a48a:	49 89 d2             	mov    r10,rdx
  10a48d:	4d 8d 42 ff          	lea    r8,[r10-0x1]
  10a491:	4c 89 d7             	mov    rdi,r10
  10a494:	48 83 e7 07          	and    rdi,0x7
  10a498:	74 1e                	je     10a4b8 <memmove+0x78>
  10a49a:	31 d2                	xor    edx,edx
  10a49c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  10a4a0:	0f b6 5e ff          	movzx  ebx,BYTE PTR [rsi-0x1]
  10a4a4:	48 ff ce             	dec    rsi
  10a4a7:	88 59 ff             	mov    BYTE PTR [rcx-0x1],bl
  10a4aa:	48 ff c9             	dec    rcx
  10a4ad:	48 ff c2             	inc    rdx
  10a4b0:	48 39 d7             	cmp    rdi,rdx
  10a4b3:	75 eb                	jne    10a4a0 <memmove+0x60>
  10a4b5:	49 29 d2             	sub    r10,rdx
  10a4b8:	49 83 f8 07          	cmp    r8,0x7
  10a4bc:	0f 82 cd 03 00 00    	jb     10a88f <memmove+0x44f>
  10a4c2:	49 f7 da             	neg    r10
  10a4c5:	31 d2                	xor    edx,edx
  10a4c7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  10a4ce:	00 00 
  10a4d0:	0f b6 5c 16 ff       	movzx  ebx,BYTE PTR [rsi+rdx*1-0x1]
  10a4d5:	88 5c 11 ff          	mov    BYTE PTR [rcx+rdx*1-0x1],bl
  10a4d9:	0f b6 5c 16 fe       	movzx  ebx,BYTE PTR [rsi+rdx*1-0x2]
  10a4de:	88 5c 11 fe          	mov    BYTE PTR [rcx+rdx*1-0x2],bl
  10a4e2:	0f b6 5c 16 fd       	movzx  ebx,BYTE PTR [rsi+rdx*1-0x3]
  10a4e7:	88 5c 11 fd          	mov    BYTE PTR [rcx+rdx*1-0x3],bl
  10a4eb:	0f b6 5c 16 fc       	movzx  ebx,BYTE PTR [rsi+rdx*1-0x4]
  10a4f0:	88 5c 11 fc          	mov    BYTE PTR [rcx+rdx*1-0x4],bl
  10a4f4:	0f b6 5c 16 fb       	movzx  ebx,BYTE PTR [rsi+rdx*1-0x5]
  10a4f9:	88 5c 11 fb          	mov    BYTE PTR [rcx+rdx*1-0x5],bl
  10a4fd:	0f b6 5c 16 fa       	movzx  ebx,BYTE PTR [rsi+rdx*1-0x6]
  10a502:	88 5c 11 fa          	mov    BYTE PTR [rcx+rdx*1-0x6],bl
  10a506:	0f b6 5c 16 f9       	movzx  ebx,BYTE PTR [rsi+rdx*1-0x7]
  10a50b:	88 5c 11 f9          	mov    BYTE PTR [rcx+rdx*1-0x7],bl
  10a50f:	0f b6 5c 16 f8       	movzx  ebx,BYTE PTR [rsi+rdx*1-0x8]
  10a514:	88 5c 11 f8          	mov    BYTE PTR [rcx+rdx*1-0x8],bl
  10a518:	48 83 c2 f8          	add    rdx,0xfffffffffffffff8
  10a51c:	49 39 d2             	cmp    r10,rdx
  10a51f:	75 af                	jne    10a4d0 <memmove+0x90>
  10a521:	e9 69 03 00 00       	jmp    10a88f <memmove+0x44f>
  10a526:	48 83 fa 20          	cmp    rdx,0x20
  10a52a:	73 17                	jae    10a543 <memmove+0x103>
  10a52c:	49 89 c0             	mov    r8,rax
  10a52f:	48 85 d2             	test   rdx,rdx
  10a532:	0f 84 57 03 00 00    	je     10a88f <memmove+0x44f>
  10a538:	48 83 fa 08          	cmp    rdx,0x8
  10a53c:	73 1b                	jae    10a559 <memmove+0x119>
  10a53e:	e9 c2 02 00 00       	jmp    10a805 <memmove+0x3c5>
  10a543:	89 f1                	mov    ecx,esi
  10a545:	09 c1                	or     ecx,eax
  10a547:	f6 c1 07             	test   cl,0x7
  10a54a:	74 2f                	je     10a57b <memmove+0x13b>
  10a54c:	49 89 c0             	mov    r8,rax
  10a54f:	48 83 fa 08          	cmp    rdx,0x8
  10a553:	0f 82 ac 02 00 00    	jb     10a805 <memmove+0x3c5>
  10a559:	4c 89 c1             	mov    rcx,r8
  10a55c:	48 29 f1             	sub    rcx,rsi
  10a55f:	48 83 f9 20          	cmp    rcx,0x20
  10a563:	0f 82 9c 02 00 00    	jb     10a805 <memmove+0x3c5>
  10a569:	48 83 fa 20          	cmp    rdx,0x20
  10a56d:	0f 83 e6 00 00 00    	jae    10a659 <memmove+0x219>
  10a573:	45 31 c9             	xor    r9d,r9d
  10a576:	e9 3e 02 00 00       	jmp    10a7b9 <memmove+0x379>
  10a57b:	4c 8d 5a e0          	lea    r11,[rdx-0x20]
  10a57f:	41 f6 c3 20          	test   r11b,0x20
  10a583:	0f 85 fd 00 00 00    	jne    10a686 <memmove+0x246>
  10a589:	48 8b 0e             	mov    rcx,QWORD PTR [rsi]
  10a58c:	48 89 08             	mov    QWORD PTR [rax],rcx
  10a58f:	48 8b 4e 08          	mov    rcx,QWORD PTR [rsi+0x8]
  10a593:	48 89 48 08          	mov    QWORD PTR [rax+0x8],rcx
  10a597:	48 8b 4e 10          	mov    rcx,QWORD PTR [rsi+0x10]
  10a59b:	48 89 48 10          	mov    QWORD PTR [rax+0x10],rcx
  10a59f:	48 8b 4e 18          	mov    rcx,QWORD PTR [rsi+0x18]
  10a5a3:	48 83 c6 20          	add    rsi,0x20
  10a5a7:	4c 8d 40 20          	lea    r8,[rax+0x20]
  10a5ab:	48 89 48 18          	mov    QWORD PTR [rax+0x18],rcx
  10a5af:	4c 89 d9             	mov    rcx,r11
  10a5b2:	49 83 fb 20          	cmp    r11,0x20
  10a5b6:	0f 83 e4 00 00 00    	jae    10a6a0 <memmove+0x260>
  10a5bc:	49 83 fb 08          	cmp    r11,0x8
  10a5c0:	0f 82 3b 01 00 00    	jb     10a701 <memmove+0x2c1>
  10a5c6:	48 83 c2 d8          	add    rdx,0xffffffffffffffd8
  10a5ca:	48 83 fa 28          	cmp    rdx,0x28
  10a5ce:	0f 82 24 03 00 00    	jb     10a8f8 <memmove+0x4b8>
  10a5d4:	4c 89 c1             	mov    rcx,r8
  10a5d7:	48 29 f1             	sub    rcx,rsi
  10a5da:	48 83 f9 20          	cmp    rcx,0x20
  10a5de:	0f 82 14 03 00 00    	jb     10a8f8 <memmove+0x4b8>
  10a5e4:	48 c1 ea 03          	shr    rdx,0x3
  10a5e8:	48 ff c2             	inc    rdx
  10a5eb:	49 89 d1             	mov    r9,rdx
  10a5ee:	49 83 e1 fc          	and    r9,0xfffffffffffffffc
  10a5f2:	49 8d 49 fc          	lea    rcx,[r9-0x4]
  10a5f6:	49 89 ca             	mov    r10,rcx
  10a5f9:	49 c1 ea 02          	shr    r10,0x2
  10a5fd:	49 ff c2             	inc    r10
  10a600:	48 85 c9             	test   rcx,rcx
  10a603:	0f 84 b4 02 00 00    	je     10a8bd <memmove+0x47d>
  10a609:	4c 89 d7             	mov    rdi,r10
  10a60c:	48 83 e7 fe          	and    rdi,0xfffffffffffffffe
  10a610:	31 c9                	xor    ecx,ecx
  10a612:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10a619:	1f 84 00 00 00 00 00 
  10a620:	0f 10 04 ce          	movups xmm0,XMMWORD PTR [rsi+rcx*8]
  10a624:	0f 10 4c ce 10       	movups xmm1,XMMWORD PTR [rsi+rcx*8+0x10]
  10a629:	41 0f 11 04 c8       	movups XMMWORD PTR [r8+rcx*8],xmm0
  10a62e:	41 0f 11 4c c8 10    	movups XMMWORD PTR [r8+rcx*8+0x10],xmm1
  10a634:	0f 10 44 ce 20       	movups xmm0,XMMWORD PTR [rsi+rcx*8+0x20]
  10a639:	0f 10 4c ce 30       	movups xmm1,XMMWORD PTR [rsi+rcx*8+0x30]
  10a63e:	41 0f 11 44 c8 20    	movups XMMWORD PTR [r8+rcx*8+0x20],xmm0
  10a644:	41 0f 11 4c c8 30    	movups XMMWORD PTR [r8+rcx*8+0x30],xmm1
  10a64a:	48 83 c1 08          	add    rcx,0x8
  10a64e:	48 83 c7 fe          	add    rdi,0xfffffffffffffffe
  10a652:	75 cc                	jne    10a620 <memmove+0x1e0>
  10a654:	e9 66 02 00 00       	jmp    10a8bf <memmove+0x47f>
  10a659:	49 89 d1             	mov    r9,rdx
  10a65c:	49 83 e1 e0          	and    r9,0xffffffffffffffe0
  10a660:	49 8d 49 e0          	lea    rcx,[r9-0x20]
  10a664:	48 89 cf             	mov    rdi,rcx
  10a667:	48 c1 ef 05          	shr    rdi,0x5
  10a66b:	48 ff c7             	inc    rdi
  10a66e:	41 89 fa             	mov    r10d,edi
  10a671:	41 83 e2 03          	and    r10d,0x3
  10a675:	48 83 f9 60          	cmp    rcx,0x60
  10a679:	0f 83 8a 00 00 00    	jae    10a709 <memmove+0x2c9>
  10a67f:	31 c9                	xor    ecx,ecx
  10a681:	e9 ea 00 00 00       	jmp    10a770 <memmove+0x330>
  10a686:	49 89 c0             	mov    r8,rax
  10a689:	48 89 d1             	mov    rcx,rdx
  10a68c:	49 83 fb 20          	cmp    r11,0x20
  10a690:	0f 82 26 ff ff ff    	jb     10a5bc <memmove+0x17c>
  10a696:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10a69d:	00 00 00 
  10a6a0:	48 8b 16             	mov    rdx,QWORD PTR [rsi]
  10a6a3:	49 89 10             	mov    QWORD PTR [r8],rdx
  10a6a6:	48 8b 56 08          	mov    rdx,QWORD PTR [rsi+0x8]
  10a6aa:	49 89 50 08          	mov    QWORD PTR [r8+0x8],rdx
  10a6ae:	48 8b 56 10          	mov    rdx,QWORD PTR [rsi+0x10]
  10a6b2:	49 89 50 10          	mov    QWORD PTR [r8+0x10],rdx
  10a6b6:	48 8b 56 18          	mov    rdx,QWORD PTR [rsi+0x18]
  10a6ba:	49 89 50 18          	mov    QWORD PTR [r8+0x18],rdx
  10a6be:	48 8b 56 20          	mov    rdx,QWORD PTR [rsi+0x20]
  10a6c2:	49 89 50 20          	mov    QWORD PTR [r8+0x20],rdx
  10a6c6:	48 8b 56 28          	mov    rdx,QWORD PTR [rsi+0x28]
  10a6ca:	49 89 50 28          	mov    QWORD PTR [r8+0x28],rdx
  10a6ce:	48 8b 56 30          	mov    rdx,QWORD PTR [rsi+0x30]
  10a6d2:	49 89 50 30          	mov    QWORD PTR [r8+0x30],rdx
  10a6d6:	48 8b 56 38          	mov    rdx,QWORD PTR [rsi+0x38]
  10a6da:	48 83 c6 40          	add    rsi,0x40
  10a6de:	49 89 50 38          	mov    QWORD PTR [r8+0x38],rdx
  10a6e2:	49 83 c0 40          	add    r8,0x40
  10a6e6:	48 83 c1 c0          	add    rcx,0xffffffffffffffc0
  10a6ea:	48 83 f9 1f          	cmp    rcx,0x1f
  10a6ee:	77 b0                	ja     10a6a0 <memmove+0x260>
  10a6f0:	48 8d 51 20          	lea    rdx,[rcx+0x20]
  10a6f4:	49 89 cb             	mov    r11,rcx
  10a6f7:	49 83 fb 08          	cmp    r11,0x8
  10a6fb:	0f 83 c5 fe ff ff    	jae    10a5c6 <memmove+0x186>
  10a701:	4c 89 da             	mov    rdx,r11
  10a704:	e9 26 fe ff ff       	jmp    10a52f <memmove+0xef>
  10a709:	48 83 e7 fc          	and    rdi,0xfffffffffffffffc
  10a70d:	31 c9                	xor    ecx,ecx
  10a70f:	90                   	nop
  10a710:	0f 10 04 0e          	movups xmm0,XMMWORD PTR [rsi+rcx*1]
  10a714:	0f 10 4c 0e 10       	movups xmm1,XMMWORD PTR [rsi+rcx*1+0x10]
  10a719:	41 0f 11 04 08       	movups XMMWORD PTR [r8+rcx*1],xmm0
  10a71e:	41 0f 11 4c 08 10    	movups XMMWORD PTR [r8+rcx*1+0x10],xmm1
  10a724:	0f 10 44 0e 20       	movups xmm0,XMMWORD PTR [rsi+rcx*1+0x20]
  10a729:	0f 10 4c 0e 30       	movups xmm1,XMMWORD PTR [rsi+rcx*1+0x30]
  10a72e:	41 0f 11 44 08 20    	movups XMMWORD PTR [r8+rcx*1+0x20],xmm0
  10a734:	41 0f 11 4c 08 30    	movups XMMWORD PTR [r8+rcx*1+0x30],xmm1
  10a73a:	0f 10 44 0e 40       	movups xmm0,XMMWORD PTR [rsi+rcx*1+0x40]
  10a73f:	0f 10 4c 0e 50       	movups xmm1,XMMWORD PTR [rsi+rcx*1+0x50]
  10a744:	41 0f 11 44 08 40    	movups XMMWORD PTR [r8+rcx*1+0x40],xmm0
  10a74a:	41 0f 11 4c 08 50    	movups XMMWORD PTR [r8+rcx*1+0x50],xmm1
  10a750:	0f 10 44 0e 60       	movups xmm0,XMMWORD PTR [rsi+rcx*1+0x60]
  10a755:	0f 10 4c 0e 70       	movups xmm1,XMMWORD PTR [rsi+rcx*1+0x70]
  10a75a:	41 0f 11 44 08 60    	movups XMMWORD PTR [r8+rcx*1+0x60],xmm0
  10a760:	41 0f 11 4c 08 70    	movups XMMWORD PTR [r8+rcx*1+0x70],xmm1
  10a766:	48 83 e9 80          	sub    rcx,0xffffffffffffff80
  10a76a:	48 83 c7 fc          	add    rdi,0xfffffffffffffffc
  10a76e:	75 a0                	jne    10a710 <memmove+0x2d0>
  10a770:	4d 85 d2             	test   r10,r10
  10a773:	74 36                	je     10a7ab <memmove+0x36b>
  10a775:	49 8d 3c 08          	lea    rdi,[r8+rcx*1]
  10a779:	48 83 c7 10          	add    rdi,0x10
  10a77d:	48 01 f1             	add    rcx,rsi
  10a780:	48 83 c1 10          	add    rcx,0x10
  10a784:	49 c1 e2 05          	shl    r10,0x5
  10a788:	31 db                	xor    ebx,ebx
  10a78a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  10a790:	0f 10 44 19 f0       	movups xmm0,XMMWORD PTR [rcx+rbx*1-0x10]
  10a795:	0f 10 0c 19          	movups xmm1,XMMWORD PTR [rcx+rbx*1]
  10a799:	0f 11 44 1f f0       	movups XMMWORD PTR [rdi+rbx*1-0x10],xmm0
  10a79e:	0f 11 0c 1f          	movups XMMWORD PTR [rdi+rbx*1],xmm1
  10a7a2:	48 83 c3 20          	add    rbx,0x20
  10a7a6:	49 39 da             	cmp    r10,rbx
  10a7a9:	75 e5                	jne    10a790 <memmove+0x350>
  10a7ab:	4c 39 ca             	cmp    rdx,r9
  10a7ae:	0f 84 db 00 00 00    	je     10a88f <memmove+0x44f>
  10a7b4:	f6 c2 18             	test   dl,0x18
  10a7b7:	74 43                	je     10a7fc <memmove+0x3bc>
  10a7b9:	48 89 d3             	mov    rbx,rdx
  10a7bc:	48 83 e3 f8          	and    rbx,0xfffffffffffffff8
  10a7c0:	48 8d 0c 1e          	lea    rcx,[rsi+rbx*1]
  10a7c4:	49 8d 3c 18          	lea    rdi,[r8+rbx*1]
  10a7c8:	41 89 d2             	mov    r10d,edx
  10a7cb:	41 83 e2 07          	and    r10d,0x7
  10a7cf:	90                   	nop
  10a7d0:	4a 8b 2c 0e          	mov    rbp,QWORD PTR [rsi+r9*1]
  10a7d4:	4b 89 2c 08          	mov    QWORD PTR [r8+r9*1],rbp
  10a7d8:	49 83 c1 08          	add    r9,0x8
  10a7dc:	4c 39 cb             	cmp    rbx,r9
  10a7df:	75 ef                	jne    10a7d0 <memmove+0x390>
  10a7e1:	48 39 da             	cmp    rdx,rbx
  10a7e4:	75 28                	jne    10a80e <memmove+0x3ce>
  10a7e6:	e9 a4 00 00 00       	jmp    10a88f <memmove+0x44f>
  10a7eb:	48 83 fa 10          	cmp    rdx,0x10
  10a7ef:	0f 83 9f 00 00 00    	jae    10a894 <memmove+0x454>
  10a7f5:	31 ff                	xor    edi,edi
  10a7f7:	e9 b7 01 00 00       	jmp    10a9b3 <memmove+0x573>
  10a7fc:	83 e2 1f             	and    edx,0x1f
  10a7ff:	4d 01 c8             	add    r8,r9
  10a802:	4c 01 ce             	add    rsi,r9
  10a805:	48 89 f1             	mov    rcx,rsi
  10a808:	4c 89 c7             	mov    rdi,r8
  10a80b:	49 89 d2             	mov    r10,rdx
  10a80e:	49 8d 6a ff          	lea    rbp,[r10-0x1]
  10a812:	4c 89 d3             	mov    rbx,r10
  10a815:	48 83 e3 07          	and    rbx,0x7
  10a819:	74 1d                	je     10a838 <memmove+0x3f8>
  10a81b:	31 f6                	xor    esi,esi
  10a81d:	0f 1f 00             	nop    DWORD PTR [rax]
  10a820:	0f b6 14 31          	movzx  edx,BYTE PTR [rcx+rsi*1]
  10a824:	88 14 37             	mov    BYTE PTR [rdi+rsi*1],dl
  10a827:	48 ff c6             	inc    rsi
  10a82a:	48 39 f3             	cmp    rbx,rsi
  10a82d:	75 f1                	jne    10a820 <memmove+0x3e0>
  10a82f:	48 01 f1             	add    rcx,rsi
  10a832:	48 01 f7             	add    rdi,rsi
  10a835:	49 29 f2             	sub    r10,rsi
  10a838:	48 83 fd 07          	cmp    rbp,0x7
  10a83c:	72 51                	jb     10a88f <memmove+0x44f>
  10a83e:	31 d2                	xor    edx,edx
  10a840:	0f b6 1c 11          	movzx  ebx,BYTE PTR [rcx+rdx*1]
  10a844:	88 1c 17             	mov    BYTE PTR [rdi+rdx*1],bl
  10a847:	0f b6 5c 11 01       	movzx  ebx,BYTE PTR [rcx+rdx*1+0x1]
  10a84c:	88 5c 17 01          	mov    BYTE PTR [rdi+rdx*1+0x1],bl
  10a850:	0f b6 5c 11 02       	movzx  ebx,BYTE PTR [rcx+rdx*1+0x2]
  10a855:	88 5c 17 02          	mov    BYTE PTR [rdi+rdx*1+0x2],bl
  10a859:	0f b6 5c 11 03       	movzx  ebx,BYTE PTR [rcx+rdx*1+0x3]
  10a85e:	88 5c 17 03          	mov    BYTE PTR [rdi+rdx*1+0x3],bl
  10a862:	0f b6 5c 11 04       	movzx  ebx,BYTE PTR [rcx+rdx*1+0x4]
  10a867:	88 5c 17 04          	mov    BYTE PTR [rdi+rdx*1+0x4],bl
  10a86b:	0f b6 5c 11 05       	movzx  ebx,BYTE PTR [rcx+rdx*1+0x5]
  10a870:	88 5c 17 05          	mov    BYTE PTR [rdi+rdx*1+0x5],bl
  10a874:	0f b6 5c 11 06       	movzx  ebx,BYTE PTR [rcx+rdx*1+0x6]
  10a879:	88 5c 17 06          	mov    BYTE PTR [rdi+rdx*1+0x6],bl
  10a87d:	0f b6 5c 11 07       	movzx  ebx,BYTE PTR [rcx+rdx*1+0x7]
  10a882:	88 5c 17 07          	mov    BYTE PTR [rdi+rdx*1+0x7],bl
  10a886:	48 83 c2 08          	add    rdx,0x8
  10a88a:	49 39 d2             	cmp    r10,rdx
  10a88d:	75 b1                	jne    10a840 <memmove+0x400>
  10a88f:	5b                   	pop    rbx
  10a890:	41 5e                	pop    r14
  10a892:	5d                   	pop    rbp
  10a893:	c3                   	ret
  10a894:	48 89 d7             	mov    rdi,rdx
  10a897:	48 83 e7 f0          	and    rdi,0xfffffffffffffff0
  10a89b:	48 8d 4f f0          	lea    rcx,[rdi-0x10]
  10a89f:	49 89 cb             	mov    r11,rcx
  10a8a2:	49 c1 eb 04          	shr    r11,0x4
  10a8a6:	49 ff c3             	inc    r11
  10a8a9:	45 89 da             	mov    r10d,r11d
  10a8ac:	41 83 e2 03          	and    r10d,0x3
  10a8b0:	48 83 f9 30          	cmp    rcx,0x30
  10a8b4:	73 67                	jae    10a91d <memmove+0x4dd>
  10a8b6:	31 c9                	xor    ecx,ecx
  10a8b8:	e9 aa 00 00 00       	jmp    10a967 <memmove+0x527>
  10a8bd:	31 c9                	xor    ecx,ecx
  10a8bf:	4a 8d 3c cd 00 00 00 	lea    rdi,[r9*8+0x0]
  10a8c6:	00 
  10a8c7:	41 f6 c2 01          	test   r10b,0x1
  10a8cb:	74 14                	je     10a8e1 <memmove+0x4a1>
  10a8cd:	0f 10 04 ce          	movups xmm0,XMMWORD PTR [rsi+rcx*8]
  10a8d1:	0f 10 4c ce 10       	movups xmm1,XMMWORD PTR [rsi+rcx*8+0x10]
  10a8d6:	41 0f 11 04 c8       	movups XMMWORD PTR [r8+rcx*8],xmm0
  10a8db:	41 0f 11 4c c8 10    	movups XMMWORD PTR [r8+rcx*8+0x10],xmm1
  10a8e1:	4a 8d 34 ce          	lea    rsi,[rsi+r9*8]
  10a8e5:	4f 8d 04 c8          	lea    r8,[r8+r9*8]
  10a8e9:	49 29 fb             	sub    r11,rdi
  10a8ec:	4c 39 ca             	cmp    rdx,r9
  10a8ef:	4c 89 da             	mov    rdx,r11
  10a8f2:	0f 84 37 fc ff ff    	je     10a52f <memmove+0xef>
  10a8f8:	4c 89 da             	mov    rdx,r11
  10a8fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  10a900:	48 8b 0e             	mov    rcx,QWORD PTR [rsi]
  10a903:	48 83 c6 08          	add    rsi,0x8
  10a907:	49 89 08             	mov    QWORD PTR [r8],rcx
  10a90a:	49 83 c0 08          	add    r8,0x8
  10a90e:	48 83 c2 f8          	add    rdx,0xfffffffffffffff8
  10a912:	48 83 fa 07          	cmp    rdx,0x7
  10a916:	77 e8                	ja     10a900 <memmove+0x4c0>
  10a918:	e9 12 fc ff ff       	jmp    10a52f <memmove+0xef>
  10a91d:	49 83 e3 fc          	and    r11,0xfffffffffffffffc
  10a921:	4d 8d 71 f0          	lea    r14,[r9-0x10]
  10a925:	49 8d 58 f0          	lea    rbx,[r8-0x10]
  10a929:	31 c9                	xor    ecx,ecx
  10a92b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  10a930:	41 0f 10 04 0e       	movups xmm0,XMMWORD PTR [r14+rcx*1]
  10a935:	0f 11 04 0b          	movups XMMWORD PTR [rbx+rcx*1],xmm0
  10a939:	41 0f 10 44 0e f0    	movups xmm0,XMMWORD PTR [r14+rcx*1-0x10]
  10a93f:	0f 11 44 0b f0       	movups XMMWORD PTR [rbx+rcx*1-0x10],xmm0
  10a944:	41 0f 10 44 0e e0    	movups xmm0,XMMWORD PTR [r14+rcx*1-0x20]
  10a94a:	0f 11 44 0b e0       	movups XMMWORD PTR [rbx+rcx*1-0x20],xmm0
  10a94f:	41 0f 10 44 0e d0    	movups xmm0,XMMWORD PTR [r14+rcx*1-0x30]
  10a955:	0f 11 44 0b d0       	movups XMMWORD PTR [rbx+rcx*1-0x30],xmm0
  10a95a:	48 83 c1 c0          	add    rcx,0xffffffffffffffc0
  10a95e:	49 83 c3 fc          	add    r11,0xfffffffffffffffc
  10a962:	75 cc                	jne    10a930 <memmove+0x4f0>
  10a964:	48 f7 d9             	neg    rcx
  10a967:	4d 85 d2             	test   r10,r10
  10a96a:	74 39                	je     10a9a5 <memmove+0x565>
  10a96c:	48 89 d3             	mov    rbx,rdx
  10a96f:	48 29 cb             	sub    rbx,rcx
  10a972:	4c 8d 1c 18          	lea    r11,[rax+rbx*1]
  10a976:	49 83 c3 f0          	add    r11,0xfffffffffffffff0
  10a97a:	48 01 de             	add    rsi,rbx
  10a97d:	48 83 c6 f0          	add    rsi,0xfffffffffffffff0
  10a981:	49 c1 e2 04          	shl    r10,0x4
  10a985:	31 db                	xor    ebx,ebx
  10a987:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  10a98e:	00 00 
  10a990:	0f 10 04 1e          	movups xmm0,XMMWORD PTR [rsi+rbx*1]
  10a994:	41 0f 11 04 1b       	movups XMMWORD PTR [r11+rbx*1],xmm0
  10a999:	48 83 c3 f0          	add    rbx,0xfffffffffffffff0
  10a99d:	4c 89 d1             	mov    rcx,r10
  10a9a0:	48 01 d9             	add    rcx,rbx
  10a9a3:	75 eb                	jne    10a990 <memmove+0x550>
  10a9a5:	48 39 d7             	cmp    rdi,rdx
  10a9a8:	0f 84 e1 fe ff ff    	je     10a88f <memmove+0x44f>
  10a9ae:	f6 c2 0c             	test   dl,0xc
  10a9b1:	74 4e                	je     10aa01 <memmove+0x5c1>
  10a9b3:	49 89 d3             	mov    r11,rdx
  10a9b6:	49 83 e3 fc          	and    r11,0xfffffffffffffffc
  10a9ba:	4c 89 db             	mov    rbx,r11
  10a9bd:	48 f7 db             	neg    rbx
  10a9c0:	4c 89 ce             	mov    rsi,r9
  10a9c3:	4c 29 de             	sub    rsi,r11
  10a9c6:	4c 89 c1             	mov    rcx,r8
  10a9c9:	4c 29 d9             	sub    rcx,r11
  10a9cc:	41 89 d2             	mov    r10d,edx
  10a9cf:	41 83 e2 03          	and    r10d,0x3
  10a9d3:	48 f7 df             	neg    rdi
  10a9d6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10a9dd:	00 00 00 
  10a9e0:	41 8b 6c 39 fc       	mov    ebp,DWORD PTR [r9+rdi*1-0x4]
  10a9e5:	41 89 6c 38 fc       	mov    DWORD PTR [r8+rdi*1-0x4],ebp
  10a9ea:	48 83 c7 fc          	add    rdi,0xfffffffffffffffc
  10a9ee:	48 39 fb             	cmp    rbx,rdi
  10a9f1:	75 ed                	jne    10a9e0 <memmove+0x5a0>
  10a9f3:	49 39 d3             	cmp    r11,rdx
  10a9f6:	0f 85 91 fa ff ff    	jne    10a48d <memmove+0x4d>
  10a9fc:	e9 8e fe ff ff       	jmp    10a88f <memmove+0x44f>
  10aa01:	83 e2 0f             	and    edx,0xf
  10aa04:	49 29 f8             	sub    r8,rdi
  10aa07:	49 29 f9             	sub    r9,rdi
  10aa0a:	e9 75 fa ff ff       	jmp    10a484 <memmove+0x44>
  10aa0f:	cc                   	int3

000000000010aa10 <memcpy>:
  10aa10:	48 89 f8             	mov    rax,rdi
  10aa13:	48 83 fa 10          	cmp    rdx,0x10
  10aa17:	0f 82 fa 00 00 00    	jb     10ab17 <byte_copy>
  10aa1d:	49 89 f8             	mov    r8,rdi
  10aa20:	49 83 e0 07          	and    r8,0x7
  10aa24:	74 0f                	je     10aa35 <quadword_aligned>
  10aa26:	48 c7 c1 08 00 00 00 	mov    rcx,0x8
  10aa2d:	4c 29 c1             	sub    rcx,r8
  10aa30:	48 29 ca             	sub    rdx,rcx
  10aa33:	f3 a4                	rep movs BYTE PTR es:[rdi],BYTE PTR ds:[rsi]

000000000010aa35 <quadword_aligned>:
  10aa35:	48 81 fa 00 01 00 00 	cmp    rdx,0x100
  10aa3c:	0f 82 db 00 00 00    	jb     10ab1d <quadword_copy>
  10aa42:	50                   	push   rax
  10aa43:	41 54                	push   r12
  10aa45:	41 55                	push   r13
  10aa47:	41 56                	push   r14
  10aa49:	48 89 d1             	mov    rcx,rdx
  10aa4c:	48 c1 e9 07          	shr    rcx,0x7

000000000010aa50 <loop>:
  10aa50:	0f 18 86 00 03 00 00 	prefetchnta BYTE PTR [rsi+0x300]
  10aa57:	0f 18 86 40 03 00 00 	prefetchnta BYTE PTR [rsi+0x340]
  10aa5e:	48 8b 06             	mov    rax,QWORD PTR [rsi]
  10aa61:	4c 8b 46 08          	mov    r8,QWORD PTR [rsi+0x8]
  10aa65:	4c 8b 4e 10          	mov    r9,QWORD PTR [rsi+0x10]
  10aa69:	4c 8b 56 18          	mov    r10,QWORD PTR [rsi+0x18]
  10aa6d:	4c 8b 5e 20          	mov    r11,QWORD PTR [rsi+0x20]
  10aa71:	4c 8b 66 28          	mov    r12,QWORD PTR [rsi+0x28]
  10aa75:	4c 8b 6e 30          	mov    r13,QWORD PTR [rsi+0x30]
  10aa79:	4c 8b 76 38          	mov    r14,QWORD PTR [rsi+0x38]
  10aa7d:	48 0f c3 07          	movnti QWORD PTR [rdi],rax
  10aa81:	4c 0f c3 47 08       	movnti QWORD PTR [rdi+0x8],r8
  10aa86:	4c 0f c3 4f 10       	movnti QWORD PTR [rdi+0x10],r9
  10aa8b:	4c 0f c3 57 18       	movnti QWORD PTR [rdi+0x18],r10
  10aa90:	4c 0f c3 5f 20       	movnti QWORD PTR [rdi+0x20],r11
  10aa95:	4c 0f c3 67 28       	movnti QWORD PTR [rdi+0x28],r12
  10aa9a:	4c 0f c3 6f 30       	movnti QWORD PTR [rdi+0x30],r13
  10aa9f:	4c 0f c3 77 38       	movnti QWORD PTR [rdi+0x38],r14
  10aaa4:	48 8b 46 40          	mov    rax,QWORD PTR [rsi+0x40]
  10aaa8:	4c 8b 46 48          	mov    r8,QWORD PTR [rsi+0x48]
  10aaac:	4c 8b 4e 50          	mov    r9,QWORD PTR [rsi+0x50]
  10aab0:	4c 8b 56 58          	mov    r10,QWORD PTR [rsi+0x58]
  10aab4:	4c 8b 5e 60          	mov    r11,QWORD PTR [rsi+0x60]
  10aab8:	4c 8b 66 68          	mov    r12,QWORD PTR [rsi+0x68]
  10aabc:	4c 8b 6e 70          	mov    r13,QWORD PTR [rsi+0x70]
  10aac0:	4c 8b 76 78          	mov    r14,QWORD PTR [rsi+0x78]
  10aac4:	48 0f c3 47 40       	movnti QWORD PTR [rdi+0x40],rax
  10aac9:	4c 0f c3 47 48       	movnti QWORD PTR [rdi+0x48],r8
  10aace:	4c 0f c3 4f 50       	movnti QWORD PTR [rdi+0x50],r9
  10aad3:	4c 0f c3 57 58       	movnti QWORD PTR [rdi+0x58],r10
  10aad8:	4c 0f c3 5f 60       	movnti QWORD PTR [rdi+0x60],r11
  10aadd:	4c 0f c3 67 68       	movnti QWORD PTR [rdi+0x68],r12
  10aae2:	4c 0f c3 6f 70       	movnti QWORD PTR [rdi+0x70],r13
  10aae7:	4c 0f c3 77 78       	movnti QWORD PTR [rdi+0x78],r14
  10aaec:	48 8d b6 80 00 00 00 	lea    rsi,[rsi+0x80]
  10aaf3:	48 8d bf 80 00 00 00 	lea    rdi,[rdi+0x80]
  10aafa:	48 ff c9             	dec    rcx
  10aafd:	0f 85 4d ff ff ff    	jne    10aa50 <loop>
  10ab03:	0f ae f8             	sfence
  10ab06:	48 89 d1             	mov    rcx,rdx
  10ab09:	48 83 e1 7f          	and    rcx,0x7f
  10ab0d:	f3 a4                	rep movs BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
  10ab0f:	41 5e                	pop    r14
  10ab11:	41 5d                	pop    r13
  10ab13:	41 5c                	pop    r12
  10ab15:	58                   	pop    rax
  10ab16:	c3                   	ret

000000000010ab17 <byte_copy>:
  10ab17:	48 89 d1             	mov    rcx,rdx
  10ab1a:	f3 a4                	rep movs BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
  10ab1c:	c3                   	ret

000000000010ab1d <quadword_copy>:
  10ab1d:	48 89 d1             	mov    rcx,rdx
  10ab20:	48 c1 e9 03          	shr    rcx,0x3
  10ab24:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10ab2b:	00 00 00 
  10ab2e:	66 90                	xchg   ax,ax
  10ab30:	f3 48 a5             	rep movs QWORD PTR es:[rdi],QWORD PTR ds:[rsi]
  10ab33:	48 89 d1             	mov    rcx,rdx
  10ab36:	48 83 e1 07          	and    rcx,0x7
  10ab3a:	f3 a4                	rep movs BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
  10ab3c:	c3                   	ret
  10ab3d:	cc                   	int3
  10ab3e:	cc                   	int3
  10ab3f:	cc                   	int3

000000000010ab40 <memchr>:
  10ab40:	40 f6 c7 07          	test   dil,0x7
  10ab44:	0f 84 00 01 00 00    	je     10ac4a <memchr+0x10a>
  10ab4a:	48 89 d1             	mov    rcx,rdx
  10ab4d:	48 83 e9 01          	sub    rcx,0x1
  10ab51:	0f 82 66 01 00 00    	jb     10acbd <memchr+0x17d>
  10ab57:	40 38 37             	cmp    BYTE PTR [rdi],sil
  10ab5a:	75 04                	jne    10ab60 <memchr+0x20>
  10ab5c:	48 89 f8             	mov    rax,rdi
  10ab5f:	c3                   	ret
  10ab60:	48 8d 47 01          	lea    rax,[rdi+0x1]
  10ab64:	a8 07                	test   al,0x7
  10ab66:	0f 84 d8 00 00 00    	je     10ac44 <memchr+0x104>
  10ab6c:	48 85 c9             	test   rcx,rcx
  10ab6f:	0f 84 48 01 00 00    	je     10acbd <memchr+0x17d>
  10ab75:	40 38 30             	cmp    BYTE PTR [rax],sil
  10ab78:	0f 84 41 01 00 00    	je     10acbf <memchr+0x17f>
  10ab7e:	48 8d 4a fe          	lea    rcx,[rdx-0x2]
  10ab82:	48 8d 47 02          	lea    rax,[rdi+0x2]
  10ab86:	a8 07                	test   al,0x7
  10ab88:	0f 84 b6 00 00 00    	je     10ac44 <memchr+0x104>
  10ab8e:	48 85 c9             	test   rcx,rcx
  10ab91:	0f 84 26 01 00 00    	je     10acbd <memchr+0x17d>
  10ab97:	40 38 30             	cmp    BYTE PTR [rax],sil
  10ab9a:	0f 84 1f 01 00 00    	je     10acbf <memchr+0x17f>
  10aba0:	48 8d 4a fd          	lea    rcx,[rdx-0x3]
  10aba4:	48 8d 47 03          	lea    rax,[rdi+0x3]
  10aba8:	a8 07                	test   al,0x7
  10abaa:	0f 84 94 00 00 00    	je     10ac44 <memchr+0x104>
  10abb0:	48 85 c9             	test   rcx,rcx
  10abb3:	0f 84 04 01 00 00    	je     10acbd <memchr+0x17d>
  10abb9:	40 38 30             	cmp    BYTE PTR [rax],sil
  10abbc:	0f 84 fd 00 00 00    	je     10acbf <memchr+0x17f>
  10abc2:	48 8d 4a fc          	lea    rcx,[rdx-0x4]
  10abc6:	48 8d 47 04          	lea    rax,[rdi+0x4]
  10abca:	a8 07                	test   al,0x7
  10abcc:	74 76                	je     10ac44 <memchr+0x104>
  10abce:	48 85 c9             	test   rcx,rcx
  10abd1:	0f 84 e6 00 00 00    	je     10acbd <memchr+0x17d>
  10abd7:	40 38 30             	cmp    BYTE PTR [rax],sil
  10abda:	0f 84 df 00 00 00    	je     10acbf <memchr+0x17f>
  10abe0:	48 8d 4a fb          	lea    rcx,[rdx-0x5]
  10abe4:	48 8d 47 05          	lea    rax,[rdi+0x5]
  10abe8:	a8 07                	test   al,0x7
  10abea:	74 58                	je     10ac44 <memchr+0x104>
  10abec:	48 85 c9             	test   rcx,rcx
  10abef:	0f 84 c8 00 00 00    	je     10acbd <memchr+0x17d>
  10abf5:	40 38 30             	cmp    BYTE PTR [rax],sil
  10abf8:	0f 84 c1 00 00 00    	je     10acbf <memchr+0x17f>
  10abfe:	48 8d 4a fa          	lea    rcx,[rdx-0x6]
  10ac02:	48 8d 47 06          	lea    rax,[rdi+0x6]
  10ac06:	a8 07                	test   al,0x7
  10ac08:	74 3a                	je     10ac44 <memchr+0x104>
  10ac0a:	48 85 c9             	test   rcx,rcx
  10ac0d:	0f 84 aa 00 00 00    	je     10acbd <memchr+0x17d>
  10ac13:	40 38 30             	cmp    BYTE PTR [rax],sil
  10ac16:	0f 84 a3 00 00 00    	je     10acbf <memchr+0x17f>
  10ac1c:	48 8d 4a f9          	lea    rcx,[rdx-0x7]
  10ac20:	48 8d 47 07          	lea    rax,[rdi+0x7]
  10ac24:	a8 07                	test   al,0x7
  10ac26:	74 1c                	je     10ac44 <memchr+0x104>
  10ac28:	48 85 c9             	test   rcx,rcx
  10ac2b:	0f 84 8c 00 00 00    	je     10acbd <memchr+0x17d>
  10ac31:	40 38 30             	cmp    BYTE PTR [rax],sil
  10ac34:	0f 84 85 00 00 00    	je     10acbf <memchr+0x17f>
  10ac3a:	48 83 c2 f8          	add    rdx,0xfffffffffffffff8
  10ac3e:	48 83 c7 08          	add    rdi,0x8
  10ac42:	eb 06                	jmp    10ac4a <memchr+0x10a>
  10ac44:	48 89 ca             	mov    rdx,rcx
  10ac47:	48 89 c7             	mov    rdi,rax
  10ac4a:	48 83 fa 08          	cmp    rdx,0x8
  10ac4e:	72 55                	jb     10aca5 <memchr+0x165>
  10ac50:	49 b8 80 80 80 80 80 	movabs r8,0x8080808080808080
  10ac57:	80 80 80 
  10ac5a:	40 0f b6 c6          	movzx  eax,sil
  10ac5e:	69 c0 01 01 01 01    	imul   eax,eax,0x1010101
  10ac64:	49 89 c2             	mov    r10,rax
  10ac67:	49 c1 e2 20          	shl    r10,0x20
  10ac6b:	49 09 c2             	or     r10,rax
  10ac6e:	49 b9 ff fe fe fe fe 	movabs r9,0xfefefefefefefeff
  10ac75:	fe fe fe 
  10ac78:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  10ac7f:	00 
  10ac80:	48 8b 07             	mov    rax,QWORD PTR [rdi]
  10ac83:	4c 31 d0             	xor    rax,r10
  10ac86:	48 89 c1             	mov    rcx,rax
  10ac89:	48 f7 d1             	not    rcx
  10ac8c:	4c 21 c1             	and    rcx,r8
  10ac8f:	4c 01 c8             	add    rax,r9
  10ac92:	48 85 c1             	test   rcx,rax
  10ac95:	75 13                	jne    10acaa <memchr+0x16a>
  10ac97:	48 83 c2 f8          	add    rdx,0xfffffffffffffff8
  10ac9b:	48 83 c7 08          	add    rdi,0x8
  10ac9f:	48 83 fa 07          	cmp    rdx,0x7
  10aca3:	77 db                	ja     10ac80 <memchr+0x140>
  10aca5:	48 85 d2             	test   rdx,rdx
  10aca8:	74 13                	je     10acbd <memchr+0x17d>
  10acaa:	48 89 f8             	mov    rax,rdi
  10acad:	0f 1f 00             	nop    DWORD PTR [rax]
  10acb0:	40 38 30             	cmp    BYTE PTR [rax],sil
  10acb3:	74 0a                	je     10acbf <memchr+0x17f>
  10acb5:	48 ff c0             	inc    rax
  10acb8:	48 ff ca             	dec    rdx
  10acbb:	75 f3                	jne    10acb0 <memchr+0x170>
  10acbd:	31 c0                	xor    eax,eax
  10acbf:	c3                   	ret

000000000010acc0 <__fpclassifyd>:
  10acc0:	66 48 0f 7e c1       	movq   rcx,xmm0
  10acc5:	48 89 ce             	mov    rsi,rcx
  10acc8:	48 c1 ee 20          	shr    rsi,0x20
  10accc:	89 f2                	mov    edx,esi
  10acce:	81 e2 ff ff ff 7f    	and    edx,0x7fffffff
  10acd4:	85 c9                	test   ecx,ecx
  10acd6:	75 0a                	jne    10ace2 <__fpclassifyd+0x22>
  10acd8:	b8 02 00 00 00       	mov    eax,0x2
  10acdd:	85 d2                	test   edx,edx
  10acdf:	75 01                	jne    10ace2 <__fpclassifyd+0x22>
  10ace1:	c3                   	ret
  10ace2:	8d ba 00 00 f0 ff    	lea    edi,[rdx-0x100000]
  10ace8:	b8 04 00 00 00       	mov    eax,0x4
  10aced:	81 ff 00 00 e0 7f    	cmp    edi,0x7fe00000
  10acf3:	72 ec                	jb     10ace1 <__fpclassifyd+0x21>
  10acf5:	b8 03 00 00 00       	mov    eax,0x3
  10acfa:	81 fe 00 00 10 00    	cmp    esi,0x100000
  10ad00:	72 df                	jb     10ace1 <__fpclassifyd+0x21>
  10ad02:	48 85 c9             	test   rcx,rcx
  10ad05:	79 08                	jns    10ad0f <__fpclassifyd+0x4f>
  10ad07:	81 fe 00 00 10 80    	cmp    esi,0x80100000
  10ad0d:	72 d2                	jb     10ace1 <__fpclassifyd+0x21>
  10ad0f:	81 f2 00 00 f0 7f    	xor    edx,0x7ff00000
  10ad15:	31 c0                	xor    eax,eax
  10ad17:	09 ca                	or     edx,ecx
  10ad19:	0f 94 c0             	sete   al
  10ad1c:	c3                   	ret
  10ad1d:	cc                   	int3
  10ad1e:	cc                   	int3
  10ad1f:	cc                   	int3

000000000010ad20 <_dtoa_r>:
  10ad20:	55                   	push   rbp
  10ad21:	41 57                	push   r15
  10ad23:	41 56                	push   r14
  10ad25:	41 55                	push   r13
  10ad27:	41 54                	push   r12
  10ad29:	53                   	push   rbx
  10ad2a:	48 81 ec a8 00 00 00 	sub    rsp,0xa8
  10ad31:	4d 89 ce             	mov    r14,r9
  10ad34:	4c 89 c5             	mov    rbp,r8
  10ad37:	49 89 cd             	mov    r13,rcx
  10ad3a:	48 89 54 24 58       	mov    QWORD PTR [rsp+0x58],rdx
  10ad3f:	41 89 f7             	mov    r15d,esi
  10ad42:	48 89 fb             	mov    rbx,rdi
  10ad45:	48 8b 77 60          	mov    rsi,QWORD PTR [rdi+0x60]
  10ad49:	48 85 f6             	test   rsi,rsi
  10ad4c:	74 2c                	je     10ad7a <_dtoa_r+0x5a>
  10ad4e:	8b 4b 68             	mov    ecx,DWORD PTR [rbx+0x68]
  10ad51:	89 4e 08             	mov    DWORD PTR [rsi+0x8],ecx
  10ad54:	b8 01 00 00 00       	mov    eax,0x1
  10ad59:	d3 e0                	shl    eax,cl
  10ad5b:	89 46 0c             	mov    DWORD PTR [rsi+0xc],eax
  10ad5e:	48 89 df             	mov    rdi,rbx
  10ad61:	f2 0f 11 44 24 28    	movsd  QWORD PTR [rsp+0x28],xmm0
  10ad67:	e8 c4 13 00 00       	call   10c130 <_Bfree>
  10ad6c:	f3 0f 7e 44 24 28    	movq   xmm0,QWORD PTR [rsp+0x28]
  10ad72:	48 c7 43 60 00 00 00 	mov    QWORD PTR [rbx+0x60],0x0
  10ad79:	00 
  10ad7a:	66 48 0f 7e c1       	movq   rcx,xmm0
  10ad7f:	48 85 c9             	test   rcx,rcx
  10ad82:	78 09                	js     10ad8d <_dtoa_r+0x6d>
  10ad84:	c7 45 00 00 00 00 00 	mov    DWORD PTR [rbp+0x0],0x0
  10ad8b:	eb 19                	jmp    10ada6 <_dtoa_r+0x86>
  10ad8d:	c7 45 00 01 00 00 00 	mov    DWORD PTR [rbp+0x0],0x1
  10ad94:	48 b8 ff ff ff ff ff 	movabs rax,0x7fffffffffffffff
  10ad9b:	ff ff 7f 
  10ad9e:	48 21 c1             	and    rcx,rax
  10ada1:	66 48 0f 6e c1       	movq   xmm0,rcx
  10ada6:	49 89 cc             	mov    r12,rcx
  10ada9:	49 c1 ec 20          	shr    r12,0x20
  10adad:	44 89 e5             	mov    ebp,r12d
  10adb0:	81 e5 00 00 f0 7f    	and    ebp,0x7ff00000
  10adb6:	81 fd 00 00 f0 7f    	cmp    ebp,0x7ff00000
  10adbc:	75 6a                	jne    10ae28 <_dtoa_r+0x108>
  10adbe:	41 c7 45 00 0f 27 00 	mov    DWORD PTR [r13+0x0],0x270f
  10adc5:	00 
  10adc6:	41 81 e4 ff ff 0f 00 	and    r12d,0xfffff
  10adcd:	41 09 cc             	or     r12d,ecx
  10add0:	0f 94 c2             	sete   dl
  10add3:	48 8d 0d 87 55 ff ff 	lea    rcx,[rip+0xffffffffffff5587]        # 100361 <_svfprintf_r.blanks-0x77f>
  10adda:	48 8d 05 a0 54 ff ff 	lea    rax,[rip+0xffffffffffff54a0]        # 100281 <_svfprintf_r.blanks-0x85f>
  10ade1:	48 89 c5             	mov    rbp,rax
  10ade4:	48 0f 44 e9          	cmove  rbp,rcx
  10ade8:	4d 85 f6             	test   r14,r14
  10adeb:	0f 84 ea 10 00 00    	je     10bedb <_dtoa_r+0x11bb>
  10adf1:	84 d2                	test   dl,dl
  10adf3:	48 0f 45 c1          	cmovne rax,rcx
  10adf7:	48 8d 0d 66 55 ff ff 	lea    rcx,[rip+0xffffffffffff5566]        # 100364 <_svfprintf_r.blanks-0x77c>
  10adfe:	48 8d 15 7f 54 ff ff 	lea    rdx,[rip+0xffffffffffff547f]        # 100284 <_svfprintf_r.blanks-0x85c>
  10ae05:	48 0f 45 d1          	cmovne rdx,rcx
  10ae09:	48 8d 0d 59 55 ff ff 	lea    rcx,[rip+0xffffffffffff5559]        # 100369 <_svfprintf_r.blanks-0x777>
  10ae10:	48 8d 1d 72 54 ff ff 	lea    rbx,[rip+0xffffffffffff5472]        # 100289 <_svfprintf_r.blanks-0x857>
  10ae17:	48 0f 45 d9          	cmovne rbx,rcx
  10ae1b:	80 78 03 00          	cmp    BYTE PTR [rax+0x3],0x0
  10ae1f:	48 0f 44 da          	cmove  rbx,rdx
  10ae23:	e9 b0 10 00 00       	jmp    10bed8 <_dtoa_r+0x11b8>
  10ae28:	66 0f 57 c9          	xorpd  xmm1,xmm1
  10ae2c:	66 0f 2e c1          	ucomisd xmm0,xmm1
  10ae30:	75 02                	jne    10ae34 <_dtoa_r+0x114>
  10ae32:	7b 52                	jnp    10ae86 <_dtoa_r+0x166>
  10ae34:	48 89 4c 24 78       	mov    QWORD PTR [rsp+0x78],rcx
  10ae39:	48 8d b4 24 84 00 00 	lea    rsi,[rsp+0x84]
  10ae40:	00 
  10ae41:	48 8d 54 24 74       	lea    rdx,[rsp+0x74]
  10ae46:	48 89 df             	mov    rdi,rbx
  10ae49:	f2 0f 11 44 24 28    	movsd  QWORD PTR [rsp+0x28],xmm0
  10ae4f:	e8 3c 23 00 00       	call   10d190 <__d2b>
  10ae54:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  10ae59:	41 81 fc 00 00 10 00 	cmp    r12d,0x100000
  10ae60:	89 6c 24 64          	mov    DWORD PTR [rsp+0x64],ebp
  10ae64:	73 44                	jae    10aeaa <_dtoa_r+0x18a>
  10ae66:	8b 84 24 84 00 00 00 	mov    eax,DWORD PTR [rsp+0x84]
  10ae6d:	03 44 24 74          	add    eax,DWORD PTR [rsp+0x74]
  10ae71:	3d ef fb ff ff       	cmp    eax,0xfffffbef
  10ae76:	7c 61                	jl     10aed9 <_dtoa_r+0x1b9>
  10ae78:	8d 48 12             	lea    ecx,[rax+0x12]
  10ae7b:	48 8b 54 24 78       	mov    rdx,QWORD PTR [rsp+0x78]
  10ae80:	44 0f ad e2          	shrd   edx,r12d,cl
  10ae84:	eb 5e                	jmp    10aee4 <_dtoa_r+0x1c4>
  10ae86:	41 c7 45 00 01 00 00 	mov    DWORD PTR [r13+0x0],0x1
  10ae8d:	00 
  10ae8e:	48 8d 2d f9 52 ff ff 	lea    rbp,[rip+0xffffffffffff52f9]        # 10018e <_svfprintf_r.blanks-0x952>
  10ae95:	4d 85 f6             	test   r14,r14
  10ae98:	0f 84 3d 10 00 00    	je     10bedb <_dtoa_r+0x11bb>
  10ae9e:	48 8d 1d ea 52 ff ff 	lea    rbx,[rip+0xffffffffffff52ea]        # 10018f <_svfprintf_r.blanks-0x951>
  10aea5:	e9 2e 10 00 00       	jmp    10bed8 <_dtoa_r+0x11b8>
  10aeaa:	44 89 e0             	mov    eax,r12d
  10aead:	c1 e8 14             	shr    eax,0x14
  10aeb0:	48 ba ff ff ff ff ff 	movabs rdx,0xfffffffffffff
  10aeb7:	ff 0f 00 
  10aeba:	48 23 54 24 78       	and    rdx,QWORD PTR [rsp+0x78]
  10aebf:	48 b9 00 00 00 00 00 	movabs rcx,0x3ff0000000000000
  10aec6:	00 f0 3f 
  10aec9:	48 09 d1             	or     rcx,rdx
  10aecc:	05 01 fc ff ff       	add    eax,0xfffffc01
  10aed1:	f2 0f 10 5c 24 28    	movsd  xmm3,QWORD PTR [rsp+0x28]
  10aed7:	eb 2f                	jmp    10af08 <_dtoa_r+0x1e8>
  10aed9:	b1 ee                	mov    cl,0xee
  10aedb:	28 c1                	sub    cl,al
  10aedd:	48 8b 54 24 78       	mov    rdx,QWORD PTR [rsp+0x78]
  10aee2:	d3 e2                	shl    edx,cl
  10aee4:	f2 0f 10 5c 24 28    	movsd  xmm3,QWORD PTR [rsp+0x28]
  10aeea:	89 d1                	mov    ecx,edx
  10aeec:	0f 57 c0             	xorps  xmm0,xmm0
  10aeef:	f2 48 0f 2a c1       	cvtsi2sd xmm0,rcx
  10aef4:	66 48 0f 7e c2       	movq   rdx,xmm0
  10aef9:	48 b9 00 00 00 00 00 	movabs rcx,0xfe10000000000000
  10af00:	00 10 fe 
  10af03:	48 01 d1             	add    rcx,rdx
  10af06:	ff c8                	dec    eax
  10af08:	4c 89 ac 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],r13
  10af0f:	00 
  10af10:	4c 89 74 24 48       	mov    QWORD PTR [rsp+0x48],r14
  10af15:	66 48 0f 6e c1       	movq   xmm0,rcx
  10af1a:	f2 0f 58 05 8e 59 ff 	addsd  xmm0,QWORD PTR [rip+0xffffffffffff598e]        # 1008b0 <_svfprintf_r.blanks-0x230>
  10af21:	ff 
  10af22:	f2 0f 59 05 96 59 ff 	mulsd  xmm0,QWORD PTR [rip+0xffffffffffff5996]        # 1008c0 <_svfprintf_r.blanks-0x220>
  10af29:	ff 
  10af2a:	f2 0f 58 05 56 59 ff 	addsd  xmm0,QWORD PTR [rip+0xffffffffffff5956]        # 100888 <_svfprintf_r.blanks-0x258>
  10af31:	ff 
  10af32:	0f 57 c9             	xorps  xmm1,xmm1
  10af35:	f2 0f 2a c8          	cvtsi2sd xmm1,eax
  10af39:	f2 0f 59 0d 4f 59 ff 	mulsd  xmm1,QWORD PTR [rip+0xffffffffffff594f]        # 100890 <_svfprintf_r.blanks-0x250>
  10af40:	ff 
  10af41:	f2 0f 58 c8          	addsd  xmm1,xmm0
  10af45:	f2 0f 2c c9          	cvttsd2si ecx,xmm1
  10af49:	66 0f e6 c1          	cvttpd2dq xmm0,xmm1
  10af4d:	f3 0f e6 c0          	cvtdq2pd xmm0,xmm0
  10af51:	66 0f c2 c1 04       	cmpneqpd xmm0,xmm1
  10af56:	66 0f 57 d2          	xorpd  xmm2,xmm2
  10af5a:	66 0f c2 ca 01       	cmpltpd xmm1,xmm2
  10af5f:	66 0f 54 c8          	andpd  xmm1,xmm0
  10af63:	66 0f 7e cd          	movd   ebp,xmm1
  10af67:	01 cd                	add    ebp,ecx
  10af69:	89 ea                	mov    edx,ebp
  10af6b:	83 fd 16             	cmp    ebp,0x16
  10af6e:	77 19                	ja     10af89 <_dtoa_r+0x269>
  10af70:	89 e9                	mov    ecx,ebp
  10af72:	48 8d 15 57 60 ff ff 	lea    rdx,[rip+0xffffffffffff6057]        # 100fd0 <__mprec_tens>
  10af79:	f2 0f 10 04 ca       	movsd  xmm0,QWORD PTR [rdx+rcx*8]
  10af7e:	66 0f 2e c3          	ucomisd xmm0,xmm3
  10af82:	89 ea                	mov    edx,ebp
  10af84:	76 03                	jbe    10af89 <_dtoa_r+0x269>
  10af86:	8d 55 ff             	lea    edx,[rbp-0x1]
  10af89:	83 fd 17             	cmp    ebp,0x17
  10af8c:	41 0f 93 c1          	setae  r9b
  10af90:	41 89 c6             	mov    r14d,eax
  10af93:	41 f7 d6             	not    r14d
  10af96:	44 03 74 24 74       	add    r14d,DWORD PTR [rsp+0x74]
  10af9b:	45 89 f0             	mov    r8d,r14d
  10af9e:	41 f7 d8             	neg    r8d
  10afa1:	31 c9                	xor    ecx,ecx
  10afa3:	45 85 f6             	test   r14d,r14d
  10afa6:	44 0f 48 f1          	cmovs  r14d,ecx
  10afaa:	44 0f 49 c1          	cmovns r8d,ecx
  10afae:	85 d2                	test   edx,edx
  10afb0:	78 0f                	js     10afc1 <_dtoa_r+0x2a1>
  10afb2:	41 01 d6             	add    r14d,edx
  10afb5:	c7 44 24 40 00 00 00 	mov    DWORD PTR [rsp+0x40],0x0
  10afbc:	00 
  10afbd:	89 d1                	mov    ecx,edx
  10afbf:	eb 0b                	jmp    10afcc <_dtoa_r+0x2ac>
  10afc1:	41 29 d0             	sub    r8d,edx
  10afc4:	89 d6                	mov    esi,edx
  10afc6:	f7 de                	neg    esi
  10afc8:	89 74 24 40          	mov    DWORD PTR [rsp+0x40],esi
  10afcc:	31 f6                	xor    esi,esi
  10afce:	41 83 ff 0a          	cmp    r15d,0xa
  10afd2:	44 0f 43 fe          	cmovae r15d,esi
  10afd6:	41 8d 7f fc          	lea    edi,[r15-0x4]
  10afda:	41 83 ff 06          	cmp    r15d,0x6
  10afde:	41 0f 42 ff          	cmovb  edi,r15d
  10afe2:	c7 44 24 50 01 00 00 	mov    DWORD PTR [rsp+0x50],0x1
  10afe9:	00 
  10afea:	83 ff 05             	cmp    edi,0x5
  10afed:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  10aff2:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
  10aff7:	48 89 7c 24 68       	mov    QWORD PTR [rsp+0x68],rdi
  10affc:	48 89 ac 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rbp
  10b003:	00 
  10b004:	89 8c 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],ecx
  10b00b:	44 88 4c 24 20       	mov    BYTE PTR [rsp+0x20],r9b
  10b010:	77 3e                	ja     10b050 <_dtoa_r+0x330>
  10b012:	48 8d 05 87 5f ff ff 	lea    rax,[rip+0xffffffffffff5f87]        # 100fa0 <_svfiprintf_r.zeroes+0x10>
  10b019:	48 63 0c b8          	movsxd rcx,DWORD PTR [rax+rdi*4]
  10b01d:	48 01 c1             	add    rcx,rax
  10b020:	ff e1                	jmp    rcx
  10b022:	4c 89 c5             	mov    rbp,r8
  10b025:	c7 43 68 00 00 00 00 	mov    DWORD PTR [rbx+0x68],0x0
  10b02c:	c7 44 24 3c ff ff ff 	mov    DWORD PTR [rsp+0x3c],0xffffffff
  10b033:	ff 
  10b034:	c7 44 24 50 01 00 00 	mov    DWORD PTR [rsp+0x50],0x1
  10b03b:	00 
  10b03c:	31 c0                	xor    eax,eax
  10b03e:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
  10b043:	41 bd ff ff ff ff    	mov    r13d,0xffffffff
  10b049:	31 f6                	xor    esi,esi
  10b04b:	e9 a8 00 00 00       	jmp    10b0f8 <_dtoa_r+0x3d8>
  10b050:	41 bd ff ff ff ff    	mov    r13d,0xffffffff
  10b056:	c7 44 24 3c ff ff ff 	mov    DWORD PTR [rsp+0x3c],0xffffffff
  10b05d:	ff 
  10b05e:	eb 50                	jmp    10b0b0 <_dtoa_r+0x390>
  10b060:	c7 44 24 50 00 00 00 	mov    DWORD PTR [rsp+0x50],0x0
  10b067:	00 
  10b068:	48 8b 4c 24 58       	mov    rcx,QWORD PTR [rsp+0x58]
  10b06d:	83 f9 02             	cmp    ecx,0x2
  10b070:	b8 01 00 00 00       	mov    eax,0x1
  10b075:	0f 4d c1             	cmovge eax,ecx
  10b078:	41 89 c5             	mov    r13d,eax
  10b07b:	89 c1                	mov    ecx,eax
  10b07d:	89 44 24 3c          	mov    DWORD PTR [rsp+0x3c],eax
  10b081:	48 89 4c 24 58       	mov    QWORD PTR [rsp+0x58],rcx
  10b086:	eb 28                	jmp    10b0b0 <_dtoa_r+0x390>
  10b088:	c7 44 24 50 00 00 00 	mov    DWORD PTR [rsp+0x50],0x0
  10b08f:	00 
  10b090:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  10b095:	8d 0c 02             	lea    ecx,[rdx+rax*1]
  10b098:	89 4c 24 3c          	mov    DWORD PTR [rsp+0x3c],ecx
  10b09c:	44 8d 2c 02          	lea    r13d,[rdx+rax*1]
  10b0a0:	41 ff c5             	inc    r13d
  10b0a3:	41 83 fd 02          	cmp    r13d,0x2
  10b0a7:	b8 01 00 00 00       	mov    eax,0x1
  10b0ac:	41 0f 4d c5          	cmovge eax,r13d
  10b0b0:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
  10b0b5:	c7 41 68 00 00 00 00 	mov    DWORD PTR [rcx+0x68],0x0
  10b0bc:	4c 89 c5             	mov    rbp,r8
  10b0bf:	83 f8 20             	cmp    eax,0x20
  10b0c2:	73 07                	jae    10b0cb <_dtoa_r+0x3ab>
  10b0c4:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
  10b0c9:	eb 2d                	jmp    10b0f8 <_dtoa_r+0x3d8>
  10b0cb:	48 98                	cdqe
  10b0cd:	b9 04 00 00 00       	mov    ecx,0x4
  10b0d2:	31 f6                	xor    esi,esi
  10b0d4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10b0db:	00 00 00 00 00 
  10b0e0:	ff c6                	inc    esi
  10b0e2:	01 c9                	add    ecx,ecx
  10b0e4:	48 63 d1             	movsxd rdx,ecx
  10b0e7:	48 83 c2 1c          	add    rdx,0x1c
  10b0eb:	48 39 c2             	cmp    rdx,rax
  10b0ee:	76 f0                	jbe    10b0e0 <_dtoa_r+0x3c0>
  10b0f0:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
  10b0f5:	89 73 68             	mov    DWORD PTR [rbx+0x68],esi
  10b0f8:	48 89 df             	mov    rdi,rbx
  10b0fb:	e8 a0 0f 00 00       	call   10c0a0 <_Balloc>
  10b100:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  10b105:	48 89 43 60          	mov    QWORD PTR [rbx+0x60],rax
  10b109:	41 83 ff 05          	cmp    r15d,0x5
  10b10d:	4c 8b 44 24 30       	mov    r8,QWORD PTR [rsp+0x30]
  10b112:	f2 0f 10 6c 24 28    	movsd  xmm5,QWORD PTR [rsp+0x28]
  10b118:	0f 87 c6 03 00 00    	ja     10b4e4 <_dtoa_r+0x7c4>
  10b11e:	41 83 fd 0e          	cmp    r13d,0xe
  10b122:	0f 87 bc 03 00 00    	ja     10b4e4 <_dtoa_r+0x7c4>
  10b128:	45 85 c0             	test   r8d,r8d
  10b12b:	7e 27                	jle    10b154 <_dtoa_r+0x434>
  10b12d:	44 89 c2             	mov    edx,r8d
  10b130:	83 e2 0f             	and    edx,0xf
  10b133:	48 8d 35 96 5e ff ff 	lea    rsi,[rip+0xffffffffffff5e96]        # 100fd0 <__mprec_tens>
  10b13a:	44 89 c0             	mov    eax,r8d
  10b13d:	c1 e8 04             	shr    eax,0x4
  10b140:	b9 02 00 00 00       	mov    ecx,0x2
  10b145:	41 f7 c0 00 01 00 00 	test   r8d,0x100
  10b14c:	75 3b                	jne    10b189 <_dtoa_r+0x469>
  10b14e:	66 0f 28 c5          	movapd xmm0,xmm5
  10b152:	eb 4d                	jmp    10b1a1 <_dtoa_r+0x481>
  10b154:	b9 02 00 00 00       	mov    ecx,0x2
  10b159:	0f 84 03 03 00 00    	je     10b462 <_dtoa_r+0x742>
  10b15f:	44 89 c0             	mov    eax,r8d
  10b162:	f7 d8                	neg    eax
  10b164:	89 c2                	mov    edx,eax
  10b166:	83 e2 0f             	and    edx,0xf
  10b169:	48 8d 35 60 5e ff ff 	lea    rsi,[rip+0xffffffffffff5e60]        # 100fd0 <__mprec_tens>
  10b170:	f2 0f 10 04 d6       	movsd  xmm0,QWORD PTR [rsi+rdx*8]
  10b175:	f2 0f 59 c5          	mulsd  xmm0,xmm5
  10b179:	83 f8 10             	cmp    eax,0x10
  10b17c:	0f 83 ee 02 00 00    	jae    10b470 <_dtoa_r+0x750>
  10b182:	0f b6 5c 24 20       	movzx  ebx,BYTE PTR [rsp+0x20]
  10b187:	eb 56                	jmp    10b1df <_dtoa_r+0x4bf>
  10b189:	83 e0 0f             	and    eax,0xf
  10b18c:	48 8d 0d 0d 5f ff ff 	lea    rcx,[rip+0xffffffffffff5f0d]        # 1010a0 <__mprec_bigtens>
  10b193:	66 0f 28 c5          	movapd xmm0,xmm5
  10b197:	f2 0f 5e 41 20       	divsd  xmm0,QWORD PTR [rcx+0x20]
  10b19c:	b9 03 00 00 00       	mov    ecx,0x3
  10b1a1:	0f b6 5c 24 20       	movzx  ebx,BYTE PTR [rsp+0x20]
  10b1a6:	f2 0f 10 0c d6       	movsd  xmm1,QWORD PTR [rsi+rdx*8]
  10b1ab:	85 c0                	test   eax,eax
  10b1ad:	74 2c                	je     10b1db <_dtoa_r+0x4bb>
  10b1af:	48 8d 15 ea 5e ff ff 	lea    rdx,[rip+0xffffffffffff5eea]        # 1010a0 <__mprec_bigtens>
  10b1b6:	eb 17                	jmp    10b1cf <_dtoa_r+0x4af>
  10b1b8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  10b1bf:	00 
  10b1c0:	89 c6                	mov    esi,eax
  10b1c2:	d1 ee                	shr    esi,1
  10b1c4:	48 83 c2 08          	add    rdx,0x8
  10b1c8:	83 f8 01             	cmp    eax,0x1
  10b1cb:	89 f0                	mov    eax,esi
  10b1cd:	76 0c                	jbe    10b1db <_dtoa_r+0x4bb>
  10b1cf:	a8 01                	test   al,0x1
  10b1d1:	74 ed                	je     10b1c0 <_dtoa_r+0x4a0>
  10b1d3:	ff c1                	inc    ecx
  10b1d5:	f2 0f 59 0a          	mulsd  xmm1,QWORD PTR [rdx]
  10b1d9:	eb e5                	jmp    10b1c0 <_dtoa_r+0x4a0>
  10b1db:	f2 0f 5e c1          	divsd  xmm0,xmm1
  10b1df:	f2 0f 10 0d b1 56 ff 	movsd  xmm1,QWORD PTR [rip+0xffffffffffff56b1]        # 100898 <_svfprintf_r.blanks-0x248>
  10b1e6:	ff 
  10b1e7:	66 0f 2e c8          	ucomisd xmm1,xmm0
  10b1eb:	0f 97 c0             	seta   al
  10b1ee:	20 c3                	and    bl,al
  10b1f0:	80 fb 01             	cmp    bl,0x1
  10b1f3:	75 24                	jne    10b219 <_dtoa_r+0x4f9>
  10b1f5:	45 85 ed             	test   r13d,r13d
  10b1f8:	7e 1f                	jle    10b219 <_dtoa_r+0x4f9>
  10b1fa:	83 7c 24 3c 00       	cmp    DWORD PTR [rsp+0x3c],0x0
  10b1ff:	0f 8e df 02 00 00    	jle    10b4e4 <_dtoa_r+0x7c4>
  10b205:	41 8d 40 ff          	lea    eax,[r8-0x1]
  10b209:	f2 0f 59 05 5f 56 ff 	mulsd  xmm0,QWORD PTR [rip+0xffffffffffff565f]        # 100870 <_svfprintf_r.blanks-0x270>
  10b210:	ff 
  10b211:	ff c1                	inc    ecx
  10b213:	8b 54 24 3c          	mov    edx,DWORD PTR [rsp+0x3c]
  10b217:	eb 06                	jmp    10b21f <_dtoa_r+0x4ff>
  10b219:	44 89 ea             	mov    edx,r13d
  10b21c:	44 89 c0             	mov    eax,r8d
  10b21f:	f2 0f 2a d1          	cvtsi2sd xmm2,ecx
  10b223:	f2 0f 59 d0          	mulsd  xmm2,xmm0
  10b227:	f2 0f 58 15 71 56 ff 	addsd  xmm2,QWORD PTR [rip+0xffffffffffff5671]        # 1008a0 <_svfprintf_r.blanks-0x240>
  10b22e:	ff 
  10b22f:	66 48 0f 7e d1       	movq   rcx,xmm2
  10b234:	48 be 00 00 00 00 00 	movabs rsi,0xfcc0000000000000
  10b23b:	00 c0 fc 
  10b23e:	48 01 ce             	add    rsi,rcx
  10b241:	66 48 0f 6e e6       	movq   xmm4,rsi
  10b246:	85 d2                	test   edx,edx
  10b248:	0f 84 d1 00 00 00    	je     10b31f <_dtoa_r+0x5ff>
  10b24e:	8d 4a ff             	lea    ecx,[rdx-0x1]
  10b251:	48 8d 35 78 5d ff ff 	lea    rsi,[rip+0xffffffffffff5d78]        # 100fd0 <__mprec_tens>
  10b258:	f2 0f 10 14 ce       	movsd  xmm2,QWORD PTR [rsi+rcx*8]
  10b25d:	83 7c 24 50 00       	cmp    DWORD PTR [rsp+0x50],0x0
  10b262:	0f 84 ee 00 00 00    	je     10b356 <_dtoa_r+0x636>
  10b268:	f2 0f 10 1d 38 56 ff 	movsd  xmm3,QWORD PTR [rip+0xffffffffffff5638]        # 1008a8 <_svfprintf_r.blanks-0x238>
  10b26f:	ff 
  10b270:	f2 0f 5e da          	divsd  xmm3,xmm2
  10b274:	f2 0f 5c dc          	subsd  xmm3,xmm4
  10b278:	f2 0f 2c c8          	cvttsd2si ecx,xmm0
  10b27c:	66 0f e6 d0          	cvttpd2dq xmm2,xmm0
  10b280:	f3 0f e6 d2          	cvtdq2pd xmm2,xmm2
  10b284:	f2 0f 5c c2          	subsd  xmm0,xmm2
  10b288:	80 c1 30             	add    cl,0x30
  10b28b:	48 8b 74 24 18       	mov    rsi,QWORD PTR [rsp+0x18]
  10b290:	48 8d 5e 01          	lea    rbx,[rsi+0x1]
  10b294:	88 0e                	mov    BYTE PTR [rsi],cl
  10b296:	66 0f 2e d8          	ucomisd xmm3,xmm0
  10b29a:	77 65                	ja     10b301 <_dtoa_r+0x5e1>
  10b29c:	83 fa 02             	cmp    edx,0x2
  10b29f:	b9 01 00 00 00       	mov    ecx,0x1
  10b2a4:	0f 4d ca             	cmovge ecx,edx
  10b2a7:	ff c9                	dec    ecx
  10b2a9:	f2 0f 10 15 bf 55 ff 	movsd  xmm2,QWORD PTR [rip+0xffffffffffff55bf]        # 100870 <_svfprintf_r.blanks-0x270>
  10b2b0:	ff 
  10b2b1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10b2b8:	0f 1f 84 00 00 00 00 
  10b2bf:	00 
  10b2c0:	66 0f 28 e1          	movapd xmm4,xmm1
  10b2c4:	f2 0f 5c e0          	subsd  xmm4,xmm0
  10b2c8:	66 0f 2e dc          	ucomisd xmm3,xmm4
  10b2cc:	0f 87 49 01 00 00    	ja     10b41b <_dtoa_r+0x6fb>
  10b2d2:	83 e9 01             	sub    ecx,0x1
  10b2d5:	0f 82 09 02 00 00    	jb     10b4e4 <_dtoa_r+0x7c4>
  10b2db:	f2 0f 59 da          	mulsd  xmm3,xmm2
  10b2df:	f2 0f 59 c2          	mulsd  xmm0,xmm2
  10b2e3:	f2 0f 2c d0          	cvttsd2si edx,xmm0
  10b2e7:	66 0f e6 e0          	cvttpd2dq xmm4,xmm0
  10b2eb:	f3 0f e6 e4          	cvtdq2pd xmm4,xmm4
  10b2ef:	f2 0f 5c c4          	subsd  xmm0,xmm4
  10b2f3:	80 c2 30             	add    dl,0x30
  10b2f6:	88 13                	mov    BYTE PTR [rbx],dl
  10b2f8:	48 ff c3             	inc    rbx
  10b2fb:	66 0f 2e d8          	ucomisd xmm3,xmm0
  10b2ff:	76 bf                	jbe    10b2c0 <_dtoa_r+0x5a0>
  10b301:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  10b306:	4c 8b 74 24 48       	mov    r14,QWORD PTR [rsp+0x48]
  10b30b:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10b310:	4c 8b 64 24 10       	mov    r12,QWORD PTR [rsp+0x10]
  10b315:	48 8b 6c 24 18       	mov    rbp,QWORD PTR [rsp+0x18]
  10b31a:	e9 95 0b 00 00       	jmp    10beb4 <_dtoa_r+0x1194>
  10b31f:	f2 0f 58 05 51 55 ff 	addsd  xmm0,QWORD PTR [rip+0xffffffffffff5551]        # 100878 <_svfprintf_r.blanks-0x268>
  10b326:	ff 
  10b327:	66 0f 2e c4          	ucomisd xmm0,xmm4
  10b32b:	0f 86 06 01 00 00    	jbe    10b437 <_dtoa_r+0x717>
  10b331:	31 c9                	xor    ecx,ecx
  10b333:	48 89 4c 24 20       	mov    QWORD PTR [rsp+0x20],rcx
  10b338:	41 89 c0             	mov    r8d,eax
  10b33b:	31 c9                	xor    ecx,ecx
  10b33d:	4c 8b 74 24 48       	mov    r14,QWORD PTR [rsp+0x48]
  10b342:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10b347:	4c 8b 64 24 10       	mov    r12,QWORD PTR [rsp+0x10]
  10b34c:	48 8b 6c 24 18       	mov    rbp,QWORD PTR [rsp+0x18]
  10b351:	e9 5f 06 00 00       	jmp    10b9b5 <_dtoa_r+0xc95>
  10b356:	f2 0f 2c f0          	cvttsd2si esi,xmm0
  10b35a:	66 0f e6 c8          	cvttpd2dq xmm1,xmm0
  10b35e:	f2 0f 59 d4          	mulsd  xmm2,xmm4
  10b362:	f3 0f e6 c9          	cvtdq2pd xmm1,xmm1
  10b366:	f2 0f 5c c1          	subsd  xmm0,xmm1
  10b36a:	40 80 c6 30          	add    sil,0x30
  10b36e:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
  10b373:	48 8d 5f 01          	lea    rbx,[rdi+0x1]
  10b377:	40 88 37             	mov    BYTE PTR [rdi],sil
  10b37a:	83 fa 01             	cmp    edx,0x1
  10b37d:	0f 84 82 00 00 00    	je     10b405 <_dtoa_r+0x6e5>
  10b383:	83 fa 02             	cmp    edx,0x2
  10b386:	74 58                	je     10b3e0 <_dtoa_r+0x6c0>
  10b388:	89 ca                	mov    edx,ecx
  10b38a:	83 e2 fe             	and    edx,0xfffffffe
  10b38d:	f2 0f 10 0d db 54 ff 	movsd  xmm1,QWORD PTR [rip+0xffffffffffff54db]        # 100870 <_svfprintf_r.blanks-0x270>
  10b394:	ff 
  10b395:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  10b39c:	00 00 00 00 
  10b3a0:	f2 0f 59 c1          	mulsd  xmm0,xmm1
  10b3a4:	f2 0f 2c f0          	cvttsd2si esi,xmm0
  10b3a8:	66 0f e6 d8          	cvttpd2dq xmm3,xmm0
  10b3ac:	f3 0f e6 db          	cvtdq2pd xmm3,xmm3
  10b3b0:	f2 0f 5c c3          	subsd  xmm0,xmm3
  10b3b4:	40 80 c6 30          	add    sil,0x30
  10b3b8:	f2 0f 59 c1          	mulsd  xmm0,xmm1
  10b3bc:	f2 0f 2c f8          	cvttsd2si edi,xmm0
  10b3c0:	66 0f e6 d8          	cvttpd2dq xmm3,xmm0
  10b3c4:	40 88 33             	mov    BYTE PTR [rbx],sil
  10b3c7:	f3 0f e6 db          	cvtdq2pd xmm3,xmm3
  10b3cb:	f2 0f 5c c3          	subsd  xmm0,xmm3
  10b3cf:	40 80 c7 30          	add    dil,0x30
  10b3d3:	40 88 7b 01          	mov    BYTE PTR [rbx+0x1],dil
  10b3d7:	48 83 c3 02          	add    rbx,0x2
  10b3db:	83 c2 fe             	add    edx,0xfffffffe
  10b3de:	75 c0                	jne    10b3a0 <_dtoa_r+0x680>
  10b3e0:	f6 c1 01             	test   cl,0x1
  10b3e3:	74 20                	je     10b405 <_dtoa_r+0x6e5>
  10b3e5:	f2 0f 59 05 83 54 ff 	mulsd  xmm0,QWORD PTR [rip+0xffffffffffff5483]        # 100870 <_svfprintf_r.blanks-0x270>
  10b3ec:	ff 
  10b3ed:	f2 0f 2c c8          	cvttsd2si ecx,xmm0
  10b3f1:	66 0f e6 c8          	cvttpd2dq xmm1,xmm0
  10b3f5:	f3 0f e6 c9          	cvtdq2pd xmm1,xmm1
  10b3f9:	f2 0f 5c c1          	subsd  xmm0,xmm1
  10b3fd:	80 c1 30             	add    cl,0x30
  10b400:	88 0b                	mov    BYTE PTR [rbx],cl
  10b402:	48 ff c3             	inc    rbx
  10b405:	f2 0f 10 0d 9b 54 ff 	movsd  xmm1,QWORD PTR [rip+0xffffffffffff549b]        # 1008a8 <_svfprintf_r.blanks-0x238>
  10b40c:	ff 
  10b40d:	f2 0f 58 ca          	addsd  xmm1,xmm2
  10b411:	66 0f 2e c1          	ucomisd xmm0,xmm1
  10b415:	0f 86 94 00 00 00    	jbe    10b4af <_dtoa_r+0x78f>
  10b41b:	41 89 c0             	mov    r8d,eax
  10b41e:	4c 8b 74 24 48       	mov    r14,QWORD PTR [rsp+0x48]
  10b423:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10b428:	4c 8b 64 24 10       	mov    r12,QWORD PTR [rsp+0x10]
  10b42d:	48 8b 6c 24 18       	mov    rbp,QWORD PTR [rsp+0x18]
  10b432:	e9 60 03 00 00       	jmp    10b797 <_dtoa_r+0xa77>
  10b437:	66 0f 57 25 91 54 ff 	xorpd  xmm4,XMMWORD PTR [rip+0xffffffffffff5491]        # 1008d0 <_svfprintf_r.blanks-0x210>
  10b43e:	ff 
  10b43f:	66 0f 2e e0          	ucomisd xmm4,xmm0
  10b443:	0f 86 9b 00 00 00    	jbe    10b4e4 <_dtoa_r+0x7c4>
  10b449:	31 c0                	xor    eax,eax
  10b44b:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  10b450:	45 31 ff             	xor    r15d,r15d
  10b453:	4c 8b 74 24 48       	mov    r14,QWORD PTR [rsp+0x48]
  10b458:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10b45d:	e9 54 07 00 00       	jmp    10bbb6 <_dtoa_r+0xe96>
  10b462:	66 0f 28 c5          	movapd xmm0,xmm5
  10b466:	0f b6 5c 24 20       	movzx  ebx,BYTE PTR [rsp+0x20]
  10b46b:	e9 6f fd ff ff       	jmp    10b1df <_dtoa_r+0x4bf>
  10b470:	c1 e8 04             	shr    eax,0x4
  10b473:	b9 02 00 00 00       	mov    ecx,0x2
  10b478:	48 8d 15 21 5c ff ff 	lea    rdx,[rip+0xffffffffffff5c21]        # 1010a0 <__mprec_bigtens>
  10b47f:	0f b6 5c 24 20       	movzx  ebx,BYTE PTR [rsp+0x20]
  10b484:	eb 1d                	jmp    10b4a3 <_dtoa_r+0x783>
  10b486:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10b48d:	00 00 00 
  10b490:	89 c6                	mov    esi,eax
  10b492:	d1 ee                	shr    esi,1
  10b494:	48 83 c2 08          	add    rdx,0x8
  10b498:	83 f8 01             	cmp    eax,0x1
  10b49b:	89 f0                	mov    eax,esi
  10b49d:	0f 86 3c fd ff ff    	jbe    10b1df <_dtoa_r+0x4bf>
  10b4a3:	a8 01                	test   al,0x1
  10b4a5:	74 e9                	je     10b490 <_dtoa_r+0x770>
  10b4a7:	ff c1                	inc    ecx
  10b4a9:	f2 0f 59 02          	mulsd  xmm0,QWORD PTR [rdx]
  10b4ad:	eb e1                	jmp    10b490 <_dtoa_r+0x770>
  10b4af:	f2 0f 10 0d f1 53 ff 	movsd  xmm1,QWORD PTR [rip+0xffffffffffff53f1]        # 1008a8 <_svfprintf_r.blanks-0x238>
  10b4b6:	ff 
  10b4b7:	f2 0f 5c ca          	subsd  xmm1,xmm2
  10b4bb:	66 0f 2e c8          	ucomisd xmm1,xmm0
  10b4bf:	76 23                	jbe    10b4e4 <_dtoa_r+0x7c4>
  10b4c1:	48 ff c3             	inc    rbx
  10b4c4:	4c 8b 74 24 48       	mov    r14,QWORD PTR [rsp+0x48]
  10b4c9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  10b4d0:	80 7b fe 30          	cmp    BYTE PTR [rbx-0x2],0x30
  10b4d4:	48 8d 5b ff          	lea    rbx,[rbx-0x1]
  10b4d8:	74 f6                	je     10b4d0 <_dtoa_r+0x7b0>
  10b4da:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  10b4df:	e9 27 fe ff ff       	jmp    10b30b <_dtoa_r+0x5eb>
  10b4e4:	8b 8c 24 84 00 00 00 	mov    ecx,DWORD PTR [rsp+0x84]
  10b4eb:	85 c9                	test   ecx,ecx
  10b4ed:	78 6f                	js     10b55e <_dtoa_r+0x83e>
  10b4ef:	41 83 f8 0e          	cmp    r8d,0xe
  10b4f3:	7f 69                	jg     10b55e <_dtoa_r+0x83e>
  10b4f5:	49 63 c0             	movsxd rax,r8d
  10b4f8:	48 8d 0d d1 5a ff ff 	lea    rcx,[rip+0xffffffffffff5ad1]        # 100fd0 <__mprec_tens>
  10b4ff:	f2 0f 10 04 c1       	movsd  xmm0,QWORD PTR [rcx+rax*8]
  10b504:	83 7c 24 58 00       	cmp    DWORD PTR [rsp+0x58],0x0
  10b509:	0f 89 8a 00 00 00    	jns    10b599 <_dtoa_r+0x879>
  10b50f:	45 85 ed             	test   r13d,r13d
  10b512:	0f 8f 81 00 00 00    	jg     10b599 <_dtoa_r+0x879>
  10b518:	45 85 ed             	test   r13d,r13d
  10b51b:	4c 8b 74 24 48       	mov    r14,QWORD PTR [rsp+0x48]
  10b520:	4c 8b 64 24 10       	mov    r12,QWORD PTR [rsp+0x10]
  10b525:	48 8b 6c 24 18       	mov    rbp,QWORD PTR [rsp+0x18]
  10b52a:	0f 88 4d 07 00 00    	js     10bc7d <_dtoa_r+0xf5d>
  10b530:	31 c0                	xor    eax,eax
  10b532:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  10b537:	f2 0f 59 05 41 53 ff 	mulsd  xmm0,QWORD PTR [rip+0xffffffffffff5341]        # 100880 <_svfprintf_r.blanks-0x260>
  10b53e:	ff 
  10b53f:	66 0f 2e c5          	ucomisd xmm0,xmm5
  10b543:	41 bf 00 00 00 00    	mov    r15d,0x0
  10b549:	b9 00 00 00 00       	mov    ecx,0x0
  10b54e:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10b553:	0f 82 5c 04 00 00    	jb     10b9b5 <_dtoa_r+0xc95>
  10b559:	e9 2e 07 00 00       	jmp    10bc8c <_dtoa_r+0xf6c>
  10b55e:	83 7c 24 50 00       	cmp    DWORD PTR [rsp+0x50],0x0
  10b563:	0f 84 d8 00 00 00    	je     10b641 <_dtoa_r+0x921>
  10b569:	83 7c 24 68 01       	cmp    DWORD PTR [rsp+0x68],0x1
  10b56e:	0f 8f df 00 00 00    	jg     10b653 <_dtoa_r+0x933>
  10b574:	81 c1 33 04 00 00    	add    ecx,0x433
  10b57a:	b8 36 00 00 00       	mov    eax,0x36
  10b57f:	2b 44 24 74          	sub    eax,DWORD PTR [rsp+0x74]
  10b583:	41 81 fc 00 00 10 00 	cmp    r12d,0x100000
  10b58a:	0f 42 c1             	cmovb  eax,ecx
  10b58d:	89 eb                	mov    ebx,ebp
  10b58f:	44 8b 7c 24 40       	mov    r15d,DWORD PTR [rsp+0x40]
  10b594:	e9 f9 00 00 00       	jmp    10b692 <_dtoa_r+0x972>
  10b599:	66 0f 28 cd          	movapd xmm1,xmm5
  10b59d:	f2 0f 5e c8          	divsd  xmm1,xmm0
  10b5a1:	f2 0f 2c c1          	cvttsd2si eax,xmm1
  10b5a5:	66 0f e6 c9          	cvttpd2dq xmm1,xmm1
  10b5a9:	f3 0f e6 c9          	cvtdq2pd xmm1,xmm1
  10b5ad:	f2 0f 59 c8          	mulsd  xmm1,xmm0
  10b5b1:	f2 0f 5c e9          	subsd  xmm5,xmm1
  10b5b5:	8d 48 30             	lea    ecx,[rax+0x30]
  10b5b8:	48 8b 6c 24 18       	mov    rbp,QWORD PTR [rsp+0x18]
  10b5bd:	48 8d 5d 01          	lea    rbx,[rbp+0x1]
  10b5c1:	88 4d 00             	mov    BYTE PTR [rbp+0x0],cl
  10b5c4:	41 83 fd 01          	cmp    r13d,0x1
  10b5c8:	4c 8b 74 24 48       	mov    r14,QWORD PTR [rsp+0x48]
  10b5cd:	4c 8b 64 24 10       	mov    r12,QWORD PTR [rsp+0x10]
  10b5d2:	74 55                	je     10b629 <_dtoa_r+0x909>
  10b5d4:	41 ff cd             	dec    r13d
  10b5d7:	f2 0f 10 0d 91 52 ff 	movsd  xmm1,QWORD PTR [rip+0xffffffffffff5291]        # 100870 <_svfprintf_r.blanks-0x270>
  10b5de:	ff 
  10b5df:	66 0f 57 d2          	xorpd  xmm2,xmm2
  10b5e3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10b5ea:	84 00 00 00 00 00 
  10b5f0:	f2 0f 59 e9          	mulsd  xmm5,xmm1
  10b5f4:	66 0f 2e ea          	ucomisd xmm5,xmm2
  10b5f8:	75 06                	jne    10b600 <_dtoa_r+0x8e0>
  10b5fa:	0f 8b de 01 00 00    	jnp    10b7de <_dtoa_r+0xabe>
  10b600:	66 0f 28 dd          	movapd xmm3,xmm5
  10b604:	f2 0f 5e d8          	divsd  xmm3,xmm0
  10b608:	f2 0f 2c c3          	cvttsd2si eax,xmm3
  10b60c:	66 0f e6 db          	cvttpd2dq xmm3,xmm3
  10b610:	f3 0f e6 db          	cvtdq2pd xmm3,xmm3
  10b614:	f2 0f 59 d8          	mulsd  xmm3,xmm0
  10b618:	f2 0f 5c eb          	subsd  xmm5,xmm3
  10b61c:	8d 48 30             	lea    ecx,[rax+0x30]
  10b61f:	88 0b                	mov    BYTE PTR [rbx],cl
  10b621:	48 ff c3             	inc    rbx
  10b624:	41 ff cd             	dec    r13d
  10b627:	75 c7                	jne    10b5f0 <_dtoa_r+0x8d0>
  10b629:	f2 0f 58 ed          	addsd  xmm5,xmm5
  10b62d:	66 0f 2e e8          	ucomisd xmm5,xmm0
  10b631:	0f 86 4a 01 00 00    	jbe    10b781 <_dtoa_r+0xa61>
  10b637:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10b63c:	e9 56 01 00 00       	jmp    10b797 <_dtoa_r+0xa77>
  10b641:	31 f6                	xor    esi,esi
  10b643:	8b 4c 24 40          	mov    ecx,DWORD PTR [rsp+0x40]
  10b647:	41 89 cf             	mov    r15d,ecx
  10b64a:	89 e8                	mov    eax,ebp
  10b64c:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  10b651:	eb 61                	jmp    10b6b4 <_dtoa_r+0x994>
  10b653:	41 8d 45 ff          	lea    eax,[r13-0x1]
  10b657:	8b 74 24 40          	mov    esi,DWORD PTR [rsp+0x40]
  10b65b:	89 f1                	mov    ecx,esi
  10b65d:	29 c1                	sub    ecx,eax
  10b65f:	f7 d9                	neg    ecx
  10b661:	31 d2                	xor    edx,edx
  10b663:	41 89 f7             	mov    r15d,esi
  10b666:	41 29 c7             	sub    r15d,eax
  10b669:	0f 4e f0             	cmovle esi,eax
  10b66c:	89 74 24 40          	mov    DWORD PTR [rsp+0x40],esi
  10b670:	44 0f 4c fa          	cmovl  r15d,edx
  10b674:	0f 4d ca             	cmovge ecx,edx
  10b677:	01 8c 24 80 00 00 00 	add    DWORD PTR [rsp+0x80],ecx
  10b67e:	45 85 ed             	test   r13d,r13d
  10b681:	b8 00 00 00 00       	mov    eax,0x0
  10b686:	41 0f 4f c5          	cmovg  eax,r13d
  10b68a:	41 0f 48 d5          	cmovs  edx,r13d
  10b68e:	89 eb                	mov    ebx,ebp
  10b690:	29 d3                	sub    ebx,edx
  10b692:	01 c5                	add    ebp,eax
  10b694:	48 89 6c 24 28       	mov    QWORD PTR [rsp+0x28],rbp
  10b699:	41 01 c6             	add    r14d,eax
  10b69c:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  10b6a1:	be 01 00 00 00       	mov    esi,0x1
  10b6a6:	e8 65 0e 00 00       	call   10c510 <__i2b>
  10b6ab:	48 89 c6             	mov    rsi,rax
  10b6ae:	89 dd                	mov    ebp,ebx
  10b6b0:	8b 4c 24 40          	mov    ecx,DWORD PTR [rsp+0x40]
  10b6b4:	85 ed                	test   ebp,ebp
  10b6b6:	7e 1f                	jle    10b6d7 <_dtoa_r+0x9b7>
  10b6b8:	45 85 f6             	test   r14d,r14d
  10b6bb:	7e 1a                	jle    10b6d7 <_dtoa_r+0x9b7>
  10b6bd:	44 39 f5             	cmp    ebp,r14d
  10b6c0:	44 89 f0             	mov    eax,r14d
  10b6c3:	0f 4c c5             	cmovl  eax,ebp
  10b6c6:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  10b6cb:	29 c2                	sub    edx,eax
  10b6cd:	48 89 54 24 28       	mov    QWORD PTR [rsp+0x28],rdx
  10b6d2:	29 c5                	sub    ebp,eax
  10b6d4:	41 29 c6             	sub    r14d,eax
  10b6d7:	85 c9                	test   ecx,ecx
  10b6d9:	48 89 ac 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rbp
  10b6e0:	00 
  10b6e1:	7e 6b                	jle    10b74e <_dtoa_r+0xa2e>
  10b6e3:	83 7c 24 50 00       	cmp    DWORD PTR [rsp+0x50],0x0
  10b6e8:	74 70                	je     10b75a <_dtoa_r+0xa3a>
  10b6ea:	45 85 ff             	test   r15d,r15d
  10b6ed:	0f 8e f5 00 00 00    	jle    10b7e8 <_dtoa_r+0xac8>
  10b6f3:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
  10b6f8:	48 89 df             	mov    rdi,rbx
  10b6fb:	44 89 fa             	mov    edx,r15d
  10b6fe:	89 4c 24 40          	mov    DWORD PTR [rsp+0x40],ecx
  10b702:	e8 e9 11 00 00       	call   10c8f0 <__pow5mult>
  10b707:	48 89 df             	mov    rdi,rbx
  10b70a:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  10b70f:	48 89 c6             	mov    rsi,rax
  10b712:	44 89 fd             	mov    ebp,r15d
  10b715:	4c 8b 7c 24 10       	mov    r15,QWORD PTR [rsp+0x10]
  10b71a:	4c 89 fa             	mov    rdx,r15
  10b71d:	e8 7e 0e 00 00       	call   10c5a0 <__multiply>
  10b722:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
  10b729:	00 
  10b72a:	48 89 df             	mov    rdi,rbx
  10b72d:	4c 89 fe             	mov    rsi,r15
  10b730:	41 89 ef             	mov    r15d,ebp
  10b733:	e8 f8 09 00 00       	call   10c130 <_Bfree>
  10b738:	8b 4c 24 40          	mov    ecx,DWORD PTR [rsp+0x40]
  10b73c:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
  10b743:	00 
  10b744:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  10b749:	e9 9f 00 00 00       	jmp    10b7ed <_dtoa_r+0xacd>
  10b74e:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
  10b753:	4c 8b 7c 24 08       	mov    r15,QWORD PTR [rsp+0x8]
  10b758:	eb 1e                	jmp    10b778 <_dtoa_r+0xa58>
  10b75a:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
  10b75f:	4c 8b 7c 24 08       	mov    r15,QWORD PTR [rsp+0x8]
  10b764:	4c 89 ff             	mov    rdi,r15
  10b767:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
  10b76c:	89 ca                	mov    edx,ecx
  10b76e:	e8 7d 11 00 00       	call   10c8f0 <__pow5mult>
  10b773:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  10b778:	8b 6c 24 64          	mov    ebp,DWORD PTR [rsp+0x64]
  10b77c:	e9 95 00 00 00       	jmp    10b816 <_dtoa_r+0xaf6>
  10b781:	66 0f 2e e8          	ucomisd xmm5,xmm0
  10b785:	75 57                	jne    10b7de <_dtoa_r+0xabe>
  10b787:	7a 55                	jp     10b7de <_dtoa_r+0xabe>
  10b789:	83 e0 01             	and    eax,0x1
  10b78c:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10b791:	0f 84 1d 07 00 00    	je     10beb4 <_dtoa_r+0x1194>
  10b797:	48 ff cb             	dec    rbx
  10b79a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  10b7a0:	48 89 d8             	mov    rax,rbx
  10b7a3:	0f b6 0b             	movzx  ecx,BYTE PTR [rbx]
  10b7a6:	80 f9 39             	cmp    cl,0x39
  10b7a9:	75 1c                	jne    10b7c7 <_dtoa_r+0xaa7>
  10b7ab:	48 8d 58 ff          	lea    rbx,[rax-0x1]
  10b7af:	48 39 e8             	cmp    rax,rbp
  10b7b2:	75 ec                	jne    10b7a0 <_dtoa_r+0xa80>
  10b7b4:	41 ff c0             	inc    r8d
  10b7b7:	4c 89 44 24 30       	mov    QWORD PTR [rsp+0x30],r8
  10b7bc:	c6 45 00 30          	mov    BYTE PTR [rbp+0x0],0x30
  10b7c0:	b1 31                	mov    cl,0x31
  10b7c2:	48 89 ea             	mov    rdx,rbp
  10b7c5:	eb 0a                	jmp    10b7d1 <_dtoa_r+0xab1>
  10b7c7:	4c 89 44 24 30       	mov    QWORD PTR [rsp+0x30],r8
  10b7cc:	fe c1                	inc    cl
  10b7ce:	48 89 c2             	mov    rdx,rax
  10b7d1:	88 0a                	mov    BYTE PTR [rdx],cl
  10b7d3:	48 ff c0             	inc    rax
  10b7d6:	48 89 c3             	mov    rbx,rax
  10b7d9:	e9 d6 06 00 00       	jmp    10beb4 <_dtoa_r+0x1194>
  10b7de:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10b7e3:	e9 cc 06 00 00       	jmp    10beb4 <_dtoa_r+0x1194>
  10b7e8:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
  10b7ed:	8b 6c 24 64          	mov    ebp,DWORD PTR [rsp+0x64]
  10b7f1:	44 29 f9             	sub    ecx,r15d
  10b7f4:	75 07                	jne    10b7fd <_dtoa_r+0xadd>
  10b7f6:	4c 8b 7c 24 08       	mov    r15,QWORD PTR [rsp+0x8]
  10b7fb:	eb 19                	jmp    10b816 <_dtoa_r+0xaf6>
  10b7fd:	4c 8b 7c 24 08       	mov    r15,QWORD PTR [rsp+0x8]
  10b802:	4c 89 ff             	mov    rdi,r15
  10b805:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
  10b80a:	89 ca                	mov    edx,ecx
  10b80c:	e8 df 10 00 00       	call   10c8f0 <__pow5mult>
  10b811:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  10b816:	bb 01 00 00 00       	mov    ebx,0x1
  10b81b:	4c 89 ff             	mov    rdi,r15
  10b81e:	be 01 00 00 00       	mov    esi,0x1
  10b823:	e8 e8 0c 00 00       	call   10c510 <__i2b>
  10b828:	8b 94 24 80 00 00 00 	mov    edx,DWORD PTR [rsp+0x80]
  10b82f:	85 d2                	test   edx,edx
  10b831:	7e 10                	jle    10b843 <_dtoa_r+0xb23>
  10b833:	4c 89 ff             	mov    rdi,r15
  10b836:	48 89 c6             	mov    rsi,rax
  10b839:	41 89 d7             	mov    r15d,edx
  10b83c:	e8 af 10 00 00       	call   10c8f0 <__pow5mult>
  10b841:	eb 03                	jmp    10b846 <_dtoa_r+0xb26>
  10b843:	41 89 d7             	mov    r15d,edx
  10b846:	48 8b 4c 24 78       	mov    rcx,QWORD PTR [rsp+0x78]
  10b84b:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  10b850:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
  10b855:	83 7c 24 68 02       	cmp    DWORD PTR [rsp+0x68],0x2
  10b85a:	0f 9d c2             	setge  dl
  10b85d:	41 81 e4 ff ff 0f 00 	and    r12d,0xfffff
  10b864:	41 09 cc             	or     r12d,ecx
  10b867:	0f 95 c1             	setne  cl
  10b86a:	85 ed                	test   ebp,ebp
  10b86c:	41 0f 94 c4          	sete   r12b
  10b870:	41 08 d4             	or     r12b,dl
  10b873:	41 08 cc             	or     r12b,cl
  10b876:	44 89 e1             	mov    ecx,r12d
  10b879:	80 f1 01             	xor    cl,0x1
  10b87c:	0f b6 e9             	movzx  ebp,cl
  10b87f:	41 01 ee             	add    r14d,ebp
  10b882:	45 85 ff             	test   r15d,r15d
  10b885:	49 89 c7             	mov    r15,rax
  10b888:	74 15                	je     10b89f <_dtoa_r+0xb7f>
  10b88a:	49 63 47 14          	movsxd rax,DWORD PTR [r15+0x14]
  10b88e:	41 8b 7c 87 14       	mov    edi,DWORD PTR [r15+rax*4+0x14]
  10b893:	e8 78 0b 00 00       	call   10c410 <__hi0bits>
  10b898:	bb 20 00 00 00       	mov    ebx,0x20
  10b89d:	29 c3                	sub    ebx,eax
  10b89f:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  10b8a4:	01 ea                	add    edx,ebp
  10b8a6:	44 01 f3             	add    ebx,r14d
  10b8a9:	83 e3 1f             	and    ebx,0x1f
  10b8ac:	b8 20 00 00 00       	mov    eax,0x20
  10b8b1:	29 d8                	sub    eax,ebx
  10b8b3:	85 db                	test   ebx,ebx
  10b8b5:	0f 44 c3             	cmove  eax,ebx
  10b8b8:	83 f8 05             	cmp    eax,0x5
  10b8bb:	72 1b                	jb     10b8d8 <_dtoa_r+0xbb8>
  10b8bd:	01 c2                	add    edx,eax
  10b8bf:	83 c2 fc             	add    edx,0xfffffffc
  10b8c2:	48 8b 9c 24 88 00 00 	mov    rbx,QWORD PTR [rsp+0x88]
  10b8c9:	00 
  10b8ca:	01 c3                	add    ebx,eax
  10b8cc:	83 c3 fc             	add    ebx,0xfffffffc
  10b8cf:	41 01 c6             	add    r14d,eax
  10b8d2:	41 83 c6 fc          	add    r14d,0xfffffffc
  10b8d6:	eb 1e                	jmp    10b8f6 <_dtoa_r+0xbd6>
  10b8d8:	83 f8 04             	cmp    eax,0x4
  10b8db:	48 8b 9c 24 88 00 00 	mov    rbx,QWORD PTR [rsp+0x88]
  10b8e2:	00 
  10b8e3:	74 11                	je     10b8f6 <_dtoa_r+0xbd6>
  10b8e5:	01 c2                	add    edx,eax
  10b8e7:	83 c2 1c             	add    edx,0x1c
  10b8ea:	01 c3                	add    ebx,eax
  10b8ec:	83 c3 1c             	add    ebx,0x1c
  10b8ef:	41 01 c6             	add    r14d,eax
  10b8f2:	41 83 c6 1c          	add    r14d,0x1c
  10b8f6:	85 d2                	test   edx,edx
  10b8f8:	7e 14                	jle    10b90e <_dtoa_r+0xbee>
  10b8fa:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  10b8ff:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
  10b904:	e8 27 11 00 00       	call   10ca30 <__lshift>
  10b909:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  10b90e:	45 85 f6             	test   r14d,r14d
  10b911:	7e 13                	jle    10b926 <_dtoa_r+0xc06>
  10b913:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  10b918:	4c 89 fe             	mov    rsi,r15
  10b91b:	44 89 f2             	mov    edx,r14d
  10b91e:	e8 0d 11 00 00       	call   10ca30 <__lshift>
  10b923:	49 89 c7             	mov    r15,rax
  10b926:	4c 8b 74 24 48       	mov    r14,QWORD PTR [rsp+0x48]
  10b92b:	48 8b 6c 24 30       	mov    rbp,QWORD PTR [rsp+0x30]
  10b930:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  10b937:	00 
  10b938:	83 f8 17             	cmp    eax,0x17
  10b93b:	72 1a                	jb     10b957 <_dtoa_r+0xc37>
  10b93d:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
  10b942:	4c 89 fe             	mov    rsi,r15
  10b945:	e8 36 14 00 00       	call   10cd80 <__mcmp>
  10b94a:	48 8b 6c 24 30       	mov    rbp,QWORD PTR [rsp+0x30]
  10b94f:	85 c0                	test   eax,eax
  10b951:	0f 88 6e 02 00 00    	js     10bbc5 <_dtoa_r+0xea5>
  10b957:	45 85 ed             	test   r13d,r13d
  10b95a:	7f 7a                	jg     10b9d6 <_dtoa_r+0xcb6>
  10b95c:	83 7c 24 68 02       	cmp    DWORD PTR [rsp+0x68],0x2
  10b961:	7e 73                	jle    10b9d6 <_dtoa_r+0xcb6>
  10b963:	44 89 e8             	mov    eax,r13d
  10b966:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10b96b:	48 8b 74 24 20       	mov    rsi,QWORD PTR [rsp+0x20]
  10b970:	85 c0                	test   eax,eax
  10b972:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
  10b977:	0f 88 39 02 00 00    	js     10bbb6 <_dtoa_r+0xe96>
  10b97d:	4c 89 ef             	mov    rdi,r13
  10b980:	4c 89 fe             	mov    rsi,r15
  10b983:	ba 05 00 00 00       	mov    edx,0x5
  10b988:	31 c9                	xor    ecx,ecx
  10b98a:	e8 c1 07 00 00       	call   10c150 <__multadd>
  10b98f:	49 89 c7             	mov    r15,rax
  10b992:	4c 8b 64 24 10       	mov    r12,QWORD PTR [rsp+0x10]
  10b997:	4c 89 e7             	mov    rdi,r12
  10b99a:	48 89 c6             	mov    rsi,rax
  10b99d:	e8 de 13 00 00       	call   10cd80 <__mcmp>
  10b9a2:	49 89 e8             	mov    r8,rbp
  10b9a5:	4c 89 f9             	mov    rcx,r15
  10b9a8:	85 c0                	test   eax,eax
  10b9aa:	48 8b 6c 24 18       	mov    rbp,QWORD PTR [rsp+0x18]
  10b9af:	0f 8e d7 02 00 00    	jle    10bc8c <_dtoa_r+0xf6c>
  10b9b5:	48 89 eb             	mov    rbx,rbp
  10b9b8:	48 ff c3             	inc    rbx
  10b9bb:	c6 45 00 31          	mov    BYTE PTR [rbp+0x0],0x31
  10b9bf:	41 ff c0             	inc    r8d
  10b9c2:	4c 89 44 24 30       	mov    QWORD PTR [rsp+0x30],r8
  10b9c7:	31 c0                	xor    eax,eax
  10b9c9:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  10b9ce:	49 89 cf             	mov    r15,rcx
  10b9d1:	e9 a2 04 00 00       	jmp    10be78 <_dtoa_r+0x1158>
  10b9d6:	83 7c 24 50 00       	cmp    DWORD PTR [rsp+0x50],0x0
  10b9db:	48 8b 74 24 20       	mov    rsi,QWORD PTR [rsp+0x20]
  10b9e0:	0f 84 dc 02 00 00    	je     10bcc2 <_dtoa_r+0xfa2>
  10b9e6:	44 89 e8             	mov    eax,r13d
  10b9e9:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10b9ee:	48 89 6c 24 30       	mov    QWORD PTR [rsp+0x30],rbp
  10b9f3:	48 89 da             	mov    rdx,rbx
  10b9f6:	85 d2                	test   edx,edx
  10b9f8:	7e 0f                	jle    10ba09 <_dtoa_r+0xce9>
  10b9fa:	4c 89 ef             	mov    rdi,r13
  10b9fd:	89 c3                	mov    ebx,eax
  10b9ff:	e8 2c 10 00 00       	call   10ca30 <__lshift>
  10ba04:	48 89 c6             	mov    rsi,rax
  10ba07:	89 d8                	mov    eax,ebx
  10ba09:	48 89 f1             	mov    rcx,rsi
  10ba0c:	48 89 74 24 28       	mov    QWORD PTR [rsp+0x28],rsi
  10ba11:	48 8b 5c 24 18       	mov    rbx,QWORD PTR [rsp+0x18]
  10ba16:	45 84 e4             	test   r12b,r12b
  10ba19:	75 4a                	jne    10ba65 <_dtoa_r+0xd45>
  10ba1b:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  10ba20:	8b 73 08             	mov    esi,DWORD PTR [rbx+0x8]
  10ba23:	4c 89 ef             	mov    rdi,r13
  10ba26:	41 89 c6             	mov    r14d,eax
  10ba29:	e8 72 06 00 00       	call   10c0a0 <_Balloc>
  10ba2e:	48 89 c5             	mov    rbp,rax
  10ba31:	48 8d 78 10          	lea    rdi,[rax+0x10]
  10ba35:	48 8d 73 10          	lea    rsi,[rbx+0x10]
  10ba39:	48 63 43 14          	movsxd rax,DWORD PTR [rbx+0x14]
  10ba3d:	48 8d 14 85 08 00 00 	lea    rdx,[rax*4+0x8]
  10ba44:	00 
  10ba45:	e8 c6 ef ff ff       	call   10aa10 <memcpy>
  10ba4a:	4c 89 ef             	mov    rdi,r13
  10ba4d:	48 89 ee             	mov    rsi,rbp
  10ba50:	48 8b 5c 24 18       	mov    rbx,QWORD PTR [rsp+0x18]
  10ba55:	ba 01 00 00 00       	mov    edx,0x1
  10ba5a:	e8 d1 0f 00 00       	call   10ca30 <__lshift>
  10ba5f:	48 89 c6             	mov    rsi,rax
  10ba62:	44 89 f0             	mov    eax,r14d
  10ba65:	ff c8                	dec    eax
  10ba67:	89 44 24 3c          	mov    DWORD PTR [rsp+0x3c],eax
  10ba6b:	48 ff c3             	inc    rbx
  10ba6e:	4c 8b 74 24 10       	mov    r14,QWORD PTR [rsp+0x10]
  10ba73:	49 89 f4             	mov    r12,rsi
  10ba76:	4c 89 7c 24 40       	mov    QWORD PTR [rsp+0x40],r15
  10ba7b:	eb 0b                	jmp    10ba88 <_dtoa_r+0xd68>
  10ba7d:	48 ff c3             	inc    rbx
  10ba80:	49 89 c4             	mov    r12,rax
  10ba83:	4c 8b 7c 24 40       	mov    r15,QWORD PTR [rsp+0x40]
  10ba88:	4c 89 f7             	mov    rdi,r14
  10ba8b:	4c 89 fe             	mov    rsi,r15
  10ba8e:	e8 5d 04 00 00       	call   10bef0 <quorem>
  10ba93:	4c 89 fd             	mov    rbp,r15
  10ba96:	41 89 c7             	mov    r15d,eax
  10ba99:	4c 89 74 24 10       	mov    QWORD PTR [rsp+0x10],r14
  10ba9e:	4c 89 f7             	mov    rdi,r14
  10baa1:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
  10baa6:	e8 d5 12 00 00       	call   10cd80 <__mcmp>
  10baab:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
  10baaf:	4c 89 ef             	mov    rdi,r13
  10bab2:	48 89 ee             	mov    rsi,rbp
  10bab5:	4c 89 64 24 20       	mov    QWORD PTR [rsp+0x20],r12
  10baba:	4c 89 e2             	mov    rdx,r12
  10babd:	e8 0e 13 00 00       	call   10cdd0 <__mdiff>
  10bac2:	49 89 c6             	mov    r14,rax
  10bac5:	4d 89 ec             	mov    r12,r13
  10bac8:	41 bd 01 00 00 00    	mov    r13d,0x1
  10bace:	83 78 10 00          	cmp    DWORD PTR [rax+0x10],0x0
  10bad2:	75 10                	jne    10bae4 <_dtoa_r+0xdc4>
  10bad4:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
  10bad9:	4c 89 f6             	mov    rsi,r14
  10badc:	e8 9f 12 00 00       	call   10cd80 <__mcmp>
  10bae1:	41 89 c5             	mov    r13d,eax
  10bae4:	4c 89 7c 24 50       	mov    QWORD PTR [rsp+0x50],r15
  10bae9:	41 8d 6f 30          	lea    ebp,[r15+0x30]
  10baed:	4c 89 e7             	mov    rdi,r12
  10baf0:	4c 89 f6             	mov    rsi,r14
  10baf3:	e8 38 06 00 00       	call   10c130 <_Bfree>
  10baf8:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  10bafd:	a8 01                	test   al,0x1
  10baff:	75 10                	jne    10bb11 <_dtoa_r+0xdf1>
  10bb01:	45 85 ed             	test   r13d,r13d
  10bb04:	75 0b                	jne    10bb11 <_dtoa_r+0xdf1>
  10bb06:	83 7c 24 68 00       	cmp    DWORD PTR [rsp+0x68],0x0
  10bb0b:	0f 84 3a 02 00 00    	je     10bd4b <_dtoa_r+0x102b>
  10bb11:	8b 4c 24 58          	mov    ecx,DWORD PTR [rsp+0x58]
  10bb15:	85 c9                	test   ecx,ecx
  10bb17:	4c 8b 74 24 48       	mov    r14,QWORD PTR [rsp+0x48]
  10bb1c:	4c 8b 64 24 10       	mov    r12,QWORD PTR [rsp+0x10]
  10bb21:	0f 88 fc 00 00 00    	js     10bc23 <_dtoa_r+0xf03>
  10bb27:	a8 01                	test   al,0x1
  10bb29:	75 0f                	jne    10bb3a <_dtoa_r+0xe1a>
  10bb2b:	85 c9                	test   ecx,ecx
  10bb2d:	75 0b                	jne    10bb3a <_dtoa_r+0xe1a>
  10bb2f:	83 7c 24 68 00       	cmp    DWORD PTR [rsp+0x68],0x0
  10bb34:	0f 84 e9 00 00 00    	je     10bc23 <_dtoa_r+0xf03>
  10bb3a:	45 85 ed             	test   r13d,r13d
  10bb3d:	0f 8f 39 02 00 00    	jg     10bd7c <_dtoa_r+0x105c>
  10bb43:	40 88 6b ff          	mov    BYTE PTR [rbx-0x1],bpl
  10bb47:	8b 44 24 3c          	mov    eax,DWORD PTR [rsp+0x3c]
  10bb4b:	83 e8 01             	sub    eax,0x1
  10bb4e:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10bb53:	4c 8b 7c 24 20       	mov    r15,QWORD PTR [rsp+0x20]
  10bb58:	0f 82 41 02 00 00    	jb     10bd9f <_dtoa_r+0x107f>
  10bb5e:	89 44 24 3c          	mov    DWORD PTR [rsp+0x3c],eax
  10bb62:	4c 89 ef             	mov    rdi,r13
  10bb65:	4c 89 e6             	mov    rsi,r12
  10bb68:	ba 0a 00 00 00       	mov    edx,0xa
  10bb6d:	31 c9                	xor    ecx,ecx
  10bb6f:	e8 dc 05 00 00       	call   10c150 <__multadd>
  10bb74:	49 89 c6             	mov    r14,rax
  10bb77:	4c 89 ef             	mov    rdi,r13
  10bb7a:	48 8b 6c 24 28       	mov    rbp,QWORD PTR [rsp+0x28]
  10bb7f:	48 89 ee             	mov    rsi,rbp
  10bb82:	ba 0a 00 00 00       	mov    edx,0xa
  10bb87:	31 c9                	xor    ecx,ecx
  10bb89:	e8 c2 05 00 00       	call   10c150 <__multadd>
  10bb8e:	4c 39 fd             	cmp    rbp,r15
  10bb91:	48 89 c1             	mov    rcx,rax
  10bb94:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  10bb99:	0f 84 de fe ff ff    	je     10ba7d <_dtoa_r+0xd5d>
  10bb9f:	4c 89 ef             	mov    rdi,r13
  10bba2:	4c 89 fe             	mov    rsi,r15
  10bba5:	ba 0a 00 00 00       	mov    edx,0xa
  10bbaa:	31 c9                	xor    ecx,ecx
  10bbac:	e8 9f 05 00 00       	call   10c150 <__multadd>
  10bbb1:	e9 c7 fe ff ff       	jmp    10ba7d <_dtoa_r+0xd5d>
  10bbb6:	4c 8b 64 24 10       	mov    r12,QWORD PTR [rsp+0x10]
  10bbbb:	48 8b 6c 24 18       	mov    rbp,QWORD PTR [rsp+0x18]
  10bbc0:	e9 c7 00 00 00       	jmp    10bc8c <_dtoa_r+0xf6c>
  10bbc5:	ff cd                	dec    ebp
  10bbc7:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10bbcc:	4c 89 ef             	mov    rdi,r13
  10bbcf:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
  10bbd4:	ba 0a 00 00 00       	mov    edx,0xa
  10bbd9:	31 c9                	xor    ecx,ecx
  10bbdb:	e8 70 05 00 00       	call   10c150 <__multadd>
  10bbe0:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  10bbe5:	83 7c 24 50 00       	cmp    DWORD PTR [rsp+0x50],0x0
  10bbea:	0f 84 b7 00 00 00    	je     10bca7 <_dtoa_r+0xf87>
  10bbf0:	4c 89 ef             	mov    rdi,r13
  10bbf3:	48 8b 74 24 20       	mov    rsi,QWORD PTR [rsp+0x20]
  10bbf8:	ba 0a 00 00 00       	mov    edx,0xa
  10bbfd:	31 c9                	xor    ecx,ecx
  10bbff:	e8 4c 05 00 00       	call   10c150 <__multadd>
  10bc04:	48 89 c6             	mov    rsi,rax
  10bc07:	8b 44 24 3c          	mov    eax,DWORD PTR [rsp+0x3c]
  10bc0b:	85 c0                	test   eax,eax
  10bc0d:	0f 8f db fd ff ff    	jg     10b9ee <_dtoa_r+0xcce>
  10bc13:	83 7c 24 68 03       	cmp    DWORD PTR [rsp+0x68],0x3
  10bc18:	0f 8d 52 fd ff ff    	jge    10b970 <_dtoa_r+0xc50>
  10bc1e:	e9 cb fd ff ff       	jmp    10b9ee <_dtoa_r+0xcce>
  10bc23:	45 85 ed             	test   r13d,r13d
  10bc26:	0f 8e f8 01 00 00    	jle    10be24 <_dtoa_r+0x1104>
  10bc2c:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10bc31:	4c 89 ef             	mov    rdi,r13
  10bc34:	4c 89 e6             	mov    rsi,r12
  10bc37:	ba 01 00 00 00       	mov    edx,0x1
  10bc3c:	e8 ef 0d 00 00       	call   10ca30 <__lshift>
  10bc41:	49 89 c4             	mov    r12,rax
  10bc44:	48 89 c7             	mov    rdi,rax
  10bc47:	4c 8b 7c 24 40       	mov    r15,QWORD PTR [rsp+0x40]
  10bc4c:	4c 89 fe             	mov    rsi,r15
  10bc4f:	e8 2c 11 00 00       	call   10cd80 <__mcmp>
  10bc54:	85 c0                	test   eax,eax
  10bc56:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  10bc5b:	7f 09                	jg     10bc66 <_dtoa_r+0xf46>
  10bc5d:	75 15                	jne    10bc74 <_dtoa_r+0xf54>
  10bc5f:	89 d0                	mov    eax,edx
  10bc61:	83 e0 01             	and    eax,0x1
  10bc64:	74 0e                	je     10bc74 <_dtoa_r+0xf54>
  10bc66:	83 fd 39             	cmp    ebp,0x39
  10bc69:	0f 84 20 01 00 00    	je     10bd8f <_dtoa_r+0x106f>
  10bc6f:	83 c2 31             	add    edx,0x31
  10bc72:	89 d5                	mov    ebp,edx
  10bc74:	40 88 6b ff          	mov    BYTE PTR [rbx-0x1],bpl
  10bc78:	e9 f6 01 00 00       	jmp    10be73 <_dtoa_r+0x1153>
  10bc7d:	31 c0                	xor    eax,eax
  10bc7f:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  10bc84:	45 31 ff             	xor    r15d,r15d
  10bc87:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10bc8c:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  10bc91:	f7 d0                	not    eax
  10bc93:	31 c9                	xor    ecx,ecx
  10bc95:	48 89 4c 24 28       	mov    QWORD PTR [rsp+0x28],rcx
  10bc9a:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  10bc9f:	48 89 eb             	mov    rbx,rbp
  10bca2:	e9 d1 01 00 00       	jmp    10be78 <_dtoa_r+0x1158>
  10bca7:	8b 44 24 3c          	mov    eax,DWORD PTR [rsp+0x3c]
  10bcab:	85 c0                	test   eax,eax
  10bcad:	48 8b 74 24 20       	mov    rsi,QWORD PTR [rsp+0x20]
  10bcb2:	7f 0b                	jg     10bcbf <_dtoa_r+0xf9f>
  10bcb4:	83 7c 24 68 02       	cmp    DWORD PTR [rsp+0x68],0x2
  10bcb9:	0f 8f b1 fc ff ff    	jg     10b970 <_dtoa_r+0xc50>
  10bcbf:	41 89 c5             	mov    r13d,eax
  10bcc2:	48 89 6c 24 30       	mov    QWORD PTR [rsp+0x30],rbp
  10bcc7:	4c 8b 64 24 10       	mov    r12,QWORD PTR [rsp+0x10]
  10bccc:	4c 89 e7             	mov    rdi,r12
  10bccf:	4c 89 fe             	mov    rsi,r15
  10bcd2:	e8 19 02 00 00       	call   10bef0 <quorem>
  10bcd7:	89 c5                	mov    ebp,eax
  10bcd9:	83 c5 30             	add    ebp,0x30
  10bcdc:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
  10bce1:	48 8d 58 01          	lea    rbx,[rax+0x1]
  10bce5:	40 88 28             	mov    BYTE PTR [rax],bpl
  10bce8:	41 83 fd 02          	cmp    r13d,0x2
  10bcec:	7c 4f                	jl     10bd3d <_dtoa_r+0x101d>
  10bcee:	41 ff cd             	dec    r13d
  10bcf1:	31 c0                	xor    eax,eax
  10bcf3:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  10bcf8:	4d 89 fe             	mov    r14,r15
  10bcfb:	4c 8b 7c 24 08       	mov    r15,QWORD PTR [rsp+0x8]
  10bd00:	4c 89 ff             	mov    rdi,r15
  10bd03:	4c 89 e6             	mov    rsi,r12
  10bd06:	ba 0a 00 00 00       	mov    edx,0xa
  10bd0b:	31 c9                	xor    ecx,ecx
  10bd0d:	e8 3e 04 00 00       	call   10c150 <__multadd>
  10bd12:	49 89 c4             	mov    r12,rax
  10bd15:	48 89 c7             	mov    rdi,rax
  10bd18:	4c 89 f6             	mov    rsi,r14
  10bd1b:	e8 d0 01 00 00       	call   10bef0 <quorem>
  10bd20:	89 c5                	mov    ebp,eax
  10bd22:	83 c5 30             	add    ebp,0x30
  10bd25:	40 88 2b             	mov    BYTE PTR [rbx],bpl
  10bd28:	48 ff c3             	inc    rbx
  10bd2b:	41 ff cd             	dec    r13d
  10bd2e:	75 d0                	jne    10bd00 <_dtoa_r+0xfe0>
  10bd30:	4d 89 fd             	mov    r13,r15
  10bd33:	4d 89 f7             	mov    r15,r14
  10bd36:	4c 8b 74 24 48       	mov    r14,QWORD PTR [rsp+0x48]
  10bd3b:	eb 67                	jmp    10bda4 <_dtoa_r+0x1084>
  10bd3d:	31 c0                	xor    eax,eax
  10bd3f:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  10bd44:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10bd49:	eb 59                	jmp    10bda4 <_dtoa_r+0x1084>
  10bd4b:	83 fd 39             	cmp    ebp,0x39
  10bd4e:	4c 8b 74 24 48       	mov    r14,QWORD PTR [rsp+0x48]
  10bd53:	4c 8b 64 24 10       	mov    r12,QWORD PTR [rsp+0x10]
  10bd58:	8b 4c 24 58          	mov    ecx,DWORD PTR [rsp+0x58]
  10bd5c:	0f 85 e1 00 00 00    	jne    10be43 <_dtoa_r+0x1123>
  10bd62:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10bd67:	48 8b 74 24 30       	mov    rsi,QWORD PTR [rsp+0x30]
  10bd6c:	48 8b 6c 24 18       	mov    rbp,QWORD PTR [rsp+0x18]
  10bd71:	4c 8b 7c 24 40       	mov    r15,QWORD PTR [rsp+0x40]
  10bd76:	c6 43 ff 39          	mov    BYTE PTR [rbx-0x1],0x39
  10bd7a:	eb 62                	jmp    10bdde <_dtoa_r+0x10be>
  10bd7c:	83 fd 39             	cmp    ebp,0x39
  10bd7f:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10bd84:	4c 8b 7c 24 40       	mov    r15,QWORD PTR [rsp+0x40]
  10bd89:	0f 85 d9 00 00 00    	jne    10be68 <_dtoa_r+0x1148>
  10bd8f:	48 8b 74 24 30       	mov    rsi,QWORD PTR [rsp+0x30]
  10bd94:	48 8b 6c 24 18       	mov    rbp,QWORD PTR [rsp+0x18]
  10bd99:	c6 43 ff 39          	mov    BYTE PTR [rbx-0x1],0x39
  10bd9d:	eb 3f                	jmp    10bdde <_dtoa_r+0x10be>
  10bd9f:	4c 8b 7c 24 40       	mov    r15,QWORD PTR [rsp+0x40]
  10bda4:	4c 89 ef             	mov    rdi,r13
  10bda7:	4c 89 e6             	mov    rsi,r12
  10bdaa:	ba 01 00 00 00       	mov    edx,0x1
  10bdaf:	e8 7c 0c 00 00       	call   10ca30 <__lshift>
  10bdb4:	49 89 c4             	mov    r12,rax
  10bdb7:	48 89 c7             	mov    rdi,rax
  10bdba:	4c 89 fe             	mov    rsi,r15
  10bdbd:	e8 be 0f 00 00       	call   10cd80 <__mcmp>
  10bdc2:	85 c0                	test   eax,eax
  10bdc4:	7e 07                	jle    10bdcd <_dtoa_r+0x10ad>
  10bdc6:	48 8b 74 24 30       	mov    rsi,QWORD PTR [rsp+0x30]
  10bdcb:	eb 0c                	jmp    10bdd9 <_dtoa_r+0x10b9>
  10bdcd:	48 8b 74 24 30       	mov    rsi,QWORD PTR [rsp+0x30]
  10bdd2:	75 60                	jne    10be34 <_dtoa_r+0x1114>
  10bdd4:	83 e5 01             	and    ebp,0x1
  10bdd7:	74 5b                	je     10be34 <_dtoa_r+0x1114>
  10bdd9:	48 8b 6c 24 18       	mov    rbp,QWORD PTR [rsp+0x18]
  10bdde:	48 89 e9             	mov    rcx,rbp
  10bde1:	48 29 d9             	sub    rcx,rbx
  10bde4:	48 89 da             	mov    rdx,rbx
  10bde7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  10bdee:	00 00 
  10bdf0:	48 89 d0             	mov    rax,rdx
  10bdf3:	0f b6 52 ff          	movzx  edx,BYTE PTR [rdx-0x1]
  10bdf7:	80 fa 39             	cmp    dl,0x39
  10bdfa:	75 19                	jne    10be15 <_dtoa_r+0x10f5>
  10bdfc:	48 8d 50 ff          	lea    rdx,[rax-0x1]
  10be00:	48 39 ea             	cmp    rdx,rbp
  10be03:	75 eb                	jne    10bdf0 <_dtoa_r+0x10d0>
  10be05:	ff c6                	inc    esi
  10be07:	48 89 74 24 30       	mov    QWORD PTR [rsp+0x30],rsi
  10be0c:	c6 04 0b 31          	mov    BYTE PTR [rbx+rcx*1],0x31
  10be10:	48 89 c3             	mov    rbx,rax
  10be13:	eb 63                	jmp    10be78 <_dtoa_r+0x1158>
  10be15:	48 89 74 24 30       	mov    QWORD PTR [rsp+0x30],rsi
  10be1a:	fe c2                	inc    dl
  10be1c:	88 50 ff             	mov    BYTE PTR [rax-0x1],dl
  10be1f:	48 89 c3             	mov    rbx,rax
  10be22:	eb 54                	jmp    10be78 <_dtoa_r+0x1158>
  10be24:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10be29:	4c 8b 7c 24 40       	mov    r15,QWORD PTR [rsp+0x40]
  10be2e:	40 88 6b ff          	mov    BYTE PTR [rbx-0x1],bpl
  10be32:	eb 3f                	jmp    10be73 <_dtoa_r+0x1153>
  10be34:	48 ff c3             	inc    rbx
  10be37:	80 7b fe 30          	cmp    BYTE PTR [rbx-0x2],0x30
  10be3b:	48 8d 5b ff          	lea    rbx,[rbx-0x1]
  10be3f:	74 f6                	je     10be37 <_dtoa_r+0x1117>
  10be41:	eb 30                	jmp    10be73 <_dtoa_r+0x1153>
  10be43:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
  10be48:	83 c0 31             	add    eax,0x31
  10be4b:	85 c9                	test   ecx,ecx
  10be4d:	0f b6 c0             	movzx  eax,al
  10be50:	0f 4f e8             	cmovg  ebp,eax
  10be53:	40 88 6b ff          	mov    BYTE PTR [rbx-0x1],bpl
  10be57:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10be5c:	48 8b 6c 24 18       	mov    rbp,QWORD PTR [rsp+0x18]
  10be61:	4c 8b 7c 24 40       	mov    r15,QWORD PTR [rsp+0x40]
  10be66:	eb 10                	jmp    10be78 <_dtoa_r+0x1158>
  10be68:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
  10be6d:	83 c0 31             	add    eax,0x31
  10be70:	88 43 ff             	mov    BYTE PTR [rbx-0x1],al
  10be73:	48 8b 6c 24 18       	mov    rbp,QWORD PTR [rsp+0x18]
  10be78:	4c 89 ef             	mov    rdi,r13
  10be7b:	4c 89 fe             	mov    rsi,r15
  10be7e:	e8 ad 02 00 00       	call   10c130 <_Bfree>
  10be83:	48 8b 74 24 20       	mov    rsi,QWORD PTR [rsp+0x20]
  10be88:	48 85 f6             	test   rsi,rsi
  10be8b:	74 27                	je     10beb4 <_dtoa_r+0x1194>
  10be8d:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
  10be92:	48 85 c0             	test   rax,rax
  10be95:	74 15                	je     10beac <_dtoa_r+0x118c>
  10be97:	48 39 f0             	cmp    rax,rsi
  10be9a:	74 10                	je     10beac <_dtoa_r+0x118c>
  10be9c:	4c 89 ef             	mov    rdi,r13
  10be9f:	48 89 c6             	mov    rsi,rax
  10bea2:	e8 89 02 00 00       	call   10c130 <_Bfree>
  10bea7:	48 8b 74 24 20       	mov    rsi,QWORD PTR [rsp+0x20]
  10beac:	4c 89 ef             	mov    rdi,r13
  10beaf:	e8 7c 02 00 00       	call   10c130 <_Bfree>
  10beb4:	4c 89 ef             	mov    rdi,r13
  10beb7:	4c 89 e6             	mov    rsi,r12
  10beba:	e8 71 02 00 00       	call   10c130 <_Bfree>
  10bebf:	c6 03 00             	mov    BYTE PTR [rbx],0x0
  10bec2:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  10bec7:	ff c1                	inc    ecx
  10bec9:	48 8b 84 24 a0 00 00 	mov    rax,QWORD PTR [rsp+0xa0]
  10bed0:	00 
  10bed1:	89 08                	mov    DWORD PTR [rax],ecx
  10bed3:	4d 85 f6             	test   r14,r14
  10bed6:	74 03                	je     10bedb <_dtoa_r+0x11bb>
  10bed8:	49 89 1e             	mov    QWORD PTR [r14],rbx
  10bedb:	48 89 e8             	mov    rax,rbp
  10bede:	48 81 c4 a8 00 00 00 	add    rsp,0xa8
  10bee5:	5b                   	pop    rbx
  10bee6:	41 5c                	pop    r12
  10bee8:	41 5d                	pop    r13
  10beea:	41 5e                	pop    r14
  10beec:	41 5f                	pop    r15
  10beee:	5d                   	pop    rbp
  10beef:	c3                   	ret

000000000010bef0 <quorem>:
  10bef0:	55                   	push   rbp
  10bef1:	41 57                	push   r15
  10bef3:	41 56                	push   r14
  10bef5:	41 55                	push   r13
  10bef7:	41 54                	push   r12
  10bef9:	53                   	push   rbx
  10befa:	48 83 ec 18          	sub    rsp,0x18
  10befe:	48 89 fb             	mov    rbx,rdi
  10bf01:	48 63 7e 14          	movsxd rdi,DWORD PTR [rsi+0x14]
  10bf05:	45 31 ed             	xor    r13d,r13d
  10bf08:	39 7b 14             	cmp    DWORD PTR [rbx+0x14],edi
  10bf0b:	0f 8c 76 01 00 00    	jl     10c087 <quorem+0x197>
  10bf11:	4c 8d 76 18          	lea    r14,[rsi+0x18]
  10bf15:	4c 8d 67 ff          	lea    r12,[rdi-0x1]
  10bf19:	4c 8d 3c be          	lea    r15,[rsi+rdi*4]
  10bf1d:	49 83 c7 14          	add    r15,0x14
  10bf21:	4c 8d 53 18          	lea    r10,[rbx+0x18]
  10bf25:	44 8b 44 bb 14       	mov    r8d,DWORD PTR [rbx+rdi*4+0x14]
  10bf2a:	44 8b 4c be 14       	mov    r9d,DWORD PTR [rsi+rdi*4+0x14]
  10bf2f:	41 ff c1             	inc    r9d
  10bf32:	31 c9                	xor    ecx,ecx
  10bf34:	44 89 c0             	mov    eax,r8d
  10bf37:	31 d2                	xor    edx,edx
  10bf39:	41 f7 f1             	div    r9d
  10bf3c:	41 89 c5             	mov    r13d,eax
  10bf3f:	45 39 c1             	cmp    r9d,r8d
  10bf42:	4c 89 54 24 10       	mov    QWORD PTR [rsp+0x10],r10
  10bf47:	0f 87 b0 00 00 00    	ja     10bffd <quorem+0x10d>
  10bf4d:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  10bf52:	4c 8d 04 bb          	lea    r8,[rbx+rdi*4]
  10bf56:	49 83 c0 14          	add    r8,0x14
  10bf5a:	31 c0                	xor    eax,eax
  10bf5c:	4c 89 f2             	mov    rdx,r14
  10bf5f:	90                   	nop
  10bf60:	8b 2a                	mov    ebp,DWORD PTR [rdx]
  10bf62:	48 83 c2 04          	add    rdx,0x4
  10bf66:	0f b7 dd             	movzx  ebx,bp
  10bf69:	41 0f af dd          	imul   ebx,r13d
  10bf6d:	01 c3                	add    ebx,eax
  10bf6f:	c1 ed 10             	shr    ebp,0x10
  10bf72:	41 0f af ed          	imul   ebp,r13d
  10bf76:	44 0f b7 cb          	movzx  r9d,bx
  10bf7a:	c1 eb 10             	shr    ebx,0x10
  10bf7d:	01 eb                	add    ebx,ebp
  10bf7f:	44 0f b7 db          	movzx  r11d,bx
  10bf83:	89 d8                	mov    eax,ebx
  10bf85:	c1 e8 10             	shr    eax,0x10
  10bf88:	41 8b 3a             	mov    edi,DWORD PTR [r10]
  10bf8b:	0f b7 df             	movzx  ebx,di
  10bf8e:	44 29 cb             	sub    ebx,r9d
  10bf91:	01 cb                	add    ebx,ecx
  10bf93:	0f b7 eb             	movzx  ebp,bx
  10bf96:	c1 fb 10             	sar    ebx,0x10
  10bf99:	c1 ef 10             	shr    edi,0x10
  10bf9c:	44 29 df             	sub    edi,r11d
  10bf9f:	01 df                	add    edi,ebx
  10bfa1:	89 f9                	mov    ecx,edi
  10bfa3:	c1 f9 10             	sar    ecx,0x10
  10bfa6:	c1 e7 10             	shl    edi,0x10
  10bfa9:	09 fd                	or     ebp,edi
  10bfab:	41 89 2a             	mov    DWORD PTR [r10],ebp
  10bfae:	49 83 c2 04          	add    r10,0x4
  10bfb2:	4c 39 fa             	cmp    rdx,r15
  10bfb5:	76 a9                	jbe    10bf60 <quorem+0x70>
  10bfb7:	41 83 38 00          	cmp    DWORD PTR [r8],0x0
  10bfbb:	74 07                	je     10bfc4 <quorem+0xd4>
  10bfbd:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
  10bfc2:	eb 39                	jmp    10bffd <quorem+0x10d>
  10bfc4:	49 83 c0 fc          	add    r8,0xfffffffffffffffc
  10bfc8:	48 8b 44 24 10       	mov    rax,QWORD PTR [rsp+0x10]
  10bfcd:	49 39 c0             	cmp    r8,rax
  10bfd0:	76 22                	jbe    10bff4 <quorem+0x104>
  10bfd2:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
  10bfd7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  10bfde:	00 00 
  10bfe0:	41 83 38 00          	cmp    DWORD PTR [r8],0x0
  10bfe4:	75 13                	jne    10bff9 <quorem+0x109>
  10bfe6:	41 ff cc             	dec    r12d
  10bfe9:	49 83 c0 fc          	add    r8,0xfffffffffffffffc
  10bfed:	49 39 c0             	cmp    r8,rax
  10bff0:	77 ee                	ja     10bfe0 <quorem+0xf0>
  10bff2:	eb 05                	jmp    10bff9 <quorem+0x109>
  10bff4:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
  10bff9:	44 89 63 14          	mov    DWORD PTR [rbx+0x14],r12d
  10bffd:	48 89 df             	mov    rdi,rbx
  10c000:	e8 7b 0d 00 00       	call   10cd80 <__mcmp>
  10c005:	85 c0                	test   eax,eax
  10c007:	78 7e                	js     10c087 <quorem+0x197>
  10c009:	31 c9                	xor    ecx,ecx
  10c00b:	4c 8b 44 24 10       	mov    r8,QWORD PTR [rsp+0x10]
  10c010:	4c 89 c0             	mov    rax,r8
  10c013:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10c01a:	84 00 00 00 00 00 
  10c020:	41 8b 16             	mov    edx,DWORD PTR [r14]
  10c023:	49 83 c6 04          	add    r14,0x4
  10c027:	0f b7 f2             	movzx  esi,dx
  10c02a:	c1 ea 10             	shr    edx,0x10
  10c02d:	8b 38                	mov    edi,DWORD PTR [rax]
  10c02f:	0f b7 ef             	movzx  ebp,di
  10c032:	29 f5                	sub    ebp,esi
  10c034:	01 cd                	add    ebp,ecx
  10c036:	0f b7 f5             	movzx  esi,bp
  10c039:	c1 fd 10             	sar    ebp,0x10
  10c03c:	c1 ef 10             	shr    edi,0x10
  10c03f:	29 d7                	sub    edi,edx
  10c041:	01 ef                	add    edi,ebp
  10c043:	89 f9                	mov    ecx,edi
  10c045:	c1 f9 10             	sar    ecx,0x10
  10c048:	c1 e7 10             	shl    edi,0x10
  10c04b:	09 fe                	or     esi,edi
  10c04d:	89 30                	mov    DWORD PTR [rax],esi
  10c04f:	48 83 c0 04          	add    rax,0x4
  10c053:	4d 39 fe             	cmp    r14,r15
  10c056:	76 c8                	jbe    10c020 <quorem+0x130>
  10c058:	41 ff c5             	inc    r13d
  10c05b:	49 63 c4             	movsxd rax,r12d
  10c05e:	41 83 3c 80 00       	cmp    DWORD PTR [r8+rax*4],0x0
  10c063:	75 22                	jne    10c087 <quorem+0x197>
  10c065:	49 8d 04 80          	lea    rax,[r8+rax*4]
  10c069:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  10c070:	48 83 c0 fc          	add    rax,0xfffffffffffffffc
  10c074:	4c 39 c0             	cmp    rax,r8
  10c077:	76 0a                	jbe    10c083 <quorem+0x193>
  10c079:	83 38 00             	cmp    DWORD PTR [rax],0x0
  10c07c:	75 05                	jne    10c083 <quorem+0x193>
  10c07e:	41 ff cc             	dec    r12d
  10c081:	eb ed                	jmp    10c070 <quorem+0x180>
  10c083:	44 89 63 14          	mov    DWORD PTR [rbx+0x14],r12d
  10c087:	44 89 e8             	mov    eax,r13d
  10c08a:	48 83 c4 18          	add    rsp,0x18
  10c08e:	5b                   	pop    rbx
  10c08f:	41 5c                	pop    r12
  10c091:	41 5d                	pop    r13
  10c093:	41 5e                	pop    r14
  10c095:	41 5f                	pop    r15
  10c097:	5d                   	pop    rbp
  10c098:	c3                   	ret
  10c099:	cc                   	int3
  10c09a:	cc                   	int3
  10c09b:	cc                   	int3
  10c09c:	cc                   	int3
  10c09d:	cc                   	int3
  10c09e:	cc                   	int3
  10c09f:	cc                   	int3

000000000010c0a0 <_Balloc>:
  10c0a0:	55                   	push   rbp
  10c0a1:	41 56                	push   r14
  10c0a3:	53                   	push   rbx
  10c0a4:	41 89 f6             	mov    r14d,esi
  10c0a7:	48 89 fb             	mov    rbx,rdi
  10c0aa:	48 8b 4f 78          	mov    rcx,QWORD PTR [rdi+0x78]
  10c0ae:	48 85 c9             	test   rcx,rcx
  10c0b1:	75 1e                	jne    10c0d1 <_Balloc+0x31>
  10c0b3:	be 08 00 00 00       	mov    esi,0x8
  10c0b8:	ba 41 00 00 00       	mov    edx,0x41
  10c0bd:	48 89 df             	mov    rdi,rbx
  10c0c0:	e8 9b 17 00 00       	call   10d860 <_calloc_r>
  10c0c5:	48 89 c1             	mov    rcx,rax
  10c0c8:	48 89 43 78          	mov    QWORD PTR [rbx+0x78],rax
  10c0cc:	48 85 c0             	test   rax,rax
  10c0cf:	74 4d                	je     10c11e <_Balloc+0x7e>
  10c0d1:	49 63 d6             	movsxd rdx,r14d
  10c0d4:	48 8b 04 d1          	mov    rax,QWORD PTR [rcx+rdx*8]
  10c0d8:	48 85 c0             	test   rax,rax
  10c0db:	74 09                	je     10c0e6 <_Balloc+0x46>
  10c0dd:	48 8b 30             	mov    rsi,QWORD PTR [rax]
  10c0e0:	48 89 34 d1          	mov    QWORD PTR [rcx+rdx*8],rsi
  10c0e4:	eb 2e                	jmp    10c114 <_Balloc+0x74>
  10c0e6:	bd 01 00 00 00       	mov    ebp,0x1
  10c0eb:	44 89 f1             	mov    ecx,r14d
  10c0ee:	d3 e5                	shl    ebp,cl
  10c0f0:	48 63 c5             	movsxd rax,ebp
  10c0f3:	48 8d 14 85 1c 00 00 	lea    rdx,[rax*4+0x1c]
  10c0fa:	00 
  10c0fb:	be 01 00 00 00       	mov    esi,0x1
  10c100:	48 89 df             	mov    rdi,rbx
  10c103:	e8 58 17 00 00       	call   10d860 <_calloc_r>
  10c108:	48 85 c0             	test   rax,rax
  10c10b:	74 11                	je     10c11e <_Balloc+0x7e>
  10c10d:	44 89 70 08          	mov    DWORD PTR [rax+0x8],r14d
  10c111:	89 68 0c             	mov    DWORD PTR [rax+0xc],ebp
  10c114:	48 c7 40 10 00 00 00 	mov    QWORD PTR [rax+0x10],0x0
  10c11b:	00 
  10c11c:	eb 02                	jmp    10c120 <_Balloc+0x80>
  10c11e:	31 c0                	xor    eax,eax
  10c120:	5b                   	pop    rbx
  10c121:	41 5e                	pop    r14
  10c123:	5d                   	pop    rbp
  10c124:	c3                   	ret
  10c125:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  10c12c:	00 00 00 00 

000000000010c130 <_Bfree>:
  10c130:	48 85 f6             	test   rsi,rsi
  10c133:	74 13                	je     10c148 <_Bfree+0x18>
  10c135:	48 8b 47 78          	mov    rax,QWORD PTR [rdi+0x78]
  10c139:	48 63 4e 08          	movsxd rcx,DWORD PTR [rsi+0x8]
  10c13d:	48 8b 14 c8          	mov    rdx,QWORD PTR [rax+rcx*8]
  10c141:	48 89 16             	mov    QWORD PTR [rsi],rdx
  10c144:	48 89 34 c8          	mov    QWORD PTR [rax+rcx*8],rsi
  10c148:	c3                   	ret
  10c149:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

000000000010c150 <__multadd>:
  10c150:	55                   	push   rbp
  10c151:	41 57                	push   r15
  10c153:	41 56                	push   r14
  10c155:	41 55                	push   r13
  10c157:	41 54                	push   r12
  10c159:	53                   	push   rbx
  10c15a:	50                   	push   rax
  10c15b:	89 cd                	mov    ebp,ecx
  10c15d:	49 89 f4             	mov    r12,rsi
  10c160:	49 89 fe             	mov    r14,rdi
  10c163:	4c 63 6e 14          	movsxd r13,DWORD PTR [rsi+0x14]
  10c167:	41 83 fd 02          	cmp    r13d,0x2
  10c16b:	b8 01 00 00 00       	mov    eax,0x1
  10c170:	41 0f 4d c5          	cmovge eax,r13d
  10c174:	31 c9                	xor    ecx,ecx
  10c176:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10c17d:	00 00 00 
  10c180:	41 8b 7c 8c 18       	mov    edi,DWORD PTR [r12+rcx*4+0x18]
  10c185:	0f b7 f7             	movzx  esi,di
  10c188:	0f af f2             	imul   esi,edx
  10c18b:	01 ee                	add    esi,ebp
  10c18d:	c1 ef 10             	shr    edi,0x10
  10c190:	0f af fa             	imul   edi,edx
  10c193:	0f b7 de             	movzx  ebx,si
  10c196:	c1 ee 10             	shr    esi,0x10
  10c199:	01 fe                	add    esi,edi
  10c19b:	89 f5                	mov    ebp,esi
  10c19d:	c1 ed 10             	shr    ebp,0x10
  10c1a0:	89 f7                	mov    edi,esi
  10c1a2:	c1 e7 10             	shl    edi,0x10
  10c1a5:	09 fb                	or     ebx,edi
  10c1a7:	41 89 5c 8c 18       	mov    DWORD PTR [r12+rcx*4+0x18],ebx
  10c1ac:	48 ff c1             	inc    rcx
  10c1af:	39 c8                	cmp    eax,ecx
  10c1b1:	75 cd                	jne    10c180 <__multadd+0x30>
  10c1b3:	81 fe 00 00 01 00    	cmp    esi,0x10000
  10c1b9:	0f 82 d0 00 00 00    	jb     10c28f <__multadd+0x13f>
  10c1bf:	45 3b 6c 24 0c       	cmp    r13d,DWORD PTR [r12+0xc]
  10c1c4:	0f 8c b7 00 00 00    	jl     10c281 <__multadd+0x131>
  10c1ca:	4d 63 7c 24 08       	movsxd r15,DWORD PTR [r12+0x8]
  10c1cf:	49 8b 46 78          	mov    rax,QWORD PTR [r14+0x78]
  10c1d3:	48 85 c0             	test   rax,rax
  10c1d6:	75 1b                	jne    10c1f3 <__multadd+0xa3>
  10c1d8:	be 08 00 00 00       	mov    esi,0x8
  10c1dd:	ba 41 00 00 00       	mov    edx,0x41
  10c1e2:	4c 89 f7             	mov    rdi,r14
  10c1e5:	e8 76 16 00 00       	call   10d860 <_calloc_r>
  10c1ea:	49 89 46 78          	mov    QWORD PTR [r14+0x78],rax
  10c1ee:	48 85 c0             	test   rax,rax
  10c1f1:	74 59                	je     10c24c <__multadd+0xfc>
  10c1f3:	4a 8b 5c f8 08       	mov    rbx,QWORD PTR [rax+r15*8+0x8]
  10c1f8:	48 85 db             	test   rbx,rbx
  10c1fb:	74 0a                	je     10c207 <__multadd+0xb7>
  10c1fd:	48 8b 0b             	mov    rcx,QWORD PTR [rbx]
  10c200:	4a 89 4c f8 08       	mov    QWORD PTR [rax+r15*8+0x8],rcx
  10c205:	eb 3b                	jmp    10c242 <__multadd+0xf2>
  10c207:	41 ff c7             	inc    r15d
  10c20a:	b8 01 00 00 00       	mov    eax,0x1
  10c20f:	44 89 f9             	mov    ecx,r15d
  10c212:	d3 e0                	shl    eax,cl
  10c214:	89 44 24 04          	mov    DWORD PTR [rsp+0x4],eax
  10c218:	48 98                	cdqe
  10c21a:	48 8d 14 85 1c 00 00 	lea    rdx,[rax*4+0x1c]
  10c221:	00 
  10c222:	be 01 00 00 00       	mov    esi,0x1
  10c227:	4c 89 f7             	mov    rdi,r14
  10c22a:	e8 31 16 00 00       	call   10d860 <_calloc_r>
  10c22f:	48 85 c0             	test   rax,rax
  10c232:	74 18                	je     10c24c <__multadd+0xfc>
  10c234:	48 89 c3             	mov    rbx,rax
  10c237:	44 89 78 08          	mov    DWORD PTR [rax+0x8],r15d
  10c23b:	8b 44 24 04          	mov    eax,DWORD PTR [rsp+0x4]
  10c23f:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
  10c242:	48 c7 43 10 00 00 00 	mov    QWORD PTR [rbx+0x10],0x0
  10c249:	00 
  10c24a:	eb 02                	jmp    10c24e <__multadd+0xfe>
  10c24c:	31 db                	xor    ebx,ebx
  10c24e:	48 8d 7b 10          	lea    rdi,[rbx+0x10]
  10c252:	49 8d 74 24 10       	lea    rsi,[r12+0x10]
  10c257:	49 63 44 24 14       	movsxd rax,DWORD PTR [r12+0x14]
  10c25c:	48 8d 14 85 08 00 00 	lea    rdx,[rax*4+0x8]
  10c263:	00 
  10c264:	e8 a7 e7 ff ff       	call   10aa10 <memcpy>
  10c269:	49 8b 46 78          	mov    rax,QWORD PTR [r14+0x78]
  10c26d:	49 63 4c 24 08       	movsxd rcx,DWORD PTR [r12+0x8]
  10c272:	48 8b 14 c8          	mov    rdx,QWORD PTR [rax+rcx*8]
  10c276:	49 89 14 24          	mov    QWORD PTR [r12],rdx
  10c27a:	4c 89 24 c8          	mov    QWORD PTR [rax+rcx*8],r12
  10c27e:	49 89 dc             	mov    r12,rbx
  10c281:	41 8d 45 01          	lea    eax,[r13+0x1]
  10c285:	43 89 6c ac 18       	mov    DWORD PTR [r12+r13*4+0x18],ebp
  10c28a:	41 89 44 24 14       	mov    DWORD PTR [r12+0x14],eax
  10c28f:	4c 89 e0             	mov    rax,r12
  10c292:	48 83 c4 08          	add    rsp,0x8
  10c296:	5b                   	pop    rbx
  10c297:	41 5c                	pop    r12
  10c299:	41 5d                	pop    r13
  10c29b:	41 5e                	pop    r14
  10c29d:	41 5f                	pop    r15
  10c29f:	5d                   	pop    rbp
  10c2a0:	c3                   	ret
  10c2a1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10c2a8:	0f 1f 84 00 00 00 00 
  10c2af:	00 

000000000010c2b0 <__s2b>:
  10c2b0:	55                   	push   rbp
  10c2b1:	41 57                	push   r15
  10c2b3:	41 56                	push   r14
  10c2b5:	41 55                	push   r13
  10c2b7:	41 54                	push   r12
  10c2b9:	53                   	push   rbx
  10c2ba:	50                   	push   rax
  10c2bb:	45 89 c5             	mov    r13d,r8d
  10c2be:	41 89 ce             	mov    r14d,ecx
  10c2c1:	41 89 d4             	mov    r12d,edx
  10c2c4:	48 89 f3             	mov    rbx,rsi
  10c2c7:	49 89 ff             	mov    r15,rdi
  10c2ca:	31 ed                	xor    ebp,ebp
  10c2cc:	83 f9 0a             	cmp    ecx,0xa
  10c2cf:	7c 37                	jl     10c308 <__s2b+0x58>
  10c2d1:	41 8d 46 08          	lea    eax,[r14+0x8]
  10c2d5:	48 98                	cdqe
  10c2d7:	48 69 c0 39 8e e3 38 	imul   rax,rax,0x38e38e39
  10c2de:	48 89 c1             	mov    rcx,rax
  10c2e1:	48 c1 e9 3f          	shr    rcx,0x3f
  10c2e5:	48 c1 f8 21          	sar    rax,0x21
  10c2e9:	01 c8                	add    eax,ecx
  10c2eb:	31 ed                	xor    ebp,ebp
  10c2ed:	b9 01 00 00 00       	mov    ecx,0x1
  10c2f2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10c2f9:	1f 84 00 00 00 00 00 
  10c300:	01 c9                	add    ecx,ecx
  10c302:	ff c5                	inc    ebp
  10c304:	39 c8                	cmp    eax,ecx
  10c306:	7f f8                	jg     10c300 <__s2b+0x50>
  10c308:	49 8b 4f 78          	mov    rcx,QWORD PTR [r15+0x78]
  10c30c:	48 85 c9             	test   rcx,rcx
  10c30f:	75 19                	jne    10c32a <__s2b+0x7a>
  10c311:	be 08 00 00 00       	mov    esi,0x8
  10c316:	ba 41 00 00 00       	mov    edx,0x41
  10c31b:	4c 89 ff             	mov    rdi,r15
  10c31e:	e8 3d 15 00 00       	call   10d860 <_calloc_r>
  10c323:	48 89 c1             	mov    rcx,rax
  10c326:	49 89 47 78          	mov    QWORD PTR [r15+0x78],rax
  10c32a:	89 ea                	mov    edx,ebp
  10c32c:	48 8b 04 d1          	mov    rax,QWORD PTR [rcx+rdx*8]
  10c330:	48 85 c0             	test   rax,rax
  10c333:	74 09                	je     10c33e <__s2b+0x8e>
  10c335:	48 8b 30             	mov    rsi,QWORD PTR [rax]
  10c338:	48 89 34 d1          	mov    QWORD PTR [rcx+rdx*8],rsi
  10c33c:	eb 32                	jmp    10c370 <__s2b+0xc0>
  10c33e:	b8 01 00 00 00       	mov    eax,0x1
  10c343:	89 e9                	mov    ecx,ebp
  10c345:	d3 e0                	shl    eax,cl
  10c347:	44 89 6c 24 04       	mov    DWORD PTR [rsp+0x4],r13d
  10c34c:	4c 63 e8             	movsxd r13,eax
  10c34f:	4a 8d 14 ad 1c 00 00 	lea    rdx,[r13*4+0x1c]
  10c356:	00 
  10c357:	be 01 00 00 00       	mov    esi,0x1
  10c35c:	4c 89 ff             	mov    rdi,r15
  10c35f:	e8 fc 14 00 00       	call   10d860 <_calloc_r>
  10c364:	89 68 08             	mov    DWORD PTR [rax+0x8],ebp
  10c367:	44 89 68 0c          	mov    DWORD PTR [rax+0xc],r13d
  10c36b:	44 8b 6c 24 04       	mov    r13d,DWORD PTR [rsp+0x4]
  10c370:	44 89 68 18          	mov    DWORD PTR [rax+0x18],r13d
  10c374:	48 b9 00 00 00 00 01 	movabs rcx,0x100000000
  10c37b:	00 00 00 
  10c37e:	48 89 48 10          	mov    QWORD PTR [rax+0x10],rcx
  10c382:	41 83 fc 0a          	cmp    r12d,0xa
  10c386:	7c 3d                	jl     10c3c5 <__s2b+0x115>
  10c388:	41 8d 6c 24 f7       	lea    ebp,[r12-0x9]
  10c38d:	48 83 c3 0a          	add    rbx,0xa
  10c391:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10c398:	0f 1f 84 00 00 00 00 
  10c39f:	00 
  10c3a0:	0f be 4b ff          	movsx  ecx,BYTE PTR [rbx-0x1]
  10c3a4:	83 c1 d0             	add    ecx,0xffffffd0
  10c3a7:	4c 89 ff             	mov    rdi,r15
  10c3aa:	48 89 c6             	mov    rsi,rax
  10c3ad:	ba 0a 00 00 00       	mov    edx,0xa
  10c3b2:	e8 99 fd ff ff       	call   10c150 <__multadd>
  10c3b7:	48 ff c3             	inc    rbx
  10c3ba:	ff cd                	dec    ebp
  10c3bc:	75 e2                	jne    10c3a0 <__s2b+0xf0>
  10c3be:	45 39 f4             	cmp    r12d,r14d
  10c3c1:	7c 11                	jl     10c3d4 <__s2b+0x124>
  10c3c3:	eb 3a                	jmp    10c3ff <__s2b+0x14f>
  10c3c5:	48 83 c3 0a          	add    rbx,0xa
  10c3c9:	41 bc 09 00 00 00    	mov    r12d,0x9
  10c3cf:	45 39 f4             	cmp    r12d,r14d
  10c3d2:	7d 2b                	jge    10c3ff <__s2b+0x14f>
  10c3d4:	45 29 e6             	sub    r14d,r12d
  10c3d7:	31 ed                	xor    ebp,ebp
  10c3d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  10c3e0:	0f be 0c 2b          	movsx  ecx,BYTE PTR [rbx+rbp*1]
  10c3e4:	83 c1 d0             	add    ecx,0xffffffd0
  10c3e7:	4c 89 ff             	mov    rdi,r15
  10c3ea:	48 89 c6             	mov    rsi,rax
  10c3ed:	ba 0a 00 00 00       	mov    edx,0xa
  10c3f2:	e8 59 fd ff ff       	call   10c150 <__multadd>
  10c3f7:	48 ff c5             	inc    rbp
  10c3fa:	41 39 ee             	cmp    r14d,ebp
  10c3fd:	75 e1                	jne    10c3e0 <__s2b+0x130>
  10c3ff:	48 83 c4 08          	add    rsp,0x8
  10c403:	5b                   	pop    rbx
  10c404:	41 5c                	pop    r12
  10c406:	41 5d                	pop    r13
  10c408:	41 5e                	pop    r14
  10c40a:	41 5f                	pop    r15
  10c40c:	5d                   	pop    rbp
  10c40d:	c3                   	ret
  10c40e:	66 90                	xchg   ax,ax

000000000010c410 <__hi0bits>:
  10c410:	89 f8                	mov    eax,edi
  10c412:	c1 e0 10             	shl    eax,0x10
  10c415:	31 c9                	xor    ecx,ecx
  10c417:	81 ff 00 00 01 00    	cmp    edi,0x10000
  10c41d:	0f 92 c1             	setb   cl
  10c420:	0f 43 c7             	cmovae eax,edi
  10c423:	c1 e1 04             	shl    ecx,0x4
  10c426:	8d 51 08             	lea    edx,[rcx+0x8]
  10c429:	89 c6                	mov    esi,eax
  10c42b:	c1 e6 08             	shl    esi,0x8
  10c42e:	3d 00 00 00 01       	cmp    eax,0x1000000
  10c433:	0f 43 f0             	cmovae esi,eax
  10c436:	0f 43 d1             	cmovae edx,ecx
  10c439:	8d 42 04             	lea    eax,[rdx+0x4]
  10c43c:	89 f1                	mov    ecx,esi
  10c43e:	c1 e1 04             	shl    ecx,0x4
  10c441:	81 fe 00 00 00 10    	cmp    esi,0x10000000
  10c447:	0f 43 ce             	cmovae ecx,esi
  10c44a:	0f 43 c2             	cmovae eax,edx
  10c44d:	8d 14 8d 00 00 00 00 	lea    edx,[rcx*4+0x0]
  10c454:	81 f9 00 00 00 40    	cmp    ecx,0x40000000
  10c45a:	0f 43 d1             	cmovae edx,ecx
  10c45d:	8d 48 02             	lea    ecx,[rax+0x2]
  10c460:	0f 43 c8             	cmovae ecx,eax
  10c463:	85 d2                	test   edx,edx
  10c465:	78 0f                	js     10c476 <__hi0bits+0x66>
  10c467:	b8 20 00 00 00       	mov    eax,0x20
  10c46c:	f7 c2 00 00 00 40    	test   edx,0x40000000
  10c472:	74 04                	je     10c478 <__hi0bits+0x68>
  10c474:	ff c1                	inc    ecx
  10c476:	89 c8                	mov    eax,ecx
  10c478:	c3                   	ret
  10c479:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

000000000010c480 <__lo0bits>:
  10c480:	8b 0f                	mov    ecx,DWORD PTR [rdi]
  10c482:	f6 c1 07             	test   cl,0x7
  10c485:	74 16                	je     10c49d <__lo0bits+0x1d>
  10c487:	31 c0                	xor    eax,eax
  10c489:	f6 c1 01             	test   cl,0x1
  10c48c:	75 75                	jne    10c503 <__lo0bits+0x83>
  10c48e:	f6 c1 02             	test   cl,0x2
  10c491:	75 65                	jne    10c4f8 <__lo0bits+0x78>
  10c493:	c1 e9 02             	shr    ecx,0x2
  10c496:	be 02 00 00 00       	mov    esi,0x2
  10c49b:	eb 62                	jmp    10c4ff <__lo0bits+0x7f>
  10c49d:	89 c8                	mov    eax,ecx
  10c49f:	c1 e8 10             	shr    eax,0x10
  10c4a2:	31 d2                	xor    edx,edx
  10c4a4:	66 85 c9             	test   cx,cx
  10c4a7:	0f 45 c1             	cmovne eax,ecx
  10c4aa:	0f 94 c2             	sete   dl
  10c4ad:	c1 e2 04             	shl    edx,0x4
  10c4b0:	8d 4a 08             	lea    ecx,[rdx+0x8]
  10c4b3:	89 c6                	mov    esi,eax
  10c4b5:	c1 ee 08             	shr    esi,0x8
  10c4b8:	84 c0                	test   al,al
  10c4ba:	0f 45 ca             	cmovne ecx,edx
  10c4bd:	0f 45 f0             	cmovne esi,eax
  10c4c0:	8d 41 04             	lea    eax,[rcx+0x4]
  10c4c3:	89 f2                	mov    edx,esi
  10c4c5:	c1 ea 04             	shr    edx,0x4
  10c4c8:	40 f6 c6 0f          	test   sil,0xf
  10c4cc:	0f 45 c1             	cmovne eax,ecx
  10c4cf:	0f 45 d6             	cmovne edx,esi
  10c4d2:	8d 70 02             	lea    esi,[rax+0x2]
  10c4d5:	89 d1                	mov    ecx,edx
  10c4d7:	c1 e9 02             	shr    ecx,0x2
  10c4da:	f6 c2 03             	test   dl,0x3
  10c4dd:	0f 45 f0             	cmovne esi,eax
  10c4e0:	0f 45 ca             	cmovne ecx,edx
  10c4e3:	f6 c1 01             	test   cl,0x1
  10c4e6:	75 17                	jne    10c4ff <__lo0bits+0x7f>
  10c4e8:	b8 20 00 00 00       	mov    eax,0x20
  10c4ed:	83 f9 02             	cmp    ecx,0x2
  10c4f0:	72 11                	jb     10c503 <__lo0bits+0x83>
  10c4f2:	ff c6                	inc    esi
  10c4f4:	d1 e9                	shr    ecx,1
  10c4f6:	eb 07                	jmp    10c4ff <__lo0bits+0x7f>
  10c4f8:	d1 e9                	shr    ecx,1
  10c4fa:	be 01 00 00 00       	mov    esi,0x1
  10c4ff:	89 0f                	mov    DWORD PTR [rdi],ecx
  10c501:	89 f0                	mov    eax,esi
  10c503:	c3                   	ret
  10c504:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10c50b:	00 00 00 00 00 

000000000010c510 <__i2b>:
  10c510:	55                   	push   rbp
  10c511:	53                   	push   rbx
  10c512:	50                   	push   rax
  10c513:	89 f5                	mov    ebp,esi
  10c515:	48 89 fb             	mov    rbx,rdi
  10c518:	48 8b 4f 78          	mov    rcx,QWORD PTR [rdi+0x78]
  10c51c:	48 85 c9             	test   rcx,rcx
  10c51f:	75 1e                	jne    10c53f <__i2b+0x2f>
  10c521:	be 08 00 00 00       	mov    esi,0x8
  10c526:	ba 41 00 00 00       	mov    edx,0x41
  10c52b:	48 89 df             	mov    rdi,rbx
  10c52e:	e8 2d 13 00 00       	call   10d860 <_calloc_r>
  10c533:	48 89 c1             	mov    rcx,rax
  10c536:	48 89 43 78          	mov    QWORD PTR [rbx+0x78],rax
  10c53a:	48 85 c0             	test   rax,rax
  10c53d:	74 41                	je     10c580 <__i2b+0x70>
  10c53f:	48 8b 41 08          	mov    rax,QWORD PTR [rcx+0x8]
  10c543:	48 85 c0             	test   rax,rax
  10c546:	74 09                	je     10c551 <__i2b+0x41>
  10c548:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  10c54b:	48 89 51 08          	mov    QWORD PTR [rcx+0x8],rdx
  10c54f:	eb 25                	jmp    10c576 <__i2b+0x66>
  10c551:	be 01 00 00 00       	mov    esi,0x1
  10c556:	ba 24 00 00 00       	mov    edx,0x24
  10c55b:	48 89 df             	mov    rdi,rbx
  10c55e:	e8 fd 12 00 00       	call   10d860 <_calloc_r>
  10c563:	48 85 c0             	test   rax,rax
  10c566:	74 18                	je     10c580 <__i2b+0x70>
  10c568:	48 b9 01 00 00 00 02 	movabs rcx,0x200000001
  10c56f:	00 00 00 
  10c572:	48 89 48 08          	mov    QWORD PTR [rax+0x8],rcx
  10c576:	48 c7 40 10 00 00 00 	mov    QWORD PTR [rax+0x10],0x0
  10c57d:	00 
  10c57e:	eb 02                	jmp    10c582 <__i2b+0x72>
  10c580:	31 c0                	xor    eax,eax
  10c582:	89 68 18             	mov    DWORD PTR [rax+0x18],ebp
  10c585:	c7 40 14 01 00 00 00 	mov    DWORD PTR [rax+0x14],0x1
  10c58c:	48 83 c4 08          	add    rsp,0x8
  10c590:	5b                   	pop    rbx
  10c591:	5d                   	pop    rbp
  10c592:	c3                   	ret
  10c593:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10c59a:	84 00 00 00 00 00 

000000000010c5a0 <__multiply>:
  10c5a0:	55                   	push   rbp
  10c5a1:	41 57                	push   r15
  10c5a3:	41 56                	push   r14
  10c5a5:	41 55                	push   r13
  10c5a7:	41 54                	push   r12
  10c5a9:	53                   	push   rbx
  10c5aa:	48 83 ec 18          	sub    rsp,0x18
  10c5ae:	49 89 f6             	mov    r14,rsi
  10c5b1:	8b 46 14             	mov    eax,DWORD PTR [rsi+0x14]
  10c5b4:	3b 42 14             	cmp    eax,DWORD PTR [rdx+0x14]
  10c5b7:	48 89 fb             	mov    rbx,rdi
  10c5ba:	49 89 d5             	mov    r13,rdx
  10c5bd:	4c 0f 4c ee          	cmovl  r13,rsi
  10c5c1:	4c 0f 4c f2          	cmovl  r14,rdx
  10c5c5:	49 63 46 14          	movsxd rax,DWORD PTR [r14+0x14]
  10c5c9:	4d 63 5d 14          	movsxd r11,DWORD PTR [r13+0x14]
  10c5cd:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  10c5d2:	4d 8d 24 03          	lea    r12,[r11+rax*1]
  10c5d6:	31 ed                	xor    ebp,ebp
  10c5d8:	45 3b 66 0c          	cmp    r12d,DWORD PTR [r14+0xc]
  10c5dc:	4d 63 7e 08          	movsxd r15,DWORD PTR [r14+0x8]
  10c5e0:	0f 9f c0             	setg   al
  10c5e3:	48 8b 4f 78          	mov    rcx,QWORD PTR [rdi+0x78]
  10c5e7:	48 85 c9             	test   rcx,rcx
  10c5ea:	75 35                	jne    10c621 <__multiply+0x81>
  10c5ec:	be 08 00 00 00       	mov    esi,0x8
  10c5f1:	ba 41 00 00 00       	mov    edx,0x41
  10c5f6:	48 89 df             	mov    rdi,rbx
  10c5f9:	4c 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],r11
  10c5fe:	88 44 24 07          	mov    BYTE PTR [rsp+0x7],al
  10c602:	e8 59 12 00 00       	call   10d860 <_calloc_r>
  10c607:	4c 8b 5c 24 08       	mov    r11,QWORD PTR [rsp+0x8]
  10c60c:	48 89 c1             	mov    rcx,rax
  10c60f:	0f b6 44 24 07       	movzx  eax,BYTE PTR [rsp+0x7]
  10c614:	48 89 4b 78          	mov    QWORD PTR [rbx+0x78],rcx
  10c618:	48 85 c9             	test   rcx,rcx
  10c61b:	0f 84 bc 02 00 00    	je     10c8dd <__multiply+0x33d>
  10c621:	40 88 c5             	mov    bpl,al
  10c624:	49 01 ef             	add    r15,rbp
  10c627:	4a 8b 04 f9          	mov    rax,QWORD PTR [rcx+r15*8]
  10c62b:	48 85 c0             	test   rax,rax
  10c62e:	74 09                	je     10c639 <__multiply+0x99>
  10c630:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  10c633:	4a 89 14 f9          	mov    QWORD PTR [rcx+r15*8],rdx
  10c637:	eb 3c                	jmp    10c675 <__multiply+0xd5>
  10c639:	4c 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],r11
  10c63e:	bd 01 00 00 00       	mov    ebp,0x1
  10c643:	44 89 f9             	mov    ecx,r15d
  10c646:	d3 e5                	shl    ebp,cl
  10c648:	48 63 c5             	movsxd rax,ebp
  10c64b:	48 8d 14 85 1c 00 00 	lea    rdx,[rax*4+0x1c]
  10c652:	00 
  10c653:	be 01 00 00 00       	mov    esi,0x1
  10c658:	48 89 df             	mov    rdi,rbx
  10c65b:	e8 00 12 00 00       	call   10d860 <_calloc_r>
  10c660:	48 85 c0             	test   rax,rax
  10c663:	0f 84 7b 02 00 00    	je     10c8e4 <__multiply+0x344>
  10c669:	44 89 78 08          	mov    DWORD PTR [rax+0x8],r15d
  10c66d:	89 68 0c             	mov    DWORD PTR [rax+0xc],ebp
  10c670:	4c 8b 5c 24 08       	mov    r11,QWORD PTR [rsp+0x8]
  10c675:	48 c7 40 10 00 00 00 	mov    QWORD PTR [rax+0x10],0x0
  10c67c:	00 
  10c67d:	4c 8d 50 18          	lea    r10,[rax+0x18]
  10c681:	45 85 e4             	test   r12d,r12d
  10c684:	0f 8e e5 00 00 00    	jle    10c76f <__multiply+0x1cf>
  10c68a:	4a 8d 14 a0          	lea    rdx,[rax+r12*4]
  10c68e:	48 83 c2 18          	add    rdx,0x18
  10c692:	4c 8d 48 1c          	lea    r9,[rax+0x1c]
  10c696:	4c 39 ca             	cmp    rdx,r9
  10c699:	4c 0f 47 ca          	cmova  r9,rdx
  10c69d:	49 29 c1             	sub    r9,rax
  10c6a0:	49 83 c1 e7          	add    r9,0xffffffffffffffe7
  10c6a4:	4c 89 d6             	mov    rsi,r10
  10c6a7:	49 83 f9 1c          	cmp    r9,0x1c
  10c6ab:	0f 82 af 00 00 00    	jb     10c760 <__multiply+0x1c0>
  10c6b1:	49 c1 e9 02          	shr    r9,0x2
  10c6b5:	49 ff c1             	inc    r9
  10c6b8:	4d 89 c8             	mov    r8,r9
  10c6bb:	49 83 e0 f8          	and    r8,0xfffffffffffffff8
  10c6bf:	49 8d 70 f8          	lea    rsi,[r8-0x8]
  10c6c3:	48 89 f5             	mov    rbp,rsi
  10c6c6:	48 c1 ed 03          	shr    rbp,0x3
  10c6ca:	48 ff c5             	inc    rbp
  10c6cd:	89 ef                	mov    edi,ebp
  10c6cf:	83 e7 03             	and    edi,0x3
  10c6d2:	48 83 fe 18          	cmp    rsi,0x18
  10c6d6:	73 04                	jae    10c6dc <__multiply+0x13c>
  10c6d8:	31 f6                	xor    esi,esi
  10c6da:	eb 49                	jmp    10c725 <__multiply+0x185>
  10c6dc:	48 83 e5 fc          	and    rbp,0xfffffffffffffffc
  10c6e0:	31 f6                	xor    esi,esi
  10c6e2:	0f 57 c0             	xorps  xmm0,xmm0
  10c6e5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  10c6ec:	00 00 00 00 
  10c6f0:	0f 11 44 b0 18       	movups XMMWORD PTR [rax+rsi*4+0x18],xmm0
  10c6f5:	0f 11 44 b0 28       	movups XMMWORD PTR [rax+rsi*4+0x28],xmm0
  10c6fa:	0f 11 44 b0 38       	movups XMMWORD PTR [rax+rsi*4+0x38],xmm0
  10c6ff:	0f 11 44 b0 48       	movups XMMWORD PTR [rax+rsi*4+0x48],xmm0
  10c704:	0f 11 44 b0 58       	movups XMMWORD PTR [rax+rsi*4+0x58],xmm0
  10c709:	0f 11 44 b0 68       	movups XMMWORD PTR [rax+rsi*4+0x68],xmm0
  10c70e:	0f 11 44 b0 78       	movups XMMWORD PTR [rax+rsi*4+0x78],xmm0
  10c713:	0f 11 84 b0 88 00 00 	movups XMMWORD PTR [rax+rsi*4+0x88],xmm0
  10c71a:	00 
  10c71b:	48 83 c6 20          	add    rsi,0x20
  10c71f:	48 83 c5 fc          	add    rbp,0xfffffffffffffffc
  10c723:	75 cb                	jne    10c6f0 <__multiply+0x150>
  10c725:	48 85 ff             	test   rdi,rdi
  10c728:	74 28                	je     10c752 <__multiply+0x1b2>
  10c72a:	48 8d 34 b0          	lea    rsi,[rax+rsi*4]
  10c72e:	48 83 c6 28          	add    rsi,0x28
  10c732:	48 c1 e7 05          	shl    rdi,0x5
  10c736:	31 ed                	xor    ebp,ebp
  10c738:	0f 57 c0             	xorps  xmm0,xmm0
  10c73b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  10c740:	0f 11 44 2e f0       	movups XMMWORD PTR [rsi+rbp*1-0x10],xmm0
  10c745:	0f 11 04 2e          	movups XMMWORD PTR [rsi+rbp*1],xmm0
  10c749:	48 83 c5 20          	add    rbp,0x20
  10c74d:	48 39 ef             	cmp    rdi,rbp
  10c750:	75 ee                	jne    10c740 <__multiply+0x1a0>
  10c752:	4d 39 c1             	cmp    r9,r8
  10c755:	74 18                	je     10c76f <__multiply+0x1cf>
  10c757:	4b 8d 34 82          	lea    rsi,[r10+r8*4]
  10c75b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  10c760:	c7 06 00 00 00 00    	mov    DWORD PTR [rsi],0x0
  10c766:	48 83 c6 04          	add    rsi,0x4
  10c76a:	48 39 d6             	cmp    rsi,rdx
  10c76d:	72 f1                	jb     10c760 <__multiply+0x1c0>
  10c76f:	45 85 db             	test   r11d,r11d
  10c772:	0f 8e 1c 01 00 00    	jle    10c894 <__multiply+0x2f4>
  10c778:	48 8b 4c 24 10       	mov    rcx,QWORD PTR [rsp+0x10]
  10c77d:	4d 8d 0c 8e          	lea    r9,[r14+rcx*4]
  10c781:	49 83 c1 18          	add    r9,0x18
  10c785:	49 83 c6 18          	add    r14,0x18
  10c789:	4e 8d 04 9d 18 00 00 	lea    r8,[r11*4+0x18]
  10c790:	00 
  10c791:	4d 01 e8             	add    r8,r13
  10c794:	49 83 c5 18          	add    r13,0x18
  10c798:	eb 17                	jmp    10c7b1 <__multiply+0x211>
  10c79a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  10c7a0:	49 83 c5 04          	add    r13,0x4
  10c7a4:	49 83 c2 04          	add    r10,0x4
  10c7a8:	4d 39 c5             	cmp    r13,r8
  10c7ab:	0f 83 e3 00 00 00    	jae    10c894 <__multiply+0x2f4>
  10c7b1:	41 8b 6d 00          	mov    ebp,DWORD PTR [r13+0x0]
  10c7b5:	41 89 eb             	mov    r11d,ebp
  10c7b8:	41 81 e3 ff ff 00 00 	and    r11d,0xffff
  10c7bf:	74 60                	je     10c821 <__multiply+0x281>
  10c7c1:	31 ed                	xor    ebp,ebp
  10c7c3:	31 c9                	xor    ecx,ecx
  10c7c5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  10c7cc:	00 00 00 00 
  10c7d0:	41 8b 14 2e          	mov    edx,DWORD PTR [r14+rbp*1]
  10c7d4:	0f b7 da             	movzx  ebx,dx
  10c7d7:	41 0f af db          	imul   ebx,r11d
  10c7db:	41 8b 34 2a          	mov    esi,DWORD PTR [r10+rbp*1]
  10c7df:	0f b7 fe             	movzx  edi,si
  10c7e2:	01 cf                	add    edi,ecx
  10c7e4:	01 df                	add    edi,ebx
  10c7e6:	0f b7 df             	movzx  ebx,di
  10c7e9:	c1 ef 10             	shr    edi,0x10
  10c7ec:	c1 ea 10             	shr    edx,0x10
  10c7ef:	41 0f af d3          	imul   edx,r11d
  10c7f3:	c1 ee 10             	shr    esi,0x10
  10c7f6:	01 d6                	add    esi,edx
  10c7f8:	01 fe                	add    esi,edi
  10c7fa:	89 f1                	mov    ecx,esi
  10c7fc:	c1 e9 10             	shr    ecx,0x10
  10c7ff:	c1 e6 10             	shl    esi,0x10
  10c802:	09 f3                	or     ebx,esi
  10c804:	41 89 1c 2a          	mov    DWORD PTR [r10+rbp*1],ebx
  10c808:	49 8d 14 2e          	lea    rdx,[r14+rbp*1]
  10c80c:	48 83 c2 04          	add    rdx,0x4
  10c810:	48 83 c5 04          	add    rbp,0x4
  10c814:	4c 39 ca             	cmp    rdx,r9
  10c817:	72 b7                	jb     10c7d0 <__multiply+0x230>
  10c819:	41 89 0c 2a          	mov    DWORD PTR [r10+rbp*1],ecx
  10c81d:	41 8b 6d 00          	mov    ebp,DWORD PTR [r13+0x0]
  10c821:	81 fd 00 00 01 00    	cmp    ebp,0x10000
  10c827:	0f 82 73 ff ff ff    	jb     10c7a0 <__multiply+0x200>
  10c82d:	c1 ed 10             	shr    ebp,0x10
  10c830:	41 8b 32             	mov    esi,DWORD PTR [r10]
  10c833:	31 ff                	xor    edi,edi
  10c835:	31 db                	xor    ebx,ebx
  10c837:	89 f2                	mov    edx,esi
  10c839:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  10c840:	41 0f b7 0c 3e       	movzx  ecx,WORD PTR [r14+rdi*1]
  10c845:	0f af cd             	imul   ecx,ebp
  10c848:	c1 ee 10             	shr    esi,0x10
  10c84b:	01 de                	add    esi,ebx
  10c84d:	01 ce                	add    esi,ecx
  10c84f:	89 f1                	mov    ecx,esi
  10c851:	c1 e9 10             	shr    ecx,0x10
  10c854:	c1 e6 10             	shl    esi,0x10
  10c857:	0f b7 d2             	movzx  edx,dx
  10c85a:	09 f2                	or     edx,esi
  10c85c:	41 89 14 3a          	mov    DWORD PTR [r10+rdi*1],edx
  10c860:	41 0f b7 5c 3e 02    	movzx  ebx,WORD PTR [r14+rdi*1+0x2]
  10c866:	0f af dd             	imul   ebx,ebp
  10c869:	41 8b 74 3a 04       	mov    esi,DWORD PTR [r10+rdi*1+0x4]
  10c86e:	0f b7 d6             	movzx  edx,si
  10c871:	01 da                	add    edx,ebx
  10c873:	01 ca                	add    edx,ecx
  10c875:	89 d3                	mov    ebx,edx
  10c877:	c1 eb 10             	shr    ebx,0x10
  10c87a:	49 8d 0c 3e          	lea    rcx,[r14+rdi*1]
  10c87e:	48 83 c1 04          	add    rcx,0x4
  10c882:	48 83 c7 04          	add    rdi,0x4
  10c886:	4c 39 c9             	cmp    rcx,r9
  10c889:	72 b5                	jb     10c840 <__multiply+0x2a0>
  10c88b:	41 89 14 3a          	mov    DWORD PTR [r10+rdi*1],edx
  10c88f:	e9 0c ff ff ff       	jmp    10c7a0 <__multiply+0x200>
  10c894:	45 85 e4             	test   r12d,r12d
  10c897:	7e 31                	jle    10c8ca <__multiply+0x32a>
  10c899:	4a 8d 0c a0          	lea    rcx,[rax+r12*4]
  10c89d:	48 83 c1 14          	add    rcx,0x14
  10c8a1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10c8a8:	0f 1f 84 00 00 00 00 
  10c8af:	00 
  10c8b0:	83 39 00             	cmp    DWORD PTR [rcx],0x0
  10c8b3:	75 15                	jne    10c8ca <__multiply+0x32a>
  10c8b5:	41 8d 54 24 ff       	lea    edx,[r12-0x1]
  10c8ba:	48 83 c1 fc          	add    rcx,0xfffffffffffffffc
  10c8be:	41 83 fc 01          	cmp    r12d,0x1
  10c8c2:	41 89 d4             	mov    r12d,edx
  10c8c5:	7f e9                	jg     10c8b0 <__multiply+0x310>
  10c8c7:	45 31 e4             	xor    r12d,r12d
  10c8ca:	44 89 60 14          	mov    DWORD PTR [rax+0x14],r12d
  10c8ce:	48 83 c4 18          	add    rsp,0x18
  10c8d2:	5b                   	pop    rbx
  10c8d3:	41 5c                	pop    r12
  10c8d5:	41 5d                	pop    r13
  10c8d7:	41 5e                	pop    r14
  10c8d9:	41 5f                	pop    r15
  10c8db:	5d                   	pop    rbp
  10c8dc:	c3                   	ret
  10c8dd:	31 c0                	xor    eax,eax
  10c8df:	e9 99 fd ff ff       	jmp    10c67d <__multiply+0xdd>
  10c8e4:	31 c0                	xor    eax,eax
  10c8e6:	4c 8b 5c 24 08       	mov    r11,QWORD PTR [rsp+0x8]
  10c8eb:	e9 8d fd ff ff       	jmp    10c67d <__multiply+0xdd>

000000000010c8f0 <__pow5mult>:
  10c8f0:	55                   	push   rbp
  10c8f1:	41 57                	push   r15
  10c8f3:	41 56                	push   r14
  10c8f5:	53                   	push   rbx
  10c8f6:	50                   	push   rax
  10c8f7:	89 d5                	mov    ebp,edx
  10c8f9:	49 89 f6             	mov    r14,rsi
  10c8fc:	49 89 ff             	mov    r15,rdi
  10c8ff:	89 d0                	mov    eax,edx
  10c901:	83 e0 03             	and    eax,0x3
  10c904:	74 1c                	je     10c922 <__pow5mult+0x32>
  10c906:	ff c8                	dec    eax
  10c908:	48 8d 0d b1 46 ff ff 	lea    rcx,[rip+0xffffffffffff46b1]        # 100fc0 <__pow5mult.p05>
  10c90f:	8b 14 81             	mov    edx,DWORD PTR [rcx+rax*4]
  10c912:	4c 89 ff             	mov    rdi,r15
  10c915:	4c 89 f6             	mov    rsi,r14
  10c918:	31 c9                	xor    ecx,ecx
  10c91a:	e8 31 f8 ff ff       	call   10c150 <__multadd>
  10c91f:	49 89 c6             	mov    r14,rax
  10c922:	83 fd 04             	cmp    ebp,0x4
  10c925:	73 0e                	jae    10c935 <__pow5mult+0x45>
  10c927:	4c 89 f0             	mov    rax,r14
  10c92a:	48 83 c4 08          	add    rsp,0x8
  10c92e:	5b                   	pop    rbx
  10c92f:	41 5e                	pop    r14
  10c931:	41 5f                	pop    r15
  10c933:	5d                   	pop    rbp
  10c934:	c3                   	ret
  10c935:	49 8b 47 70          	mov    rax,QWORD PTR [r15+0x70]
  10c939:	48 85 c0             	test   rax,rax
  10c93c:	0f 85 83 00 00 00    	jne    10c9c5 <__pow5mult+0xd5>
  10c942:	49 8b 4f 78          	mov    rcx,QWORD PTR [r15+0x78]
  10c946:	48 85 c9             	test   rcx,rcx
  10c949:	75 1e                	jne    10c969 <__pow5mult+0x79>
  10c94b:	be 08 00 00 00       	mov    esi,0x8
  10c950:	ba 41 00 00 00       	mov    edx,0x41
  10c955:	4c 89 ff             	mov    rdi,r15
  10c958:	e8 03 0f 00 00       	call   10d860 <_calloc_r>
  10c95d:	48 89 c1             	mov    rcx,rax
  10c960:	49 89 47 78          	mov    QWORD PTR [r15+0x78],rax
  10c964:	48 85 c0             	test   rax,rax
  10c967:	74 41                	je     10c9aa <__pow5mult+0xba>
  10c969:	48 8b 41 08          	mov    rax,QWORD PTR [rcx+0x8]
  10c96d:	48 85 c0             	test   rax,rax
  10c970:	74 09                	je     10c97b <__pow5mult+0x8b>
  10c972:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  10c975:	48 89 51 08          	mov    QWORD PTR [rcx+0x8],rdx
  10c979:	eb 25                	jmp    10c9a0 <__pow5mult+0xb0>
  10c97b:	be 01 00 00 00       	mov    esi,0x1
  10c980:	ba 24 00 00 00       	mov    edx,0x24
  10c985:	4c 89 ff             	mov    rdi,r15
  10c988:	e8 d3 0e 00 00       	call   10d860 <_calloc_r>
  10c98d:	48 85 c0             	test   rax,rax
  10c990:	74 18                	je     10c9aa <__pow5mult+0xba>
  10c992:	48 b9 01 00 00 00 02 	movabs rcx,0x200000001
  10c999:	00 00 00 
  10c99c:	48 89 48 08          	mov    QWORD PTR [rax+0x8],rcx
  10c9a0:	48 c7 40 10 00 00 00 	mov    QWORD PTR [rax+0x10],0x0
  10c9a7:	00 
  10c9a8:	eb 02                	jmp    10c9ac <__pow5mult+0xbc>
  10c9aa:	31 c0                	xor    eax,eax
  10c9ac:	48 b9 01 00 00 00 71 	movabs rcx,0x27100000001
  10c9b3:	02 00 00 
  10c9b6:	48 89 48 14          	mov    QWORD PTR [rax+0x14],rcx
  10c9ba:	49 89 47 70          	mov    QWORD PTR [r15+0x70],rax
  10c9be:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
  10c9c5:	c1 fd 02             	sar    ebp,0x2
  10c9c8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  10c9cf:	00 
  10c9d0:	48 89 c3             	mov    rbx,rax
  10c9d3:	40 f6 c5 01          	test   bpl,0x1
  10c9d7:	74 29                	je     10ca02 <__pow5mult+0x112>
  10c9d9:	4c 89 ff             	mov    rdi,r15
  10c9dc:	4c 89 f6             	mov    rsi,r14
  10c9df:	48 89 da             	mov    rdx,rbx
  10c9e2:	e8 b9 fb ff ff       	call   10c5a0 <__multiply>
  10c9e7:	4d 85 f6             	test   r14,r14
  10c9ea:	74 13                	je     10c9ff <__pow5mult+0x10f>
  10c9ec:	49 8b 4f 78          	mov    rcx,QWORD PTR [r15+0x78]
  10c9f0:	49 63 56 08          	movsxd rdx,DWORD PTR [r14+0x8]
  10c9f4:	48 8b 34 d1          	mov    rsi,QWORD PTR [rcx+rdx*8]
  10c9f8:	49 89 36             	mov    QWORD PTR [r14],rsi
  10c9fb:	4c 89 34 d1          	mov    QWORD PTR [rcx+rdx*8],r14
  10c9ff:	49 89 c6             	mov    r14,rax
  10ca02:	83 fd 02             	cmp    ebp,0x2
  10ca05:	0f 82 1c ff ff ff    	jb     10c927 <__pow5mult+0x37>
  10ca0b:	d1 fd                	sar    ebp,1
  10ca0d:	48 8b 03             	mov    rax,QWORD PTR [rbx]
  10ca10:	48 85 c0             	test   rax,rax
  10ca13:	75 bb                	jne    10c9d0 <__pow5mult+0xe0>
  10ca15:	4c 89 ff             	mov    rdi,r15
  10ca18:	48 89 de             	mov    rsi,rbx
  10ca1b:	48 89 da             	mov    rdx,rbx
  10ca1e:	e8 7d fb ff ff       	call   10c5a0 <__multiply>
  10ca23:	48 89 03             	mov    QWORD PTR [rbx],rax
  10ca26:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
  10ca2d:	eb a1                	jmp    10c9d0 <__pow5mult+0xe0>
  10ca2f:	90                   	nop

000000000010ca30 <__lshift>:
  10ca30:	55                   	push   rbp
  10ca31:	41 57                	push   r15
  10ca33:	41 56                	push   r14
  10ca35:	41 55                	push   r13
  10ca37:	41 54                	push   r12
  10ca39:	53                   	push   rbx
  10ca3a:	48 83 ec 18          	sub    rsp,0x18
  10ca3e:	41 89 d6             	mov    r14d,edx
  10ca41:	49 89 f7             	mov    r15,rsi
  10ca44:	41 89 d5             	mov    r13d,edx
  10ca47:	41 c1 fd 05          	sar    r13d,0x5
  10ca4b:	8b 5e 08             	mov    ebx,DWORD PTR [rsi+0x8]
  10ca4e:	8b 46 0c             	mov    eax,DWORD PTR [rsi+0xc]
  10ca51:	44 8b 5e 14          	mov    r11d,DWORD PTR [rsi+0x14]
  10ca55:	47 8d 24 2b          	lea    r12d,[r11+r13*1]
  10ca59:	41 39 c4             	cmp    r12d,eax
  10ca5c:	7c 0b                	jl     10ca69 <__lshift+0x39>
  10ca5e:	66 90                	xchg   ax,ax
  10ca60:	ff c3                	inc    ebx
  10ca62:	01 c0                	add    eax,eax
  10ca64:	41 39 c4             	cmp    r12d,eax
  10ca67:	7d f7                	jge    10ca60 <__lshift+0x30>
  10ca69:	48 8b 4f 78          	mov    rcx,QWORD PTR [rdi+0x78]
  10ca6d:	48 85 c9             	test   rcx,rcx
  10ca70:	75 35                	jne    10caa7 <__lshift+0x77>
  10ca72:	be 08 00 00 00       	mov    esi,0x8
  10ca77:	ba 41 00 00 00       	mov    edx,0x41
  10ca7c:	48 89 fd             	mov    rbp,rdi
  10ca7f:	4c 89 6c 24 08       	mov    QWORD PTR [rsp+0x8],r13
  10ca84:	4d 89 dd             	mov    r13,r11
  10ca87:	e8 d4 0d 00 00       	call   10d860 <_calloc_r>
  10ca8c:	4d 89 eb             	mov    r11,r13
  10ca8f:	4c 8b 6c 24 08       	mov    r13,QWORD PTR [rsp+0x8]
  10ca94:	48 89 ef             	mov    rdi,rbp
  10ca97:	48 89 c1             	mov    rcx,rax
  10ca9a:	48 89 45 78          	mov    QWORD PTR [rbp+0x78],rax
  10ca9e:	48 85 c0             	test   rax,rax
  10caa1:	0f 84 b3 00 00 00    	je     10cb5a <__lshift+0x12a>
  10caa7:	48 63 d3             	movsxd rdx,ebx
  10caaa:	48 8b 04 d1          	mov    rax,QWORD PTR [rcx+rdx*8]
  10caae:	48 85 c0             	test   rax,rax
  10cab1:	74 09                	je     10cabc <__lshift+0x8c>
  10cab3:	48 8b 30             	mov    rsi,QWORD PTR [rax]
  10cab6:	48 89 34 d1          	mov    QWORD PTR [rcx+rdx*8],rsi
  10caba:	eb 41                	jmp    10cafd <__lshift+0xcd>
  10cabc:	4c 89 5c 24 10       	mov    QWORD PTR [rsp+0x10],r11
  10cac1:	bd 01 00 00 00       	mov    ebp,0x1
  10cac6:	89 d9                	mov    ecx,ebx
  10cac8:	d3 e5                	shl    ebp,cl
  10caca:	48 63 c5             	movsxd rax,ebp
  10cacd:	48 8d 14 85 1c 00 00 	lea    rdx,[rax*4+0x1c]
  10cad4:	00 
  10cad5:	be 01 00 00 00       	mov    esi,0x1
  10cada:	48 89 7c 24 08       	mov    QWORD PTR [rsp+0x8],rdi
  10cadf:	e8 7c 0d 00 00       	call   10d860 <_calloc_r>
  10cae4:	48 85 c0             	test   rax,rax
  10cae7:	0f 84 72 02 00 00    	je     10cd5f <__lshift+0x32f>
  10caed:	89 58 08             	mov    DWORD PTR [rax+0x8],ebx
  10caf0:	89 68 0c             	mov    DWORD PTR [rax+0xc],ebp
  10caf3:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  10caf8:	4c 8b 5c 24 10       	mov    r11,QWORD PTR [rsp+0x10]
  10cafd:	48 c7 40 10 00 00 00 	mov    QWORD PTR [rax+0x10],0x0
  10cb04:	00 
  10cb05:	48 8d 70 18          	lea    rsi,[rax+0x18]
  10cb09:	41 83 fe 20          	cmp    r14d,0x20
  10cb0d:	0f 8c db 00 00 00    	jl     10cbee <__lshift+0x1be>
  10cb13:	41 83 fd 02          	cmp    r13d,0x2
  10cb17:	b9 01 00 00 00       	mov    ecx,0x1
  10cb1c:	41 0f 4d cd          	cmovge ecx,r13d
  10cb20:	44 8d 41 ff          	lea    r8d,[rcx-0x1]
  10cb24:	45 31 c9             	xor    r9d,r9d
  10cb27:	41 83 f8 07          	cmp    r8d,0x7
  10cb2b:	0f 82 aa 00 00 00    	jb     10cbdb <__lshift+0x1ab>
  10cb31:	49 ff c0             	inc    r8
  10cb34:	4d 89 c1             	mov    r9,r8
  10cb37:	49 83 e1 f8          	and    r9,0xfffffffffffffff8
  10cb3b:	49 8d 51 f8          	lea    rdx,[r9-0x8]
  10cb3f:	48 89 d3             	mov    rbx,rdx
  10cb42:	48 c1 eb 03          	shr    rbx,0x3
  10cb46:	48 ff c3             	inc    rbx
  10cb49:	41 89 da             	mov    r10d,ebx
  10cb4c:	41 83 e2 03          	and    r10d,0x3
  10cb50:	48 83 fa 18          	cmp    rdx,0x18
  10cb54:	73 08                	jae    10cb5e <__lshift+0x12e>
  10cb56:	31 d2                	xor    edx,edx
  10cb58:	eb 4b                	jmp    10cba5 <__lshift+0x175>
  10cb5a:	31 c0                	xor    eax,eax
  10cb5c:	eb a7                	jmp    10cb05 <__lshift+0xd5>
  10cb5e:	48 83 e3 fc          	and    rbx,0xfffffffffffffffc
  10cb62:	31 d2                	xor    edx,edx
  10cb64:	0f 57 c0             	xorps  xmm0,xmm0
  10cb67:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  10cb6e:	00 00 
  10cb70:	0f 11 44 90 18       	movups XMMWORD PTR [rax+rdx*4+0x18],xmm0
  10cb75:	0f 11 44 90 28       	movups XMMWORD PTR [rax+rdx*4+0x28],xmm0
  10cb7a:	0f 11 44 90 38       	movups XMMWORD PTR [rax+rdx*4+0x38],xmm0
  10cb7f:	0f 11 44 90 48       	movups XMMWORD PTR [rax+rdx*4+0x48],xmm0
  10cb84:	0f 11 44 90 58       	movups XMMWORD PTR [rax+rdx*4+0x58],xmm0
  10cb89:	0f 11 44 90 68       	movups XMMWORD PTR [rax+rdx*4+0x68],xmm0
  10cb8e:	0f 11 44 90 78       	movups XMMWORD PTR [rax+rdx*4+0x78],xmm0
  10cb93:	0f 11 84 90 88 00 00 	movups XMMWORD PTR [rax+rdx*4+0x88],xmm0
  10cb9a:	00 
  10cb9b:	48 83 c2 20          	add    rdx,0x20
  10cb9f:	48 83 c3 fc          	add    rbx,0xfffffffffffffffc
  10cba3:	75 cb                	jne    10cb70 <__lshift+0x140>
  10cba5:	4d 85 d2             	test   r10,r10
  10cba8:	74 28                	je     10cbd2 <__lshift+0x1a2>
  10cbaa:	48 8d 14 90          	lea    rdx,[rax+rdx*4]
  10cbae:	48 83 c2 28          	add    rdx,0x28
  10cbb2:	49 c1 e2 05          	shl    r10,0x5
  10cbb6:	31 ed                	xor    ebp,ebp
  10cbb8:	0f 57 c0             	xorps  xmm0,xmm0
  10cbbb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  10cbc0:	0f 11 44 2a f0       	movups XMMWORD PTR [rdx+rbp*1-0x10],xmm0
  10cbc5:	0f 11 04 2a          	movups XMMWORD PTR [rdx+rbp*1],xmm0
  10cbc9:	48 83 c5 20          	add    rbp,0x20
  10cbcd:	49 39 ea             	cmp    r10,rbp
  10cbd0:	75 ee                	jne    10cbc0 <__lshift+0x190>
  10cbd2:	4a 8d 34 8e          	lea    rsi,[rsi+r9*4]
  10cbd6:	4d 39 c8             	cmp    r8,r9
  10cbd9:	74 13                	je     10cbee <__lshift+0x1be>
  10cbdb:	44 29 c9             	sub    ecx,r9d
  10cbde:	66 90                	xchg   ax,ax
  10cbe0:	c7 06 00 00 00 00    	mov    DWORD PTR [rsi],0x0
  10cbe6:	48 83 c6 04          	add    rsi,0x4
  10cbea:	ff c9                	dec    ecx
  10cbec:	75 f2                	jne    10cbe0 <__lshift+0x1b0>
  10cbee:	47 8d 04 2b          	lea    r8d,[r11+r13*1]
  10cbf2:	41 ff c0             	inc    r8d
  10cbf5:	49 8d 5f 18          	lea    rbx,[r15+0x18]
  10cbf9:	49 63 4f 14          	movsxd rcx,DWORD PTR [r15+0x14]
  10cbfd:	4d 8d 1c 8f          	lea    r11,[r15+rcx*4]
  10cc01:	49 83 c3 18          	add    r11,0x18
  10cc05:	41 83 e6 1f          	and    r14d,0x1f
  10cc09:	74 45                	je     10cc50 <__lshift+0x220>
  10cc0b:	41 b9 20 00 00 00    	mov    r9d,0x20
  10cc11:	45 29 f1             	sub    r9d,r14d
  10cc14:	31 ed                	xor    ebp,ebp
  10cc16:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10cc1d:	00 00 00 
  10cc20:	8b 13                	mov    edx,DWORD PTR [rbx]
  10cc22:	44 89 f1             	mov    ecx,r14d
  10cc25:	d3 e2                	shl    edx,cl
  10cc27:	09 ea                	or     edx,ebp
  10cc29:	89 16                	mov    DWORD PTR [rsi],edx
  10cc2b:	48 83 c6 04          	add    rsi,0x4
  10cc2f:	8b 2b                	mov    ebp,DWORD PTR [rbx]
  10cc31:	48 83 c3 04          	add    rbx,0x4
  10cc35:	44 89 c9             	mov    ecx,r9d
  10cc38:	d3 ed                	shr    ebp,cl
  10cc3a:	4c 39 db             	cmp    rbx,r11
  10cc3d:	72 e1                	jb     10cc20 <__lshift+0x1f0>
  10cc3f:	89 2e                	mov    DWORD PTR [rsi],ebp
  10cc41:	41 83 c4 02          	add    r12d,0x2
  10cc45:	85 ed                	test   ebp,ebp
  10cc47:	45 0f 45 c4          	cmovne r8d,r12d
  10cc4b:	e9 e1 00 00 00       	jmp    10cd31 <__lshift+0x301>
  10cc50:	49 8d 4f 1c          	lea    rcx,[r15+0x1c]
  10cc54:	49 39 cb             	cmp    r11,rcx
  10cc57:	49 0f 47 cb          	cmova  rcx,r11
  10cc5b:	4c 29 f9             	sub    rcx,r15
  10cc5e:	48 83 c1 e7          	add    rcx,0xffffffffffffffe7
  10cc62:	48 83 f9 2c          	cmp    rcx,0x2c
  10cc66:	0f 82 b4 00 00 00    	jb     10cd20 <__lshift+0x2f0>
  10cc6c:	48 89 f2             	mov    rdx,rsi
  10cc6f:	4c 29 fa             	sub    rdx,r15
  10cc72:	48 83 c2 e8          	add    rdx,0xffffffffffffffe8
  10cc76:	48 83 fa 20          	cmp    rdx,0x20
  10cc7a:	0f 82 a0 00 00 00    	jb     10cd20 <__lshift+0x2f0>
  10cc80:	48 c1 e9 02          	shr    rcx,0x2
  10cc84:	48 ff c1             	inc    rcx
  10cc87:	49 89 c9             	mov    r9,rcx
  10cc8a:	49 83 e1 f8          	and    r9,0xfffffffffffffff8
  10cc8e:	49 8d 51 f8          	lea    rdx,[r9-0x8]
  10cc92:	49 89 d2             	mov    r10,rdx
  10cc95:	49 c1 ea 03          	shr    r10,0x3
  10cc99:	49 ff c2             	inc    r10
  10cc9c:	48 85 d2             	test   rdx,rdx
  10cc9f:	0f 84 cb 00 00 00    	je     10cd70 <__lshift+0x340>
  10cca5:	48 bd fc ff ff ff ff 	movabs rbp,0x3ffffffffffffffc
  10ccac:	ff ff 3f 
  10ccaf:	48 83 cd 02          	or     rbp,0x2
  10ccb3:	4c 21 d5             	and    rbp,r10
  10ccb6:	31 d2                	xor    edx,edx
  10ccb8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  10ccbf:	00 
  10ccc0:	41 0f 10 44 17 18    	movups xmm0,XMMWORD PTR [r15+rdx*1+0x18]
  10ccc6:	41 0f 10 4c 17 28    	movups xmm1,XMMWORD PTR [r15+rdx*1+0x28]
  10cccc:	0f 11 04 16          	movups XMMWORD PTR [rsi+rdx*1],xmm0
  10ccd0:	0f 11 4c 16 10       	movups XMMWORD PTR [rsi+rdx*1+0x10],xmm1
  10ccd5:	41 0f 10 44 17 38    	movups xmm0,XMMWORD PTR [r15+rdx*1+0x38]
  10ccdb:	41 0f 10 4c 17 48    	movups xmm1,XMMWORD PTR [r15+rdx*1+0x48]
  10cce1:	0f 11 44 16 20       	movups XMMWORD PTR [rsi+rdx*1+0x20],xmm0
  10cce6:	0f 11 4c 16 30       	movups XMMWORD PTR [rsi+rdx*1+0x30],xmm1
  10cceb:	48 83 c2 40          	add    rdx,0x40
  10ccef:	48 83 c5 fe          	add    rbp,0xfffffffffffffffe
  10ccf3:	75 cb                	jne    10ccc0 <__lshift+0x290>
  10ccf5:	41 f6 c2 01          	test   r10b,0x1
  10ccf9:	74 12                	je     10cd0d <__lshift+0x2dd>
  10ccfb:	0f 10 04 13          	movups xmm0,XMMWORD PTR [rbx+rdx*1]
  10ccff:	0f 10 4c 13 10       	movups xmm1,XMMWORD PTR [rbx+rdx*1+0x10]
  10cd04:	0f 11 04 16          	movups XMMWORD PTR [rsi+rdx*1],xmm0
  10cd08:	0f 11 4c 16 10       	movups XMMWORD PTR [rsi+rdx*1+0x10],xmm1
  10cd0d:	4c 39 c9             	cmp    rcx,r9
  10cd10:	74 1f                	je     10cd31 <__lshift+0x301>
  10cd12:	4a 8d 1c 8b          	lea    rbx,[rbx+r9*4]
  10cd16:	4a 8d 34 8e          	lea    rsi,[rsi+r9*4]
  10cd1a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  10cd20:	8b 0b                	mov    ecx,DWORD PTR [rbx]
  10cd22:	48 83 c3 04          	add    rbx,0x4
  10cd26:	89 0e                	mov    DWORD PTR [rsi],ecx
  10cd28:	48 83 c6 04          	add    rsi,0x4
  10cd2c:	4c 39 db             	cmp    rbx,r11
  10cd2f:	72 ef                	jb     10cd20 <__lshift+0x2f0>
  10cd31:	41 ff c8             	dec    r8d
  10cd34:	44 89 40 14          	mov    DWORD PTR [rax+0x14],r8d
  10cd38:	4d 85 ff             	test   r15,r15
  10cd3b:	74 13                	je     10cd50 <__lshift+0x320>
  10cd3d:	48 8b 4f 78          	mov    rcx,QWORD PTR [rdi+0x78]
  10cd41:	49 63 57 08          	movsxd rdx,DWORD PTR [r15+0x8]
  10cd45:	48 8b 34 d1          	mov    rsi,QWORD PTR [rcx+rdx*8]
  10cd49:	49 89 37             	mov    QWORD PTR [r15],rsi
  10cd4c:	4c 89 3c d1          	mov    QWORD PTR [rcx+rdx*8],r15
  10cd50:	48 83 c4 18          	add    rsp,0x18
  10cd54:	5b                   	pop    rbx
  10cd55:	41 5c                	pop    r12
  10cd57:	41 5d                	pop    r13
  10cd59:	41 5e                	pop    r14
  10cd5b:	41 5f                	pop    r15
  10cd5d:	5d                   	pop    rbp
  10cd5e:	c3                   	ret
  10cd5f:	31 c0                	xor    eax,eax
  10cd61:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  10cd66:	4c 8b 5c 24 10       	mov    r11,QWORD PTR [rsp+0x10]
  10cd6b:	e9 95 fd ff ff       	jmp    10cb05 <__lshift+0xd5>
  10cd70:	31 d2                	xor    edx,edx
  10cd72:	41 f6 c2 01          	test   r10b,0x1
  10cd76:	75 83                	jne    10ccfb <__lshift+0x2cb>
  10cd78:	eb 93                	jmp    10cd0d <__lshift+0x2dd>
  10cd7a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

000000000010cd80 <__mcmp>:
  10cd80:	8b 47 14             	mov    eax,DWORD PTR [rdi+0x14]
  10cd83:	48 63 4e 14          	movsxd rcx,DWORD PTR [rsi+0x14]
  10cd87:	29 c8                	sub    eax,ecx
  10cd89:	74 01                	je     10cd8c <__mcmp+0xc>
  10cd8b:	c3                   	ret
  10cd8c:	48 8d 04 8f          	lea    rax,[rdi+rcx*4]
  10cd90:	48 83 c0 18          	add    rax,0x18
  10cd94:	48 83 c7 18          	add    rdi,0x18
  10cd98:	48 8d 0c 8e          	lea    rcx,[rsi+rcx*4]
  10cd9c:	48 83 c1 14          	add    rcx,0x14
  10cda0:	8b 11                	mov    edx,DWORD PTR [rcx]
  10cda2:	39 50 fc             	cmp    DWORD PTR [rax-0x4],edx
  10cda5:	75 10                	jne    10cdb7 <__mcmp+0x37>
  10cda7:	48 83 c0 fc          	add    rax,0xfffffffffffffffc
  10cdab:	48 83 c1 fc          	add    rcx,0xfffffffffffffffc
  10cdaf:	48 39 f8             	cmp    rax,rdi
  10cdb2:	77 ec                	ja     10cda0 <__mcmp+0x20>
  10cdb4:	31 c0                	xor    eax,eax
  10cdb6:	c3                   	ret
  10cdb7:	0f 93 c0             	setae  al
  10cdba:	0f b6 c0             	movzx  eax,al
  10cdbd:	01 c0                	add    eax,eax
  10cdbf:	ff c8                	dec    eax
  10cdc1:	c3                   	ret
  10cdc2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10cdc9:	1f 84 00 00 00 00 00 

000000000010cdd0 <__mdiff>:
  10cdd0:	55                   	push   rbp
  10cdd1:	41 57                	push   r15
  10cdd3:	41 56                	push   r14
  10cdd5:	41 55                	push   r13
  10cdd7:	41 54                	push   r12
  10cdd9:	53                   	push   rbx
  10cdda:	50                   	push   rax
  10cddb:	49 89 f4             	mov    r12,rsi
  10cdde:	48 89 fd             	mov    rbp,rdi
  10cde1:	8b 5e 14             	mov    ebx,DWORD PTR [rsi+0x14]
  10cde4:	48 63 72 14          	movsxd rsi,DWORD PTR [rdx+0x14]
  10cde8:	29 f3                	sub    ebx,esi
  10cdea:	0f 85 82 00 00 00    	jne    10ce72 <__mdiff+0xa2>
  10cdf0:	49 8d 44 24 18       	lea    rax,[r12+0x18]
  10cdf5:	49 8d 0c b4          	lea    rcx,[r12+rsi*4]
  10cdf9:	48 83 c1 18          	add    rcx,0x18
  10cdfd:	48 8d 34 b2          	lea    rsi,[rdx+rsi*4]
  10ce01:	48 83 c6 14          	add    rsi,0x14
  10ce05:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  10ce0c:	00 00 00 00 
  10ce10:	8b 3e                	mov    edi,DWORD PTR [rsi]
  10ce12:	39 79 fc             	cmp    DWORD PTR [rcx-0x4],edi
  10ce15:	75 50                	jne    10ce67 <__mdiff+0x97>
  10ce17:	48 83 c1 fc          	add    rcx,0xfffffffffffffffc
  10ce1b:	48 83 c6 fc          	add    rsi,0xfffffffffffffffc
  10ce1f:	48 39 c1             	cmp    rcx,rax
  10ce22:	77 ec                	ja     10ce10 <__mdiff+0x40>
  10ce24:	48 8b 4d 78          	mov    rcx,QWORD PTR [rbp+0x78]
  10ce28:	48 85 c9             	test   rcx,rcx
  10ce2b:	75 19                	jne    10ce46 <__mdiff+0x76>
  10ce2d:	be 08 00 00 00       	mov    esi,0x8
  10ce32:	ba 41 00 00 00       	mov    edx,0x41
  10ce37:	48 89 ef             	mov    rdi,rbp
  10ce3a:	e8 21 0a 00 00       	call   10d860 <_calloc_r>
  10ce3f:	48 89 c1             	mov    rcx,rax
  10ce42:	48 89 45 78          	mov    QWORD PTR [rbp+0x78],rax
  10ce46:	48 8b 01             	mov    rax,QWORD PTR [rcx]
  10ce49:	48 bb 00 00 00 00 01 	movabs rbx,0x100000000
  10ce50:	00 00 00 
  10ce53:	48 85 c0             	test   rax,rax
  10ce56:	0f 84 73 01 00 00    	je     10cfcf <__mdiff+0x1ff>
  10ce5c:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  10ce5f:	48 89 11             	mov    QWORD PTR [rcx],rdx
  10ce62:	e9 7e 01 00 00       	jmp    10cfe5 <__mdiff+0x215>
  10ce67:	0f 93 c0             	setae  al
  10ce6a:	0f b6 c0             	movzx  eax,al
  10ce6d:	8d 1c 00             	lea    ebx,[rax+rax*1]
  10ce70:	ff cb                	dec    ebx
  10ce72:	85 db                	test   ebx,ebx
  10ce74:	49 89 d6             	mov    r14,rdx
  10ce77:	4d 0f 48 f4          	cmovs  r14,r12
  10ce7b:	4c 0f 48 e2          	cmovs  r12,rdx
  10ce7f:	45 8b 7c 24 08       	mov    r15d,DWORD PTR [r12+0x8]
  10ce84:	4d 63 ef             	movsxd r13,r15d
  10ce87:	48 8b 4d 78          	mov    rcx,QWORD PTR [rbp+0x78]
  10ce8b:	48 85 c9             	test   rcx,rcx
  10ce8e:	75 19                	jne    10cea9 <__mdiff+0xd9>
  10ce90:	be 08 00 00 00       	mov    esi,0x8
  10ce95:	ba 41 00 00 00       	mov    edx,0x41
  10ce9a:	48 89 ef             	mov    rdi,rbp
  10ce9d:	e8 be 09 00 00       	call   10d860 <_calloc_r>
  10cea2:	48 89 c1             	mov    rcx,rax
  10cea5:	48 89 45 78          	mov    QWORD PTR [rbp+0x78],rax
  10cea9:	c1 eb 1f             	shr    ebx,0x1f
  10ceac:	4a 8b 04 e9          	mov    rax,QWORD PTR [rcx+r13*8]
  10ceb0:	48 85 c0             	test   rax,rax
  10ceb3:	74 09                	je     10cebe <__mdiff+0xee>
  10ceb5:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  10ceb8:	4a 89 14 e9          	mov    QWORD PTR [rcx+r13*8],rdx
  10cebc:	eb 2a                	jmp    10cee8 <__mdiff+0x118>
  10cebe:	b8 01 00 00 00       	mov    eax,0x1
  10cec3:	44 89 f9             	mov    ecx,r15d
  10cec6:	d3 e0                	shl    eax,cl
  10cec8:	4c 63 e8             	movsxd r13,eax
  10cecb:	4a 8d 14 ad 1c 00 00 	lea    rdx,[r13*4+0x1c]
  10ced2:	00 
  10ced3:	be 01 00 00 00       	mov    esi,0x1
  10ced8:	48 89 ef             	mov    rdi,rbp
  10cedb:	e8 80 09 00 00       	call   10d860 <_calloc_r>
  10cee0:	44 89 78 08          	mov    DWORD PTR [rax+0x8],r15d
  10cee4:	44 89 68 0c          	mov    DWORD PTR [rax+0xc],r13d
  10cee8:	c7 40 14 00 00 00 00 	mov    DWORD PTR [rax+0x14],0x0
  10ceef:	89 58 10             	mov    DWORD PTR [rax+0x10],ebx
  10cef2:	4d 63 4c 24 14       	movsxd r9,DWORD PTR [r12+0x14]
  10cef7:	49 83 c4 18          	add    r12,0x18
  10cefb:	49 63 56 14          	movsxd rdx,DWORD PTR [r14+0x14]
  10ceff:	4d 8d 04 96          	lea    r8,[r14+rdx*4]
  10cf03:	49 83 c0 18          	add    r8,0x18
  10cf07:	49 83 c6 18          	add    r14,0x18
  10cf0b:	48 8d 50 18          	lea    rdx,[rax+0x18]
  10cf0f:	31 ff                	xor    edi,edi
  10cf11:	4c 89 e6             	mov    rsi,r12
  10cf14:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10cf1b:	00 00 00 00 00 
  10cf20:	8b 1e                	mov    ebx,DWORD PTR [rsi]
  10cf22:	0f b7 cb             	movzx  ecx,bx
  10cf25:	45 8b 16             	mov    r10d,DWORD PTR [r14]
  10cf28:	41 0f b7 ea          	movzx  ebp,r10w
  10cf2c:	29 e9                	sub    ecx,ebp
  10cf2e:	01 f9                	add    ecx,edi
  10cf30:	0f b7 e9             	movzx  ebp,cx
  10cf33:	c1 f9 10             	sar    ecx,0x10
  10cf36:	48 83 c6 04          	add    rsi,0x4
  10cf3a:	c1 eb 10             	shr    ebx,0x10
  10cf3d:	49 83 c6 04          	add    r14,0x4
  10cf41:	41 c1 ea 10          	shr    r10d,0x10
  10cf45:	44 29 d3             	sub    ebx,r10d
  10cf48:	01 cb                	add    ebx,ecx
  10cf4a:	89 df                	mov    edi,ebx
  10cf4c:	c1 ff 10             	sar    edi,0x10
  10cf4f:	c1 e3 10             	shl    ebx,0x10
  10cf52:	09 dd                	or     ebp,ebx
  10cf54:	89 2a                	mov    DWORD PTR [rdx],ebp
  10cf56:	48 83 c2 04          	add    rdx,0x4
  10cf5a:	4d 39 c6             	cmp    r14,r8
  10cf5d:	72 c1                	jb     10cf20 <__mdiff+0x150>
  10cf5f:	4f 8d 04 8c          	lea    r8,[r12+r9*4]
  10cf63:	4c 39 c6             	cmp    rsi,r8
  10cf66:	73 33                	jae    10cf9b <__mdiff+0x1cb>
  10cf68:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  10cf6f:	00 
  10cf70:	8b 0e                	mov    ecx,DWORD PTR [rsi]
  10cf72:	0f b7 d9             	movzx  ebx,cx
  10cf75:	01 fb                	add    ebx,edi
  10cf77:	0f b7 eb             	movzx  ebp,bx
  10cf7a:	c1 fb 10             	sar    ebx,0x10
  10cf7d:	48 83 c6 04          	add    rsi,0x4
  10cf81:	c1 e9 10             	shr    ecx,0x10
  10cf84:	01 d9                	add    ecx,ebx
  10cf86:	89 cf                	mov    edi,ecx
  10cf88:	c1 ff 10             	sar    edi,0x10
  10cf8b:	c1 e1 10             	shl    ecx,0x10
  10cf8e:	09 cd                	or     ebp,ecx
  10cf90:	89 2a                	mov    DWORD PTR [rdx],ebp
  10cf92:	48 83 c2 04          	add    rdx,0x4
  10cf96:	4c 39 c6             	cmp    rsi,r8
  10cf99:	72 d5                	jb     10cf70 <__mdiff+0x1a0>
  10cf9b:	41 ff c1             	inc    r9d
  10cf9e:	48 83 c2 fc          	add    rdx,0xfffffffffffffffc
  10cfa2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10cfa9:	1f 84 00 00 00 00 00 
  10cfb0:	41 ff c9             	dec    r9d
  10cfb3:	83 3a 00             	cmp    DWORD PTR [rdx],0x0
  10cfb6:	48 8d 52 fc          	lea    rdx,[rdx-0x4]
  10cfba:	74 f4                	je     10cfb0 <__mdiff+0x1e0>
  10cfbc:	44 89 48 14          	mov    DWORD PTR [rax+0x14],r9d
  10cfc0:	48 83 c4 08          	add    rsp,0x8
  10cfc4:	5b                   	pop    rbx
  10cfc5:	41 5c                	pop    r12
  10cfc7:	41 5d                	pop    r13
  10cfc9:	41 5e                	pop    r14
  10cfcb:	41 5f                	pop    r15
  10cfcd:	5d                   	pop    rbp
  10cfce:	c3                   	ret
  10cfcf:	be 01 00 00 00       	mov    esi,0x1
  10cfd4:	ba 20 00 00 00       	mov    edx,0x20
  10cfd9:	48 89 ef             	mov    rdi,rbp
  10cfdc:	e8 7f 08 00 00       	call   10d860 <_calloc_r>
  10cfe1:	48 89 58 08          	mov    QWORD PTR [rax+0x8],rbx
  10cfe5:	48 89 58 10          	mov    QWORD PTR [rax+0x10],rbx
  10cfe9:	c7 40 18 00 00 00 00 	mov    DWORD PTR [rax+0x18],0x0
  10cff0:	eb ce                	jmp    10cfc0 <__mdiff+0x1f0>
  10cff2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10cff9:	1f 84 00 00 00 00 00 

000000000010d000 <__ulp>:
  10d000:	66 48 0f 7e c2       	movq   rdx,xmm0
  10d005:	48 c1 ea 20          	shr    rdx,0x20
  10d009:	81 e2 00 00 f0 7f    	and    edx,0x7ff00000
  10d00f:	81 fa 01 00 40 03    	cmp    edx,0x3400001
  10d015:	72 08                	jb     10d01f <__ulp+0x1f>
  10d017:	81 c2 00 00 c0 fc    	add    edx,0xfcc00000
  10d01d:	eb 19                	jmp    10d038 <__ulp+0x38>
  10d01f:	b9 00 00 40 03       	mov    ecx,0x3400000
  10d024:	29 d1                	sub    ecx,edx
  10d026:	c1 e9 14             	shr    ecx,0x14
  10d029:	81 fa 01 00 00 02    	cmp    edx,0x2000001
  10d02f:	72 11                	jb     10d042 <__ulp+0x42>
  10d031:	ba 00 00 08 00       	mov    edx,0x80000
  10d036:	d3 ea                	shr    edx,cl
  10d038:	48 c1 e2 20          	shl    rdx,0x20
  10d03c:	66 48 0f 6e c2       	movq   xmm0,rdx
  10d041:	c3                   	ret
  10d042:	b0 33                	mov    al,0x33
  10d044:	28 c8                	sub    al,cl
  10d046:	be 01 00 00 00       	mov    esi,0x1
  10d04b:	bf 01 00 00 00       	mov    edi,0x1
  10d050:	89 c1                	mov    ecx,eax
  10d052:	d3 e7                	shl    edi,cl
  10d054:	81 fa 00 00 20 00    	cmp    edx,0x200000
  10d05a:	0f 42 fe             	cmovb  edi,esi
  10d05d:	66 48 0f 6e c7       	movq   xmm0,rdi
  10d062:	c3                   	ret
  10d063:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10d06a:	84 00 00 00 00 00 

000000000010d070 <__b2d>:
  10d070:	55                   	push   rbp
  10d071:	53                   	push   rbx
  10d072:	4c 8d 4f 18          	lea    r9,[rdi+0x18]
  10d076:	48 63 47 14          	movsxd rax,DWORD PTR [rdi+0x14]
  10d07a:	4c 8d 04 87          	lea    r8,[rdi+rax*4]
  10d07e:	49 83 c0 14          	add    r8,0x14
  10d082:	8b 6c 87 14          	mov    ebp,DWORD PTR [rdi+rax*4+0x14]
  10d086:	89 ef                	mov    edi,ebp
  10d088:	c1 e7 10             	shl    edi,0x10
  10d08b:	31 c9                	xor    ecx,ecx
  10d08d:	81 fd 00 00 01 00    	cmp    ebp,0x10000
  10d093:	0f 92 c1             	setb   cl
  10d096:	0f 43 fd             	cmovae edi,ebp
  10d099:	c1 e1 04             	shl    ecx,0x4
  10d09c:	8d 51 08             	lea    edx,[rcx+0x8]
  10d09f:	89 f8                	mov    eax,edi
  10d0a1:	c1 e0 08             	shl    eax,0x8
  10d0a4:	81 ff 00 00 00 01    	cmp    edi,0x1000000
  10d0aa:	0f 43 c7             	cmovae eax,edi
  10d0ad:	0f 43 d1             	cmovae edx,ecx
  10d0b0:	8d 7a 04             	lea    edi,[rdx+0x4]
  10d0b3:	89 c3                	mov    ebx,eax
  10d0b5:	c1 e3 04             	shl    ebx,0x4
  10d0b8:	3d 00 00 00 10       	cmp    eax,0x10000000
  10d0bd:	0f 43 d8             	cmovae ebx,eax
  10d0c0:	0f 43 fa             	cmovae edi,edx
  10d0c3:	8d 0c 9d 00 00 00 00 	lea    ecx,[rbx*4+0x0]
  10d0ca:	81 fb 00 00 00 40    	cmp    ebx,0x40000000
  10d0d0:	0f 43 cb             	cmovae ecx,ebx
  10d0d3:	8d 47 02             	lea    eax,[rdi+0x2]
  10d0d6:	0f 43 c7             	cmovae eax,edi
  10d0d9:	85 c9                	test   ecx,ecx
  10d0db:	78 17                	js     10d0f4 <__b2d+0x84>
  10d0dd:	f7 c1 00 00 00 40    	test   ecx,0x40000000
  10d0e3:	75 0d                	jne    10d0f2 <__b2d+0x82>
  10d0e5:	c7 06 00 00 00 00    	mov    DWORD PTR [rsi],0x0
  10d0eb:	b8 20 00 00 00       	mov    eax,0x20
  10d0f0:	eb 3a                	jmp    10d12c <__b2d+0xbc>
  10d0f2:	ff c0                	inc    eax
  10d0f4:	b9 20 00 00 00       	mov    ecx,0x20
  10d0f9:	29 c1                	sub    ecx,eax
  10d0fb:	89 0e                	mov    DWORD PTR [rsi],ecx
  10d0fd:	83 f8 0a             	cmp    eax,0xa
  10d100:	77 2a                	ja     10d12c <__b2d+0xbc>
  10d102:	41 ba 0b 00 00 00    	mov    r10d,0xb
  10d108:	41 29 c2             	sub    r10d,eax
  10d10b:	89 ea                	mov    edx,ebp
  10d10d:	44 89 d1             	mov    ecx,r10d
  10d110:	d3 ea                	shr    edx,cl
  10d112:	31 f6                	xor    esi,esi
  10d114:	4d 39 c8             	cmp    r8,r9
  10d117:	76 04                	jbe    10d11d <__b2d+0xad>
  10d119:	41 8b 70 fc          	mov    esi,DWORD PTR [r8-0x4]
  10d11d:	04 15                	add    al,0x15
  10d11f:	89 c1                	mov    ecx,eax
  10d121:	d3 e5                	shl    ebp,cl
  10d123:	44 89 d1             	mov    ecx,r10d
  10d126:	d3 ee                	shr    esi,cl
  10d128:	09 ee                	or     esi,ebp
  10d12a:	eb 47                	jmp    10d173 <__b2d+0x103>
  10d12c:	31 f6                	xor    esi,esi
  10d12e:	4d 39 c8             	cmp    r8,r9
  10d131:	76 08                	jbe    10d13b <__b2d+0xcb>
  10d133:	41 8b 70 fc          	mov    esi,DWORD PTR [r8-0x4]
  10d137:	49 83 c0 fc          	add    r8,0xfffffffffffffffc
  10d13b:	89 c2                	mov    edx,eax
  10d13d:	83 c2 f5             	add    edx,0xfffffff5
  10d140:	74 2f                	je     10d171 <__b2d+0x101>
  10d142:	89 d1                	mov    ecx,edx
  10d144:	d3 e5                	shl    ebp,cl
  10d146:	41 ba 2b 00 00 00    	mov    r10d,0x2b
  10d14c:	41 29 c2             	sub    r10d,eax
  10d14f:	41 89 f3             	mov    r11d,esi
  10d152:	44 89 d1             	mov    ecx,r10d
  10d155:	41 d3 eb             	shr    r11d,cl
  10d158:	31 c0                	xor    eax,eax
  10d15a:	4d 39 c8             	cmp    r8,r9
  10d15d:	76 04                	jbe    10d163 <__b2d+0xf3>
  10d15f:	41 8b 40 fc          	mov    eax,DWORD PTR [r8-0x4]
  10d163:	89 d1                	mov    ecx,edx
  10d165:	d3 e6                	shl    esi,cl
  10d167:	44 89 d1             	mov    ecx,r10d
  10d16a:	d3 e8                	shr    eax,cl
  10d16c:	44 09 dd             	or     ebp,r11d
  10d16f:	09 c6                	or     esi,eax
  10d171:	89 ea                	mov    edx,ebp
  10d173:	81 ca 00 00 f0 3f    	or     edx,0x3ff00000
  10d179:	48 c1 e2 20          	shl    rdx,0x20
  10d17d:	89 f0                	mov    eax,esi
  10d17f:	48 09 d0             	or     rax,rdx
  10d182:	66 48 0f 6e c0       	movq   xmm0,rax
  10d187:	5b                   	pop    rbx
  10d188:	5d                   	pop    rbp
  10d189:	c3                   	ret
  10d18a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

000000000010d190 <__d2b>:
  10d190:	41 57                	push   r15
  10d192:	41 56                	push   r14
  10d194:	53                   	push   rbx
  10d195:	48 83 ec 10          	sub    rsp,0x10
  10d199:	49 89 d6             	mov    r14,rdx
  10d19c:	49 89 f7             	mov    r15,rsi
  10d19f:	48 89 fb             	mov    rbx,rdi
  10d1a2:	48 8b 4f 78          	mov    rcx,QWORD PTR [rdi+0x78]
  10d1a6:	48 85 c9             	test   rcx,rcx
  10d1a9:	75 2e                	jne    10d1d9 <__d2b+0x49>
  10d1ab:	be 08 00 00 00       	mov    esi,0x8
  10d1b0:	ba 41 00 00 00       	mov    edx,0x41
  10d1b5:	48 89 df             	mov    rdi,rbx
  10d1b8:	f2 0f 11 44 24 08    	movsd  QWORD PTR [rsp+0x8],xmm0
  10d1be:	e8 9d 06 00 00       	call   10d860 <_calloc_r>
  10d1c3:	f3 0f 7e 44 24 08    	movq   xmm0,QWORD PTR [rsp+0x8]
  10d1c9:	48 89 c1             	mov    rcx,rax
  10d1cc:	48 89 43 78          	mov    QWORD PTR [rbx+0x78],rax
  10d1d0:	48 85 c0             	test   rax,rax
  10d1d3:	0f 84 50 01 00 00    	je     10d329 <__d2b+0x199>
  10d1d9:	48 8b 41 08          	mov    rax,QWORD PTR [rcx+0x8]
  10d1dd:	48 85 c0             	test   rax,rax
  10d1e0:	74 09                	je     10d1eb <__d2b+0x5b>
  10d1e2:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  10d1e5:	48 89 51 08          	mov    QWORD PTR [rcx+0x8],rdx
  10d1e9:	eb 35                	jmp    10d220 <__d2b+0x90>
  10d1eb:	66 0f d6 44 24 08    	movq   QWORD PTR [rsp+0x8],xmm0
  10d1f1:	be 01 00 00 00       	mov    esi,0x1
  10d1f6:	ba 24 00 00 00       	mov    edx,0x24
  10d1fb:	48 89 df             	mov    rdi,rbx
  10d1fe:	e8 5d 06 00 00       	call   10d860 <_calloc_r>
  10d203:	48 85 c0             	test   rax,rax
  10d206:	0f 84 88 01 00 00    	je     10d394 <__d2b+0x204>
  10d20c:	48 b9 01 00 00 00 02 	movabs rcx,0x200000001
  10d213:	00 00 00 
  10d216:	48 89 48 08          	mov    QWORD PTR [rax+0x8],rcx
  10d21a:	f3 0f 7e 44 24 08    	movq   xmm0,QWORD PTR [rsp+0x8]
  10d220:	48 c7 40 10 00 00 00 	mov    QWORD PTR [rax+0x10],0x0
  10d227:	00 
  10d228:	66 48 0f 7e c6       	movq   rsi,xmm0
  10d22d:	48 89 f1             	mov    rcx,rsi
  10d230:	48 c1 e9 20          	shr    rcx,0x20
  10d234:	81 e1 ff ff 0f 00    	and    ecx,0xfffff
  10d23a:	49 89 f1             	mov    r9,rsi
  10d23d:	49 c1 e9 34          	shr    r9,0x34
  10d241:	44 8d 91 00 00 10 00 	lea    r10d,[rcx+0x100000]
  10d248:	41 81 e1 ff 07 00 00 	and    r9d,0x7ff
  10d24f:	44 0f 44 d1          	cmove  r10d,ecx
  10d253:	85 f6                	test   esi,esi
  10d255:	74 27                	je     10d27e <__d2b+0xee>
  10d257:	40 f6 c6 07          	test   sil,0x7
  10d25b:	74 4f                	je     10d2ac <__d2b+0x11c>
  10d25d:	40 f6 c6 01          	test   sil,0x1
  10d261:	0f 85 b6 00 00 00    	jne    10d31d <__d2b+0x18d>
  10d267:	40 f6 c6 02          	test   sil,0x2
  10d26b:	0f 85 3f 01 00 00    	jne    10d3b0 <__d2b+0x220>
  10d271:	c1 ee 02             	shr    esi,0x2
  10d274:	ba 02 00 00 00       	mov    edx,0x2
  10d279:	e9 39 01 00 00       	jmp    10d3b7 <__d2b+0x227>
  10d27e:	41 f6 c2 07          	test   r10b,0x7
  10d282:	0f 84 a8 00 00 00    	je     10d330 <__d2b+0x1a0>
  10d288:	31 d2                	xor    edx,edx
  10d28a:	41 f6 c2 01          	test   r10b,0x1
  10d28e:	0f 85 77 01 00 00    	jne    10d40b <__d2b+0x27b>
  10d294:	41 f6 c2 02          	test   r10b,0x2
  10d298:	0f 85 5d 01 00 00    	jne    10d3fb <__d2b+0x26b>
  10d29e:	41 c1 ea 02          	shr    r10d,0x2
  10d2a2:	b9 02 00 00 00       	mov    ecx,0x2
  10d2a7:	e9 57 01 00 00       	jmp    10d403 <__d2b+0x273>
  10d2ac:	89 f3                	mov    ebx,esi
  10d2ae:	c1 eb 10             	shr    ebx,0x10
  10d2b1:	31 d2                	xor    edx,edx
  10d2b3:	66 85 f6             	test   si,si
  10d2b6:	0f 45 de             	cmovne ebx,esi
  10d2b9:	0f 94 c2             	sete   dl
  10d2bc:	c1 e2 04             	shl    edx,0x4
  10d2bf:	44 8d 42 08          	lea    r8d,[rdx+0x8]
  10d2c3:	89 d9                	mov    ecx,ebx
  10d2c5:	c1 e9 08             	shr    ecx,0x8
  10d2c8:	84 db                	test   bl,bl
  10d2ca:	44 0f 45 c2          	cmovne r8d,edx
  10d2ce:	0f 45 cb             	cmovne ecx,ebx
  10d2d1:	41 8d 50 04          	lea    edx,[r8+0x4]
  10d2d5:	89 cb                	mov    ebx,ecx
  10d2d7:	c1 eb 04             	shr    ebx,0x4
  10d2da:	f6 c1 0f             	test   cl,0xf
  10d2dd:	41 0f 45 d0          	cmovne edx,r8d
  10d2e1:	0f 45 d9             	cmovne ebx,ecx
  10d2e4:	44 8d 42 02          	lea    r8d,[rdx+0x2]
  10d2e8:	89 d9                	mov    ecx,ebx
  10d2ea:	c1 e9 02             	shr    ecx,0x2
  10d2ed:	f6 c3 03             	test   bl,0x3
  10d2f0:	44 0f 45 c2          	cmovne r8d,edx
  10d2f4:	0f 45 cb             	cmovne ecx,ebx
  10d2f7:	f6 c1 01             	test   cl,0x1
  10d2fa:	0f 85 a1 00 00 00    	jne    10d3a1 <__d2b+0x211>
  10d300:	ba 20 00 00 00       	mov    edx,0x20
  10d305:	83 f9 02             	cmp    ecx,0x2
  10d308:	0f 82 a9 00 00 00    	jb     10d3b7 <__d2b+0x227>
  10d30e:	41 ff c0             	inc    r8d
  10d311:	d1 e9                	shr    ecx,1
  10d313:	89 ce                	mov    esi,ecx
  10d315:	44 89 c2             	mov    edx,r8d
  10d318:	e9 9a 00 00 00       	jmp    10d3b7 <__d2b+0x227>
  10d31d:	89 f1                	mov    ecx,esi
  10d31f:	89 48 18             	mov    DWORD PTR [rax+0x18],ecx
  10d322:	31 d2                	xor    edx,edx
  10d324:	e9 a1 00 00 00       	jmp    10d3ca <__d2b+0x23a>
  10d329:	31 c0                	xor    eax,eax
  10d32b:	e9 f8 fe ff ff       	jmp    10d228 <__d2b+0x98>
  10d330:	44 89 d1             	mov    ecx,r10d
  10d333:	c1 e9 10             	shr    ecx,0x10
  10d336:	31 d2                	xor    edx,edx
  10d338:	66 45 85 d2          	test   r10w,r10w
  10d33c:	41 0f 45 ca          	cmovne ecx,r10d
  10d340:	0f 94 c2             	sete   dl
  10d343:	c1 e2 04             	shl    edx,0x4
  10d346:	8d 5a 08             	lea    ebx,[rdx+0x8]
  10d349:	89 cf                	mov    edi,ecx
  10d34b:	c1 ef 08             	shr    edi,0x8
  10d34e:	84 c9                	test   cl,cl
  10d350:	0f 45 da             	cmovne ebx,edx
  10d353:	0f 45 f9             	cmovne edi,ecx
  10d356:	8d 53 04             	lea    edx,[rbx+0x4]
  10d359:	89 fe                	mov    esi,edi
  10d35b:	c1 ee 04             	shr    esi,0x4
  10d35e:	40 f6 c7 0f          	test   dil,0xf
  10d362:	0f 45 d3             	cmovne edx,ebx
  10d365:	0f 45 f7             	cmovne esi,edi
  10d368:	8d 4a 02             	lea    ecx,[rdx+0x2]
  10d36b:	89 f7                	mov    edi,esi
  10d36d:	c1 ef 02             	shr    edi,0x2
  10d370:	40 f6 c6 03          	test   sil,0x3
  10d374:	0f 45 ca             	cmovne ecx,edx
  10d377:	0f 45 fe             	cmovne edi,esi
  10d37a:	40 f6 c7 01          	test   dil,0x1
  10d37e:	0f 85 82 00 00 00    	jne    10d406 <__d2b+0x276>
  10d384:	ba 20 00 00 00       	mov    edx,0x20
  10d389:	83 ff 02             	cmp    edi,0x2
  10d38c:	72 7d                	jb     10d40b <__d2b+0x27b>
  10d38e:	ff c1                	inc    ecx
  10d390:	d1 ef                	shr    edi,1
  10d392:	eb 72                	jmp    10d406 <__d2b+0x276>
  10d394:	31 c0                	xor    eax,eax
  10d396:	f3 0f 7e 44 24 08    	movq   xmm0,QWORD PTR [rsp+0x8]
  10d39c:	e9 87 fe ff ff       	jmp    10d228 <__d2b+0x98>
  10d3a1:	44 89 c2             	mov    edx,r8d
  10d3a4:	89 ce                	mov    esi,ecx
  10d3a6:	45 85 c0             	test   r8d,r8d
  10d3a9:	75 0c                	jne    10d3b7 <__d2b+0x227>
  10d3ab:	e9 6f ff ff ff       	jmp    10d31f <__d2b+0x18f>
  10d3b0:	d1 ee                	shr    esi,1
  10d3b2:	ba 01 00 00 00       	mov    edx,0x1
  10d3b7:	89 d1                	mov    ecx,edx
  10d3b9:	f6 d9                	neg    cl
  10d3bb:	44 89 d7             	mov    edi,r10d
  10d3be:	d3 e7                	shl    edi,cl
  10d3c0:	09 f7                	or     edi,esi
  10d3c2:	89 78 18             	mov    DWORD PTR [rax+0x18],edi
  10d3c5:	89 d1                	mov    ecx,edx
  10d3c7:	41 d3 ea             	shr    r10d,cl
  10d3ca:	44 89 50 1c          	mov    DWORD PTR [rax+0x1c],r10d
  10d3ce:	41 83 fa 01          	cmp    r10d,0x1
  10d3d2:	be 02 00 00 00       	mov    esi,0x2
  10d3d7:	83 de 00             	sbb    esi,0x0
  10d3da:	89 70 14             	mov    DWORD PTR [rax+0x14],esi
  10d3dd:	45 85 c9             	test   r9d,r9d
  10d3e0:	74 41                	je     10d423 <__d2b+0x293>
  10d3e2:	41 8d 0c 11          	lea    ecx,[r9+rdx*1]
  10d3e6:	81 c1 cd fb ff ff    	add    ecx,0xfffffbcd
  10d3ec:	41 89 0f             	mov    DWORD PTR [r15],ecx
  10d3ef:	b9 35 00 00 00       	mov    ecx,0x35
  10d3f4:	29 d1                	sub    ecx,edx
  10d3f6:	e9 a8 00 00 00       	jmp    10d4a3 <__d2b+0x313>
  10d3fb:	41 d1 ea             	shr    r10d,1
  10d3fe:	b9 01 00 00 00       	mov    ecx,0x1
  10d403:	44 89 d7             	mov    edi,r10d
  10d406:	41 89 fa             	mov    r10d,edi
  10d409:	89 ca                	mov    edx,ecx
  10d40b:	44 89 50 18          	mov    DWORD PTR [rax+0x18],r10d
  10d40f:	c7 40 14 01 00 00 00 	mov    DWORD PTR [rax+0x14],0x1
  10d416:	83 c2 20             	add    edx,0x20
  10d419:	be 01 00 00 00       	mov    esi,0x1
  10d41e:	45 85 c9             	test   r9d,r9d
  10d421:	75 bf                	jne    10d3e2 <__d2b+0x252>
  10d423:	81 c2 ce fb ff ff    	add    edx,0xfffffbce
  10d429:	41 89 17             	mov    DWORD PTR [r15],edx
  10d42c:	89 f1                	mov    ecx,esi
  10d42e:	c1 e1 05             	shl    ecx,0x5
  10d431:	ff ce                	dec    esi
  10d433:	8b 74 b0 18          	mov    esi,DWORD PTR [rax+rsi*4+0x18]
  10d437:	89 f2                	mov    edx,esi
  10d439:	c1 e2 10             	shl    edx,0x10
  10d43c:	31 ff                	xor    edi,edi
  10d43e:	81 fe 00 00 01 00    	cmp    esi,0x10000
  10d444:	40 0f 92 c7          	setb   dil
  10d448:	0f 43 d6             	cmovae edx,esi
  10d44b:	c1 e7 04             	shl    edi,0x4
  10d44e:	8d 5f 08             	lea    ebx,[rdi+0x8]
  10d451:	89 d6                	mov    esi,edx
  10d453:	c1 e6 08             	shl    esi,0x8
  10d456:	81 fa 00 00 00 01    	cmp    edx,0x1000000
  10d45c:	0f 43 f2             	cmovae esi,edx
  10d45f:	0f 43 df             	cmovae ebx,edi
  10d462:	8d 7b 04             	lea    edi,[rbx+0x4]
  10d465:	89 f2                	mov    edx,esi
  10d467:	c1 e2 04             	shl    edx,0x4
  10d46a:	81 fe 00 00 00 10    	cmp    esi,0x10000000
  10d470:	0f 43 d6             	cmovae edx,esi
  10d473:	0f 43 fb             	cmovae edi,ebx
  10d476:	8d 34 95 00 00 00 00 	lea    esi,[rdx*4+0x0]
  10d47d:	81 fa 00 00 00 40    	cmp    edx,0x40000000
  10d483:	0f 43 f2             	cmovae esi,edx
  10d486:	8d 57 02             	lea    edx,[rdi+0x2]
  10d489:	0f 43 d7             	cmovae edx,edi
  10d48c:	85 f6                	test   esi,esi
  10d48e:	78 0f                	js     10d49f <__d2b+0x30f>
  10d490:	bf 20 00 00 00       	mov    edi,0x20
  10d495:	f7 c6 00 00 00 40    	test   esi,0x40000000
  10d49b:	74 04                	je     10d4a1 <__d2b+0x311>
  10d49d:	ff c2                	inc    edx
  10d49f:	89 d7                	mov    edi,edx
  10d4a1:	29 f9                	sub    ecx,edi
  10d4a3:	41 89 0e             	mov    DWORD PTR [r14],ecx
  10d4a6:	48 83 c4 10          	add    rsp,0x10
  10d4aa:	5b                   	pop    rbx
  10d4ab:	41 5e                	pop    r14
  10d4ad:	41 5f                	pop    r15
  10d4af:	c3                   	ret

000000000010d4b0 <__ratio>:
  10d4b0:	41 56                	push   r14
  10d4b2:	53                   	push   rbx
  10d4b3:	48 83 ec 18          	sub    rsp,0x18
  10d4b7:	49 89 f6             	mov    r14,rsi
  10d4ba:	48 89 fb             	mov    rbx,rdi
  10d4bd:	48 8d 74 24 0c       	lea    rsi,[rsp+0xc]
  10d4c2:	e8 a9 fb ff ff       	call   10d070 <__b2d>
  10d4c7:	66 0f d6 44 24 10    	movq   QWORD PTR [rsp+0x10],xmm0
  10d4cd:	48 8d 74 24 08       	lea    rsi,[rsp+0x8]
  10d4d2:	4c 89 f7             	mov    rdi,r14
  10d4d5:	e8 96 fb ff ff       	call   10d070 <__b2d>
  10d4da:	8b 4c 24 0c          	mov    ecx,DWORD PTR [rsp+0xc]
  10d4de:	2b 4c 24 08          	sub    ecx,DWORD PTR [rsp+0x8]
  10d4e2:	8b 43 14             	mov    eax,DWORD PTR [rbx+0x14]
  10d4e5:	41 2b 46 14          	sub    eax,DWORD PTR [r14+0x14]
  10d4e9:	c1 e0 05             	shl    eax,0x5
  10d4ec:	01 c8                	add    eax,ecx
  10d4ee:	7e 24                	jle    10d514 <__ratio+0x64>
  10d4f0:	c1 e0 14             	shl    eax,0x14
  10d4f3:	f3 0f 7e 4c 24 10    	movq   xmm1,QWORD PTR [rsp+0x10]
  10d4f9:	66 48 0f 7e c9       	movq   rcx,xmm1
  10d4fe:	89 ca                	mov    edx,ecx
  10d500:	48 c1 e9 20          	shr    rcx,0x20
  10d504:	01 c1                	add    ecx,eax
  10d506:	48 c1 e1 20          	shl    rcx,0x20
  10d50a:	48 09 ca             	or     rdx,rcx
  10d50d:	66 48 0f 6e ca       	movq   xmm1,rdx
  10d512:	eb 22                	jmp    10d536 <__ratio+0x86>
  10d514:	66 48 0f 7e c1       	movq   rcx,xmm0
  10d519:	89 ca                	mov    edx,ecx
  10d51b:	48 c1 e9 20          	shr    rcx,0x20
  10d51f:	c1 e0 14             	shl    eax,0x14
  10d522:	29 c1                	sub    ecx,eax
  10d524:	48 c1 e1 20          	shl    rcx,0x20
  10d528:	48 09 ca             	or     rdx,rcx
  10d52b:	66 48 0f 6e c2       	movq   xmm0,rdx
  10d530:	f3 0f 7e 4c 24 10    	movq   xmm1,QWORD PTR [rsp+0x10]
  10d536:	f2 0f 5e c8          	divsd  xmm1,xmm0
  10d53a:	66 0f 28 c1          	movapd xmm0,xmm1
  10d53e:	48 83 c4 18          	add    rsp,0x18
  10d542:	5b                   	pop    rbx
  10d543:	41 5e                	pop    r14
  10d545:	c3                   	ret
  10d546:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10d54d:	00 00 00 

000000000010d550 <_mprec_log10>:
  10d550:	83 ff 18             	cmp    edi,0x18
  10d553:	7d 10                	jge    10d565 <_mprec_log10+0x15>
  10d555:	48 63 c7             	movsxd rax,edi
  10d558:	48 8d 0d 71 3a ff ff 	lea    rcx,[rip+0xffffffffffff3a71]        # 100fd0 <__mprec_tens>
  10d55f:	f2 0f 10 04 c1       	movsd  xmm0,QWORD PTR [rcx+rax*8]
  10d564:	c3                   	ret
  10d565:	8d 47 ff             	lea    eax,[rdi-0x1]
  10d568:	89 f9                	mov    ecx,edi
  10d56a:	83 e1 07             	and    ecx,0x7
  10d56d:	74 34                	je     10d5a3 <_mprec_log10+0x53>
  10d56f:	31 d2                	xor    edx,edx
  10d571:	f2 0f 10 05 1f 33 ff 	movsd  xmm0,QWORD PTR [rip+0xffffffffffff331f]        # 100898 <_svfprintf_r.blanks-0x248>
  10d578:	ff 
  10d579:	f2 0f 10 0d ef 32 ff 	movsd  xmm1,QWORD PTR [rip+0xffffffffffff32ef]        # 100870 <_svfprintf_r.blanks-0x270>
  10d580:	ff 
  10d581:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10d588:	0f 1f 84 00 00 00 00 
  10d58f:	00 
  10d590:	f2 0f 59 c1          	mulsd  xmm0,xmm1
  10d594:	ff c2                	inc    edx
  10d596:	39 d1                	cmp    ecx,edx
  10d598:	75 f6                	jne    10d590 <_mprec_log10+0x40>
  10d59a:	29 d7                	sub    edi,edx
  10d59c:	83 f8 07             	cmp    eax,0x7
  10d59f:	73 0f                	jae    10d5b0 <_mprec_log10+0x60>
  10d5a1:	eb 45                	jmp    10d5e8 <_mprec_log10+0x98>
  10d5a3:	f2 0f 10 05 ed 32 ff 	movsd  xmm0,QWORD PTR [rip+0xffffffffffff32ed]        # 100898 <_svfprintf_r.blanks-0x248>
  10d5aa:	ff 
  10d5ab:	83 f8 07             	cmp    eax,0x7
  10d5ae:	72 38                	jb     10d5e8 <_mprec_log10+0x98>
  10d5b0:	ff cf                	dec    edi
  10d5b2:	f2 0f 10 0d b6 32 ff 	movsd  xmm1,QWORD PTR [rip+0xffffffffffff32b6]        # 100870 <_svfprintf_r.blanks-0x270>
  10d5b9:	ff 
  10d5ba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  10d5c0:	f2 0f 59 c1          	mulsd  xmm0,xmm1
  10d5c4:	f2 0f 59 c1          	mulsd  xmm0,xmm1
  10d5c8:	f2 0f 59 c1          	mulsd  xmm0,xmm1
  10d5cc:	f2 0f 59 c1          	mulsd  xmm0,xmm1
  10d5d0:	f2 0f 59 c1          	mulsd  xmm0,xmm1
  10d5d4:	f2 0f 59 c1          	mulsd  xmm0,xmm1
  10d5d8:	f2 0f 59 c1          	mulsd  xmm0,xmm1
  10d5dc:	f2 0f 59 c1          	mulsd  xmm0,xmm1
  10d5e0:	83 c7 f8             	add    edi,0xfffffff8
  10d5e3:	83 ff fe             	cmp    edi,0xfffffffe
  10d5e6:	72 d8                	jb     10d5c0 <_mprec_log10+0x70>
  10d5e8:	c3                   	ret
  10d5e9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

000000000010d5f0 <__copybits>:
  10d5f0:	41 56                	push   r14
  10d5f2:	53                   	push   rbx
  10d5f3:	ff ce                	dec    esi
  10d5f5:	c1 fe 05             	sar    esi,0x5
  10d5f8:	4c 63 ce             	movsxd r9,esi
  10d5fb:	4e 8d 04 8f          	lea    r8,[rdi+r9*4]
  10d5ff:	49 83 c0 04          	add    r8,0x4
  10d603:	48 63 4a 14          	movsxd rcx,DWORD PTR [rdx+0x14]
  10d607:	48 89 f8             	mov    rax,rdi
  10d60a:	48 85 c9             	test   rcx,rcx
  10d60d:	0f 8e ee 00 00 00    	jle    10d701 <__copybits+0x111>
  10d613:	48 8d 34 8a          	lea    rsi,[rdx+rcx*4]
  10d617:	48 83 c6 18          	add    rsi,0x18
  10d61b:	4c 8d 52 1c          	lea    r10,[rdx+0x1c]
  10d61f:	4c 39 d6             	cmp    rsi,r10
  10d622:	4c 0f 47 d6          	cmova  r10,rsi
  10d626:	48 8d 4a 18          	lea    rcx,[rdx+0x18]
  10d62a:	49 29 d2             	sub    r10,rdx
  10d62d:	49 83 c2 e7          	add    r10,0xffffffffffffffe7
  10d631:	48 89 f8             	mov    rax,rdi
  10d634:	49 83 fa 2c          	cmp    r10,0x2c
  10d638:	0f 82 b2 00 00 00    	jb     10d6f0 <__copybits+0x100>
  10d63e:	48 29 d0             	sub    rax,rdx
  10d641:	48 83 c0 e8          	add    rax,0xffffffffffffffe8
  10d645:	48 83 f8 20          	cmp    rax,0x20
  10d649:	73 08                	jae    10d653 <__copybits+0x63>
  10d64b:	48 89 f8             	mov    rax,rdi
  10d64e:	e9 9d 00 00 00       	jmp    10d6f0 <__copybits+0x100>
  10d653:	49 c1 ea 02          	shr    r10,0x2
  10d657:	49 ff c2             	inc    r10
  10d65a:	4d 89 d3             	mov    r11,r10
  10d65d:	49 83 e3 f8          	and    r11,0xfffffffffffffff8
  10d661:	49 8d 43 f8          	lea    rax,[r11-0x8]
  10d665:	49 89 c6             	mov    r14,rax
  10d668:	49 c1 ee 03          	shr    r14,0x3
  10d66c:	49 ff c6             	inc    r14
  10d66f:	48 85 c0             	test   rax,rax
  10d672:	0f 84 6c 01 00 00    	je     10d7e4 <__copybits+0x1f4>
  10d678:	48 b8 fc ff ff ff ff 	movabs rax,0x3ffffffffffffffc
  10d67f:	ff ff 3f 
  10d682:	48 83 c8 02          	or     rax,0x2
  10d686:	4c 21 f0             	and    rax,r14
  10d689:	31 db                	xor    ebx,ebx
  10d68b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  10d690:	0f 10 44 1a 18       	movups xmm0,XMMWORD PTR [rdx+rbx*1+0x18]
  10d695:	0f 10 4c 1a 28       	movups xmm1,XMMWORD PTR [rdx+rbx*1+0x28]
  10d69a:	0f 11 04 1f          	movups XMMWORD PTR [rdi+rbx*1],xmm0
  10d69e:	0f 11 4c 1f 10       	movups XMMWORD PTR [rdi+rbx*1+0x10],xmm1
  10d6a3:	0f 10 44 1a 38       	movups xmm0,XMMWORD PTR [rdx+rbx*1+0x38]
  10d6a8:	0f 10 4c 1a 48       	movups xmm1,XMMWORD PTR [rdx+rbx*1+0x48]
  10d6ad:	0f 11 44 1f 20       	movups XMMWORD PTR [rdi+rbx*1+0x20],xmm0
  10d6b2:	0f 11 4c 1f 30       	movups XMMWORD PTR [rdi+rbx*1+0x30],xmm1
  10d6b7:	48 83 c3 40          	add    rbx,0x40
  10d6bb:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  10d6bf:	75 cf                	jne    10d690 <__copybits+0xa0>
  10d6c1:	41 f6 c6 01          	test   r14b,0x1
  10d6c5:	74 12                	je     10d6d9 <__copybits+0xe9>
  10d6c7:	0f 10 04 19          	movups xmm0,XMMWORD PTR [rcx+rbx*1]
  10d6cb:	0f 10 4c 19 10       	movups xmm1,XMMWORD PTR [rcx+rbx*1+0x10]
  10d6d0:	0f 11 04 1f          	movups XMMWORD PTR [rdi+rbx*1],xmm0
  10d6d4:	0f 11 4c 1f 10       	movups XMMWORD PTR [rdi+rbx*1+0x10],xmm1
  10d6d9:	4a 8d 04 9f          	lea    rax,[rdi+r11*4]
  10d6dd:	4d 39 da             	cmp    r10,r11
  10d6e0:	74 1f                	je     10d701 <__copybits+0x111>
  10d6e2:	4a 8d 0c 99          	lea    rcx,[rcx+r11*4]
  10d6e6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10d6ed:	00 00 00 
  10d6f0:	8b 11                	mov    edx,DWORD PTR [rcx]
  10d6f2:	48 83 c1 04          	add    rcx,0x4
  10d6f6:	89 10                	mov    DWORD PTR [rax],edx
  10d6f8:	48 83 c0 04          	add    rax,0x4
  10d6fc:	48 39 f1             	cmp    rcx,rsi
  10d6ff:	72 ef                	jb     10d6f0 <__copybits+0x100>
  10d701:	4c 39 c0             	cmp    rax,r8
  10d704:	0f 83 d6 00 00 00    	jae    10d7e0 <__copybits+0x1f0>
  10d70a:	4a 8d 0c 8f          	lea    rcx,[rdi+r9*4]
  10d70e:	31 d2                	xor    edx,edx
  10d710:	48 89 ce             	mov    rsi,rcx
  10d713:	48 29 c6             	sub    rsi,rax
  10d716:	48 0f 43 d6          	cmovae rdx,rsi
  10d71a:	48 83 c2 03          	add    rdx,0x3
  10d71e:	48 83 fa 1c          	cmp    rdx,0x1c
  10d722:	0f 82 a3 00 00 00    	jb     10d7cb <__copybits+0x1db>
  10d728:	48 c1 ea 02          	shr    rdx,0x2
  10d72c:	48 ff c2             	inc    rdx
  10d72f:	49 89 d0             	mov    r8,rdx
  10d732:	49 83 e0 f8          	and    r8,0xfffffffffffffff8
  10d736:	49 8d 58 f8          	lea    rbx,[r8-0x8]
  10d73a:	48 89 df             	mov    rdi,rbx
  10d73d:	48 c1 ef 03          	shr    rdi,0x3
  10d741:	48 ff c7             	inc    rdi
  10d744:	89 fe                	mov    esi,edi
  10d746:	83 e6 03             	and    esi,0x3
  10d749:	48 83 fb 18          	cmp    rbx,0x18
  10d74d:	73 04                	jae    10d753 <__copybits+0x163>
  10d74f:	31 db                	xor    ebx,ebx
  10d751:	eb 3e                	jmp    10d791 <__copybits+0x1a1>
  10d753:	48 83 e7 fc          	and    rdi,0xfffffffffffffffc
  10d757:	31 db                	xor    ebx,ebx
  10d759:	0f 57 c0             	xorps  xmm0,xmm0
  10d75c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  10d760:	0f 11 04 98          	movups XMMWORD PTR [rax+rbx*4],xmm0
  10d764:	0f 11 44 98 10       	movups XMMWORD PTR [rax+rbx*4+0x10],xmm0
  10d769:	0f 11 44 98 20       	movups XMMWORD PTR [rax+rbx*4+0x20],xmm0
  10d76e:	0f 11 44 98 30       	movups XMMWORD PTR [rax+rbx*4+0x30],xmm0
  10d773:	0f 11 44 98 40       	movups XMMWORD PTR [rax+rbx*4+0x40],xmm0
  10d778:	0f 11 44 98 50       	movups XMMWORD PTR [rax+rbx*4+0x50],xmm0
  10d77d:	0f 11 44 98 60       	movups XMMWORD PTR [rax+rbx*4+0x60],xmm0
  10d782:	0f 11 44 98 70       	movups XMMWORD PTR [rax+rbx*4+0x70],xmm0
  10d787:	48 83 c3 20          	add    rbx,0x20
  10d78b:	48 83 c7 fc          	add    rdi,0xfffffffffffffffc
  10d78f:	75 cf                	jne    10d760 <__copybits+0x170>
  10d791:	48 85 f6             	test   rsi,rsi
  10d794:	74 2c                	je     10d7c2 <__copybits+0x1d2>
  10d796:	48 8d 3c 98          	lea    rdi,[rax+rbx*4]
  10d79a:	48 83 c7 10          	add    rdi,0x10
  10d79e:	48 c1 e6 05          	shl    rsi,0x5
  10d7a2:	31 db                	xor    ebx,ebx
  10d7a4:	0f 57 c0             	xorps  xmm0,xmm0
  10d7a7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  10d7ae:	00 00 
  10d7b0:	0f 11 44 1f f0       	movups XMMWORD PTR [rdi+rbx*1-0x10],xmm0
  10d7b5:	0f 11 04 1f          	movups XMMWORD PTR [rdi+rbx*1],xmm0
  10d7b9:	48 83 c3 20          	add    rbx,0x20
  10d7bd:	48 39 de             	cmp    rsi,rbx
  10d7c0:	75 ee                	jne    10d7b0 <__copybits+0x1c0>
  10d7c2:	4c 39 c2             	cmp    rdx,r8
  10d7c5:	74 19                	je     10d7e0 <__copybits+0x1f0>
  10d7c7:	4a 8d 04 80          	lea    rax,[rax+r8*4]
  10d7cb:	48 83 c0 fc          	add    rax,0xfffffffffffffffc
  10d7cf:	90                   	nop
  10d7d0:	c7 40 04 00 00 00 00 	mov    DWORD PTR [rax+0x4],0x0
  10d7d7:	48 83 c0 04          	add    rax,0x4
  10d7db:	48 39 c8             	cmp    rax,rcx
  10d7de:	72 f0                	jb     10d7d0 <__copybits+0x1e0>
  10d7e0:	5b                   	pop    rbx
  10d7e1:	41 5e                	pop    r14
  10d7e3:	c3                   	ret
  10d7e4:	31 db                	xor    ebx,ebx
  10d7e6:	41 f6 c6 01          	test   r14b,0x1
  10d7ea:	0f 85 d7 fe ff ff    	jne    10d6c7 <__copybits+0xd7>
  10d7f0:	e9 e4 fe ff ff       	jmp    10d6d9 <__copybits+0xe9>
  10d7f5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  10d7fc:	00 00 00 00 

000000000010d800 <__any_on>:
  10d800:	8b 4f 14             	mov    ecx,DWORD PTR [rdi+0x14]
  10d803:	48 83 c7 18          	add    rdi,0x18
  10d807:	89 f2                	mov    edx,esi
  10d809:	c1 fa 05             	sar    edx,0x5
  10d80c:	39 ca                	cmp    edx,ecx
  10d80e:	7f 28                	jg     10d838 <__any_on+0x38>
  10d810:	7d 24                	jge    10d836 <__any_on+0x36>
  10d812:	83 e6 1f             	and    esi,0x1f
  10d815:	74 1f                	je     10d836 <__any_on+0x36>
  10d817:	4c 63 c2             	movsxd r8,edx
  10d81a:	41 b9 ff ff ff ff    	mov    r9d,0xffffffff
  10d820:	89 f1                	mov    ecx,esi
  10d822:	41 d3 e1             	shl    r9d,cl
  10d825:	41 f7 d1             	not    r9d
  10d828:	b8 01 00 00 00       	mov    eax,0x1
  10d82d:	89 d1                	mov    ecx,edx
  10d82f:	46 85 0c 87          	test   DWORD PTR [rdi+r8*4],r9d
  10d833:	74 03                	je     10d838 <__any_on+0x38>
  10d835:	c3                   	ret
  10d836:	89 d1                	mov    ecx,edx
  10d838:	48 63 c1             	movsxd rax,ecx
  10d83b:	48 8d 04 87          	lea    rax,[rdi+rax*4]
  10d83f:	90                   	nop
  10d840:	48 39 f8             	cmp    rax,rdi
  10d843:	76 10                	jbe    10d855 <__any_on+0x55>
  10d845:	83 78 fc 00          	cmp    DWORD PTR [rax-0x4],0x0
  10d849:	48 8d 40 fc          	lea    rax,[rax-0x4]
  10d84d:	74 f1                	je     10d840 <__any_on+0x40>
  10d84f:	b8 01 00 00 00       	mov    eax,0x1
  10d854:	c3                   	ret
  10d855:	31 c0                	xor    eax,eax
  10d857:	c3                   	ret
  10d858:	cc                   	int3
  10d859:	cc                   	int3
  10d85a:	cc                   	int3
  10d85b:	cc                   	int3
  10d85c:	cc                   	int3
  10d85d:	cc                   	int3
  10d85e:	cc                   	int3
  10d85f:	cc                   	int3

000000000010d860 <_calloc_r>:
  10d860:	53                   	push   rbx
  10d861:	48 0f af f2          	imul   rsi,rdx
  10d865:	e8 c6 a6 ff ff       	call   107f30 <_malloc_r>
  10d86a:	48 89 c3             	mov    rbx,rax
  10d86d:	48 85 c0             	test   rax,rax
  10d870:	74 68                	je     10d8da <_calloc_r+0x7a>
  10d872:	48 8b 53 f8          	mov    rdx,QWORD PTR [rbx-0x8]
  10d876:	48 83 c2 f8          	add    rdx,0xfffffffffffffff8
  10d87a:	48 83 e2 fc          	and    rdx,0xfffffffffffffffc
  10d87e:	48 83 fa 48          	cmp    rdx,0x48
  10d882:	77 2f                	ja     10d8b3 <_calloc_r+0x53>
  10d884:	48 89 d8             	mov    rax,rbx
  10d887:	48 83 fa 28          	cmp    rdx,0x28
  10d88b:	72 3f                	jb     10d8cc <_calloc_r+0x6c>
  10d88d:	0f 57 c0             	xorps  xmm0,xmm0
  10d890:	0f 11 03             	movups XMMWORD PTR [rbx],xmm0
  10d893:	48 83 fa 38          	cmp    rdx,0x38
  10d897:	72 26                	jb     10d8bf <_calloc_r+0x5f>
  10d899:	0f 11 43 10          	movups XMMWORD PTR [rbx+0x10],xmm0
  10d89d:	48 89 d8             	mov    rax,rbx
  10d8a0:	48 83 fa 48          	cmp    rdx,0x48
  10d8a4:	72 22                	jb     10d8c8 <_calloc_r+0x68>
  10d8a6:	48 83 c0 30          	add    rax,0x30
  10d8aa:	0f 57 c0             	xorps  xmm0,xmm0
  10d8ad:	0f 11 43 20          	movups XMMWORD PTR [rbx+0x20],xmm0
  10d8b1:	eb 19                	jmp    10d8cc <_calloc_r+0x6c>
  10d8b3:	48 89 df             	mov    rdi,rbx
  10d8b6:	31 f6                	xor    esi,esi
  10d8b8:	e8 23 00 00 00       	call   10d8e0 <memset>
  10d8bd:	eb 1b                	jmp    10d8da <_calloc_r+0x7a>
  10d8bf:	48 89 d8             	mov    rax,rbx
  10d8c2:	48 83 c0 10          	add    rax,0x10
  10d8c6:	eb 04                	jmp    10d8cc <_calloc_r+0x6c>
  10d8c8:	48 83 c0 20          	add    rax,0x20
  10d8cc:	0f 57 c0             	xorps  xmm0,xmm0
  10d8cf:	0f 11 00             	movups XMMWORD PTR [rax],xmm0
  10d8d2:	48 c7 40 10 00 00 00 	mov    QWORD PTR [rax+0x10],0x0
  10d8d9:	00 
  10d8da:	48 89 d8             	mov    rax,rbx
  10d8dd:	5b                   	pop    rbx
  10d8de:	c3                   	ret
  10d8df:	cc                   	int3

000000000010d8e0 <memset>:
  10d8e0:	49 89 f9             	mov    r9,rdi
  10d8e3:	48 89 f0             	mov    rax,rsi
  10d8e6:	48 89 d1             	mov    rcx,rdx
  10d8e9:	48 83 fa 10          	cmp    rdx,0x10
  10d8ed:	0f 82 a8 00 00 00    	jb     10d99b <byte_set>
  10d8f3:	49 89 f8             	mov    r8,rdi
  10d8f6:	49 83 e0 07          	and    r8,0x7
  10d8fa:	74 12                	je     10d90e <quadword_aligned>
  10d8fc:	48 c7 c1 08 00 00 00 	mov    rcx,0x8
  10d903:	4c 29 c1             	sub    rcx,r8
  10d906:	48 29 ca             	sub    rdx,rcx
  10d909:	f3 aa                	rep stos BYTE PTR es:[rdi],al
  10d90b:	48 89 d1             	mov    rcx,rdx

000000000010d90e <quadword_aligned>:
  10d90e:	49 b8 01 01 01 01 01 	movabs r8,0x101010101010101
  10d915:	01 01 01 
  10d918:	40 0f b6 c6          	movzx  eax,sil
  10d91c:	49 0f af c0          	imul   rax,r8
  10d920:	48 81 fa 00 01 00 00 	cmp    rdx,0x100
  10d927:	72 78                	jb     10d9a1 <quadword_set>
  10d929:	48 c1 e9 07          	shr    rcx,0x7
  10d92d:	0f 1f 00             	nop    DWORD PTR [rax]

000000000010d930 <loop>:
  10d930:	48 0f c3 07          	movnti QWORD PTR [rdi],rax
  10d934:	48 0f c3 47 08       	movnti QWORD PTR [rdi+0x8],rax
  10d939:	48 0f c3 47 10       	movnti QWORD PTR [rdi+0x10],rax
  10d93e:	48 0f c3 47 18       	movnti QWORD PTR [rdi+0x18],rax
  10d943:	48 0f c3 47 20       	movnti QWORD PTR [rdi+0x20],rax
  10d948:	48 0f c3 47 28       	movnti QWORD PTR [rdi+0x28],rax
  10d94d:	48 0f c3 47 30       	movnti QWORD PTR [rdi+0x30],rax
  10d952:	48 0f c3 47 38       	movnti QWORD PTR [rdi+0x38],rax
  10d957:	48 0f c3 47 40       	movnti QWORD PTR [rdi+0x40],rax
  10d95c:	48 0f c3 47 48       	movnti QWORD PTR [rdi+0x48],rax
  10d961:	48 0f c3 47 50       	movnti QWORD PTR [rdi+0x50],rax
  10d966:	48 0f c3 47 58       	movnti QWORD PTR [rdi+0x58],rax
  10d96b:	48 0f c3 47 60       	movnti QWORD PTR [rdi+0x60],rax
  10d970:	48 0f c3 47 68       	movnti QWORD PTR [rdi+0x68],rax
  10d975:	48 0f c3 47 70       	movnti QWORD PTR [rdi+0x70],rax
  10d97a:	48 0f c3 47 78       	movnti QWORD PTR [rdi+0x78],rax
  10d97f:	48 8d bf 80 00 00 00 	lea    rdi,[rdi+0x80]
  10d986:	48 ff c9             	dec    rcx
  10d989:	75 a5                	jne    10d930 <loop>
  10d98b:	0f ae f8             	sfence
  10d98e:	48 89 d1             	mov    rcx,rdx
  10d991:	48 83 e1 7f          	and    rcx,0x7f
  10d995:	f3 aa                	rep stos BYTE PTR es:[rdi],al
  10d997:	4c 89 c8             	mov    rax,r9
  10d99a:	c3                   	ret

000000000010d99b <byte_set>:
  10d99b:	f3 aa                	rep stos BYTE PTR es:[rdi],al
  10d99d:	4c 89 c8             	mov    rax,r9
  10d9a0:	c3                   	ret

000000000010d9a1 <quadword_set>:
  10d9a1:	48 c1 e9 03          	shr    rcx,0x3
  10d9a5:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10d9ac:	00 00 00 
  10d9af:	90                   	nop
  10d9b0:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  10d9b3:	48 89 d1             	mov    rcx,rdx
  10d9b6:	48 83 e1 07          	and    rcx,0x7
  10d9ba:	f3 aa                	rep stos BYTE PTR es:[rdi],al
  10d9bc:	4c 89 c8             	mov    rax,r9
  10d9bf:	c3                   	ret

000000000010d9c0 <_sprintf_r>:
  10d9c0:	48 81 ec 88 01 00 00 	sub    rsp,0x188
  10d9c7:	48 89 8c 24 e8 00 00 	mov    QWORD PTR [rsp+0xe8],rcx
  10d9ce:	00 
  10d9cf:	4c 89 84 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],r8
  10d9d6:	00 
  10d9d7:	4c 89 8c 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],r9
  10d9de:	00 
  10d9df:	84 c0                	test   al,al
  10d9e1:	74 40                	je     10da23 <_sprintf_r+0x63>
  10d9e3:	0f 29 84 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm0
  10d9ea:	00 
  10d9eb:	0f 29 8c 24 10 01 00 	movaps XMMWORD PTR [rsp+0x110],xmm1
  10d9f2:	00 
  10d9f3:	0f 29 94 24 20 01 00 	movaps XMMWORD PTR [rsp+0x120],xmm2
  10d9fa:	00 
  10d9fb:	0f 29 9c 24 30 01 00 	movaps XMMWORD PTR [rsp+0x130],xmm3
  10da02:	00 
  10da03:	0f 29 a4 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm4
  10da0a:	00 
  10da0b:	0f 29 ac 24 50 01 00 	movaps XMMWORD PTR [rsp+0x150],xmm5
  10da12:	00 
  10da13:	0f 29 b4 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm6
  10da1a:	00 
  10da1b:	0f 29 bc 24 70 01 00 	movaps XMMWORD PTR [rsp+0x170],xmm7
  10da22:	00 
  10da23:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
  10da28:	48 89 74 24 38       	mov    QWORD PTR [rsp+0x38],rsi
  10da2d:	48 b8 ff ff ff 7f 08 	movabs rax,0xffff02087fffffff
  10da34:	02 ff ff 
  10da37:	48 89 44 24 2c       	mov    QWORD PTR [rsp+0x2c],rax
  10da3c:	c7 44 24 40 ff ff ff 	mov    DWORD PTR [rsp+0x40],0x7fffffff
  10da43:	7f 
  10da44:	48 b8 18 00 00 00 30 	movabs rax,0x3000000018
  10da4b:	00 00 00 
  10da4e:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  10da52:	48 8d 84 24 90 01 00 	lea    rax,[rsp+0x190]
  10da59:	00 
  10da5a:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  10da5f:	48 8d 84 24 d0 00 00 	lea    rax,[rsp+0xd0]
  10da66:	00 
  10da67:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  10da6c:	48 8d 74 24 20       	lea    rsi,[rsp+0x20]
  10da71:	48 89 e1             	mov    rcx,rsp
  10da74:	e8 97 80 ff ff       	call   105b10 <_svfprintf_r>
  10da79:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  10da7e:	c6 01 00             	mov    BYTE PTR [rcx],0x0
  10da81:	48 81 c4 88 01 00 00 	add    rsp,0x188
  10da88:	c3                   	ret
  10da89:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

000000000010da90 <sprintf>:
  10da90:	48 81 ec 88 01 00 00 	sub    rsp,0x188
  10da97:	49 89 f2             	mov    r10,rsi
  10da9a:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
  10da9f:	48 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],rcx
  10daa4:	4c 89 44 24 40       	mov    QWORD PTR [rsp+0x40],r8
  10daa9:	4c 89 4c 24 48       	mov    QWORD PTR [rsp+0x48],r9
  10daae:	84 c0                	test   al,al
  10dab0:	74 37                	je     10dae9 <sprintf+0x59>
  10dab2:	0f 29 44 24 50       	movaps XMMWORD PTR [rsp+0x50],xmm0
  10dab7:	0f 29 4c 24 60       	movaps XMMWORD PTR [rsp+0x60],xmm1
  10dabc:	0f 29 54 24 70       	movaps XMMWORD PTR [rsp+0x70],xmm2
  10dac1:	0f 29 9c 24 80 00 00 	movaps XMMWORD PTR [rsp+0x80],xmm3
  10dac8:	00 
  10dac9:	0f 29 a4 24 90 00 00 	movaps XMMWORD PTR [rsp+0x90],xmm4
  10dad0:	00 
  10dad1:	0f 29 ac 24 a0 00 00 	movaps XMMWORD PTR [rsp+0xa0],xmm5
  10dad8:	00 
  10dad9:	0f 29 b4 24 b0 00 00 	movaps XMMWORD PTR [rsp+0xb0],xmm6
  10dae0:	00 
  10dae1:	0f 29 bc 24 c0 00 00 	movaps XMMWORD PTR [rsp+0xc0],xmm7
  10dae8:	00 
  10dae9:	48 89 bc 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],rdi
  10daf0:	00 
  10daf1:	48 89 bc 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rdi
  10daf8:	00 
  10daf9:	48 b8 ff ff ff 7f 08 	movabs rax,0xffff02087fffffff
  10db00:	02 ff ff 
  10db03:	48 89 84 24 e4 00 00 	mov    QWORD PTR [rsp+0xe4],rax
  10db0a:	00 
  10db0b:	c7 84 24 f8 00 00 00 	mov    DWORD PTR [rsp+0xf8],0x7fffffff
  10db12:	ff ff ff 7f 
  10db16:	48 b8 10 00 00 00 30 	movabs rax,0x3000000010
  10db1d:	00 00 00 
  10db20:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  10db24:	48 8d 84 24 90 01 00 	lea    rax,[rsp+0x190]
  10db2b:	00 
  10db2c:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  10db31:	48 8d 44 24 20       	lea    rax,[rsp+0x20]
  10db36:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  10db3b:	48 8d 05 96 7a 00 00 	lea    rax,[rip+0x7a96]        # 1155d8 <_impure_ptr>
  10db42:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  10db45:	48 8d b4 24 d8 00 00 	lea    rsi,[rsp+0xd8]
  10db4c:	00 
  10db4d:	48 89 e1             	mov    rcx,rsp
  10db50:	4c 89 d2             	mov    rdx,r10
  10db53:	e8 b8 7f ff ff       	call   105b10 <_svfprintf_r>
  10db58:	48 8b 8c 24 d8 00 00 	mov    rcx,QWORD PTR [rsp+0xd8]
  10db5f:	00 
  10db60:	c6 01 00             	mov    BYTE PTR [rcx],0x0
  10db63:	48 81 c4 88 01 00 00 	add    rsp,0x188
  10db6a:	c3                   	ret
  10db6b:	cc                   	int3
  10db6c:	cc                   	int3
  10db6d:	cc                   	int3
  10db6e:	cc                   	int3
  10db6f:	cc                   	int3

000000000010db70 <IoOut32>:
  10db70:	66 89 fa             	mov    dx,di
  10db73:	89 f0                	mov    eax,esi
  10db75:	ef                   	out    dx,eax
  10db76:	c3                   	ret

000000000010db77 <IoIn32>:
  10db77:	66 89 fa             	mov    dx,di
  10db7a:	ed                   	in     eax,dx
  10db7b:	c3                   	ret

000000000010db7c <IoIn16>:
  10db7c:	66 89 fa             	mov    dx,di
  10db7f:	66 ed                	in     ax,dx
  10db81:	c3                   	ret

000000000010db82 <IoOut8>:
  10db82:	66 89 fa             	mov    dx,di
  10db85:	40 88 f0             	mov    al,sil
  10db88:	ee                   	out    dx,al
  10db89:	c3                   	ret

000000000010db8a <IoIn8>:
  10db8a:	66 89 fa             	mov    dx,di
  10db8d:	ec                   	in     al,dx
  10db8e:	c3                   	ret

000000000010db8f <call_kernel_main>:
  10db8f:	48 8d a2 00 00 10 00 	lea    rsp,[rdx+0x100000]
  10db96:	48 8d aa 00 00 10 00 	lea    rbp,[rdx+0x100000]
  10db9d:	ff d6                	call   rsi

000000000010db9f <_hlt>:
  10db9f:	f4                   	hlt
  10dba0:	eb fd                	jmp    10db9f <_hlt>

000000000010dba2 <LoadGDT>:
  10dba2:	55                   	push   rbp
  10dba3:	48 89 e5             	mov    rbp,rsp
  10dba6:	48 83 ec 0a          	sub    rsp,0xa
  10dbaa:	66 89 3c 24          	mov    WORD PTR [rsp],di
  10dbae:	48 89 74 24 02       	mov    QWORD PTR [rsp+0x2],rsi
  10dbb3:	0f 01 14 24          	lgdt   [rsp]
  10dbb7:	48 89 ec             	mov    rsp,rbp
  10dbba:	5d                   	pop    rbp
  10dbbb:	c3                   	ret

000000000010dbbc <SetDSAll>:
  10dbbc:	8e df                	mov    ds,edi
  10dbbe:	8e c7                	mov    es,edi
  10dbc0:	8e e7                	mov    fs,edi
  10dbc2:	8e ef                	mov    gs,edi
  10dbc4:	c3                   	ret

000000000010dbc5 <SetCSSS>:
  10dbc5:	55                   	push   rbp
  10dbc6:	48 89 e5             	mov    rbp,rsp
  10dbc9:	8e d6                	mov    ss,esi
  10dbcb:	48 b8 d9 db 10 00 00 	movabs rax,0x10dbd9
  10dbd2:	00 00 00 
  10dbd5:	57                   	push   rdi
  10dbd6:	50                   	push   rax
  10dbd7:	48 cb                	retfq

000000000010dbd9 <SetCSSS.next>:
  10dbd9:	48 89 ec             	mov    rsp,rbp
  10dbdc:	5d                   	pop    rbp
  10dbdd:	c3                   	ret

000000000010dbde <SetCSSS.stop>:
  10dbde:	f4                   	hlt
  10dbdf:	eb fd                	jmp    10dbde <SetCSSS.stop>

000000000010dbe1 <GetCS>:
  10dbe1:	31 c0                	xor    eax,eax
  10dbe3:	66 8c c8             	mov    ax,cs
  10dbe6:	c3                   	ret

000000000010dbe7 <LoadIDT>:
  10dbe7:	55                   	push   rbp
  10dbe8:	48 89 e5             	mov    rbp,rsp
  10dbeb:	48 83 ec 0a          	sub    rsp,0xa
  10dbef:	66 89 3c 24          	mov    WORD PTR [rsp],di
  10dbf3:	48 89 74 24 02       	mov    QWORD PTR [rsp+0x2],rsi
  10dbf8:	0f 01 1c 24          	lidt   [rsp]
  10dbfc:	48 89 ec             	mov    rsp,rbp
  10dbff:	5d                   	pop    rbp
  10dc00:	c3                   	ret

000000000010dc01 <SetCR3>:
  10dc01:	0f 22 df             	mov    cr3,rdi
  10dc04:	c3                   	ret

000000000010dc05 <NotifyEndOfInterrupt>:
  10dc05:	b8 b0 00 e0 fe       	mov    eax,0xfee000b0
  10dc0a:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
  10dc11:	fb                   	sti
  10dc12:	c3                   	ret

000000000010dc13 <rdtsc>:
  10dc13:	55                   	push   rbp
  10dc14:	48 89 e5             	mov    rbp,rsp
  10dc17:	b8 00 00 00 00       	mov    eax,0x0
  10dc1c:	ba 00 00 00 00       	mov    edx,0x0
  10dc21:	0f a2                	cpuid
  10dc23:	0f 31                	rdtsc
  10dc25:	48 c1 e2 20          	shl    rdx,0x20
  10dc29:	48 01 d0             	add    rax,rdx
  10dc2c:	48 89 ec             	mov    rsp,rbp
  10dc2f:	5d                   	pop    rbp
  10dc30:	c3                   	ret
  10dc31:	cc                   	int3
  10dc32:	cc                   	int3
  10dc33:	cc                   	int3
  10dc34:	cc                   	int3
  10dc35:	cc                   	int3
  10dc36:	cc                   	int3
  10dc37:	cc                   	int3
  10dc38:	cc                   	int3
  10dc39:	cc                   	int3
  10dc3a:	cc                   	int3
  10dc3b:	cc                   	int3
  10dc3c:	cc                   	int3
  10dc3d:	cc                   	int3
  10dc3e:	cc                   	int3
  10dc3f:	cc                   	int3

000000000010dc40 <_Z8MakeAddrhhhh>:
  10dc40:	55                   	push   rbp
  10dc41:	48 89 e5             	mov    rbp,rsp
  10dc44:	48 83 ec 04          	sub    rsp,0x4
  10dc48:	88 c8                	mov    al,cl
  10dc4a:	88 d1                	mov    cl,dl
  10dc4c:	40 88 f2             	mov    dl,sil
  10dc4f:	40 88 fe             	mov    sil,dil
  10dc52:	40 88 75 ff          	mov    BYTE PTR [rbp-0x1],sil
  10dc56:	88 55 fe             	mov    BYTE PTR [rbp-0x2],dl
  10dc59:	88 4d fd             	mov    BYTE PTR [rbp-0x3],cl
  10dc5c:	88 45 fc             	mov    BYTE PTR [rbp-0x4],al
  10dc5f:	0f b6 45 ff          	movzx  eax,BYTE PTR [rbp-0x1]
  10dc63:	c1 e0 10             	shl    eax,0x10
  10dc66:	0d 00 00 00 80       	or     eax,0x80000000
  10dc6b:	0f b6 4d fe          	movzx  ecx,BYTE PTR [rbp-0x2]
  10dc6f:	c1 e1 0b             	shl    ecx,0xb
  10dc72:	09 c8                	or     eax,ecx
  10dc74:	0f b6 4d fd          	movzx  ecx,BYTE PTR [rbp-0x3]
  10dc78:	c1 e1 08             	shl    ecx,0x8
  10dc7b:	09 c8                	or     eax,ecx
  10dc7d:	0f b6 4d fc          	movzx  ecx,BYTE PTR [rbp-0x4]
  10dc81:	81 e1 fc 00 00 00    	and    ecx,0xfc
  10dc87:	09 c8                	or     eax,ecx
  10dc89:	48 83 c4 04          	add    rsp,0x4
  10dc8d:	5d                   	pop    rbp
  10dc8e:	c3                   	ret
  10dc8f:	90                   	nop

000000000010dc90 <_Z9WriteAddrj>:
  10dc90:	55                   	push   rbp
  10dc91:	48 89 e5             	mov    rbp,rsp
  10dc94:	48 83 ec 10          	sub    rsp,0x10
  10dc98:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  10dc9b:	8b 75 fc             	mov    esi,DWORD PTR [rbp-0x4]
  10dc9e:	bf f8 0c 00 00       	mov    edi,0xcf8
  10dca3:	e8 c8 fe ff ff       	call   10db70 <IoOut32>
  10dca8:	48 83 c4 10          	add    rsp,0x10
  10dcac:	5d                   	pop    rbp
  10dcad:	c3                   	ret
  10dcae:	66 90                	xchg   ax,ax

000000000010dcb0 <_Z9WriteDataj>:
  10dcb0:	55                   	push   rbp
  10dcb1:	48 89 e5             	mov    rbp,rsp
  10dcb4:	48 83 ec 10          	sub    rsp,0x10
  10dcb8:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  10dcbb:	8b 75 fc             	mov    esi,DWORD PTR [rbp-0x4]
  10dcbe:	bf fc 0c 00 00       	mov    edi,0xcfc
  10dcc3:	e8 a8 fe ff ff       	call   10db70 <IoOut32>
  10dcc8:	48 83 c4 10          	add    rsp,0x10
  10dccc:	5d                   	pop    rbp
  10dccd:	c3                   	ret
  10dcce:	66 90                	xchg   ax,ax

000000000010dcd0 <_Z8ReadDatav>:
  10dcd0:	55                   	push   rbp
  10dcd1:	48 89 e5             	mov    rbp,rsp
  10dcd4:	bf fc 0c 00 00       	mov    edi,0xcfc
  10dcd9:	e8 99 fe ff ff       	call   10db77 <IoIn32>
  10dcde:	5d                   	pop    rbp
  10dcdf:	c3                   	ret

000000000010dce0 <_Z12ReadVendorIdhhh>:
  10dce0:	55                   	push   rbp
  10dce1:	48 89 e5             	mov    rbp,rsp
  10dce4:	48 83 ec 10          	sub    rsp,0x10
  10dce8:	88 d0                	mov    al,dl
  10dcea:	40 88 f1             	mov    cl,sil
  10dced:	40 88 fa             	mov    dl,dil
  10dcf0:	88 55 ff             	mov    BYTE PTR [rbp-0x1],dl
  10dcf3:	88 4d fe             	mov    BYTE PTR [rbp-0x2],cl
  10dcf6:	88 45 fd             	mov    BYTE PTR [rbp-0x3],al
  10dcf9:	8a 55 ff             	mov    dl,BYTE PTR [rbp-0x1]
  10dcfc:	8a 45 fe             	mov    al,BYTE PTR [rbp-0x2]
  10dcff:	31 c9                	xor    ecx,ecx
  10dd01:	0f b6 fa             	movzx  edi,dl
  10dd04:	0f b6 f0             	movzx  esi,al
  10dd07:	0f b6 55 fd          	movzx  edx,BYTE PTR [rbp-0x3]
  10dd0b:	e8 30 ff ff ff       	call   10dc40 <_Z8MakeAddrhhhh>
  10dd10:	89 c7                	mov    edi,eax
  10dd12:	e8 79 ff ff ff       	call   10dc90 <_Z9WriteAddrj>
  10dd17:	e8 b4 ff ff ff       	call   10dcd0 <_Z8ReadDatav>
  10dd1c:	25 ff ff 00 00       	and    eax,0xffff
  10dd21:	0f b7 c0             	movzx  eax,ax
  10dd24:	48 83 c4 10          	add    rsp,0x10
  10dd28:	5d                   	pop    rbp
  10dd29:	c3                   	ret
  10dd2a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

000000000010dd30 <_Z12ReadVendorId6Device>:
  10dd30:	55                   	push   rbp
  10dd31:	48 89 e5             	mov    rbp,rsp
  10dd34:	48 83 ec 10          	sub    rsp,0x10
  10dd38:	48 89 f8             	mov    rax,rdi
  10dd3b:	48 c1 e8 30          	shr    rax,0x30
  10dd3f:	88 45 f6             	mov    BYTE PTR [rbp-0xa],al
  10dd42:	48 89 f8             	mov    rax,rdi
  10dd45:	48 c1 e8 20          	shr    rax,0x20
  10dd49:	66 89 45 f4          	mov    WORD PTR [rbp-0xc],ax
  10dd4d:	89 f8                	mov    eax,edi
  10dd4f:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
  10dd52:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  10dd55:	89 45 f8             	mov    DWORD PTR [rbp-0x8],eax
  10dd58:	66 8b 45 f4          	mov    ax,WORD PTR [rbp-0xc]
  10dd5c:	66 89 45 fc          	mov    WORD PTR [rbp-0x4],ax
  10dd60:	8a 45 f6             	mov    al,BYTE PTR [rbp-0xa]
  10dd63:	88 45 fe             	mov    BYTE PTR [rbp-0x2],al
  10dd66:	8a 55 f8             	mov    dl,BYTE PTR [rbp-0x8]
  10dd69:	8a 45 f9             	mov    al,BYTE PTR [rbp-0x7]
  10dd6c:	31 c9                	xor    ecx,ecx
  10dd6e:	0f b6 fa             	movzx  edi,dl
  10dd71:	0f b6 f0             	movzx  esi,al
  10dd74:	0f b6 55 fa          	movzx  edx,BYTE PTR [rbp-0x6]
  10dd78:	e8 c3 fe ff ff       	call   10dc40 <_Z8MakeAddrhhhh>
  10dd7d:	89 c7                	mov    edi,eax
  10dd7f:	e8 0c ff ff ff       	call   10dc90 <_Z9WriteAddrj>
  10dd84:	e8 47 ff ff ff       	call   10dcd0 <_Z8ReadDatav>
  10dd89:	25 ff ff 00 00       	and    eax,0xffff
  10dd8e:	0f b7 c0             	movzx  eax,ax
  10dd91:	48 83 c4 10          	add    rsp,0x10
  10dd95:	5d                   	pop    rbp
  10dd96:	c3                   	ret
  10dd97:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  10dd9e:	00 00 

000000000010dda0 <_Z14ReadHeaderTypehhh>:
  10dda0:	55                   	push   rbp
  10dda1:	48 89 e5             	mov    rbp,rsp
  10dda4:	48 83 ec 10          	sub    rsp,0x10
  10dda8:	88 d0                	mov    al,dl
  10ddaa:	40 88 f1             	mov    cl,sil
  10ddad:	40 88 fa             	mov    dl,dil
  10ddb0:	88 55 ff             	mov    BYTE PTR [rbp-0x1],dl
  10ddb3:	88 4d fe             	mov    BYTE PTR [rbp-0x2],cl
  10ddb6:	88 45 fd             	mov    BYTE PTR [rbp-0x3],al
  10ddb9:	8a 55 ff             	mov    dl,BYTE PTR [rbp-0x1]
  10ddbc:	8a 45 fe             	mov    al,BYTE PTR [rbp-0x2]
  10ddbf:	b9 0c 00 00 00       	mov    ecx,0xc
  10ddc4:	0f b6 fa             	movzx  edi,dl
  10ddc7:	0f b6 f0             	movzx  esi,al
  10ddca:	0f b6 55 fd          	movzx  edx,BYTE PTR [rbp-0x3]
  10ddce:	e8 6d fe ff ff       	call   10dc40 <_Z8MakeAddrhhhh>
  10ddd3:	89 c7                	mov    edi,eax
  10ddd5:	e8 b6 fe ff ff       	call   10dc90 <_Z9WriteAddrj>
  10ddda:	e8 f1 fe ff ff       	call   10dcd0 <_Z8ReadDatav>
  10dddf:	c1 e8 10             	shr    eax,0x10
  10dde2:	25 ff 00 00 00       	and    eax,0xff
  10dde7:	0f b6 c0             	movzx  eax,al
  10ddea:	48 83 c4 10          	add    rsp,0x10
  10ddee:	5d                   	pop    rbp
  10ddef:	c3                   	ret

000000000010ddf0 <_Z7ReadBar6Devicei>:
  10ddf0:	55                   	push   rbp
  10ddf1:	48 89 e5             	mov    rbp,rsp
  10ddf4:	48 83 ec 20          	sub    rsp,0x20
  10ddf8:	48 89 f8             	mov    rax,rdi
  10ddfb:	48 c1 e8 30          	shr    rax,0x30
  10ddff:	88 45 f6             	mov    BYTE PTR [rbp-0xa],al
  10de02:	48 89 f8             	mov    rax,rdi
  10de05:	48 c1 e8 20          	shr    rax,0x20
  10de09:	66 89 45 f4          	mov    WORD PTR [rbp-0xc],ax
  10de0d:	89 f8                	mov    eax,edi
  10de0f:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
  10de12:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  10de15:	89 45 f8             	mov    DWORD PTR [rbp-0x8],eax
  10de18:	66 8b 45 f4          	mov    ax,WORD PTR [rbp-0xc]
  10de1c:	66 89 45 fc          	mov    WORD PTR [rbp-0x4],ax
  10de20:	8a 45 f6             	mov    al,BYTE PTR [rbp-0xa]
  10de23:	88 45 fe             	mov    BYTE PTR [rbp-0x2],al
  10de26:	89 75 ec             	mov    DWORD PTR [rbp-0x14],esi
  10de29:	40 8a 75 f8          	mov    sil,BYTE PTR [rbp-0x8]
  10de2d:	8a 55 f9             	mov    dl,BYTE PTR [rbp-0x7]
  10de30:	8a 4d fa             	mov    cl,BYTE PTR [rbp-0x6]
  10de33:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  10de36:	c1 e0 02             	shl    eax,0x2
  10de39:	83 c0 10             	add    eax,0x10
  10de3c:	40 0f b6 fe          	movzx  edi,sil
  10de40:	0f b6 f2             	movzx  esi,dl
  10de43:	0f b6 d1             	movzx  edx,cl
  10de46:	0f b6 c8             	movzx  ecx,al
  10de49:	e8 f2 fd ff ff       	call   10dc40 <_Z8MakeAddrhhhh>
  10de4e:	89 c7                	mov    edi,eax
  10de50:	e8 3b fe ff ff       	call   10dc90 <_Z9WriteAddrj>
  10de55:	e8 76 fe ff ff       	call   10dcd0 <_Z8ReadDatav>
  10de5a:	48 83 c4 20          	add    rsp,0x20
  10de5e:	5d                   	pop    rbp
  10de5f:	c3                   	ret

000000000010de60 <_Z13ReadClassCodehhh>:
  10de60:	55                   	push   rbp
  10de61:	48 89 e5             	mov    rbp,rsp
  10de64:	48 83 ec 20          	sub    rsp,0x20
  10de68:	88 d0                	mov    al,dl
  10de6a:	40 88 f1             	mov    cl,sil
  10de6d:	40 88 fa             	mov    dl,dil
  10de70:	88 55 f7             	mov    BYTE PTR [rbp-0x9],dl
  10de73:	88 4d f6             	mov    BYTE PTR [rbp-0xa],cl
  10de76:	88 45 f5             	mov    BYTE PTR [rbp-0xb],al
  10de79:	0f b6 7d f7          	movzx  edi,BYTE PTR [rbp-0x9]
  10de7d:	0f b6 75 f6          	movzx  esi,BYTE PTR [rbp-0xa]
  10de81:	0f b6 55 f5          	movzx  edx,BYTE PTR [rbp-0xb]
  10de85:	b9 08 00 00 00       	mov    ecx,0x8
  10de8a:	e8 b1 fd ff ff       	call   10dc40 <_Z8MakeAddrhhhh>
  10de8f:	89 c7                	mov    edi,eax
  10de91:	e8 fa fd ff ff       	call   10dc90 <_Z9WriteAddrj>
  10de96:	e8 35 fe ff ff       	call   10dcd0 <_Z8ReadDatav>
  10de9b:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
  10de9e:	8a 45 f3             	mov    al,BYTE PTR [rbp-0xd]
  10dea1:	88 45 f8             	mov    BYTE PTR [rbp-0x8],al
  10dea4:	8a 45 f2             	mov    al,BYTE PTR [rbp-0xe]
  10dea7:	88 45 f9             	mov    BYTE PTR [rbp-0x7],al
  10deaa:	8a 45 f1             	mov    al,BYTE PTR [rbp-0xf]
  10dead:	88 45 fa             	mov    BYTE PTR [rbp-0x6],al
  10deb0:	8a 45 fa             	mov    al,BYTE PTR [rbp-0x6]
  10deb3:	88 45 ee             	mov    BYTE PTR [rbp-0x12],al
  10deb6:	66 8b 45 f8          	mov    ax,WORD PTR [rbp-0x8]
  10deba:	66 89 45 ec          	mov    WORD PTR [rbp-0x14],ax
  10debe:	0f b6 4d ee          	movzx  ecx,BYTE PTR [rbp-0x12]
  10dec2:	c1 e1 10             	shl    ecx,0x10
  10dec5:	0f b7 45 ec          	movzx  eax,WORD PTR [rbp-0x14]
  10dec9:	09 c8                	or     eax,ecx
  10decb:	48 83 c4 20          	add    rsp,0x20
  10decf:	5d                   	pop    rbp
  10ded0:	c3                   	ret
  10ded1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10ded8:	0f 1f 84 00 00 00 00 
  10dedf:	00 

000000000010dee0 <_Z14ReadBusNumbershhh>:
  10dee0:	55                   	push   rbp
  10dee1:	48 89 e5             	mov    rbp,rsp
  10dee4:	48 83 ec 10          	sub    rsp,0x10
  10dee8:	88 d0                	mov    al,dl
  10deea:	40 88 f1             	mov    cl,sil
  10deed:	40 88 fa             	mov    dl,dil
  10def0:	88 55 ff             	mov    BYTE PTR [rbp-0x1],dl
  10def3:	88 4d fe             	mov    BYTE PTR [rbp-0x2],cl
  10def6:	88 45 fd             	mov    BYTE PTR [rbp-0x3],al
  10def9:	8a 55 ff             	mov    dl,BYTE PTR [rbp-0x1]
  10defc:	8a 45 fe             	mov    al,BYTE PTR [rbp-0x2]
  10deff:	b9 18 00 00 00       	mov    ecx,0x18
  10df04:	0f b6 fa             	movzx  edi,dl
  10df07:	0f b6 f0             	movzx  esi,al
  10df0a:	0f b6 55 fd          	movzx  edx,BYTE PTR [rbp-0x3]
  10df0e:	e8 2d fd ff ff       	call   10dc40 <_Z8MakeAddrhhhh>
  10df13:	89 c7                	mov    edi,eax
  10df15:	e8 76 fd ff ff       	call   10dc90 <_Z9WriteAddrj>
  10df1a:	e8 b1 fd ff ff       	call   10dcd0 <_Z8ReadDatav>
  10df1f:	48 83 c4 10          	add    rsp,0x10
  10df23:	5d                   	pop    rbp
  10df24:	c3                   	ret
  10df25:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  10df2c:	00 00 00 00 

000000000010df30 <_Z9AddDevicehhhh>:
  10df30:	55                   	push   rbp
  10df31:	48 89 e5             	mov    rbp,rsp
  10df34:	48 83 ec 10          	sub    rsp,0x10
  10df38:	88 c8                	mov    al,cl
  10df3a:	88 d1                	mov    cl,dl
  10df3c:	40 88 f2             	mov    dl,sil
  10df3f:	40 88 fe             	mov    sil,dil
  10df42:	40 88 75 fb          	mov    BYTE PTR [rbp-0x5],sil
  10df46:	88 55 fa             	mov    BYTE PTR [rbp-0x6],dl
  10df49:	88 4d f9             	mov    BYTE PTR [rbp-0x7],cl
  10df4c:	88 45 f8             	mov    BYTE PTR [rbp-0x8],al
  10df4f:	83 3d 5a eb 50 00 20 	cmp    DWORD PTR [rip+0x50eb5a],0x20        # 61cab0 <num_device>
  10df56:	0f 85 18 00 00 00    	jne    10df74 <_Z9AddDevicehhhh+0x44>
  10df5c:	48 8d 3d 0d 22 ff ff 	lea    rdi,[rip+0xffffffffffff220d]        # 100170 <_svfprintf_r.blanks-0x970>
  10df63:	e8 a8 6f ff ff       	call   104f10 <Print>
  10df68:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [rbp-0x4],0x1
  10df6f:	e9 62 00 00 00       	jmp    10dfd6 <_Z9AddDevicehhhh+0xa6>
  10df74:	8a 45 fb             	mov    al,BYTE PTR [rbp-0x5]
  10df77:	88 45 f0             	mov    BYTE PTR [rbp-0x10],al
  10df7a:	8a 45 fa             	mov    al,BYTE PTR [rbp-0x6]
  10df7d:	88 45 f1             	mov    BYTE PTR [rbp-0xf],al
  10df80:	8a 45 f9             	mov    al,BYTE PTR [rbp-0x7]
  10df83:	88 45 f2             	mov    BYTE PTR [rbp-0xe],al
  10df86:	8a 45 f8             	mov    al,BYTE PTR [rbp-0x8]
  10df89:	88 45 f3             	mov    BYTE PTR [rbp-0xd],al
  10df8c:	c6 45 f4 00          	mov    BYTE PTR [rbp-0xc],0x0
  10df90:	c6 45 f5 00          	mov    BYTE PTR [rbp-0xb],0x0
  10df94:	c6 45 f6 00          	mov    BYTE PTR [rbp-0xa],0x0
  10df98:	48 63 0d 11 eb 50 00 	movsxd rcx,DWORD PTR [rip+0x50eb11]        # 61cab0 <num_device>
  10df9f:	48 8d 05 1a eb 50 00 	lea    rax,[rip+0x50eb1a]        # 61cac0 <devices>
  10dfa6:	48 6b c9 07          	imul   rcx,rcx,0x7
  10dfaa:	48 01 c8             	add    rax,rcx
  10dfad:	8b 4d f0             	mov    ecx,DWORD PTR [rbp-0x10]
  10dfb0:	89 08                	mov    DWORD PTR [rax],ecx
  10dfb2:	66 8b 4d f4          	mov    cx,WORD PTR [rbp-0xc]
  10dfb6:	66 89 48 04          	mov    WORD PTR [rax+0x4],cx
  10dfba:	8a 4d f6             	mov    cl,BYTE PTR [rbp-0xa]
  10dfbd:	88 48 06             	mov    BYTE PTR [rax+0x6],cl
  10dfc0:	8b 05 ea ea 50 00    	mov    eax,DWORD PTR [rip+0x50eaea]        # 61cab0 <num_device>
  10dfc6:	83 c0 01             	add    eax,0x1
  10dfc9:	89 05 e1 ea 50 00    	mov    DWORD PTR [rip+0x50eae1],eax        # 61cab0 <num_device>
  10dfcf:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  10dfd6:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  10dfd9:	48 83 c4 10          	add    rsp,0x10
  10dfdd:	5d                   	pop    rbp
  10dfde:	c3                   	ret
  10dfdf:	90                   	nop

000000000010dfe0 <_Z22IsSingleFunctionDeviceh>:
  10dfe0:	55                   	push   rbp
  10dfe1:	48 89 e5             	mov    rbp,rsp
  10dfe4:	48 83 ec 01          	sub    rsp,0x1
  10dfe8:	40 88 f8             	mov    al,dil
  10dfeb:	88 45 ff             	mov    BYTE PTR [rbp-0x1],al
  10dfee:	0f b6 45 ff          	movzx  eax,BYTE PTR [rbp-0x1]
  10dff2:	25 80 00 00 00       	and    eax,0x80
  10dff7:	83 f8 00             	cmp    eax,0x0
  10dffa:	0f 94 c0             	sete   al
  10dffd:	24 01                	and    al,0x1
  10dfff:	0f b6 c0             	movzx  eax,al
  10e002:	48 83 c4 01          	add    rsp,0x1
  10e006:	5d                   	pop    rbp
  10e007:	c3                   	ret
  10e008:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  10e00f:	00 

000000000010e010 <_Z10ScanAllBusv>:
  10e010:	55                   	push   rbp
  10e011:	48 89 e5             	mov    rbp,rsp
  10e014:	48 81 ec 80 00 00 00 	sub    rsp,0x80
  10e01b:	c7 05 8b ea 50 00 00 	mov    DWORD PTR [rip+0x50ea8b],0x0        # 61cab0 <num_device>
  10e022:	00 00 00 
  10e025:	31 d2                	xor    edx,edx
  10e027:	89 d7                	mov    edi,edx
  10e029:	89 d6                	mov    esi,edx
  10e02b:	e8 70 fd ff ff       	call   10dda0 <_Z14ReadHeaderTypehhh>
  10e030:	88 45 8f             	mov    BYTE PTR [rbp-0x71],al
  10e033:	0f b6 7d 8f          	movzx  edi,BYTE PTR [rbp-0x71]
  10e037:	e8 a4 ff ff ff       	call   10dfe0 <_Z22IsSingleFunctionDeviceh>
  10e03c:	83 f8 00             	cmp    eax,0x0
  10e03f:	0f 84 34 00 00 00    	je     10e079 <_Z10ScanAllBusv+0x69>
  10e045:	48 8d 3d 59 21 ff ff 	lea    rdi,[rip+0xffffffffffff2159]        # 1001a5 <_svfprintf_r.blanks-0x93b>
  10e04c:	e8 bf 6e ff ff       	call   104f10 <Print>
  10e051:	31 d2                	xor    edx,edx
  10e053:	89 d7                	mov    edi,edx
  10e055:	89 d6                	mov    esi,edx
  10e057:	e8 44 fd ff ff       	call   10dda0 <_Z14ReadHeaderTypehhh>
  10e05c:	31 d2                	xor    edx,edx
  10e05e:	89 d7                	mov    edi,edx
  10e060:	89 d6                	mov    esi,edx
  10e062:	0f b6 c8             	movzx  ecx,al
  10e065:	e8 c6 fe ff ff       	call   10df30 <_Z9AddDevicehhhh>
  10e06a:	31 ff                	xor    edi,edi
  10e06c:	e8 df 00 00 00       	call   10e150 <_Z7ScanBush>
  10e071:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  10e074:	e9 ca 00 00 00       	jmp    10e143 <_Z10ScanAllBusv+0x133>
  10e079:	48 8d 3d 76 27 ff ff 	lea    rdi,[rip+0xffffffffffff2776]        # 1007f6 <_svfprintf_r.blanks-0x2ea>
  10e080:	e8 8b 6e ff ff       	call   104f10 <Print>
  10e085:	31 d2                	xor    edx,edx
  10e087:	89 d7                	mov    edi,edx
  10e089:	89 d6                	mov    esi,edx
  10e08b:	e8 10 fd ff ff       	call   10dda0 <_Z14ReadHeaderTypehhh>
  10e090:	31 d2                	xor    edx,edx
  10e092:	89 d7                	mov    edi,edx
  10e094:	89 d6                	mov    esi,edx
  10e096:	0f b6 c8             	movzx  ecx,al
  10e099:	e8 92 fe ff ff       	call   10df30 <_Z9AddDevicehhhh>
  10e09e:	c6 45 8e 01          	mov    BYTE PTR [rbp-0x72],0x1
  10e0a2:	0f b6 45 8e          	movzx  eax,BYTE PTR [rbp-0x72]
  10e0a6:	83 f8 08             	cmp    eax,0x8
  10e0a9:	0f 8d 8d 00 00 00    	jge    10e13c <_Z10ScanAllBusv+0x12c>
  10e0af:	31 f6                	xor    esi,esi
  10e0b1:	89 f7                	mov    edi,esi
  10e0b3:	0f b6 55 8e          	movzx  edx,BYTE PTR [rbp-0x72]
  10e0b7:	e8 24 fc ff ff       	call   10dce0 <_Z12ReadVendorIdhhh>
  10e0bc:	0f b7 c0             	movzx  eax,ax
  10e0bf:	3d ff ff 00 00       	cmp    eax,0xffff
  10e0c4:	0f 85 24 00 00 00    	jne    10e0ee <_Z10ScanAllBusv+0xde>
  10e0ca:	0f b6 75 8e          	movzx  esi,BYTE PTR [rbp-0x72]
  10e0ce:	48 8d 3d e5 20 ff ff 	lea    rdi,[rip+0xffffffffffff20e5]        # 1001ba <_svfprintf_r.blanks-0x926>
  10e0d5:	e8 56 73 ff ff       	call   105430 <_Z6dPrintPci>
  10e0da:	8b 05 d4 e9 50 00    	mov    eax,DWORD PTR [rip+0x50e9d4]        # 61cab4 <invdev>
  10e0e0:	83 c0 01             	add    eax,0x1
  10e0e3:	89 05 cb e9 50 00    	mov    DWORD PTR [rip+0x50e9cb],eax        # 61cab4 <invdev>
  10e0e9:	e9 41 00 00 00       	jmp    10e12f <_Z10ScanAllBusv+0x11f>
  10e0ee:	0f b6 75 8e          	movzx  esi,BYTE PTR [rbp-0x72]
  10e0f2:	48 8d 3d 7a 23 ff ff 	lea    rdi,[rip+0xffffffffffff237a]        # 100473 <_svfprintf_r.blanks-0x66d>
  10e0f9:	e8 32 73 ff ff       	call   105430 <_Z6dPrintPci>
  10e0fe:	0f b6 7d 8e          	movzx  edi,BYTE PTR [rbp-0x72]
  10e102:	e8 49 00 00 00       	call   10e150 <_Z7ScanBush>
  10e107:	89 45 88             	mov    DWORD PTR [rbp-0x78],eax
  10e10a:	83 7d 88 00          	cmp    DWORD PTR [rbp-0x78],0x0
  10e10e:	0f 84 0b 00 00 00    	je     10e11f <_Z10ScanAllBusv+0x10f>
  10e114:	8b 45 88             	mov    eax,DWORD PTR [rbp-0x78]
  10e117:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  10e11a:	e9 24 00 00 00       	jmp    10e143 <_Z10ScanAllBusv+0x133>
  10e11f:	0f b6 75 8e          	movzx  esi,BYTE PTR [rbp-0x72]
  10e123:	48 8d 3d c9 24 ff ff 	lea    rdi,[rip+0xffffffffffff24c9]        # 1005f3 <_svfprintf_r.blanks-0x4ed>
  10e12a:	e8 01 73 ff ff       	call   105430 <_Z6dPrintPci>
  10e12f:	8a 45 8e             	mov    al,BYTE PTR [rbp-0x72]
  10e132:	04 01                	add    al,0x1
  10e134:	88 45 8e             	mov    BYTE PTR [rbp-0x72],al
  10e137:	e9 66 ff ff ff       	jmp    10e0a2 <_Z10ScanAllBusv+0x92>
  10e13c:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  10e143:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  10e146:	48 81 c4 80 00 00 00 	add    rsp,0x80
  10e14d:	5d                   	pop    rbp
  10e14e:	c3                   	ret
  10e14f:	90                   	nop

000000000010e150 <_Z7ScanBush>:
  10e150:	55                   	push   rbp
  10e151:	48 89 e5             	mov    rbp,rsp
  10e154:	48 83 ec 10          	sub    rsp,0x10
  10e158:	40 88 f8             	mov    al,dil
  10e15b:	88 45 fb             	mov    BYTE PTR [rbp-0x5],al
  10e15e:	c6 45 fa 00          	mov    BYTE PTR [rbp-0x6],0x0
  10e162:	0f b6 45 fa          	movzx  eax,BYTE PTR [rbp-0x6]
  10e166:	83 f8 20             	cmp    eax,0x20
  10e169:	0f 8d 88 00 00 00    	jge    10e1f7 <_Z7ScanBush+0xa7>
  10e16f:	8a 45 fb             	mov    al,BYTE PTR [rbp-0x5]
  10e172:	31 d2                	xor    edx,edx
  10e174:	0f b6 f8             	movzx  edi,al
  10e177:	0f b6 75 fa          	movzx  esi,BYTE PTR [rbp-0x6]
  10e17b:	e8 60 fb ff ff       	call   10dce0 <_Z12ReadVendorIdhhh>
  10e180:	0f b7 c0             	movzx  eax,ax
  10e183:	3d ff ff 00 00       	cmp    eax,0xffff
  10e188:	0f 85 15 00 00 00    	jne    10e1a3 <_Z7ScanBush+0x53>
  10e18e:	0f b6 75 fa          	movzx  esi,BYTE PTR [rbp-0x6]
  10e192:	48 8d 3d f5 22 ff ff 	lea    rdi,[rip+0xffffffffffff22f5]        # 10048e <_svfprintf_r.blanks-0x652>
  10e199:	e8 92 72 ff ff       	call   105430 <_Z6dPrintPci>
  10e19e:	e9 47 00 00 00       	jmp    10e1ea <_Z7ScanBush+0x9a>
  10e1a3:	0f b6 75 fa          	movzx  esi,BYTE PTR [rbp-0x6]
  10e1a7:	48 8d 3d e2 1f ff ff 	lea    rdi,[rip+0xffffffffffff1fe2]        # 100190 <_svfprintf_r.blanks-0x950>
  10e1ae:	e8 7d 72 ff ff       	call   105430 <_Z6dPrintPci>
  10e1b3:	8a 45 fb             	mov    al,BYTE PTR [rbp-0x5]
  10e1b6:	0f b6 f8             	movzx  edi,al
  10e1b9:	0f b6 75 fa          	movzx  esi,BYTE PTR [rbp-0x6]
  10e1bd:	e8 4e 00 00 00       	call   10e210 <_Z10ScanDevicehh>
  10e1c2:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
  10e1c5:	83 7d f4 00          	cmp    DWORD PTR [rbp-0xc],0x0
  10e1c9:	0f 84 0b 00 00 00    	je     10e1da <_Z7ScanBush+0x8a>
  10e1cf:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  10e1d2:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  10e1d5:	e9 24 00 00 00       	jmp    10e1fe <_Z7ScanBush+0xae>
  10e1da:	0f b6 75 fa          	movzx  esi,BYTE PTR [rbp-0x6]
  10e1de:	48 8d 3d e5 1f ff ff 	lea    rdi,[rip+0xffffffffffff1fe5]        # 1001ca <_svfprintf_r.blanks-0x916>
  10e1e5:	e8 46 72 ff ff       	call   105430 <_Z6dPrintPci>
  10e1ea:	8a 45 fa             	mov    al,BYTE PTR [rbp-0x6]
  10e1ed:	04 01                	add    al,0x1
  10e1ef:	88 45 fa             	mov    BYTE PTR [rbp-0x6],al
  10e1f2:	e9 6b ff ff ff       	jmp    10e162 <_Z7ScanBush+0x12>
  10e1f7:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  10e1fe:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  10e201:	48 83 c4 10          	add    rsp,0x10
  10e205:	5d                   	pop    rbp
  10e206:	c3                   	ret
  10e207:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  10e20e:	00 00 

000000000010e210 <_Z10ScanDevicehh>:
  10e210:	55                   	push   rbp
  10e211:	48 89 e5             	mov    rbp,rsp
  10e214:	48 83 ec 20          	sub    rsp,0x20
  10e218:	40 88 f0             	mov    al,sil
  10e21b:	40 88 f9             	mov    cl,dil
  10e21e:	88 4d fb             	mov    BYTE PTR [rbp-0x5],cl
  10e221:	88 45 fa             	mov    BYTE PTR [rbp-0x6],al
  10e224:	8a 45 fb             	mov    al,BYTE PTR [rbp-0x5]
  10e227:	31 d2                	xor    edx,edx
  10e229:	0f b6 f8             	movzx  edi,al
  10e22c:	0f b6 75 fa          	movzx  esi,BYTE PTR [rbp-0x6]
  10e230:	e8 0b 01 00 00       	call   10e340 <_Z12ScanFunctionhhh>
  10e235:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
  10e238:	83 7d f4 00          	cmp    DWORD PTR [rbp-0xc],0x0
  10e23c:	0f 84 0b 00 00 00    	je     10e24d <_Z10ScanDevicehh+0x3d>
  10e242:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  10e245:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  10e248:	e9 e0 00 00 00       	jmp    10e32d <_Z10ScanDevicehh+0x11d>
  10e24d:	8a 45 fb             	mov    al,BYTE PTR [rbp-0x5]
  10e250:	31 d2                	xor    edx,edx
  10e252:	0f b6 f8             	movzx  edi,al
  10e255:	0f b6 75 fa          	movzx  esi,BYTE PTR [rbp-0x6]
  10e259:	e8 42 fb ff ff       	call   10dda0 <_Z14ReadHeaderTypehhh>
  10e25e:	0f b6 f8             	movzx  edi,al
  10e261:	e8 7a fd ff ff       	call   10dfe0 <_Z22IsSingleFunctionDeviceh>
  10e266:	83 f8 00             	cmp    eax,0x0
  10e269:	0f 84 18 00 00 00    	je     10e287 <_Z10ScanDevicehh+0x77>
  10e26f:	48 8d 3d 8f 23 ff ff 	lea    rdi,[rip+0xffffffffffff238f]        # 100605 <_svfprintf_r.blanks-0x4db>
  10e276:	e8 95 6c ff ff       	call   104f10 <Print>
  10e27b:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  10e282:	e9 a6 00 00 00       	jmp    10e32d <_Z10ScanDevicehh+0x11d>
  10e287:	48 8d 3d 01 23 ff ff 	lea    rdi,[rip+0xffffffffffff2301]        # 10058f <_svfprintf_r.blanks-0x551>
  10e28e:	e8 7d 6c ff ff       	call   104f10 <Print>
  10e293:	c6 45 f3 01          	mov    BYTE PTR [rbp-0xd],0x1
  10e297:	0f b6 45 f3          	movzx  eax,BYTE PTR [rbp-0xd]
  10e29b:	83 f8 08             	cmp    eax,0x8
  10e29e:	0f 8d 82 00 00 00    	jge    10e326 <_Z10ScanDevicehh+0x116>
  10e2a4:	8a 4d fb             	mov    cl,BYTE PTR [rbp-0x5]
  10e2a7:	8a 45 fa             	mov    al,BYTE PTR [rbp-0x6]
  10e2aa:	0f b6 f9             	movzx  edi,cl
  10e2ad:	0f b6 f0             	movzx  esi,al
  10e2b0:	0f b6 55 f3          	movzx  edx,BYTE PTR [rbp-0xd]
  10e2b4:	e8 27 fa ff ff       	call   10dce0 <_Z12ReadVendorIdhhh>
  10e2b9:	0f b7 c0             	movzx  eax,ax
  10e2bc:	3d ff ff 00 00       	cmp    eax,0xffff
  10e2c1:	0f 85 05 00 00 00    	jne    10e2cc <_Z10ScanDevicehh+0xbc>
  10e2c7:	e9 4d 00 00 00       	jmp    10e319 <_Z10ScanDevicehh+0x109>
  10e2cc:	0f b6 75 f3          	movzx  esi,BYTE PTR [rbp-0xd]
  10e2d0:	48 8d 3d 3f 22 ff ff 	lea    rdi,[rip+0xffffffffffff223f]        # 100516 <_svfprintf_r.blanks-0x5ca>
  10e2d7:	e8 54 71 ff ff       	call   105430 <_Z6dPrintPci>
  10e2dc:	8a 4d fb             	mov    cl,BYTE PTR [rbp-0x5]
  10e2df:	8a 45 fa             	mov    al,BYTE PTR [rbp-0x6]
  10e2e2:	0f b6 f9             	movzx  edi,cl
  10e2e5:	0f b6 f0             	movzx  esi,al
  10e2e8:	0f b6 55 f3          	movzx  edx,BYTE PTR [rbp-0xd]
  10e2ec:	e8 4f 00 00 00       	call   10e340 <_Z12ScanFunctionhhh>
  10e2f1:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
  10e2f4:	83 7d ec 00          	cmp    DWORD PTR [rbp-0x14],0x0
  10e2f8:	0f 84 0b 00 00 00    	je     10e309 <_Z10ScanDevicehh+0xf9>
  10e2fe:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  10e301:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  10e304:	e9 24 00 00 00       	jmp    10e32d <_Z10ScanDevicehh+0x11d>
  10e309:	0f b6 75 f3          	movzx  esi,BYTE PTR [rbp-0xd]
  10e30d:	48 8d 3d 9e 24 ff ff 	lea    rdi,[rip+0xffffffffffff249e]        # 1007b2 <_svfprintf_r.blanks-0x32e>
  10e314:	e8 17 71 ff ff       	call   105430 <_Z6dPrintPci>
  10e319:	8a 45 f3             	mov    al,BYTE PTR [rbp-0xd]
  10e31c:	04 01                	add    al,0x1
  10e31e:	88 45 f3             	mov    BYTE PTR [rbp-0xd],al
  10e321:	e9 71 ff ff ff       	jmp    10e297 <_Z10ScanDevicehh+0x87>
  10e326:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  10e32d:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  10e330:	48 83 c4 20          	add    rsp,0x20
  10e334:	5d                   	pop    rbp
  10e335:	c3                   	ret
  10e336:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10e33d:	00 00 00 

000000000010e340 <_Z12ScanFunctionhhh>:
  10e340:	55                   	push   rbp
  10e341:	48 89 e5             	mov    rbp,rsp
  10e344:	48 83 ec 20          	sub    rsp,0x20
  10e348:	88 d0                	mov    al,dl
  10e34a:	40 88 f1             	mov    cl,sil
  10e34d:	40 88 fa             	mov    dl,dil
  10e350:	88 55 fb             	mov    BYTE PTR [rbp-0x5],dl
  10e353:	88 4d fa             	mov    BYTE PTR [rbp-0x6],cl
  10e356:	88 45 f9             	mov    BYTE PTR [rbp-0x7],al
  10e359:	8a 4d fb             	mov    cl,BYTE PTR [rbp-0x5]
  10e35c:	8a 45 fa             	mov    al,BYTE PTR [rbp-0x6]
  10e35f:	0f b6 f9             	movzx  edi,cl
  10e362:	0f b6 f0             	movzx  esi,al
  10e365:	0f b6 55 f9          	movzx  edx,BYTE PTR [rbp-0x7]
  10e369:	e8 32 fa ff ff       	call   10dda0 <_Z14ReadHeaderTypehhh>
  10e36e:	88 45 f8             	mov    BYTE PTR [rbp-0x8],al
  10e371:	8a 55 fb             	mov    dl,BYTE PTR [rbp-0x5]
  10e374:	8a 4d fa             	mov    cl,BYTE PTR [rbp-0x6]
  10e377:	8a 45 f9             	mov    al,BYTE PTR [rbp-0x7]
  10e37a:	0f b6 fa             	movzx  edi,dl
  10e37d:	0f b6 f1             	movzx  esi,cl
  10e380:	0f b6 d0             	movzx  edx,al
  10e383:	0f b6 4d f8          	movzx  ecx,BYTE PTR [rbp-0x8]
  10e387:	e8 a4 fb ff ff       	call   10df30 <_Z9AddDevicehhhh>
  10e38c:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
  10e38f:	83 7d f4 00          	cmp    DWORD PTR [rbp-0xc],0x0
  10e393:	0f 84 0b 00 00 00    	je     10e3a4 <_Z12ScanFunctionhhh+0x64>
  10e399:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  10e39c:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  10e39f:	e9 9c 00 00 00       	jmp    10e440 <_Z12ScanFunctionhhh+0x100>
  10e3a4:	0f b6 7d fb          	movzx  edi,BYTE PTR [rbp-0x5]
  10e3a8:	0f b6 75 fa          	movzx  esi,BYTE PTR [rbp-0x6]
  10e3ac:	0f b6 55 f9          	movzx  edx,BYTE PTR [rbp-0x7]
  10e3b0:	e8 ab fa ff ff       	call   10de60 <_Z13ReadClassCodehhh>
  10e3b5:	66 89 c1             	mov    cx,ax
  10e3b8:	66 89 4d ec          	mov    WORD PTR [rbp-0x14],cx
  10e3bc:	c1 e8 10             	shr    eax,0x10
  10e3bf:	88 45 ee             	mov    BYTE PTR [rbp-0x12],al
  10e3c2:	66 8b 45 ec          	mov    ax,WORD PTR [rbp-0x14]
  10e3c6:	66 89 45 f0          	mov    WORD PTR [rbp-0x10],ax
  10e3ca:	8a 45 ee             	mov    al,BYTE PTR [rbp-0x12]
  10e3cd:	88 45 f2             	mov    BYTE PTR [rbp-0xe],al
  10e3d0:	8a 45 f0             	mov    al,BYTE PTR [rbp-0x10]
  10e3d3:	88 45 eb             	mov    BYTE PTR [rbp-0x15],al
  10e3d6:	8a 45 f1             	mov    al,BYTE PTR [rbp-0xf]
  10e3d9:	88 45 ea             	mov    BYTE PTR [rbp-0x16],al
  10e3dc:	0f b6 45 eb          	movzx  eax,BYTE PTR [rbp-0x15]
  10e3e0:	83 f8 06             	cmp    eax,0x6
  10e3e3:	0f 85 50 00 00 00    	jne    10e439 <_Z12ScanFunctionhhh+0xf9>
  10e3e9:	0f b6 45 ea          	movzx  eax,BYTE PTR [rbp-0x16]
  10e3ed:	83 f8 04             	cmp    eax,0x4
  10e3f0:	0f 85 43 00 00 00    	jne    10e439 <_Z12ScanFunctionhhh+0xf9>
  10e3f6:	48 8d 3d 2a 20 ff ff 	lea    rdi,[rip+0xffffffffffff202a]        # 100427 <_svfprintf_r.blanks-0x6b9>
  10e3fd:	e8 0e 6b ff ff       	call   104f10 <Print>
  10e402:	8a 4d fb             	mov    cl,BYTE PTR [rbp-0x5]
  10e405:	8a 45 fa             	mov    al,BYTE PTR [rbp-0x6]
  10e408:	0f b6 f9             	movzx  edi,cl
  10e40b:	0f b6 f0             	movzx  esi,al
  10e40e:	0f b6 55 f9          	movzx  edx,BYTE PTR [rbp-0x7]
  10e412:	e8 c9 fa ff ff       	call   10dee0 <_Z14ReadBusNumbershhh>
  10e417:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
  10e41a:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  10e41d:	c1 e8 08             	shr    eax,0x8
  10e420:	25 ff 00 00 00       	and    eax,0xff
  10e425:	88 45 e3             	mov    BYTE PTR [rbp-0x1d],al
  10e428:	0f b6 7d e3          	movzx  edi,BYTE PTR [rbp-0x1d]
  10e42c:	e8 1f fd ff ff       	call   10e150 <_Z7ScanBush>
  10e431:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  10e434:	e9 07 00 00 00       	jmp    10e440 <_Z12ScanFunctionhhh+0x100>
  10e439:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  10e440:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  10e443:	48 83 c4 20          	add    rsp,0x20
  10e447:	5d                   	pop    rbp
  10e448:	c3                   	ret
  10e449:	cc                   	int3
  10e44a:	cc                   	int3
  10e44b:	cc                   	int3
  10e44c:	cc                   	int3
  10e44d:	cc                   	int3
  10e44e:	cc                   	int3
  10e44f:	cc                   	int3

000000000010e450 <_Z12show_memdesci>:
  10e450:	55                   	push   rbp
  10e451:	48 89 e5             	mov    rbp,rsp
  10e454:	48 83 ec 10          	sub    rsp,0x10
  10e458:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  10e45b:	48 8b 05 3e e7 50 00 	mov    rax,QWORD PTR [rip+0x50e73e]        # 61cba0 <mmap>
  10e462:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  10e466:	48 63 4d fc          	movsxd rcx,DWORD PTR [rbp-0x4]
  10e46a:	48 8b 15 2f e7 50 00 	mov    rdx,QWORD PTR [rip+0x50e72f]        # 61cba0 <mmap>
  10e471:	48 0f af 4a 20       	imul   rcx,QWORD PTR [rdx+0x20]
  10e476:	48 01 c8             	add    rax,rcx
  10e479:	8b 30                	mov    esi,DWORD PTR [rax]
  10e47b:	48 8b 05 1e e7 50 00 	mov    rax,QWORD PTR [rip+0x50e71e]        # 61cba0 <mmap>
  10e482:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  10e486:	48 63 4d fc          	movsxd rcx,DWORD PTR [rbp-0x4]
  10e48a:	48 8b 15 0f e7 50 00 	mov    rdx,QWORD PTR [rip+0x50e70f]        # 61cba0 <mmap>
  10e491:	48 0f af 4a 20       	imul   rcx,QWORD PTR [rdx+0x20]
  10e496:	48 01 c8             	add    rax,rcx
  10e499:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
  10e49d:	48 8b 05 fc e6 50 00 	mov    rax,QWORD PTR [rip+0x50e6fc]        # 61cba0 <mmap>
  10e4a4:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  10e4a8:	48 63 4d fc          	movsxd rcx,DWORD PTR [rbp-0x4]
  10e4ac:	48 8b 3d ed e6 50 00 	mov    rdi,QWORD PTR [rip+0x50e6ed]        # 61cba0 <mmap>
  10e4b3:	48 0f af 4f 20       	imul   rcx,QWORD PTR [rdi+0x20]
  10e4b8:	48 01 c8             	add    rax,rcx
  10e4bb:	48 8b 48 18          	mov    rcx,QWORD PTR [rax+0x18]
  10e4bf:	48 8d 3d 49 23 ff ff 	lea    rdi,[rip+0xffffffffffff2349]        # 10080f <_svfprintf_r.blanks-0x2d1>
  10e4c6:	b0 00                	mov    al,0x0
  10e4c8:	e8 a3 6e ff ff       	call   105370 <Printf>
  10e4cd:	48 83 c4 10          	add    rsp,0x10
  10e4d1:	5d                   	pop    rbp
  10e4d2:	c3                   	ret
  10e4d3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10e4da:	84 00 00 00 00 00 

000000000010e4e0 <_Z15show_memory_mapv>:
  10e4e0:	55                   	push   rbp
  10e4e1:	48 89 e5             	mov    rbp,rsp
  10e4e4:	48 81 ec 00 01 00 00 	sub    rsp,0x100
  10e4eb:	c7 85 0c ff ff ff 00 	mov    DWORD PTR [rbp-0xf4],0x0
  10e4f2:	00 00 00 
  10e4f5:	48 8b 05 a4 e6 50 00 	mov    rax,QWORD PTR [rip+0x50e6a4]        # 61cba0 <mmap>
  10e4fc:	48 8b 70 10          	mov    rsi,QWORD PTR [rax+0x10]
  10e500:	48 8d 3d 32 21 ff ff 	lea    rdi,[rip+0xffffffffffff2132]        # 100639 <_svfprintf_r.blanks-0x4a7>
  10e507:	b0 00                	mov    al,0x0
  10e509:	e8 62 6e ff ff       	call   105370 <Printf>
  10e50e:	48 8b 05 8b e6 50 00 	mov    rax,QWORD PTR [rip+0x50e68b]        # 61cba0 <mmap>
  10e515:	48 8b 30             	mov    rsi,QWORD PTR [rax]
  10e518:	48 8d 3d 90 21 ff ff 	lea    rdi,[rip+0xffffffffffff2190]        # 1006af <_svfprintf_r.blanks-0x431>
  10e51f:	b0 00                	mov    al,0x0
  10e521:	e8 4a 6e ff ff       	call   105370 <Printf>
  10e526:	48 8b 05 73 e6 50 00 	mov    rax,QWORD PTR [rip+0x50e673]        # 61cba0 <mmap>
  10e52d:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
  10e531:	48 8b 0d 68 e6 50 00 	mov    rcx,QWORD PTR [rip+0x50e668]        # 61cba0 <mmap>
  10e538:	31 d2                	xor    edx,edx
  10e53a:	48 f7 71 20          	div    QWORD PTR [rcx+0x20]
  10e53e:	48 89 c6             	mov    rsi,rax
  10e541:	48 8d 3d d4 20 ff ff 	lea    rdi,[rip+0xffffffffffff20d4]        # 10061c <_svfprintf_r.blanks-0x4c4>
  10e548:	b0 00                	mov    al,0x0
  10e54a:	e8 21 6e ff ff       	call   105370 <Printf>
  10e54f:	48 8b 05 4a e6 50 00 	mov    rax,QWORD PTR [rip+0x50e64a]        # 61cba0 <mmap>
  10e556:	48 8b 70 20          	mov    rsi,QWORD PTR [rax+0x20]
  10e55a:	48 8d 3d 1d 1f ff ff 	lea    rdi,[rip+0xffffffffffff1f1d]        # 10047e <_svfprintf_r.blanks-0x662>
  10e561:	b0 00                	mov    al,0x0
  10e563:	e8 08 6e ff ff       	call   105370 <Printf>
  10e568:	48 8d 3d 85 21 ff ff 	lea    rdi,[rip+0xffffffffffff2185]        # 1006f4 <_svfprintf_r.blanks-0x3ec>
  10e56f:	be 28 00 00 00       	mov    esi,0x28
  10e574:	b0 00                	mov    al,0x0
  10e576:	e8 f5 6d ff ff       	call   105370 <Printf>
  10e57b:	c7 85 08 ff ff ff 00 	mov    DWORD PTR [rbp-0xf8],0x0
  10e582:	00 00 00 
  10e585:	c7 85 0c ff ff ff 00 	mov    DWORD PTR [rbp-0xf4],0x0
  10e58c:	00 00 00 
  10e58f:	83 bd 0c ff ff ff 0a 	cmp    DWORD PTR [rbp-0xf4],0xa
  10e596:	0f 8d 54 00 00 00    	jge    10e5f0 <_Z15show_memory_mapv+0x110>
  10e59c:	8b bd 0c ff ff ff    	mov    edi,DWORD PTR [rbp-0xf4]
  10e5a2:	e8 a9 fe ff ff       	call   10e450 <_Z12show_memdesci>
  10e5a7:	48 8b 05 f2 e5 50 00 	mov    rax,QWORD PTR [rip+0x50e5f2]        # 61cba0 <mmap>
  10e5ae:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  10e5b2:	48 63 8d 0c ff ff ff 	movsxd rcx,DWORD PTR [rbp-0xf4]
  10e5b9:	48 8b 15 e0 e5 50 00 	mov    rdx,QWORD PTR [rip+0x50e5e0]        # 61cba0 <mmap>
  10e5c0:	48 0f af 4a 20       	imul   rcx,QWORD PTR [rdx+0x20]
  10e5c5:	48 01 c8             	add    rax,rcx
  10e5c8:	48 8b 48 18          	mov    rcx,QWORD PTR [rax+0x18]
  10e5cc:	48 63 85 08 ff ff ff 	movsxd rax,DWORD PTR [rbp-0xf8]
  10e5d3:	48 01 c8             	add    rax,rcx
  10e5d6:	89 85 08 ff ff ff    	mov    DWORD PTR [rbp-0xf8],eax
  10e5dc:	8b 85 0c ff ff ff    	mov    eax,DWORD PTR [rbp-0xf4]
  10e5e2:	83 c0 01             	add    eax,0x1
  10e5e5:	89 85 0c ff ff ff    	mov    DWORD PTR [rbp-0xf4],eax
  10e5eb:	e9 9f ff ff ff       	jmp    10e58f <_Z15show_memory_mapv+0xaf>
  10e5f0:	8b b5 08 ff ff ff    	mov    esi,DWORD PTR [rbp-0xf8]
  10e5f6:	48 8d 3d 4b 20 ff ff 	lea    rdi,[rip+0xffffffffffff204b]        # 100648 <_svfprintf_r.blanks-0x498>
  10e5fd:	b0 00                	mov    al,0x0
  10e5ff:	e8 6c 6d ff ff       	call   105370 <Printf>
  10e604:	48 81 c4 00 01 00 00 	add    rsp,0x100
  10e60b:	5d                   	pop    rbp
  10e60c:	c3                   	ret
  10e60d:	0f 1f 00             	nop    DWORD PTR [rax]

000000000010e610 <_Z15search_mem_typem>:
  10e610:	55                   	push   rbp
  10e611:	48 89 e5             	mov    rbp,rsp
  10e614:	48 83 ec 20          	sub    rsp,0x20
  10e618:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  10e61c:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
  10e623:	48 63 45 ec          	movsxd rax,DWORD PTR [rbp-0x14]
  10e627:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  10e62b:	48 8b 05 6e e5 50 00 	mov    rax,QWORD PTR [rip+0x50e56e]        # 61cba0 <mmap>
  10e632:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
  10e636:	48 8b 0d 63 e5 50 00 	mov    rcx,QWORD PTR [rip+0x50e563]        # 61cba0 <mmap>
  10e63d:	31 d2                	xor    edx,edx
  10e63f:	48 f7 71 20          	div    QWORD PTR [rcx+0x20]
  10e643:	48 89 c1             	mov    rcx,rax
  10e646:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  10e64a:	48 39 c8             	cmp    rax,rcx
  10e64d:	0f 83 6c 00 00 00    	jae    10e6bf <_Z15search_mem_typem+0xaf>
  10e653:	48 8b 05 46 e5 50 00 	mov    rax,QWORD PTR [rip+0x50e546]        # 61cba0 <mmap>
  10e65a:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  10e65e:	48 63 4d ec          	movsxd rcx,DWORD PTR [rbp-0x14]
  10e662:	48 8b 15 37 e5 50 00 	mov    rdx,QWORD PTR [rip+0x50e537]        # 61cba0 <mmap>
  10e669:	48 0f af 4a 20       	imul   rcx,QWORD PTR [rdx+0x20]
  10e66e:	48 01 c8             	add    rax,rcx
  10e671:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  10e675:	48 3b 45 f0          	cmp    rax,QWORD PTR [rbp-0x10]
  10e679:	0f 82 2d 00 00 00    	jb     10e6ac <_Z15search_mem_typem+0x9c>
  10e67f:	48 8b 05 1a e5 50 00 	mov    rax,QWORD PTR [rip+0x50e51a]        # 61cba0 <mmap>
  10e686:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  10e68a:	8b 4d ec             	mov    ecx,DWORD PTR [rbp-0x14]
  10e68d:	83 e9 01             	sub    ecx,0x1
  10e690:	48 63 c9             	movsxd rcx,ecx
  10e693:	48 8b 15 06 e5 50 00 	mov    rdx,QWORD PTR [rip+0x50e506]        # 61cba0 <mmap>
  10e69a:	48 0f af 4a 20       	imul   rcx,QWORD PTR [rdx+0x20]
  10e69f:	48 01 c8             	add    rax,rcx
  10e6a2:	8b 00                	mov    eax,DWORD PTR [rax]
  10e6a4:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  10e6a7:	e9 1a 00 00 00       	jmp    10e6c6 <_Z15search_mem_typem+0xb6>
  10e6ac:	e9 00 00 00 00       	jmp    10e6b1 <_Z15search_mem_typem+0xa1>
  10e6b1:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  10e6b4:	83 c0 01             	add    eax,0x1
  10e6b7:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
  10e6ba:	e9 64 ff ff ff       	jmp    10e623 <_Z15search_mem_typem+0x13>
  10e6bf:	c7 45 fc 15 00 00 00 	mov    DWORD PTR [rbp-0x4],0x15
  10e6c6:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  10e6c9:	48 83 c4 20          	add    rsp,0x20
  10e6cd:	5d                   	pop    rbp
  10e6ce:	c3                   	ret
  10e6cf:	cc                   	int3

000000000010e6d0 <sbrk>:
  10e6d0:	55                   	push   rbp
  10e6d1:	48 89 e5             	mov    rbp,rsp
  10e6d4:	48 83 ec 18          	sub    rsp,0x18
  10e6d8:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  10e6dc:	48 83 3d c4 e4 50 00 	cmp    QWORD PTR [rip+0x50e4c4],0x0        # 61cba8 <program_break>
  10e6e3:	00 
  10e6e4:	0f 84 18 00 00 00    	je     10e702 <sbrk+0x32>
  10e6ea:	48 8b 05 b7 e4 50 00 	mov    rax,QWORD PTR [rip+0x50e4b7]        # 61cba8 <program_break>
  10e6f1:	48 03 45 f0          	add    rax,QWORD PTR [rbp-0x10]
  10e6f5:	48 3b 05 b4 e4 50 00 	cmp    rax,QWORD PTR [rip+0x50e4b4]        # 61cbb0 <program_break_end>
  10e6fc:	0f 82 1d 00 00 00    	jb     10e71f <sbrk+0x4f>
  10e702:	48 8d 05 97 e3 50 00 	lea    rax,[rip+0x50e397]        # 61caa0 <errno>
  10e709:	c7 00 0c 00 00 00    	mov    DWORD PTR [rax],0xc
  10e70f:	48 c7 c0 ff ff ff ff 	mov    rax,0xffffffffffffffff
  10e716:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  10e71a:	e9 25 00 00 00       	jmp    10e744 <sbrk+0x74>
  10e71f:	48 8b 05 82 e4 50 00 	mov    rax,QWORD PTR [rip+0x50e482]        # 61cba8 <program_break>
  10e726:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  10e72a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  10e72e:	48 03 05 73 e4 50 00 	add    rax,QWORD PTR [rip+0x50e473]        # 61cba8 <program_break>
  10e735:	48 89 05 6c e4 50 00 	mov    QWORD PTR [rip+0x50e46c],rax        # 61cba8 <program_break>
  10e73c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  10e740:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  10e744:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10e748:	48 83 c4 18          	add    rsp,0x18
  10e74c:	5d                   	pop    rbp
  10e74d:	c3                   	ret
  10e74e:	66 90                	xchg   ax,ax

000000000010e750 <_exit>:
  10e750:	55                   	push   rbp
  10e751:	48 89 e5             	mov    rbp,rsp
  10e754:	48 83 ec 10          	sub    rsp,0x10
  10e758:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  10e75b:	48 8d 3d 23 1b ff ff 	lea    rdi,[rip+0xffffffffffff1b23]        # 100285 <_svfprintf_r.blanks-0x85b>
  10e762:	e8 a9 67 ff ff       	call   104f10 <Print>
  10e767:	f4                   	hlt
  10e768:	e9 fa ff ff ff       	jmp    10e767 <_exit+0x17>
  10e76d:	0f 1f 00             	nop    DWORD PTR [rax]

000000000010e770 <lseek>:
  10e770:	55                   	push   rbp
  10e771:	48 89 e5             	mov    rbp,rsp
  10e774:	48 83 ec 20          	sub    rsp,0x20
  10e778:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  10e77b:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  10e77f:	89 55 ec             	mov    DWORD PTR [rbp-0x14],edx
  10e782:	48 8d 3d 0b 1b ff ff 	lea    rdi,[rip+0xffffffffffff1b0b]        # 100294 <_svfprintf_r.blanks-0x84c>
  10e789:	e8 82 67 ff ff       	call   104f10 <Print>
  10e78e:	f4                   	hlt
  10e78f:	e9 fa ff ff ff       	jmp    10e78e <lseek+0x1e>
  10e794:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10e79b:	00 00 00 00 00 

000000000010e7a0 <close>:
  10e7a0:	55                   	push   rbp
  10e7a1:	48 89 e5             	mov    rbp,rsp
  10e7a4:	48 83 ec 10          	sub    rsp,0x10
  10e7a8:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  10e7ab:	48 8d 3d f1 1a ff ff 	lea    rdi,[rip+0xffffffffffff1af1]        # 1002a3 <_svfprintf_r.blanks-0x83d>
  10e7b2:	e8 59 67 ff ff       	call   104f10 <Print>
  10e7b7:	f4                   	hlt
  10e7b8:	e9 fa ff ff ff       	jmp    10e7b7 <close+0x17>
  10e7bd:	0f 1f 00             	nop    DWORD PTR [rax]

000000000010e7c0 <kill>:
  10e7c0:	55                   	push   rbp
  10e7c1:	48 89 e5             	mov    rbp,rsp
  10e7c4:	48 83 ec 10          	sub    rsp,0x10
  10e7c8:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  10e7cb:	89 75 f8             	mov    DWORD PTR [rbp-0x8],esi
  10e7ce:	48 8d 3d 1b 1b ff ff 	lea    rdi,[rip+0xffffffffffff1b1b]        # 1002f0 <_svfprintf_r.blanks-0x7f0>
  10e7d5:	e8 36 67 ff ff       	call   104f10 <Print>
  10e7da:	48 8d 05 bf e2 50 00 	lea    rax,[rip+0x50e2bf]        # 61caa0 <errno>
  10e7e1:	c7 00 16 00 00 00    	mov    DWORD PTR [rax],0x16
  10e7e7:	f4                   	hlt
  10e7e8:	e9 fa ff ff ff       	jmp    10e7e7 <kill+0x27>
  10e7ed:	0f 1f 00             	nop    DWORD PTR [rax]

000000000010e7f0 <getpid>:
  10e7f0:	55                   	push   rbp
  10e7f1:	48 89 e5             	mov    rbp,rsp
  10e7f4:	48 8d 3d e0 19 ff ff 	lea    rdi,[rip+0xffffffffffff19e0]        # 1001db <_svfprintf_r.blanks-0x905>
  10e7fb:	e8 10 67 ff ff       	call   104f10 <Print>
  10e800:	f4                   	hlt
  10e801:	e9 fa ff ff ff       	jmp    10e800 <getpid+0x10>
  10e806:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10e80d:	00 00 00 

000000000010e810 <fstat>:
  10e810:	55                   	push   rbp
  10e811:	48 89 e5             	mov    rbp,rsp
  10e814:	48 83 ec 10          	sub    rsp,0x10
  10e818:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  10e81b:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  10e81f:	48 8d 3d f4 1a ff ff 	lea    rdi,[rip+0xffffffffffff1af4]        # 10031a <_svfprintf_r.blanks-0x7c6>
  10e826:	e8 e5 66 ff ff       	call   104f10 <Print>
  10e82b:	f4                   	hlt
  10e82c:	e9 fa ff ff ff       	jmp    10e82b <fstat+0x1b>
  10e831:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  10e838:	0f 1f 84 00 00 00 00 
  10e83f:	00 

000000000010e840 <isatty>:
  10e840:	55                   	push   rbp
  10e841:	48 89 e5             	mov    rbp,rsp
  10e844:	48 83 ec 10          	sub    rsp,0x10
  10e848:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  10e84b:	48 8d 3d ac 1a ff ff 	lea    rdi,[rip+0xffffffffffff1aac]        # 1002fe <_svfprintf_r.blanks-0x7e2>
  10e852:	e8 b9 66 ff ff       	call   104f10 <Print>
  10e857:	f4                   	hlt
  10e858:	e9 fa ff ff ff       	jmp    10e857 <isatty+0x17>
  10e85d:	cc                   	int3
  10e85e:	cc                   	int3
  10e85f:	cc                   	int3

000000000010e860 <_Z14SetCodeSegmentP17SegmentDescriptor14DescriptorTypejjj>:
  10e860:	55                   	push   rbp
  10e861:	48 89 e5             	mov    rbp,rsp
  10e864:	48 83 ec 18          	sub    rsp,0x18
  10e868:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  10e86c:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi
  10e86f:	89 55 f0             	mov    DWORD PTR [rbp-0x10],edx
  10e872:	89 4d ec             	mov    DWORD PTR [rbp-0x14],ecx
  10e875:	44 89 45 e8          	mov    DWORD PTR [rbp-0x18],r8d
  10e879:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10e87d:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
  10e884:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  10e887:	25 ff ff 00 00       	and    eax,0xffff
  10e88c:	89 c0                	mov    eax,eax
  10e88e:	89 c2                	mov    edx,eax
  10e890:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10e894:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  10e897:	48 81 e2 ff ff 00 00 	and    rdx,0xffff
  10e89e:	48 c1 e2 10          	shl    rdx,0x10
  10e8a2:	48 be ff ff 00 00 ff 	movabs rsi,0xffffffff0000ffff
  10e8a9:	ff ff ff 
  10e8ac:	48 21 f1             	and    rcx,rsi
  10e8af:	48 09 d1             	or     rcx,rdx
  10e8b2:	48 89 08             	mov    QWORD PTR [rax],rcx
  10e8b5:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  10e8b8:	c1 e8 10             	shr    eax,0x10
  10e8bb:	25 ff 00 00 00       	and    eax,0xff
  10e8c0:	89 c0                	mov    eax,eax
  10e8c2:	89 c2                	mov    edx,eax
  10e8c4:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10e8c8:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  10e8cb:	48 81 e2 ff 00 00 00 	and    rdx,0xff
  10e8d2:	48 c1 e2 20          	shl    rdx,0x20
  10e8d6:	48 be ff ff ff ff 00 	movabs rsi,0xffffff00ffffffff
  10e8dd:	ff ff ff 
  10e8e0:	48 21 f1             	and    rcx,rsi
  10e8e3:	48 09 d1             	or     rcx,rdx
  10e8e6:	48 89 08             	mov    QWORD PTR [rax],rcx
  10e8e9:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  10e8ec:	c1 e8 18             	shr    eax,0x18
  10e8ef:	25 ff 00 00 00       	and    eax,0xff
  10e8f4:	89 c0                	mov    eax,eax
  10e8f6:	89 c2                	mov    edx,eax
  10e8f8:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10e8fc:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  10e8ff:	48 81 e2 ff 00 00 00 	and    rdx,0xff
  10e906:	48 c1 e2 38          	shl    rdx,0x38
  10e90a:	48 be ff ff ff ff ff 	movabs rsi,0xffffffffffffff
  10e911:	ff ff 00 
  10e914:	48 21 f1             	and    rcx,rsi
  10e917:	48 09 d1             	or     rcx,rdx
  10e91a:	48 89 08             	mov    QWORD PTR [rax],rcx
  10e91d:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
  10e920:	25 ff ff 00 00       	and    eax,0xffff
  10e925:	89 c0                	mov    eax,eax
  10e927:	89 c2                	mov    edx,eax
  10e929:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10e92d:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  10e930:	48 81 e2 ff ff 00 00 	and    rdx,0xffff
  10e937:	48 81 e1 00 00 ff ff 	and    rcx,0xffffffffffff0000
  10e93e:	48 09 d1             	or     rcx,rdx
  10e941:	48 89 08             	mov    QWORD PTR [rax],rcx
  10e944:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
  10e947:	c1 e8 10             	shr    eax,0x10
  10e94a:	83 e0 0f             	and    eax,0xf
  10e94d:	89 c0                	mov    eax,eax
  10e94f:	89 c2                	mov    edx,eax
  10e951:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10e955:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  10e958:	48 83 e2 0f          	and    rdx,0xf
  10e95c:	48 c1 e2 30          	shl    rdx,0x30
  10e960:	48 be ff ff ff ff ff 	movabs rsi,0xfff0ffffffffffff
  10e967:	ff f0 ff 
  10e96a:	48 21 f1             	and    rcx,rsi
  10e96d:	48 09 d1             	or     rcx,rdx
  10e970:	48 89 08             	mov    QWORD PTR [rax],rcx
  10e973:	8b 4d f4             	mov    ecx,DWORD PTR [rbp-0xc]
  10e976:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10e97a:	89 c9                	mov    ecx,ecx
  10e97c:	89 ca                	mov    edx,ecx
  10e97e:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  10e981:	48 83 e2 0f          	and    rdx,0xf
  10e985:	48 c1 e2 28          	shl    rdx,0x28
  10e989:	48 be ff ff ff ff ff 	movabs rsi,0xfffff0ffffffffff
  10e990:	f0 ff ff 
  10e993:	48 21 f1             	and    rcx,rsi
  10e996:	48 09 d1             	or     rcx,rdx
  10e999:	48 89 08             	mov    QWORD PTR [rax],rcx
  10e99c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10e9a0:	48 b9 ff ff ff ff ff 	movabs rcx,0xffffefffffffffff
  10e9a7:	ef ff ff 
  10e9aa:	48 23 08             	and    rcx,QWORD PTR [rax]
  10e9ad:	48 ba 00 00 00 00 00 	movabs rdx,0x100000000000
  10e9b4:	10 00 00 
  10e9b7:	48 09 d1             	or     rcx,rdx
  10e9ba:	48 89 08             	mov    QWORD PTR [rax],rcx
  10e9bd:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  10e9c0:	89 c2                	mov    edx,eax
  10e9c2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10e9c6:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  10e9c9:	48 83 e2 03          	and    rdx,0x3
  10e9cd:	48 c1 e2 2d          	shl    rdx,0x2d
  10e9d1:	48 be ff ff ff ff ff 	movabs rsi,0xffff9fffffffffff
  10e9d8:	9f ff ff 
  10e9db:	48 21 f1             	and    rcx,rsi
  10e9de:	48 09 d1             	or     rcx,rdx
  10e9e1:	48 89 08             	mov    QWORD PTR [rax],rcx
  10e9e4:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10e9e8:	48 b9 ff ff ff ff ff 	movabs rcx,0xffff7fffffffffff
  10e9ef:	7f ff ff 
  10e9f2:	48 23 08             	and    rcx,QWORD PTR [rax]
  10e9f5:	48 ba 00 00 00 00 00 	movabs rdx,0x800000000000
  10e9fc:	80 00 00 
  10e9ff:	48 09 d1             	or     rcx,rdx
  10ea02:	48 89 08             	mov    QWORD PTR [rax],rcx
  10ea05:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10ea09:	48 b9 ff ff ff ff ff 	movabs rcx,0xffefffffffffffff
  10ea10:	ff ef ff 
  10ea13:	48 23 08             	and    rcx,QWORD PTR [rax]
  10ea16:	48 83 c9 00          	or     rcx,0x0
  10ea1a:	48 89 08             	mov    QWORD PTR [rax],rcx
  10ea1d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10ea21:	48 b9 ff ff ff ff ff 	movabs rcx,0xffdfffffffffffff
  10ea28:	ff df ff 
  10ea2b:	48 23 08             	and    rcx,QWORD PTR [rax]
  10ea2e:	48 ba 00 00 00 00 00 	movabs rdx,0x20000000000000
  10ea35:	00 20 00 
  10ea38:	48 09 d1             	or     rcx,rdx
  10ea3b:	48 89 08             	mov    QWORD PTR [rax],rcx
  10ea3e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10ea42:	48 b9 ff ff ff ff ff 	movabs rcx,0xffbfffffffffffff
  10ea49:	ff bf ff 
  10ea4c:	48 23 08             	and    rcx,QWORD PTR [rax]
  10ea4f:	48 83 c9 00          	or     rcx,0x0
  10ea53:	48 89 08             	mov    QWORD PTR [rax],rcx
  10ea56:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10ea5a:	48 b9 ff ff ff ff ff 	movabs rcx,0xff7fffffffffffff
  10ea61:	ff 7f ff 
  10ea64:	48 23 08             	and    rcx,QWORD PTR [rax]
  10ea67:	48 ba 00 00 00 00 00 	movabs rdx,0x80000000000000
  10ea6e:	00 80 00 
  10ea71:	48 09 d1             	or     rcx,rdx
  10ea74:	48 89 08             	mov    QWORD PTR [rax],rcx
  10ea77:	48 83 c4 18          	add    rsp,0x18
  10ea7b:	5d                   	pop    rbp
  10ea7c:	c3                   	ret
  10ea7d:	0f 1f 00             	nop    DWORD PTR [rax]

000000000010ea80 <_Z14SetDataSegmentP17SegmentDescriptor14DescriptorTypejjj>:
  10ea80:	55                   	push   rbp
  10ea81:	48 89 e5             	mov    rbp,rsp
  10ea84:	48 83 ec 20          	sub    rsp,0x20
  10ea88:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  10ea8c:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi
  10ea8f:	89 55 f0             	mov    DWORD PTR [rbp-0x10],edx
  10ea92:	89 4d ec             	mov    DWORD PTR [rbp-0x14],ecx
  10ea95:	44 89 45 e8          	mov    DWORD PTR [rbp-0x18],r8d
  10ea99:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
  10ea9d:	8b 75 f4             	mov    esi,DWORD PTR [rbp-0xc]
  10eaa0:	8b 55 f0             	mov    edx,DWORD PTR [rbp-0x10]
  10eaa3:	8b 4d ec             	mov    ecx,DWORD PTR [rbp-0x14]
  10eaa6:	44 8b 45 e8          	mov    r8d,DWORD PTR [rbp-0x18]
  10eaaa:	e8 b1 fd ff ff       	call   10e860 <_Z14SetCodeSegmentP17SegmentDescriptor14DescriptorTypejjj>
  10eaaf:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10eab3:	48 b9 ff ff ff ff ff 	movabs rcx,0xffdfffffffffffff
  10eaba:	ff df ff 
  10eabd:	48 23 08             	and    rcx,QWORD PTR [rax]
  10eac0:	48 ba 00 00 00 00 00 	movabs rdx,0x20000000000000
  10eac7:	00 20 00 
  10eaca:	48 09 d1             	or     rcx,rdx
  10eacd:	48 89 08             	mov    QWORD PTR [rax],rcx
  10ead0:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  10ead4:	48 b9 ff ff ff ff ff 	movabs rcx,0xffbfffffffffffff
  10eadb:	ff bf ff 
  10eade:	48 23 08             	and    rcx,QWORD PTR [rax]
  10eae1:	48 ba 00 00 00 00 00 	movabs rdx,0x40000000000000
  10eae8:	00 40 00 
  10eaeb:	48 09 d1             	or     rcx,rdx
  10eaee:	48 89 08             	mov    QWORD PTR [rax],rcx
  10eaf1:	48 83 c4 20          	add    rsp,0x20
  10eaf5:	5d                   	pop    rbp
  10eaf6:	c3                   	ret
  10eaf7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  10eafe:	00 00 

000000000010eb00 <_Z13SetupSegmentsv>:
  10eb00:	55                   	push   rbp
  10eb01:	48 89 e5             	mov    rbp,rsp
  10eb04:	48 c7 05 e1 7b 00 00 	mov    QWORD PTR [rip+0x7be1],0x0        # 1166f0 <gdt>
  10eb0b:	00 00 00 00 
  10eb0f:	48 8d 3d da 7b 00 00 	lea    rdi,[rip+0x7bda]        # 1166f0 <gdt>
  10eb16:	48 83 c7 08          	add    rdi,0x8
  10eb1a:	be 0a 00 00 00       	mov    esi,0xa
  10eb1f:	31 c9                	xor    ecx,ecx
  10eb21:	41 b8 ff ff 0f 00    	mov    r8d,0xfffff
  10eb27:	89 ca                	mov    edx,ecx
  10eb29:	e8 32 fd ff ff       	call   10e860 <_Z14SetCodeSegmentP17SegmentDescriptor14DescriptorTypejjj>
  10eb2e:	48 8d 3d bb 7b 00 00 	lea    rdi,[rip+0x7bbb]        # 1166f0 <gdt>
  10eb35:	48 83 c7 10          	add    rdi,0x10
  10eb39:	be 02 00 00 00       	mov    esi,0x2
  10eb3e:	31 c9                	xor    ecx,ecx
  10eb40:	41 b8 ff ff 0f 00    	mov    r8d,0xfffff
  10eb46:	89 ca                	mov    edx,ecx
  10eb48:	e8 33 ff ff ff       	call   10ea80 <_Z14SetDataSegmentP17SegmentDescriptor14DescriptorTypejjj>
  10eb4d:	bf 17 00 00 00       	mov    edi,0x17
  10eb52:	48 8d 35 97 7b 00 00 	lea    rsi,[rip+0x7b97]        # 1166f0 <gdt>
  10eb59:	e8 44 f0 ff ff       	call   10dba2 <LoadGDT>
  10eb5e:	48 8d 05 8b 7b 00 00 	lea    rax,[rip+0x7b8b]        # 1166f0 <gdt>
  10eb65:	5d                   	pop    rbp
  10eb66:	c3                   	ret
  10eb67:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  10eb6e:	00 00 

000000000010eb70 <_Z17InitializeSegmenttt>:
  10eb70:	55                   	push   rbp
  10eb71:	48 89 e5             	mov    rbp,rsp
  10eb74:	48 83 ec 10          	sub    rsp,0x10
  10eb78:	66 89 f0             	mov    ax,si
  10eb7b:	66 89 f9             	mov    cx,di
  10eb7e:	66 89 4d fe          	mov    WORD PTR [rbp-0x2],cx
  10eb82:	66 89 45 fc          	mov    WORD PTR [rbp-0x4],ax
  10eb86:	e8 75 ff ff ff       	call   10eb00 <_Z13SetupSegmentsv>
  10eb8b:	31 ff                	xor    edi,edi
  10eb8d:	e8 2a f0 ff ff       	call   10dbbc <SetDSAll>
  10eb92:	66 8b 45 fe          	mov    ax,WORD PTR [rbp-0x2]
  10eb96:	0f b7 f8             	movzx  edi,ax
  10eb99:	0f b7 75 fc          	movzx  esi,WORD PTR [rbp-0x4]
  10eb9d:	e8 23 f0 ff ff       	call   10dbc5 <SetCSSS>
  10eba2:	48 83 c4 10          	add    rsp,0x10
  10eba6:	5d                   	pop    rbp
  10eba7:	c3                   	ret
  10eba8:	cc                   	int3
  10eba9:	cc                   	int3
  10ebaa:	cc                   	int3
  10ebab:	cc                   	int3
  10ebac:	cc                   	int3
  10ebad:	cc                   	int3
  10ebae:	cc                   	int3
  10ebaf:	cc                   	int3

000000000010ebb0 <_Z11Interrupt_1P14InterruptFrame>:
  10ebb0:	55                   	push   rbp
  10ebb1:	48 89 e5             	mov    rbp,rsp
  10ebb4:	50                   	push   rax
  10ebb5:	41 53                	push   r11
  10ebb7:	41 52                	push   r10
  10ebb9:	41 51                	push   r9
  10ebbb:	41 50                	push   r8
  10ebbd:	57                   	push   rdi
  10ebbe:	56                   	push   rsi
  10ebbf:	52                   	push   rdx
  10ebc0:	51                   	push   rcx
  10ebc1:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  10ebc8:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  10ebcd:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  10ebd2:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  10ebd7:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  10ebde:	ff 
  10ebdf:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  10ebe6:	ff 
  10ebe7:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  10ebee:	ff 
  10ebef:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  10ebf6:	ff 
  10ebf7:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  10ebfe:	ff 
  10ebff:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  10ec06:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  10ec0d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  10ec14:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  10ec1b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  10ec22:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  10ec29:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  10ec30:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  10ec37:	fc                   	cld
  10ec38:	48 8d 45 08          	lea    rax,[rbp+0x8]
  10ec3c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  10ec43:	48 8b 05 be 7a 00 00 	mov    rax,QWORD PTR [rip+0x7abe]        # 116708 <InterruptMessagePosition>
  10ec4a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  10ec51:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  10ec58:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  10ec5f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  10ec66:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  10ec6d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  10ec73:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  10ec79:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  10ec80:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  10ec87:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  10ec8e:	c1 e0 10             	shl    eax,0x10
  10ec91:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  10ec98:	09 c2                	or     edx,eax
  10ec9a:	48 8d 3d 24 1b ff ff 	lea    rdi,[rip+0xffffffffffff1b24]        # 1007c5 <_svfprintf_r.blanks-0x31b>
  10eca1:	e8 ca 60 ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  10eca6:	e8 75 57 ff ff       	call   104420 <_Z4stopv>
  10ecab:	e8 55 ef ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  10ecb0:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  10ecb7:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  10ecbe:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  10ecc5:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  10eccc:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  10ecd3:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  10ecda:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  10ece1:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  10ece8:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  10ecef:	ff 
  10ecf0:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  10ecf7:	ff 
  10ecf8:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  10ecff:	ff 
  10ed00:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  10ed07:	ff 
  10ed08:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  10ed0f:	ff 
  10ed10:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  10ed15:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  10ed1a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  10ed1f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  10ed26:	59                   	pop    rcx
  10ed27:	5a                   	pop    rdx
  10ed28:	5e                   	pop    rsi
  10ed29:	5f                   	pop    rdi
  10ed2a:	41 58                	pop    r8
  10ed2c:	41 59                	pop    r9
  10ed2e:	41 5a                	pop    r10
  10ed30:	41 5b                	pop    r11
  10ed32:	58                   	pop    rax
  10ed33:	5d                   	pop    rbp
  10ed34:	48 cf                	iretq
  10ed36:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10ed3d:	00 00 00 

000000000010ed40 <_Z11Interrupt_2P14InterruptFrame>:
  10ed40:	55                   	push   rbp
  10ed41:	48 89 e5             	mov    rbp,rsp
  10ed44:	50                   	push   rax
  10ed45:	41 53                	push   r11
  10ed47:	41 52                	push   r10
  10ed49:	41 51                	push   r9
  10ed4b:	41 50                	push   r8
  10ed4d:	57                   	push   rdi
  10ed4e:	56                   	push   rsi
  10ed4f:	52                   	push   rdx
  10ed50:	51                   	push   rcx
  10ed51:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  10ed58:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  10ed5d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  10ed62:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  10ed67:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  10ed6e:	ff 
  10ed6f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  10ed76:	ff 
  10ed77:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  10ed7e:	ff 
  10ed7f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  10ed86:	ff 
  10ed87:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  10ed8e:	ff 
  10ed8f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  10ed96:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  10ed9d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  10eda4:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  10edab:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  10edb2:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  10edb9:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  10edc0:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  10edc7:	fc                   	cld
  10edc8:	48 8d 45 08          	lea    rax,[rbp+0x8]
  10edcc:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  10edd3:	48 8b 05 2e 79 00 00 	mov    rax,QWORD PTR [rip+0x792e]        # 116708 <InterruptMessagePosition>
  10edda:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  10ede1:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  10ede8:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  10edef:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  10edf6:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  10edfd:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  10ee03:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  10ee09:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  10ee10:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  10ee17:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  10ee1e:	c1 e0 10             	shl    eax,0x10
  10ee21:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  10ee28:	09 c2                	or     edx,eax
  10ee2a:	48 8d 3d 39 15 ff ff 	lea    rdi,[rip+0xffffffffffff1539]        # 10036a <_svfprintf_r.blanks-0x776>
  10ee31:	e8 3a 5f ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  10ee36:	e8 e5 55 ff ff       	call   104420 <_Z4stopv>
  10ee3b:	e8 c5 ed ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  10ee40:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  10ee47:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  10ee4e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  10ee55:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  10ee5c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  10ee63:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  10ee6a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  10ee71:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  10ee78:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  10ee7f:	ff 
  10ee80:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  10ee87:	ff 
  10ee88:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  10ee8f:	ff 
  10ee90:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  10ee97:	ff 
  10ee98:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  10ee9f:	ff 
  10eea0:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  10eea5:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  10eeaa:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  10eeaf:	48 81 c4 28 01 00 00 	add    rsp,0x128
  10eeb6:	59                   	pop    rcx
  10eeb7:	5a                   	pop    rdx
  10eeb8:	5e                   	pop    rsi
  10eeb9:	5f                   	pop    rdi
  10eeba:	41 58                	pop    r8
  10eebc:	41 59                	pop    r9
  10eebe:	41 5a                	pop    r10
  10eec0:	41 5b                	pop    r11
  10eec2:	58                   	pop    rax
  10eec3:	5d                   	pop    rbp
  10eec4:	48 cf                	iretq
  10eec6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10eecd:	00 00 00 

000000000010eed0 <_Z11Interrupt_4P14InterruptFrame>:
  10eed0:	55                   	push   rbp
  10eed1:	48 89 e5             	mov    rbp,rsp
  10eed4:	50                   	push   rax
  10eed5:	41 53                	push   r11
  10eed7:	41 52                	push   r10
  10eed9:	41 51                	push   r9
  10eedb:	41 50                	push   r8
  10eedd:	57                   	push   rdi
  10eede:	56                   	push   rsi
  10eedf:	52                   	push   rdx
  10eee0:	51                   	push   rcx
  10eee1:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  10eee8:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  10eeed:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  10eef2:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  10eef7:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  10eefe:	ff 
  10eeff:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  10ef06:	ff 
  10ef07:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  10ef0e:	ff 
  10ef0f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  10ef16:	ff 
  10ef17:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  10ef1e:	ff 
  10ef1f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  10ef26:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  10ef2d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  10ef34:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  10ef3b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  10ef42:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  10ef49:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  10ef50:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  10ef57:	fc                   	cld
  10ef58:	48 8d 45 08          	lea    rax,[rbp+0x8]
  10ef5c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  10ef63:	48 8b 05 9e 77 00 00 	mov    rax,QWORD PTR [rip+0x779e]        # 116708 <InterruptMessagePosition>
  10ef6a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  10ef71:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  10ef78:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  10ef7f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  10ef86:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  10ef8d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  10ef93:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  10ef99:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  10efa0:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  10efa7:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  10efae:	c1 e0 10             	shl    eax,0x10
  10efb1:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  10efb8:	09 c2                	or     edx,eax
  10efba:	48 8d 3d b4 13 ff ff 	lea    rdi,[rip+0xffffffffffff13b4]        # 100375 <_svfprintf_r.blanks-0x76b>
  10efc1:	e8 aa 5d ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  10efc6:	e8 55 54 ff ff       	call   104420 <_Z4stopv>
  10efcb:	e8 35 ec ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  10efd0:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  10efd7:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  10efde:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  10efe5:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  10efec:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  10eff3:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  10effa:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  10f001:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  10f008:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  10f00f:	ff 
  10f010:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  10f017:	ff 
  10f018:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  10f01f:	ff 
  10f020:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  10f027:	ff 
  10f028:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  10f02f:	ff 
  10f030:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  10f035:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  10f03a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  10f03f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  10f046:	59                   	pop    rcx
  10f047:	5a                   	pop    rdx
  10f048:	5e                   	pop    rsi
  10f049:	5f                   	pop    rdi
  10f04a:	41 58                	pop    r8
  10f04c:	41 59                	pop    r9
  10f04e:	41 5a                	pop    r10
  10f050:	41 5b                	pop    r11
  10f052:	58                   	pop    rax
  10f053:	5d                   	pop    rbp
  10f054:	48 cf                	iretq
  10f056:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10f05d:	00 00 00 

000000000010f060 <_Z11Interrupt_5P14InterruptFrame>:
  10f060:	55                   	push   rbp
  10f061:	48 89 e5             	mov    rbp,rsp
  10f064:	50                   	push   rax
  10f065:	41 53                	push   r11
  10f067:	41 52                	push   r10
  10f069:	41 51                	push   r9
  10f06b:	41 50                	push   r8
  10f06d:	57                   	push   rdi
  10f06e:	56                   	push   rsi
  10f06f:	52                   	push   rdx
  10f070:	51                   	push   rcx
  10f071:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  10f078:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  10f07d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  10f082:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  10f087:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  10f08e:	ff 
  10f08f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  10f096:	ff 
  10f097:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  10f09e:	ff 
  10f09f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  10f0a6:	ff 
  10f0a7:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  10f0ae:	ff 
  10f0af:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  10f0b6:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  10f0bd:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  10f0c4:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  10f0cb:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  10f0d2:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  10f0d9:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  10f0e0:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  10f0e7:	fc                   	cld
  10f0e8:	48 8d 45 08          	lea    rax,[rbp+0x8]
  10f0ec:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  10f0f3:	48 8b 05 0e 76 00 00 	mov    rax,QWORD PTR [rip+0x760e]        # 116708 <InterruptMessagePosition>
  10f0fa:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  10f101:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  10f108:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  10f10f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  10f116:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  10f11d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  10f123:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  10f129:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  10f130:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  10f137:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  10f13e:	c1 e0 10             	shl    eax,0x10
  10f141:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  10f148:	09 c2                	or     edx,eax
  10f14a:	48 8d 3d 9a 10 ff ff 	lea    rdi,[rip+0xffffffffffff109a]        # 1001eb <_svfprintf_r.blanks-0x8f5>
  10f151:	e8 1a 5c ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  10f156:	e8 c5 52 ff ff       	call   104420 <_Z4stopv>
  10f15b:	e8 a5 ea ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  10f160:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  10f167:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  10f16e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  10f175:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  10f17c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  10f183:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  10f18a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  10f191:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  10f198:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  10f19f:	ff 
  10f1a0:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  10f1a7:	ff 
  10f1a8:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  10f1af:	ff 
  10f1b0:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  10f1b7:	ff 
  10f1b8:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  10f1bf:	ff 
  10f1c0:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  10f1c5:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  10f1ca:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  10f1cf:	48 81 c4 28 01 00 00 	add    rsp,0x128
  10f1d6:	59                   	pop    rcx
  10f1d7:	5a                   	pop    rdx
  10f1d8:	5e                   	pop    rsi
  10f1d9:	5f                   	pop    rdi
  10f1da:	41 58                	pop    r8
  10f1dc:	41 59                	pop    r9
  10f1de:	41 5a                	pop    r10
  10f1e0:	41 5b                	pop    r11
  10f1e2:	58                   	pop    rax
  10f1e3:	5d                   	pop    rbp
  10f1e4:	48 cf                	iretq
  10f1e6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10f1ed:	00 00 00 

000000000010f1f0 <_Z11Interrupt_6P14InterruptFrame>:
  10f1f0:	55                   	push   rbp
  10f1f1:	48 89 e5             	mov    rbp,rsp
  10f1f4:	50                   	push   rax
  10f1f5:	41 53                	push   r11
  10f1f7:	41 52                	push   r10
  10f1f9:	41 51                	push   r9
  10f1fb:	41 50                	push   r8
  10f1fd:	57                   	push   rdi
  10f1fe:	56                   	push   rsi
  10f1ff:	52                   	push   rdx
  10f200:	51                   	push   rcx
  10f201:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  10f208:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  10f20d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  10f212:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  10f217:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  10f21e:	ff 
  10f21f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  10f226:	ff 
  10f227:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  10f22e:	ff 
  10f22f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  10f236:	ff 
  10f237:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  10f23e:	ff 
  10f23f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  10f246:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  10f24d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  10f254:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  10f25b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  10f262:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  10f269:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  10f270:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  10f277:	fc                   	cld
  10f278:	48 8d 45 08          	lea    rax,[rbp+0x8]
  10f27c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  10f283:	48 8b 05 7e 74 00 00 	mov    rax,QWORD PTR [rip+0x747e]        # 116708 <InterruptMessagePosition>
  10f28a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  10f291:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  10f298:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  10f29f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  10f2a6:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  10f2ad:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  10f2b3:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  10f2b9:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  10f2c0:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  10f2c7:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  10f2ce:	c1 e0 10             	shl    eax,0x10
  10f2d1:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  10f2d8:	09 c2                	or     edx,eax
  10f2da:	48 8d 3d fb 14 ff ff 	lea    rdi,[rip+0xffffffffffff14fb]        # 1007dc <_svfprintf_r.blanks-0x304>
  10f2e1:	e8 8a 5a ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  10f2e6:	e8 35 51 ff ff       	call   104420 <_Z4stopv>
  10f2eb:	e8 15 e9 ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  10f2f0:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  10f2f7:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  10f2fe:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  10f305:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  10f30c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  10f313:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  10f31a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  10f321:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  10f328:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  10f32f:	ff 
  10f330:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  10f337:	ff 
  10f338:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  10f33f:	ff 
  10f340:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  10f347:	ff 
  10f348:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  10f34f:	ff 
  10f350:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  10f355:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  10f35a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  10f35f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  10f366:	59                   	pop    rcx
  10f367:	5a                   	pop    rdx
  10f368:	5e                   	pop    rsi
  10f369:	5f                   	pop    rdi
  10f36a:	41 58                	pop    r8
  10f36c:	41 59                	pop    r9
  10f36e:	41 5a                	pop    r10
  10f370:	41 5b                	pop    r11
  10f372:	58                   	pop    rax
  10f373:	5d                   	pop    rbp
  10f374:	48 cf                	iretq
  10f376:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10f37d:	00 00 00 

000000000010f380 <_Z11Interrupt_7P14InterruptFrame>:
  10f380:	55                   	push   rbp
  10f381:	48 89 e5             	mov    rbp,rsp
  10f384:	50                   	push   rax
  10f385:	41 53                	push   r11
  10f387:	41 52                	push   r10
  10f389:	41 51                	push   r9
  10f38b:	41 50                	push   r8
  10f38d:	57                   	push   rdi
  10f38e:	56                   	push   rsi
  10f38f:	52                   	push   rdx
  10f390:	51                   	push   rcx
  10f391:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  10f398:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  10f39d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  10f3a2:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  10f3a7:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  10f3ae:	ff 
  10f3af:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  10f3b6:	ff 
  10f3b7:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  10f3be:	ff 
  10f3bf:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  10f3c6:	ff 
  10f3c7:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  10f3ce:	ff 
  10f3cf:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  10f3d6:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  10f3dd:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  10f3e4:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  10f3eb:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  10f3f2:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  10f3f9:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  10f400:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  10f407:	fc                   	cld
  10f408:	48 8d 45 08          	lea    rax,[rbp+0x8]
  10f40c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  10f413:	48 8b 05 ee 72 00 00 	mov    rax,QWORD PTR [rip+0x72ee]        # 116708 <InterruptMessagePosition>
  10f41a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  10f421:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  10f428:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  10f42f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  10f436:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  10f43d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  10f443:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  10f449:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  10f450:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  10f457:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  10f45e:	c1 e0 10             	shl    eax,0x10
  10f461:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  10f468:	09 c2                	or     edx,eax
  10f46a:	48 8d 3d eb 0f ff ff 	lea    rdi,[rip+0xffffffffffff0feb]        # 10045c <_svfprintf_r.blanks-0x684>
  10f471:	e8 fa 58 ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  10f476:	e8 a5 4f ff ff       	call   104420 <_Z4stopv>
  10f47b:	e8 85 e7 ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  10f480:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  10f487:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  10f48e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  10f495:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  10f49c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  10f4a3:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  10f4aa:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  10f4b1:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  10f4b8:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  10f4bf:	ff 
  10f4c0:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  10f4c7:	ff 
  10f4c8:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  10f4cf:	ff 
  10f4d0:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  10f4d7:	ff 
  10f4d8:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  10f4df:	ff 
  10f4e0:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  10f4e5:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  10f4ea:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  10f4ef:	48 81 c4 28 01 00 00 	add    rsp,0x128
  10f4f6:	59                   	pop    rcx
  10f4f7:	5a                   	pop    rdx
  10f4f8:	5e                   	pop    rsi
  10f4f9:	5f                   	pop    rdi
  10f4fa:	41 58                	pop    r8
  10f4fc:	41 59                	pop    r9
  10f4fe:	41 5a                	pop    r10
  10f500:	41 5b                	pop    r11
  10f502:	58                   	pop    rax
  10f503:	5d                   	pop    rbp
  10f504:	48 cf                	iretq
  10f506:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10f50d:	00 00 00 

000000000010f510 <_Z11Interrupt_8P14InterruptFrame>:
  10f510:	55                   	push   rbp
  10f511:	48 89 e5             	mov    rbp,rsp
  10f514:	50                   	push   rax
  10f515:	41 53                	push   r11
  10f517:	41 52                	push   r10
  10f519:	41 51                	push   r9
  10f51b:	41 50                	push   r8
  10f51d:	57                   	push   rdi
  10f51e:	56                   	push   rsi
  10f51f:	52                   	push   rdx
  10f520:	51                   	push   rcx
  10f521:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  10f528:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  10f52d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  10f532:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  10f537:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  10f53e:	ff 
  10f53f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  10f546:	ff 
  10f547:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  10f54e:	ff 
  10f54f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  10f556:	ff 
  10f557:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  10f55e:	ff 
  10f55f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  10f566:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  10f56d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  10f574:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  10f57b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  10f582:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  10f589:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  10f590:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  10f597:	fc                   	cld
  10f598:	48 8d 45 08          	lea    rax,[rbp+0x8]
  10f59c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  10f5a3:	48 8b 05 5e 71 00 00 	mov    rax,QWORD PTR [rip+0x715e]        # 116708 <InterruptMessagePosition>
  10f5aa:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  10f5b1:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  10f5b8:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  10f5bf:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  10f5c6:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  10f5cd:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  10f5d3:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  10f5d9:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  10f5e0:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  10f5e7:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  10f5ee:	c1 e0 10             	shl    eax,0x10
  10f5f1:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  10f5f8:	09 c2                	or     edx,eax
  10f5fa:	48 8d 3d f5 0b ff ff 	lea    rdi,[rip+0xffffffffffff0bf5]        # 1001f6 <_svfprintf_r.blanks-0x8ea>
  10f601:	e8 6a 57 ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  10f606:	e8 15 4e ff ff       	call   104420 <_Z4stopv>
  10f60b:	e8 f5 e5 ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  10f610:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  10f617:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  10f61e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  10f625:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  10f62c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  10f633:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  10f63a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  10f641:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  10f648:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  10f64f:	ff 
  10f650:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  10f657:	ff 
  10f658:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  10f65f:	ff 
  10f660:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  10f667:	ff 
  10f668:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  10f66f:	ff 
  10f670:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  10f675:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  10f67a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  10f67f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  10f686:	59                   	pop    rcx
  10f687:	5a                   	pop    rdx
  10f688:	5e                   	pop    rsi
  10f689:	5f                   	pop    rdi
  10f68a:	41 58                	pop    r8
  10f68c:	41 59                	pop    r9
  10f68e:	41 5a                	pop    r10
  10f690:	41 5b                	pop    r11
  10f692:	58                   	pop    rax
  10f693:	5d                   	pop    rbp
  10f694:	48 cf                	iretq
  10f696:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10f69d:	00 00 00 

000000000010f6a0 <_Z11Interrupt_9P14InterruptFrame>:
  10f6a0:	55                   	push   rbp
  10f6a1:	48 89 e5             	mov    rbp,rsp
  10f6a4:	50                   	push   rax
  10f6a5:	41 53                	push   r11
  10f6a7:	41 52                	push   r10
  10f6a9:	41 51                	push   r9
  10f6ab:	41 50                	push   r8
  10f6ad:	57                   	push   rdi
  10f6ae:	56                   	push   rsi
  10f6af:	52                   	push   rdx
  10f6b0:	51                   	push   rcx
  10f6b1:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  10f6b8:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  10f6bd:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  10f6c2:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  10f6c7:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  10f6ce:	ff 
  10f6cf:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  10f6d6:	ff 
  10f6d7:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  10f6de:	ff 
  10f6df:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  10f6e6:	ff 
  10f6e7:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  10f6ee:	ff 
  10f6ef:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  10f6f6:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  10f6fd:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  10f704:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  10f70b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  10f712:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  10f719:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  10f720:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  10f727:	fc                   	cld
  10f728:	48 8d 45 08          	lea    rax,[rbp+0x8]
  10f72c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  10f733:	48 8b 05 ce 6f 00 00 	mov    rax,QWORD PTR [rip+0x6fce]        # 116708 <InterruptMessagePosition>
  10f73a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  10f741:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  10f748:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  10f74f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  10f756:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  10f75d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  10f763:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  10f769:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  10f770:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  10f777:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  10f77e:	c1 e0 10             	shl    eax,0x10
  10f781:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  10f788:	09 c2                	or     edx,eax
  10f78a:	48 8d 3d 28 0d ff ff 	lea    rdi,[rip+0xffffffffffff0d28]        # 1004b9 <_svfprintf_r.blanks-0x627>
  10f791:	e8 da 55 ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  10f796:	e8 85 4c ff ff       	call   104420 <_Z4stopv>
  10f79b:	e8 65 e4 ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  10f7a0:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  10f7a7:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  10f7ae:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  10f7b5:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  10f7bc:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  10f7c3:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  10f7ca:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  10f7d1:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  10f7d8:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  10f7df:	ff 
  10f7e0:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  10f7e7:	ff 
  10f7e8:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  10f7ef:	ff 
  10f7f0:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  10f7f7:	ff 
  10f7f8:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  10f7ff:	ff 
  10f800:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  10f805:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  10f80a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  10f80f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  10f816:	59                   	pop    rcx
  10f817:	5a                   	pop    rdx
  10f818:	5e                   	pop    rsi
  10f819:	5f                   	pop    rdi
  10f81a:	41 58                	pop    r8
  10f81c:	41 59                	pop    r9
  10f81e:	41 5a                	pop    r10
  10f820:	41 5b                	pop    r11
  10f822:	58                   	pop    rax
  10f823:	5d                   	pop    rbp
  10f824:	48 cf                	iretq
  10f826:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10f82d:	00 00 00 

000000000010f830 <_Z12Interrupt_10P14InterruptFrame>:
  10f830:	55                   	push   rbp
  10f831:	48 89 e5             	mov    rbp,rsp
  10f834:	50                   	push   rax
  10f835:	41 53                	push   r11
  10f837:	41 52                	push   r10
  10f839:	41 51                	push   r9
  10f83b:	41 50                	push   r8
  10f83d:	57                   	push   rdi
  10f83e:	56                   	push   rsi
  10f83f:	52                   	push   rdx
  10f840:	51                   	push   rcx
  10f841:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  10f848:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  10f84d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  10f852:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  10f857:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  10f85e:	ff 
  10f85f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  10f866:	ff 
  10f867:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  10f86e:	ff 
  10f86f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  10f876:	ff 
  10f877:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  10f87e:	ff 
  10f87f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  10f886:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  10f88d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  10f894:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  10f89b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  10f8a2:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  10f8a9:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  10f8b0:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  10f8b7:	fc                   	cld
  10f8b8:	48 8d 45 08          	lea    rax,[rbp+0x8]
  10f8bc:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  10f8c3:	48 8b 05 3e 6e 00 00 	mov    rax,QWORD PTR [rip+0x6e3e]        # 116708 <InterruptMessagePosition>
  10f8ca:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  10f8d1:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  10f8d8:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  10f8df:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  10f8e6:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  10f8ed:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  10f8f3:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  10f8f9:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  10f900:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  10f907:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  10f90e:	c1 e0 10             	shl    eax,0x10
  10f911:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  10f918:	09 c2                	or     edx,eax
  10f91a:	48 8d 3d 1e 0b ff ff 	lea    rdi,[rip+0xffffffffffff0b1e]        # 10043f <_svfprintf_r.blanks-0x6a1>
  10f921:	e8 4a 54 ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  10f926:	e8 f5 4a ff ff       	call   104420 <_Z4stopv>
  10f92b:	e8 d5 e2 ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  10f930:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  10f937:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  10f93e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  10f945:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  10f94c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  10f953:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  10f95a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  10f961:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  10f968:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  10f96f:	ff 
  10f970:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  10f977:	ff 
  10f978:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  10f97f:	ff 
  10f980:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  10f987:	ff 
  10f988:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  10f98f:	ff 
  10f990:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  10f995:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  10f99a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  10f99f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  10f9a6:	59                   	pop    rcx
  10f9a7:	5a                   	pop    rdx
  10f9a8:	5e                   	pop    rsi
  10f9a9:	5f                   	pop    rdi
  10f9aa:	41 58                	pop    r8
  10f9ac:	41 59                	pop    r9
  10f9ae:	41 5a                	pop    r10
  10f9b0:	41 5b                	pop    r11
  10f9b2:	58                   	pop    rax
  10f9b3:	5d                   	pop    rbp
  10f9b4:	48 cf                	iretq
  10f9b6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10f9bd:	00 00 00 

000000000010f9c0 <_Z12Interrupt_11P14InterruptFrame>:
  10f9c0:	55                   	push   rbp
  10f9c1:	48 89 e5             	mov    rbp,rsp
  10f9c4:	50                   	push   rax
  10f9c5:	41 53                	push   r11
  10f9c7:	41 52                	push   r10
  10f9c9:	41 51                	push   r9
  10f9cb:	41 50                	push   r8
  10f9cd:	57                   	push   rdi
  10f9ce:	56                   	push   rsi
  10f9cf:	52                   	push   rdx
  10f9d0:	51                   	push   rcx
  10f9d1:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  10f9d8:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  10f9dd:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  10f9e2:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  10f9e7:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  10f9ee:	ff 
  10f9ef:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  10f9f6:	ff 
  10f9f7:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  10f9fe:	ff 
  10f9ff:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  10fa06:	ff 
  10fa07:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  10fa0e:	ff 
  10fa0f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  10fa16:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  10fa1d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  10fa24:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  10fa2b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  10fa32:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  10fa39:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  10fa40:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  10fa47:	fc                   	cld
  10fa48:	48 8d 45 08          	lea    rax,[rbp+0x8]
  10fa4c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  10fa53:	48 8b 05 ae 6c 00 00 	mov    rax,QWORD PTR [rip+0x6cae]        # 116708 <InterruptMessagePosition>
  10fa5a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  10fa61:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  10fa68:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  10fa6f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  10fa76:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  10fa7d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  10fa83:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  10fa89:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  10fa90:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  10fa97:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  10fa9e:	c1 e0 10             	shl    eax,0x10
  10faa1:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  10faa8:	09 c2                	or     edx,eax
  10faaa:	48 8d 3d 50 07 ff ff 	lea    rdi,[rip+0xffffffffffff0750]        # 100201 <_svfprintf_r.blanks-0x8df>
  10fab1:	e8 ba 52 ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  10fab6:	e8 65 49 ff ff       	call   104420 <_Z4stopv>
  10fabb:	e8 45 e1 ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  10fac0:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  10fac7:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  10face:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  10fad5:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  10fadc:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  10fae3:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  10faea:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  10faf1:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  10faf8:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  10faff:	ff 
  10fb00:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  10fb07:	ff 
  10fb08:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  10fb0f:	ff 
  10fb10:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  10fb17:	ff 
  10fb18:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  10fb1f:	ff 
  10fb20:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  10fb25:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  10fb2a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  10fb2f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  10fb36:	59                   	pop    rcx
  10fb37:	5a                   	pop    rdx
  10fb38:	5e                   	pop    rsi
  10fb39:	5f                   	pop    rdi
  10fb3a:	41 58                	pop    r8
  10fb3c:	41 59                	pop    r9
  10fb3e:	41 5a                	pop    r10
  10fb40:	41 5b                	pop    r11
  10fb42:	58                   	pop    rax
  10fb43:	5d                   	pop    rbp
  10fb44:	48 cf                	iretq
  10fb46:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10fb4d:	00 00 00 

000000000010fb50 <_Z12Interrupt_15P14InterruptFrame>:
  10fb50:	55                   	push   rbp
  10fb51:	48 89 e5             	mov    rbp,rsp
  10fb54:	50                   	push   rax
  10fb55:	41 53                	push   r11
  10fb57:	41 52                	push   r10
  10fb59:	41 51                	push   r9
  10fb5b:	41 50                	push   r8
  10fb5d:	57                   	push   rdi
  10fb5e:	56                   	push   rsi
  10fb5f:	52                   	push   rdx
  10fb60:	51                   	push   rcx
  10fb61:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  10fb68:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  10fb6d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  10fb72:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  10fb77:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  10fb7e:	ff 
  10fb7f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  10fb86:	ff 
  10fb87:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  10fb8e:	ff 
  10fb8f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  10fb96:	ff 
  10fb97:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  10fb9e:	ff 
  10fb9f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  10fba6:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  10fbad:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  10fbb4:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  10fbbb:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  10fbc2:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  10fbc9:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  10fbd0:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  10fbd7:	fc                   	cld
  10fbd8:	48 8d 45 08          	lea    rax,[rbp+0x8]
  10fbdc:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  10fbe3:	48 8b 05 1e 6b 00 00 	mov    rax,QWORD PTR [rip+0x6b1e]        # 116708 <InterruptMessagePosition>
  10fbea:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  10fbf1:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  10fbf8:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  10fbff:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  10fc06:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  10fc0d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  10fc13:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  10fc19:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  10fc20:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  10fc27:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  10fc2e:	c1 e0 10             	shl    eax,0x10
  10fc31:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  10fc38:	09 c2                	or     edx,eax
  10fc3a:	48 8d 3d cd 06 ff ff 	lea    rdi,[rip+0xffffffffffff06cd]        # 10030e <_svfprintf_r.blanks-0x7d2>
  10fc41:	e8 2a 51 ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  10fc46:	e8 d5 47 ff ff       	call   104420 <_Z4stopv>
  10fc4b:	e8 b5 df ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  10fc50:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  10fc57:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  10fc5e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  10fc65:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  10fc6c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  10fc73:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  10fc7a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  10fc81:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  10fc88:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  10fc8f:	ff 
  10fc90:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  10fc97:	ff 
  10fc98:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  10fc9f:	ff 
  10fca0:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  10fca7:	ff 
  10fca8:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  10fcaf:	ff 
  10fcb0:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  10fcb5:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  10fcba:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  10fcbf:	48 81 c4 28 01 00 00 	add    rsp,0x128
  10fcc6:	59                   	pop    rcx
  10fcc7:	5a                   	pop    rdx
  10fcc8:	5e                   	pop    rsi
  10fcc9:	5f                   	pop    rdi
  10fcca:	41 58                	pop    r8
  10fccc:	41 59                	pop    r9
  10fcce:	41 5a                	pop    r10
  10fcd0:	41 5b                	pop    r11
  10fcd2:	58                   	pop    rax
  10fcd3:	5d                   	pop    rbp
  10fcd4:	48 cf                	iretq
  10fcd6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10fcdd:	00 00 00 

000000000010fce0 <_Z12Interrupt_16P14InterruptFrame>:
  10fce0:	55                   	push   rbp
  10fce1:	48 89 e5             	mov    rbp,rsp
  10fce4:	50                   	push   rax
  10fce5:	41 53                	push   r11
  10fce7:	41 52                	push   r10
  10fce9:	41 51                	push   r9
  10fceb:	41 50                	push   r8
  10fced:	57                   	push   rdi
  10fcee:	56                   	push   rsi
  10fcef:	52                   	push   rdx
  10fcf0:	51                   	push   rcx
  10fcf1:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  10fcf8:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  10fcfd:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  10fd02:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  10fd07:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  10fd0e:	ff 
  10fd0f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  10fd16:	ff 
  10fd17:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  10fd1e:	ff 
  10fd1f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  10fd26:	ff 
  10fd27:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  10fd2e:	ff 
  10fd2f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  10fd36:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  10fd3d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  10fd44:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  10fd4b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  10fd52:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  10fd59:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  10fd60:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  10fd67:	fc                   	cld
  10fd68:	48 8d 45 08          	lea    rax,[rbp+0x8]
  10fd6c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  10fd73:	48 8b 05 8e 69 00 00 	mov    rax,QWORD PTR [rip+0x698e]        # 116708 <InterruptMessagePosition>
  10fd7a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  10fd81:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  10fd88:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  10fd8f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  10fd96:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  10fd9d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  10fda3:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  10fda9:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  10fdb0:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  10fdb7:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  10fdbe:	c1 e0 10             	shl    eax,0x10
  10fdc1:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  10fdc8:	09 c2                	or     edx,eax
  10fdca:	48 8d 3d 19 06 ff ff 	lea    rdi,[rip+0xffffffffffff0619]        # 1003ea <_svfprintf_r.blanks-0x6f6>
  10fdd1:	e8 9a 4f ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  10fdd6:	e8 45 46 ff ff       	call   104420 <_Z4stopv>
  10fddb:	e8 25 de ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  10fde0:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  10fde7:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  10fdee:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  10fdf5:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  10fdfc:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  10fe03:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  10fe0a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  10fe11:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  10fe18:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  10fe1f:	ff 
  10fe20:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  10fe27:	ff 
  10fe28:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  10fe2f:	ff 
  10fe30:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  10fe37:	ff 
  10fe38:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  10fe3f:	ff 
  10fe40:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  10fe45:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  10fe4a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  10fe4f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  10fe56:	59                   	pop    rcx
  10fe57:	5a                   	pop    rdx
  10fe58:	5e                   	pop    rsi
  10fe59:	5f                   	pop    rdi
  10fe5a:	41 58                	pop    r8
  10fe5c:	41 59                	pop    r9
  10fe5e:	41 5a                	pop    r10
  10fe60:	41 5b                	pop    r11
  10fe62:	58                   	pop    rax
  10fe63:	5d                   	pop    rbp
  10fe64:	48 cf                	iretq
  10fe66:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10fe6d:	00 00 00 

000000000010fe70 <_Z12Interrupt_17P14InterruptFrame>:
  10fe70:	55                   	push   rbp
  10fe71:	48 89 e5             	mov    rbp,rsp
  10fe74:	50                   	push   rax
  10fe75:	41 53                	push   r11
  10fe77:	41 52                	push   r10
  10fe79:	41 51                	push   r9
  10fe7b:	41 50                	push   r8
  10fe7d:	57                   	push   rdi
  10fe7e:	56                   	push   rsi
  10fe7f:	52                   	push   rdx
  10fe80:	51                   	push   rcx
  10fe81:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  10fe88:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  10fe8d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  10fe92:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  10fe97:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  10fe9e:	ff 
  10fe9f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  10fea6:	ff 
  10fea7:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  10feae:	ff 
  10feaf:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  10feb6:	ff 
  10feb7:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  10febe:	ff 
  10febf:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  10fec6:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  10fecd:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  10fed4:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  10fedb:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  10fee2:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  10fee9:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  10fef0:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  10fef7:	fc                   	cld
  10fef8:	48 8d 45 08          	lea    rax,[rbp+0x8]
  10fefc:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  10ff03:	48 8b 05 fe 67 00 00 	mov    rax,QWORD PTR [rip+0x67fe]        # 116708 <InterruptMessagePosition>
  10ff0a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  10ff11:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  10ff18:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  10ff1f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  10ff26:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  10ff2d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  10ff33:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  10ff39:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  10ff40:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  10ff47:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  10ff4e:	c1 e0 10             	shl    eax,0x10
  10ff51:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  10ff58:	09 c2                	or     edx,eax
  10ff5a:	48 8d 3d 55 04 ff ff 	lea    rdi,[rip+0xffffffffffff0455]        # 1003b6 <_svfprintf_r.blanks-0x72a>
  10ff61:	e8 0a 4e ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  10ff66:	e8 b5 44 ff ff       	call   104420 <_Z4stopv>
  10ff6b:	e8 95 dc ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  10ff70:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  10ff77:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  10ff7e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  10ff85:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  10ff8c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  10ff93:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  10ff9a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  10ffa1:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  10ffa8:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  10ffaf:	ff 
  10ffb0:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  10ffb7:	ff 
  10ffb8:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  10ffbf:	ff 
  10ffc0:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  10ffc7:	ff 
  10ffc8:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  10ffcf:	ff 
  10ffd0:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  10ffd5:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  10ffda:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  10ffdf:	48 81 c4 28 01 00 00 	add    rsp,0x128
  10ffe6:	59                   	pop    rcx
  10ffe7:	5a                   	pop    rdx
  10ffe8:	5e                   	pop    rsi
  10ffe9:	5f                   	pop    rdi
  10ffea:	41 58                	pop    r8
  10ffec:	41 59                	pop    r9
  10ffee:	41 5a                	pop    r10
  10fff0:	41 5b                	pop    r11
  10fff2:	58                   	pop    rax
  10fff3:	5d                   	pop    rbp
  10fff4:	48 cf                	iretq
  10fff6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  10fffd:	00 00 00 

0000000000110000 <_Z12Interrupt_18P14InterruptFrame>:
  110000:	55                   	push   rbp
  110001:	48 89 e5             	mov    rbp,rsp
  110004:	50                   	push   rax
  110005:	41 53                	push   r11
  110007:	41 52                	push   r10
  110009:	41 51                	push   r9
  11000b:	41 50                	push   r8
  11000d:	57                   	push   rdi
  11000e:	56                   	push   rsi
  11000f:	52                   	push   rdx
  110010:	51                   	push   rcx
  110011:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  110018:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  11001d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  110022:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  110027:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  11002e:	ff 
  11002f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  110036:	ff 
  110037:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  11003e:	ff 
  11003f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  110046:	ff 
  110047:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  11004e:	ff 
  11004f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  110056:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  11005d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  110064:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  11006b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  110072:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  110079:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  110080:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  110087:	fc                   	cld
  110088:	48 8d 45 08          	lea    rax,[rbp+0x8]
  11008c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  110093:	48 8b 05 6e 66 00 00 	mov    rax,QWORD PTR [rip+0x666e]        # 116708 <InterruptMessagePosition>
  11009a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  1100a1:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  1100a8:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  1100af:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  1100b6:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  1100bd:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  1100c3:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  1100c9:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  1100d0:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  1100d7:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  1100de:	c1 e0 10             	shl    eax,0x10
  1100e1:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  1100e8:	09 c2                	or     edx,eax
  1100ea:	48 8d 3d 4d 04 ff ff 	lea    rdi,[rip+0xffffffffffff044d]        # 10053e <_svfprintf_r.blanks-0x5a2>
  1100f1:	e8 7a 4c ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  1100f6:	e8 25 43 ff ff       	call   104420 <_Z4stopv>
  1100fb:	e8 05 db ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  110100:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  110107:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  11010e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  110115:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  11011c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  110123:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  11012a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  110131:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  110138:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  11013f:	ff 
  110140:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  110147:	ff 
  110148:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  11014f:	ff 
  110150:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  110157:	ff 
  110158:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  11015f:	ff 
  110160:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  110165:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  11016a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  11016f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  110176:	59                   	pop    rcx
  110177:	5a                   	pop    rdx
  110178:	5e                   	pop    rsi
  110179:	5f                   	pop    rdi
  11017a:	41 58                	pop    r8
  11017c:	41 59                	pop    r9
  11017e:	41 5a                	pop    r10
  110180:	41 5b                	pop    r11
  110182:	58                   	pop    rax
  110183:	5d                   	pop    rbp
  110184:	48 cf                	iretq
  110186:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  11018d:	00 00 00 

0000000000110190 <_Z12Interrupt_19P14InterruptFrame>:
  110190:	55                   	push   rbp
  110191:	48 89 e5             	mov    rbp,rsp
  110194:	50                   	push   rax
  110195:	41 53                	push   r11
  110197:	41 52                	push   r10
  110199:	41 51                	push   r9
  11019b:	41 50                	push   r8
  11019d:	57                   	push   rdi
  11019e:	56                   	push   rsi
  11019f:	52                   	push   rdx
  1101a0:	51                   	push   rcx
  1101a1:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  1101a8:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  1101ad:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  1101b2:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  1101b7:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  1101be:	ff 
  1101bf:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  1101c6:	ff 
  1101c7:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  1101ce:	ff 
  1101cf:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  1101d6:	ff 
  1101d7:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  1101de:	ff 
  1101df:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  1101e6:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  1101ed:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  1101f4:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  1101fb:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  110202:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  110209:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  110210:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  110217:	fc                   	cld
  110218:	48 8d 45 08          	lea    rax,[rbp+0x8]
  11021c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  110223:	48 8b 05 de 64 00 00 	mov    rax,QWORD PTR [rip+0x64de]        # 116708 <InterruptMessagePosition>
  11022a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  110231:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  110238:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  11023f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  110246:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  11024d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  110253:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  110259:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  110260:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  110267:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  11026e:	c1 e0 10             	shl    eax,0x10
  110271:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  110278:	09 c2                	or     edx,eax
  11027a:	48 8d 3d bc ff fe ff 	lea    rdi,[rip+0xfffffffffffeffbc]        # 10023d <_svfprintf_r.blanks-0x8a3>
  110281:	e8 ea 4a ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  110286:	e8 95 41 ff ff       	call   104420 <_Z4stopv>
  11028b:	e8 75 d9 ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  110290:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  110297:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  11029e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  1102a5:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  1102ac:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  1102b3:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  1102ba:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  1102c1:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  1102c8:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  1102cf:	ff 
  1102d0:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  1102d7:	ff 
  1102d8:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  1102df:	ff 
  1102e0:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  1102e7:	ff 
  1102e8:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  1102ef:	ff 
  1102f0:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  1102f5:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  1102fa:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  1102ff:	48 81 c4 28 01 00 00 	add    rsp,0x128
  110306:	59                   	pop    rcx
  110307:	5a                   	pop    rdx
  110308:	5e                   	pop    rsi
  110309:	5f                   	pop    rdi
  11030a:	41 58                	pop    r8
  11030c:	41 59                	pop    r9
  11030e:	41 5a                	pop    r10
  110310:	41 5b                	pop    r11
  110312:	58                   	pop    rax
  110313:	5d                   	pop    rbp
  110314:	48 cf                	iretq
  110316:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  11031d:	00 00 00 

0000000000110320 <_Z12Interrupt_20P14InterruptFrame>:
  110320:	55                   	push   rbp
  110321:	48 89 e5             	mov    rbp,rsp
  110324:	50                   	push   rax
  110325:	41 53                	push   r11
  110327:	41 52                	push   r10
  110329:	41 51                	push   r9
  11032b:	41 50                	push   r8
  11032d:	57                   	push   rdi
  11032e:	56                   	push   rsi
  11032f:	52                   	push   rdx
  110330:	51                   	push   rcx
  110331:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  110338:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  11033d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  110342:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  110347:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  11034e:	ff 
  11034f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  110356:	ff 
  110357:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  11035e:	ff 
  11035f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  110366:	ff 
  110367:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  11036e:	ff 
  11036f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  110376:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  11037d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  110384:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  11038b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  110392:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  110399:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  1103a0:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  1103a7:	fc                   	cld
  1103a8:	48 8d 45 08          	lea    rax,[rbp+0x8]
  1103ac:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  1103b3:	48 8b 05 4e 63 00 00 	mov    rax,QWORD PTR [rip+0x634e]        # 116708 <InterruptMessagePosition>
  1103ba:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  1103c1:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  1103c8:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  1103cf:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  1103d6:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  1103dd:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  1103e3:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  1103e9:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  1103f0:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  1103f7:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  1103fe:	c1 e0 10             	shl    eax,0x10
  110401:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  110408:	09 c2                	or     edx,eax
  11040a:	48 8d 3d 8f 00 ff ff 	lea    rdi,[rip+0xffffffffffff008f]        # 1004a0 <_svfprintf_r.blanks-0x640>
  110411:	e8 5a 49 ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  110416:	e8 05 40 ff ff       	call   104420 <_Z4stopv>
  11041b:	e8 e5 d7 ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  110420:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  110427:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  11042e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  110435:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  11043c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  110443:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  11044a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  110451:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  110458:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  11045f:	ff 
  110460:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  110467:	ff 
  110468:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  11046f:	ff 
  110470:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  110477:	ff 
  110478:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  11047f:	ff 
  110480:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  110485:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  11048a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  11048f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  110496:	59                   	pop    rcx
  110497:	5a                   	pop    rdx
  110498:	5e                   	pop    rsi
  110499:	5f                   	pop    rdi
  11049a:	41 58                	pop    r8
  11049c:	41 59                	pop    r9
  11049e:	41 5a                	pop    r10
  1104a0:	41 5b                	pop    r11
  1104a2:	58                   	pop    rax
  1104a3:	5d                   	pop    rbp
  1104a4:	48 cf                	iretq
  1104a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  1104ad:	00 00 00 

00000000001104b0 <_Z12Interrupt_21P14InterruptFrame>:
  1104b0:	55                   	push   rbp
  1104b1:	48 89 e5             	mov    rbp,rsp
  1104b4:	50                   	push   rax
  1104b5:	41 53                	push   r11
  1104b7:	41 52                	push   r10
  1104b9:	41 51                	push   r9
  1104bb:	41 50                	push   r8
  1104bd:	57                   	push   rdi
  1104be:	56                   	push   rsi
  1104bf:	52                   	push   rdx
  1104c0:	51                   	push   rcx
  1104c1:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  1104c8:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  1104cd:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  1104d2:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  1104d7:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  1104de:	ff 
  1104df:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  1104e6:	ff 
  1104e7:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  1104ee:	ff 
  1104ef:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  1104f6:	ff 
  1104f7:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  1104fe:	ff 
  1104ff:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  110506:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  11050d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  110514:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  11051b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  110522:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  110529:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  110530:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  110537:	fc                   	cld
  110538:	48 8d 45 08          	lea    rax,[rbp+0x8]
  11053c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  110543:	48 8b 05 be 61 00 00 	mov    rax,QWORD PTR [rip+0x61be]        # 116708 <InterruptMessagePosition>
  11054a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  110551:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  110558:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  11055f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  110566:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  11056d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  110573:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  110579:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  110580:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  110587:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  11058e:	c1 e0 10             	shl    eax,0x10
  110591:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  110598:	09 c2                	or     edx,eax
  11059a:	48 8d 3d e1 fb fe ff 	lea    rdi,[rip+0xfffffffffffefbe1]        # 100182 <_svfprintf_r.blanks-0x95e>
  1105a1:	e8 ca 47 ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  1105a6:	e8 75 3e ff ff       	call   104420 <_Z4stopv>
  1105ab:	e8 55 d6 ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  1105b0:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  1105b7:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  1105be:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  1105c5:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  1105cc:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  1105d3:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  1105da:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  1105e1:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  1105e8:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  1105ef:	ff 
  1105f0:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  1105f7:	ff 
  1105f8:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  1105ff:	ff 
  110600:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  110607:	ff 
  110608:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  11060f:	ff 
  110610:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  110615:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  11061a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  11061f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  110626:	59                   	pop    rcx
  110627:	5a                   	pop    rdx
  110628:	5e                   	pop    rsi
  110629:	5f                   	pop    rdi
  11062a:	41 58                	pop    r8
  11062c:	41 59                	pop    r9
  11062e:	41 5a                	pop    r10
  110630:	41 5b                	pop    r11
  110632:	58                   	pop    rax
  110633:	5d                   	pop    rbp
  110634:	48 cf                	iretq
  110636:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  11063d:	00 00 00 

0000000000110640 <_Z12Interrupt_22P14InterruptFrame>:
  110640:	55                   	push   rbp
  110641:	48 89 e5             	mov    rbp,rsp
  110644:	50                   	push   rax
  110645:	41 53                	push   r11
  110647:	41 52                	push   r10
  110649:	41 51                	push   r9
  11064b:	41 50                	push   r8
  11064d:	57                   	push   rdi
  11064e:	56                   	push   rsi
  11064f:	52                   	push   rdx
  110650:	51                   	push   rcx
  110651:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  110658:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  11065d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  110662:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  110667:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  11066e:	ff 
  11066f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  110676:	ff 
  110677:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  11067e:	ff 
  11067f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  110686:	ff 
  110687:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  11068e:	ff 
  11068f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  110696:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  11069d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  1106a4:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  1106ab:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  1106b2:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  1106b9:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  1106c0:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  1106c7:	fc                   	cld
  1106c8:	48 8d 45 08          	lea    rax,[rbp+0x8]
  1106cc:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  1106d3:	48 8b 05 2e 60 00 00 	mov    rax,QWORD PTR [rip+0x602e]        # 116708 <InterruptMessagePosition>
  1106da:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  1106e1:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  1106e8:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  1106ef:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  1106f6:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  1106fd:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  110703:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  110709:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  110710:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  110717:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  11071e:	c1 e0 10             	shl    eax,0x10
  110721:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  110728:	09 c2                	or     edx,eax
  11072a:	48 8d 3d 2f 00 ff ff 	lea    rdi,[rip+0xffffffffffff002f]        # 100760 <_svfprintf_r.blanks-0x380>
  110731:	e8 3a 46 ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  110736:	e8 e5 3c ff ff       	call   104420 <_Z4stopv>
  11073b:	e8 c5 d4 ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  110740:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  110747:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  11074e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  110755:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  11075c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  110763:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  11076a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  110771:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  110778:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  11077f:	ff 
  110780:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  110787:	ff 
  110788:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  11078f:	ff 
  110790:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  110797:	ff 
  110798:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  11079f:	ff 
  1107a0:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  1107a5:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  1107aa:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  1107af:	48 81 c4 28 01 00 00 	add    rsp,0x128
  1107b6:	59                   	pop    rcx
  1107b7:	5a                   	pop    rdx
  1107b8:	5e                   	pop    rsi
  1107b9:	5f                   	pop    rdi
  1107ba:	41 58                	pop    r8
  1107bc:	41 59                	pop    r9
  1107be:	41 5a                	pop    r10
  1107c0:	41 5b                	pop    r11
  1107c2:	58                   	pop    rax
  1107c3:	5d                   	pop    rbp
  1107c4:	48 cf                	iretq
  1107c6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  1107cd:	00 00 00 

00000000001107d0 <_Z12Interrupt_23P14InterruptFrame>:
  1107d0:	55                   	push   rbp
  1107d1:	48 89 e5             	mov    rbp,rsp
  1107d4:	50                   	push   rax
  1107d5:	41 53                	push   r11
  1107d7:	41 52                	push   r10
  1107d9:	41 51                	push   r9
  1107db:	41 50                	push   r8
  1107dd:	57                   	push   rdi
  1107de:	56                   	push   rsi
  1107df:	52                   	push   rdx
  1107e0:	51                   	push   rcx
  1107e1:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  1107e8:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  1107ed:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  1107f2:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  1107f7:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  1107fe:	ff 
  1107ff:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  110806:	ff 
  110807:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  11080e:	ff 
  11080f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  110816:	ff 
  110817:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  11081e:	ff 
  11081f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  110826:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  11082d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  110834:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  11083b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  110842:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  110849:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  110850:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  110857:	fc                   	cld
  110858:	48 8d 45 08          	lea    rax,[rbp+0x8]
  11085c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  110863:	48 8b 05 9e 5e 00 00 	mov    rax,QWORD PTR [rip+0x5e9e]        # 116708 <InterruptMessagePosition>
  11086a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  110871:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  110878:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  11087f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  110886:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  11088d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  110893:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  110899:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  1108a0:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  1108a7:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  1108ae:	c1 e0 10             	shl    eax,0x10
  1108b1:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  1108b8:	09 c2                	or     edx,eax
  1108ba:	48 8d 3d f1 f9 fe ff 	lea    rdi,[rip+0xfffffffffffef9f1]        # 1002b2 <_svfprintf_r.blanks-0x82e>
  1108c1:	e8 aa 44 ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  1108c6:	e8 55 3b ff ff       	call   104420 <_Z4stopv>
  1108cb:	e8 35 d3 ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  1108d0:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  1108d7:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  1108de:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  1108e5:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  1108ec:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  1108f3:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  1108fa:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  110901:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  110908:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  11090f:	ff 
  110910:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  110917:	ff 
  110918:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  11091f:	ff 
  110920:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  110927:	ff 
  110928:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  11092f:	ff 
  110930:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  110935:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  11093a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  11093f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  110946:	59                   	pop    rcx
  110947:	5a                   	pop    rdx
  110948:	5e                   	pop    rsi
  110949:	5f                   	pop    rdi
  11094a:	41 58                	pop    r8
  11094c:	41 59                	pop    r9
  11094e:	41 5a                	pop    r10
  110950:	41 5b                	pop    r11
  110952:	58                   	pop    rax
  110953:	5d                   	pop    rbp
  110954:	48 cf                	iretq
  110956:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  11095d:	00 00 00 

0000000000110960 <_Z12Interrupt_24P14InterruptFrame>:
  110960:	55                   	push   rbp
  110961:	48 89 e5             	mov    rbp,rsp
  110964:	50                   	push   rax
  110965:	41 53                	push   r11
  110967:	41 52                	push   r10
  110969:	41 51                	push   r9
  11096b:	41 50                	push   r8
  11096d:	57                   	push   rdi
  11096e:	56                   	push   rsi
  11096f:	52                   	push   rdx
  110970:	51                   	push   rcx
  110971:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  110978:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  11097d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  110982:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  110987:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  11098e:	ff 
  11098f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  110996:	ff 
  110997:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  11099e:	ff 
  11099f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  1109a6:	ff 
  1109a7:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  1109ae:	ff 
  1109af:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  1109b6:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  1109bd:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  1109c4:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  1109cb:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  1109d2:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  1109d9:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  1109e0:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  1109e7:	fc                   	cld
  1109e8:	48 8d 45 08          	lea    rax,[rbp+0x8]
  1109ec:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  1109f3:	48 8b 05 0e 5d 00 00 	mov    rax,QWORD PTR [rip+0x5d0e]        # 116708 <InterruptMessagePosition>
  1109fa:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  110a01:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  110a08:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  110a0f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  110a16:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  110a1d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  110a23:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  110a29:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  110a30:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  110a37:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  110a3e:	c1 e0 10             	shl    eax,0x10
  110a41:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  110a48:	09 c2                	or     edx,eax
  110a4a:	48 8d 3d c2 fc fe ff 	lea    rdi,[rip+0xfffffffffffefcc2]        # 100713 <_svfprintf_r.blanks-0x3cd>
  110a51:	e8 1a 43 ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  110a56:	e8 c5 39 ff ff       	call   104420 <_Z4stopv>
  110a5b:	e8 a5 d1 ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  110a60:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  110a67:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  110a6e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  110a75:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  110a7c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  110a83:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  110a8a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  110a91:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  110a98:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  110a9f:	ff 
  110aa0:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  110aa7:	ff 
  110aa8:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  110aaf:	ff 
  110ab0:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  110ab7:	ff 
  110ab8:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  110abf:	ff 
  110ac0:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  110ac5:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  110aca:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  110acf:	48 81 c4 28 01 00 00 	add    rsp,0x128
  110ad6:	59                   	pop    rcx
  110ad7:	5a                   	pop    rdx
  110ad8:	5e                   	pop    rsi
  110ad9:	5f                   	pop    rdi
  110ada:	41 58                	pop    r8
  110adc:	41 59                	pop    r9
  110ade:	41 5a                	pop    r10
  110ae0:	41 5b                	pop    r11
  110ae2:	58                   	pop    rax
  110ae3:	5d                   	pop    rbp
  110ae4:	48 cf                	iretq
  110ae6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  110aed:	00 00 00 

0000000000110af0 <_Z12Interrupt_25P14InterruptFrame>:
  110af0:	55                   	push   rbp
  110af1:	48 89 e5             	mov    rbp,rsp
  110af4:	50                   	push   rax
  110af5:	41 53                	push   r11
  110af7:	41 52                	push   r10
  110af9:	41 51                	push   r9
  110afb:	41 50                	push   r8
  110afd:	57                   	push   rdi
  110afe:	56                   	push   rsi
  110aff:	52                   	push   rdx
  110b00:	51                   	push   rcx
  110b01:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  110b08:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  110b0d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  110b12:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  110b17:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  110b1e:	ff 
  110b1f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  110b26:	ff 
  110b27:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  110b2e:	ff 
  110b2f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  110b36:	ff 
  110b37:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  110b3e:	ff 
  110b3f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  110b46:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  110b4d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  110b54:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  110b5b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  110b62:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  110b69:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  110b70:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  110b77:	fc                   	cld
  110b78:	48 8d 45 08          	lea    rax,[rbp+0x8]
  110b7c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  110b83:	48 8b 05 7e 5b 00 00 	mov    rax,QWORD PTR [rip+0x5b7e]        # 116708 <InterruptMessagePosition>
  110b8a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  110b91:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  110b98:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  110b9f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  110ba6:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  110bad:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  110bb3:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  110bb9:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  110bc0:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  110bc7:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  110bce:	c1 e0 10             	shl    eax,0x10
  110bd1:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  110bd8:	09 c2                	or     edx,eax
  110bda:	48 8d 3d 86 f8 fe ff 	lea    rdi,[rip+0xfffffffffffef886]        # 100467 <_svfprintf_r.blanks-0x679>
  110be1:	e8 8a 41 ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  110be6:	e8 35 38 ff ff       	call   104420 <_Z4stopv>
  110beb:	e8 15 d0 ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  110bf0:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  110bf7:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  110bfe:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  110c05:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  110c0c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  110c13:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  110c1a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  110c21:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  110c28:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  110c2f:	ff 
  110c30:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  110c37:	ff 
  110c38:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  110c3f:	ff 
  110c40:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  110c47:	ff 
  110c48:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  110c4f:	ff 
  110c50:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  110c55:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  110c5a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  110c5f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  110c66:	59                   	pop    rcx
  110c67:	5a                   	pop    rdx
  110c68:	5e                   	pop    rsi
  110c69:	5f                   	pop    rdi
  110c6a:	41 58                	pop    r8
  110c6c:	41 59                	pop    r9
  110c6e:	41 5a                	pop    r10
  110c70:	41 5b                	pop    r11
  110c72:	58                   	pop    rax
  110c73:	5d                   	pop    rbp
  110c74:	48 cf                	iretq
  110c76:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  110c7d:	00 00 00 

0000000000110c80 <_Z12Interrupt_26P14InterruptFrame>:
  110c80:	55                   	push   rbp
  110c81:	48 89 e5             	mov    rbp,rsp
  110c84:	50                   	push   rax
  110c85:	41 53                	push   r11
  110c87:	41 52                	push   r10
  110c89:	41 51                	push   r9
  110c8b:	41 50                	push   r8
  110c8d:	57                   	push   rdi
  110c8e:	56                   	push   rsi
  110c8f:	52                   	push   rdx
  110c90:	51                   	push   rcx
  110c91:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  110c98:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  110c9d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  110ca2:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  110ca7:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  110cae:	ff 
  110caf:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  110cb6:	ff 
  110cb7:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  110cbe:	ff 
  110cbf:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  110cc6:	ff 
  110cc7:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  110cce:	ff 
  110ccf:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  110cd6:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  110cdd:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  110ce4:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  110ceb:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  110cf2:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  110cf9:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  110d00:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  110d07:	fc                   	cld
  110d08:	48 8d 45 08          	lea    rax,[rbp+0x8]
  110d0c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  110d13:	48 8b 05 ee 59 00 00 	mov    rax,QWORD PTR [rip+0x59ee]        # 116708 <InterruptMessagePosition>
  110d1a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  110d21:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  110d28:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  110d2f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  110d36:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  110d3d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  110d43:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  110d49:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  110d50:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  110d57:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  110d5e:	c1 e0 10             	shl    eax,0x10
  110d61:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  110d68:	09 c2                	or     edx,eax
  110d6a:	48 8d 3d b8 f5 fe ff 	lea    rdi,[rip+0xfffffffffffef5b8]        # 100329 <_svfprintf_r.blanks-0x7b7>
  110d71:	e8 fa 3f ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  110d76:	e8 a5 36 ff ff       	call   104420 <_Z4stopv>
  110d7b:	e8 85 ce ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  110d80:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  110d87:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  110d8e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  110d95:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  110d9c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  110da3:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  110daa:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  110db1:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  110db8:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  110dbf:	ff 
  110dc0:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  110dc7:	ff 
  110dc8:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  110dcf:	ff 
  110dd0:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  110dd7:	ff 
  110dd8:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  110ddf:	ff 
  110de0:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  110de5:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  110dea:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  110def:	48 81 c4 28 01 00 00 	add    rsp,0x128
  110df6:	59                   	pop    rcx
  110df7:	5a                   	pop    rdx
  110df8:	5e                   	pop    rsi
  110df9:	5f                   	pop    rdi
  110dfa:	41 58                	pop    r8
  110dfc:	41 59                	pop    r9
  110dfe:	41 5a                	pop    r10
  110e00:	41 5b                	pop    r11
  110e02:	58                   	pop    rax
  110e03:	5d                   	pop    rbp
  110e04:	48 cf                	iretq
  110e06:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  110e0d:	00 00 00 

0000000000110e10 <_Z12Interrupt_27P14InterruptFrame>:
  110e10:	55                   	push   rbp
  110e11:	48 89 e5             	mov    rbp,rsp
  110e14:	50                   	push   rax
  110e15:	41 53                	push   r11
  110e17:	41 52                	push   r10
  110e19:	41 51                	push   r9
  110e1b:	41 50                	push   r8
  110e1d:	57                   	push   rdi
  110e1e:	56                   	push   rsi
  110e1f:	52                   	push   rdx
  110e20:	51                   	push   rcx
  110e21:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  110e28:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  110e2d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  110e32:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  110e37:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  110e3e:	ff 
  110e3f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  110e46:	ff 
  110e47:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  110e4e:	ff 
  110e4f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  110e56:	ff 
  110e57:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  110e5e:	ff 
  110e5f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  110e66:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  110e6d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  110e74:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  110e7b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  110e82:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  110e89:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  110e90:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  110e97:	fc                   	cld
  110e98:	48 8d 45 08          	lea    rax,[rbp+0x8]
  110e9c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  110ea3:	48 8b 05 5e 58 00 00 	mov    rax,QWORD PTR [rip+0x585e]        # 116708 <InterruptMessagePosition>
  110eaa:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  110eb1:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  110eb8:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  110ebf:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  110ec6:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  110ecd:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  110ed3:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  110ed9:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  110ee0:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  110ee7:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  110eee:	c1 e0 10             	shl    eax,0x10
  110ef1:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  110ef8:	09 c2                	or     edx,eax
  110efa:	48 8d 3d dd f4 fe ff 	lea    rdi,[rip+0xfffffffffffef4dd]        # 1003de <_svfprintf_r.blanks-0x702>
  110f01:	e8 6a 3e ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  110f06:	e8 15 35 ff ff       	call   104420 <_Z4stopv>
  110f0b:	e8 f5 cc ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  110f10:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  110f17:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  110f1e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  110f25:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  110f2c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  110f33:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  110f3a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  110f41:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  110f48:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  110f4f:	ff 
  110f50:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  110f57:	ff 
  110f58:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  110f5f:	ff 
  110f60:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  110f67:	ff 
  110f68:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  110f6f:	ff 
  110f70:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  110f75:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  110f7a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  110f7f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  110f86:	59                   	pop    rcx
  110f87:	5a                   	pop    rdx
  110f88:	5e                   	pop    rsi
  110f89:	5f                   	pop    rdi
  110f8a:	41 58                	pop    r8
  110f8c:	41 59                	pop    r9
  110f8e:	41 5a                	pop    r10
  110f90:	41 5b                	pop    r11
  110f92:	58                   	pop    rax
  110f93:	5d                   	pop    rbp
  110f94:	48 cf                	iretq
  110f96:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  110f9d:	00 00 00 

0000000000110fa0 <_Z12Interrupt_28P14InterruptFrame>:
  110fa0:	55                   	push   rbp
  110fa1:	48 89 e5             	mov    rbp,rsp
  110fa4:	50                   	push   rax
  110fa5:	41 53                	push   r11
  110fa7:	41 52                	push   r10
  110fa9:	41 51                	push   r9
  110fab:	41 50                	push   r8
  110fad:	57                   	push   rdi
  110fae:	56                   	push   rsi
  110faf:	52                   	push   rdx
  110fb0:	51                   	push   rcx
  110fb1:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  110fb8:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  110fbd:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  110fc2:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  110fc7:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  110fce:	ff 
  110fcf:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  110fd6:	ff 
  110fd7:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  110fde:	ff 
  110fdf:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  110fe6:	ff 
  110fe7:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  110fee:	ff 
  110fef:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  110ff6:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  110ffd:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  111004:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  11100b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  111012:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  111019:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  111020:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  111027:	fc                   	cld
  111028:	48 8d 45 08          	lea    rax,[rbp+0x8]
  11102c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  111033:	48 8b 05 ce 56 00 00 	mov    rax,QWORD PTR [rip+0x56ce]        # 116708 <InterruptMessagePosition>
  11103a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  111041:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  111048:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  11104f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  111056:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  11105d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  111063:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  111069:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  111070:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  111077:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  11107e:	c1 e0 10             	shl    eax,0x10
  111081:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  111088:	09 c2                	or     edx,eax
  11108a:	48 8d 3d 19 f5 fe ff 	lea    rdi,[rip+0xfffffffffffef519]        # 1005aa <_svfprintf_r.blanks-0x536>
  111091:	e8 da 3c ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  111096:	e8 85 33 ff ff       	call   104420 <_Z4stopv>
  11109b:	e8 65 cb ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  1110a0:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  1110a7:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  1110ae:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  1110b5:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  1110bc:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  1110c3:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  1110ca:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  1110d1:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  1110d8:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  1110df:	ff 
  1110e0:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  1110e7:	ff 
  1110e8:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  1110ef:	ff 
  1110f0:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  1110f7:	ff 
  1110f8:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  1110ff:	ff 
  111100:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  111105:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  11110a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  11110f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  111116:	59                   	pop    rcx
  111117:	5a                   	pop    rdx
  111118:	5e                   	pop    rsi
  111119:	5f                   	pop    rdi
  11111a:	41 58                	pop    r8
  11111c:	41 59                	pop    r9
  11111e:	41 5a                	pop    r10
  111120:	41 5b                	pop    r11
  111122:	58                   	pop    rax
  111123:	5d                   	pop    rbp
  111124:	48 cf                	iretq
  111126:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  11112d:	00 00 00 

0000000000111130 <_Z12Interrupt_29P14InterruptFrame>:
  111130:	55                   	push   rbp
  111131:	48 89 e5             	mov    rbp,rsp
  111134:	50                   	push   rax
  111135:	41 53                	push   r11
  111137:	41 52                	push   r10
  111139:	41 51                	push   r9
  11113b:	41 50                	push   r8
  11113d:	57                   	push   rdi
  11113e:	56                   	push   rsi
  11113f:	52                   	push   rdx
  111140:	51                   	push   rcx
  111141:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  111148:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  11114d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  111152:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  111157:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  11115e:	ff 
  11115f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  111166:	ff 
  111167:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  11116e:	ff 
  11116f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  111176:	ff 
  111177:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  11117e:	ff 
  11117f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  111186:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  11118d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  111194:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  11119b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  1111a2:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  1111a9:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  1111b0:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  1111b7:	fc                   	cld
  1111b8:	48 8d 45 08          	lea    rax,[rbp+0x8]
  1111bc:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  1111c3:	48 8b 05 3e 55 00 00 	mov    rax,QWORD PTR [rip+0x553e]        # 116708 <InterruptMessagePosition>
  1111ca:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  1111d1:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  1111d8:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  1111df:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  1111e6:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  1111ed:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  1111f3:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  1111f9:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  111200:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  111207:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  11120e:	c1 e0 10             	shl    eax,0x10
  111211:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  111218:	09 c2                	or     edx,eax
  11121a:	48 8d 3d 0a f4 fe ff 	lea    rdi,[rip+0xfffffffffffef40a]        # 10062b <_svfprintf_r.blanks-0x4b5>
  111221:	e8 4a 3b ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  111226:	e8 f5 31 ff ff       	call   104420 <_Z4stopv>
  11122b:	e8 d5 c9 ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  111230:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  111237:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  11123e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  111245:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  11124c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  111253:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  11125a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  111261:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  111268:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  11126f:	ff 
  111270:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  111277:	ff 
  111278:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  11127f:	ff 
  111280:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  111287:	ff 
  111288:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  11128f:	ff 
  111290:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  111295:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  11129a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  11129f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  1112a6:	59                   	pop    rcx
  1112a7:	5a                   	pop    rdx
  1112a8:	5e                   	pop    rsi
  1112a9:	5f                   	pop    rdi
  1112aa:	41 58                	pop    r8
  1112ac:	41 59                	pop    r9
  1112ae:	41 5a                	pop    r10
  1112b0:	41 5b                	pop    r11
  1112b2:	58                   	pop    rax
  1112b3:	5d                   	pop    rbp
  1112b4:	48 cf                	iretq
  1112b6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  1112bd:	00 00 00 

00000000001112c0 <_Z12Interrupt_30P14InterruptFrame>:
  1112c0:	55                   	push   rbp
  1112c1:	48 89 e5             	mov    rbp,rsp
  1112c4:	50                   	push   rax
  1112c5:	41 53                	push   r11
  1112c7:	41 52                	push   r10
  1112c9:	41 51                	push   r9
  1112cb:	41 50                	push   r8
  1112cd:	57                   	push   rdi
  1112ce:	56                   	push   rsi
  1112cf:	52                   	push   rdx
  1112d0:	51                   	push   rcx
  1112d1:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  1112d8:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  1112dd:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  1112e2:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  1112e7:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  1112ee:	ff 
  1112ef:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  1112f6:	ff 
  1112f7:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  1112fe:	ff 
  1112ff:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  111306:	ff 
  111307:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  11130e:	ff 
  11130f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  111316:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  11131d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  111324:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  11132b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  111332:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  111339:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  111340:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  111347:	fc                   	cld
  111348:	48 8d 45 08          	lea    rax,[rbp+0x8]
  11134c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  111353:	48 8b 05 ae 53 00 00 	mov    rax,QWORD PTR [rip+0x53ae]        # 116708 <InterruptMessagePosition>
  11135a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  111361:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  111368:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  11136f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  111376:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  11137d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  111383:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  111389:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  111390:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  111397:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  11139e:	c1 e0 10             	shl    eax,0x10
  1113a1:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  1113a8:	09 c2                	or     edx,eax
  1113aa:	48 8d 3d 11 f0 fe ff 	lea    rdi,[rip+0xfffffffffffef011]        # 1003c2 <_svfprintf_r.blanks-0x71e>
  1113b1:	e8 ba 39 ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  1113b6:	e8 65 30 ff ff       	call   104420 <_Z4stopv>
  1113bb:	e8 45 c8 ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  1113c0:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  1113c7:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  1113ce:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  1113d5:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  1113dc:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  1113e3:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  1113ea:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  1113f1:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  1113f8:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  1113ff:	ff 
  111400:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  111407:	ff 
  111408:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  11140f:	ff 
  111410:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  111417:	ff 
  111418:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  11141f:	ff 
  111420:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  111425:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  11142a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  11142f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  111436:	59                   	pop    rcx
  111437:	5a                   	pop    rdx
  111438:	5e                   	pop    rsi
  111439:	5f                   	pop    rdi
  11143a:	41 58                	pop    r8
  11143c:	41 59                	pop    r9
  11143e:	41 5a                	pop    r10
  111440:	41 5b                	pop    r11
  111442:	58                   	pop    rax
  111443:	5d                   	pop    rbp
  111444:	48 cf                	iretq
  111446:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  11144d:	00 00 00 

0000000000111450 <_Z12Interrupt_31P14InterruptFrame>:
  111450:	55                   	push   rbp
  111451:	48 89 e5             	mov    rbp,rsp
  111454:	50                   	push   rax
  111455:	41 53                	push   r11
  111457:	41 52                	push   r10
  111459:	41 51                	push   r9
  11145b:	41 50                	push   r8
  11145d:	57                   	push   rdi
  11145e:	56                   	push   rsi
  11145f:	52                   	push   rdx
  111460:	51                   	push   rcx
  111461:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  111468:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  11146d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  111472:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  111477:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  11147e:	ff 
  11147f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  111486:	ff 
  111487:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  11148e:	ff 
  11148f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  111496:	ff 
  111497:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  11149e:	ff 
  11149f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  1114a6:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  1114ad:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  1114b4:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  1114bb:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  1114c2:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  1114c9:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  1114d0:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  1114d7:	fc                   	cld
  1114d8:	48 8d 45 08          	lea    rax,[rbp+0x8]
  1114dc:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  1114e3:	48 8b 05 1e 52 00 00 	mov    rax,QWORD PTR [rip+0x521e]        # 116708 <InterruptMessagePosition>
  1114ea:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  1114f1:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  1114f8:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  1114ff:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  111506:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  11150d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  111513:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  111519:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  111520:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  111527:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  11152e:	c1 e0 10             	shl    eax,0x10
  111531:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  111538:	09 c2                	or     edx,eax
  11153a:	48 8d 3d 83 ef fe ff 	lea    rdi,[rip+0xfffffffffffeef83]        # 1004c4 <_svfprintf_r.blanks-0x61c>
  111541:	e8 2a 38 ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  111546:	e8 d5 2e ff ff       	call   104420 <_Z4stopv>
  11154b:	e8 b5 c6 ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  111550:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  111557:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  11155e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  111565:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  11156c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  111573:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  11157a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  111581:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  111588:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  11158f:	ff 
  111590:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  111597:	ff 
  111598:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  11159f:	ff 
  1115a0:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  1115a7:	ff 
  1115a8:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  1115af:	ff 
  1115b0:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  1115b5:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  1115ba:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  1115bf:	48 81 c4 28 01 00 00 	add    rsp,0x128
  1115c6:	59                   	pop    rcx
  1115c7:	5a                   	pop    rdx
  1115c8:	5e                   	pop    rsi
  1115c9:	5f                   	pop    rdi
  1115ca:	41 58                	pop    r8
  1115cc:	41 59                	pop    r9
  1115ce:	41 5a                	pop    r10
  1115d0:	41 5b                	pop    r11
  1115d2:	58                   	pop    rax
  1115d3:	5d                   	pop    rbp
  1115d4:	48 cf                	iretq
  1115d6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  1115dd:	00 00 00 

00000000001115e0 <_Z19BreakpointInterruptP14InterruptFrame>:
  1115e0:	55                   	push   rbp
  1115e1:	48 89 e5             	mov    rbp,rsp
  1115e4:	50                   	push   rax
  1115e5:	41 53                	push   r11
  1115e7:	41 52                	push   r10
  1115e9:	41 51                	push   r9
  1115eb:	41 50                	push   r8
  1115ed:	57                   	push   rdi
  1115ee:	56                   	push   rsi
  1115ef:	52                   	push   rdx
  1115f0:	51                   	push   rcx
  1115f1:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  1115f8:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  1115fd:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  111602:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  111607:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  11160e:	ff 
  11160f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  111616:	ff 
  111617:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  11161e:	ff 
  11161f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  111626:	ff 
  111627:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  11162e:	ff 
  11162f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  111636:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  11163d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  111644:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  11164b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  111652:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  111659:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  111660:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  111667:	fc                   	cld
  111668:	48 8d 45 08          	lea    rax,[rbp+0x8]
  11166c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  111673:	48 8b 85 a8 fe ff ff 	mov    rax,QWORD PTR [rbp-0x158]
  11167a:	48 8b 30             	mov    rsi,QWORD PTR [rax]
  11167d:	48 8d 3d 3a ec fe ff 	lea    rdi,[rip+0xfffffffffffeec3a]        # 1002be <_svfprintf_r.blanks-0x822>
  111684:	31 c0                	xor    eax,eax
  111686:	e8 e5 3c ff ff       	call   105370 <Printf>
  11168b:	48 8b 05 76 50 00 00 	mov    rax,QWORD PTR [rip+0x5076]        # 116708 <InterruptMessagePosition>
  111692:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  111699:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  1116a0:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  1116a7:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  1116ae:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  1116b5:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  1116bb:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  1116c1:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  1116c8:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  1116cf:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  1116d6:	c1 e0 10             	shl    eax,0x10
  1116d9:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  1116e0:	09 c2                	or     edx,eax
  1116e2:	48 8d 3d fe f0 fe ff 	lea    rdi,[rip+0xfffffffffffef0fe]        # 1007e7 <_svfprintf_r.blanks-0x2f9>
  1116e9:	e8 82 36 ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  1116ee:	e8 2d 2d ff ff       	call   104420 <_Z4stopv>
  1116f3:	e8 0d c5 ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  1116f8:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  1116ff:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  111706:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  11170d:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  111714:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  11171b:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  111722:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  111729:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  111730:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  111737:	ff 
  111738:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  11173f:	ff 
  111740:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  111747:	ff 
  111748:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  11174f:	ff 
  111750:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  111757:	ff 
  111758:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  11175d:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  111762:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  111767:	48 81 c4 28 01 00 00 	add    rsp,0x128
  11176e:	59                   	pop    rcx
  11176f:	5a                   	pop    rdx
  111770:	5e                   	pop    rsi
  111771:	5f                   	pop    rdi
  111772:	41 58                	pop    r8
  111774:	41 59                	pop    r9
  111776:	41 5a                	pop    r10
  111778:	41 5b                	pop    r11
  11177a:	58                   	pop    rax
  11177b:	5d                   	pop    rbp
  11177c:	48 cf                	iretq
  11177e:	66 90                	xchg   ax,ax

0000000000111780 <_Z17SegFaultInterruptP14InterruptFrame>:
  111780:	55                   	push   rbp
  111781:	48 89 e5             	mov    rbp,rsp
  111784:	50                   	push   rax
  111785:	41 53                	push   r11
  111787:	41 52                	push   r10
  111789:	41 51                	push   r9
  11178b:	41 50                	push   r8
  11178d:	57                   	push   rdi
  11178e:	56                   	push   rsi
  11178f:	52                   	push   rdx
  111790:	51                   	push   rcx
  111791:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  111798:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  11179d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  1117a2:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  1117a7:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  1117ae:	ff 
  1117af:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  1117b6:	ff 
  1117b7:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  1117be:	ff 
  1117bf:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  1117c6:	ff 
  1117c7:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  1117ce:	ff 
  1117cf:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  1117d6:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  1117dd:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  1117e4:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  1117eb:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  1117f2:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  1117f9:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  111800:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  111807:	fc                   	cld
  111808:	48 8d 45 08          	lea    rax,[rbp+0x8]
  11180c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  111813:	48 8b 05 ee 4e 00 00 	mov    rax,QWORD PTR [rip+0x4eee]        # 116708 <InterruptMessagePosition>
  11181a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  111821:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  111828:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  11182f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  111836:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  11183d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  111843:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  111849:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  111850:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  111857:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  11185e:	c1 e0 10             	shl    eax,0x10
  111861:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  111868:	09 c2                	or     edx,eax
  11186a:	48 8d 3d ae ee fe ff 	lea    rdi,[rip+0xfffffffffffeeeae]        # 10071f <_svfprintf_r.blanks-0x3c1>
  111871:	e8 fa 34 ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  111876:	e8 a5 2b ff ff       	call   104420 <_Z4stopv>
  11187b:	e8 85 c3 ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  111880:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  111887:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  11188e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  111895:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  11189c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  1118a3:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  1118aa:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  1118b1:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  1118b8:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  1118bf:	ff 
  1118c0:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  1118c7:	ff 
  1118c8:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  1118cf:	ff 
  1118d0:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  1118d7:	ff 
  1118d8:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  1118df:	ff 
  1118e0:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  1118e5:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  1118ea:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  1118ef:	48 81 c4 28 01 00 00 	add    rsp,0x128
  1118f6:	59                   	pop    rcx
  1118f7:	5a                   	pop    rdx
  1118f8:	5e                   	pop    rsi
  1118f9:	5f                   	pop    rdi
  1118fa:	41 58                	pop    r8
  1118fc:	41 59                	pop    r9
  1118fe:	41 5a                	pop    r10
  111900:	41 5b                	pop    r11
  111902:	58                   	pop    rax
  111903:	5d                   	pop    rbp
  111904:	48 cf                	iretq
  111906:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  11190d:	00 00 00 

0000000000111910 <_Z18PageFaultInterruptP14InterruptFrame>:
  111910:	55                   	push   rbp
  111911:	48 89 e5             	mov    rbp,rsp
  111914:	50                   	push   rax
  111915:	41 53                	push   r11
  111917:	41 52                	push   r10
  111919:	41 51                	push   r9
  11191b:	41 50                	push   r8
  11191d:	57                   	push   rdi
  11191e:	56                   	push   rsi
  11191f:	52                   	push   rdx
  111920:	51                   	push   rcx
  111921:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  111928:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  11192d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  111932:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  111937:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  11193e:	ff 
  11193f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  111946:	ff 
  111947:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  11194e:	ff 
  11194f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  111956:	ff 
  111957:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  11195e:	ff 
  11195f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  111966:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  11196d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  111974:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  11197b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  111982:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  111989:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  111990:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  111997:	fc                   	cld
  111998:	48 8d 45 08          	lea    rax,[rbp+0x8]
  11199c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  1119a3:	48 8b 05 5e 4d 00 00 	mov    rax,QWORD PTR [rip+0x4d5e]        # 116708 <InterruptMessagePosition>
  1119aa:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  1119b1:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  1119b8:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  1119bf:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  1119c6:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  1119cd:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  1119d3:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  1119d9:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  1119e0:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  1119e7:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  1119ee:	c1 e0 10             	shl    eax,0x10
  1119f1:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  1119f8:	09 c2                	or     edx,eax
  1119fa:	48 8d 3d 1a e8 fe ff 	lea    rdi,[rip+0xfffffffffffee81a]        # 10021b <_svfprintf_r.blanks-0x8c5>
  111a01:	e8 6a 33 ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  111a06:	e8 15 2a ff ff       	call   104420 <_Z4stopv>
  111a0b:	e8 f5 c1 ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  111a10:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  111a17:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  111a1e:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  111a25:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  111a2c:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  111a33:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  111a3a:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  111a41:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  111a48:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  111a4f:	ff 
  111a50:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  111a57:	ff 
  111a58:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  111a5f:	ff 
  111a60:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  111a67:	ff 
  111a68:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  111a6f:	ff 
  111a70:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  111a75:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  111a7a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  111a7f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  111a86:	59                   	pop    rcx
  111a87:	5a                   	pop    rdx
  111a88:	5e                   	pop    rsi
  111a89:	5f                   	pop    rdi
  111a8a:	41 58                	pop    r8
  111a8c:	41 59                	pop    r9
  111a8e:	41 5a                	pop    r10
  111a90:	41 5b                	pop    r11
  111a92:	58                   	pop    rax
  111a93:	5d                   	pop    rbp
  111a94:	48 cf                	iretq
  111a96:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  111a9d:	00 00 00 

0000000000111aa0 <_Z26GeneralProtectionInterruptP14InterruptFrame>:
  111aa0:	55                   	push   rbp
  111aa1:	48 89 e5             	mov    rbp,rsp
  111aa4:	50                   	push   rax
  111aa5:	41 53                	push   r11
  111aa7:	41 52                	push   r10
  111aa9:	41 51                	push   r9
  111aab:	41 50                	push   r8
  111aad:	57                   	push   rdi
  111aae:	56                   	push   rsi
  111aaf:	52                   	push   rdx
  111ab0:	51                   	push   rcx
  111ab1:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  111ab8:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  111abd:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  111ac2:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  111ac7:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  111ace:	ff 
  111acf:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  111ad6:	ff 
  111ad7:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  111ade:	ff 
  111adf:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  111ae6:	ff 
  111ae7:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  111aee:	ff 
  111aef:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  111af6:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  111afd:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  111b04:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  111b0b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  111b12:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  111b19:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  111b20:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  111b27:	fc                   	cld
  111b28:	48 8d 45 08          	lea    rax,[rbp+0x8]
  111b2c:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  111b33:	48 8b 05 ce 4b 00 00 	mov    rax,QWORD PTR [rip+0x4bce]        # 116708 <InterruptMessagePosition>
  111b3a:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  111b41:	c6 85 98 fe ff ff ff 	mov    BYTE PTR [rbp-0x168],0xff
  111b48:	c6 85 99 fe ff ff 00 	mov    BYTE PTR [rbp-0x167],0x0
  111b4f:	c6 85 9a fe ff ff 00 	mov    BYTE PTR [rbp-0x166],0x0
  111b56:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  111b5d:	8a 85 9a fe ff ff    	mov    al,BYTE PTR [rbp-0x166]
  111b63:	88 85 96 fe ff ff    	mov    BYTE PTR [rbp-0x16a],al
  111b69:	66 8b 85 98 fe ff ff 	mov    ax,WORD PTR [rbp-0x168]
  111b70:	66 89 85 94 fe ff ff 	mov    WORD PTR [rbp-0x16c],ax
  111b77:	0f b6 85 96 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x16a]
  111b7e:	c1 e0 10             	shl    eax,0x10
  111b81:	0f b7 95 94 fe ff ff 	movzx  edx,WORD PTR [rbp-0x16c]
  111b88:	09 c2                	or     edx,eax
  111b8a:	48 8d 3d a1 eb fe ff 	lea    rdi,[rip+0xfffffffffffeeba1]        # 100732 <_svfprintf_r.blanks-0x3ae>
  111b91:	e8 da 31 ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  111b96:	e8 85 28 ff ff       	call   104420 <_Z4stopv>
  111b9b:	e8 65 c0 ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  111ba0:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  111ba7:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  111bae:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  111bb5:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  111bbc:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  111bc3:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  111bca:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  111bd1:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  111bd8:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  111bdf:	ff 
  111be0:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  111be7:	ff 
  111be8:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  111bef:	ff 
  111bf0:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  111bf7:	ff 
  111bf8:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  111bff:	ff 
  111c00:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  111c05:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  111c0a:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  111c0f:	48 81 c4 28 01 00 00 	add    rsp,0x128
  111c16:	59                   	pop    rcx
  111c17:	5a                   	pop    rdx
  111c18:	5e                   	pop    rsi
  111c19:	5f                   	pop    rdi
  111c1a:	41 58                	pop    r8
  111c1c:	41 59                	pop    r9
  111c1e:	41 5a                	pop    r10
  111c20:	41 5b                	pop    r11
  111c22:	58                   	pop    rax
  111c23:	5d                   	pop    rbp
  111c24:	48 cf                	iretq
  111c26:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  111c2d:	00 00 00 

0000000000111c30 <_Z17KeyboardInterruptP14InterruptFrame>:
  111c30:	55                   	push   rbp
  111c31:	48 89 e5             	mov    rbp,rsp
  111c34:	50                   	push   rax
  111c35:	41 53                	push   r11
  111c37:	41 52                	push   r10
  111c39:	41 51                	push   r9
  111c3b:	41 50                	push   r8
  111c3d:	57                   	push   rdi
  111c3e:	56                   	push   rsi
  111c3f:	52                   	push   rdx
  111c40:	51                   	push   rcx
  111c41:	48 81 ec 18 01 00 00 	sub    rsp,0x118
  111c48:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  111c4d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  111c52:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  111c57:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  111c5e:	ff 
  111c5f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  111c66:	ff 
  111c67:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  111c6e:	ff 
  111c6f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  111c76:	ff 
  111c77:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  111c7e:	ff 
  111c7f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  111c86:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  111c8d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  111c94:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  111c9b:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  111ca2:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  111ca9:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  111cb0:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  111cb7:	fc                   	cld
  111cb8:	48 8d 45 08          	lea    rax,[rbp+0x8]
  111cbc:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  111cc3:	bf 20 00 00 00       	mov    edi,0x20
  111cc8:	be 61 00 00 00       	mov    esi,0x61
  111ccd:	e8 b0 be ff ff       	call   10db82 <IoOut8>
  111cd2:	bf 60 00 00 00       	mov    edi,0x60
  111cd7:	e8 ae be ff ff       	call   10db8a <IoIn8>
  111cdc:	0f b6 c0             	movzx  eax,al
  111cdf:	89 85 a4 fe ff ff    	mov    DWORD PTR [rbp-0x15c],eax
  111ce5:	83 bd a4 fe ff ff 2a 	cmp    DWORD PTR [rbp-0x15c],0x2a
  111cec:	0f 84 0d 00 00 00    	je     111cff <_Z17KeyboardInterruptP14InterruptFrame+0xcf>
  111cf2:	83 bd a4 fe ff ff 36 	cmp    DWORD PTR [rbp-0x15c],0x36
  111cf9:	0f 85 0c 00 00 00    	jne    111d0b <_Z17KeyboardInterruptP14InterruptFrame+0xdb>
  111cff:	c6 05 ba be 50 00 01 	mov    BYTE PTR [rip+0x50beba],0x1        # 61dbc0 <_ZZ17KeyboardInterruptP14InterruptFrameE7isShift>
  111d06:	e9 a2 00 00 00       	jmp    111dad <_Z17KeyboardInterruptP14InterruptFrame+0x17d>
  111d0b:	81 bd a4 fe ff ff ab 	cmp    DWORD PTR [rbp-0x15c],0xab
  111d12:	00 00 00 
  111d15:	0f 84 10 00 00 00    	je     111d2b <_Z17KeyboardInterruptP14InterruptFrame+0xfb>
  111d1b:	81 bd a4 fe ff ff b6 	cmp    DWORD PTR [rbp-0x15c],0xb6
  111d22:	00 00 00 
  111d25:	0f 85 0c 00 00 00    	jne    111d37 <_Z17KeyboardInterruptP14InterruptFrame+0x107>
  111d2b:	c6 05 8e be 50 00 00 	mov    BYTE PTR [rip+0x50be8e],0x0        # 61dbc0 <_ZZ17KeyboardInterruptP14InterruptFrameE7isShift>
  111d32:	e9 76 00 00 00       	jmp    111dad <_Z17KeyboardInterruptP14InterruptFrame+0x17d>
  111d37:	8b 85 a4 fe ff ff    	mov    eax,DWORD PTR [rbp-0x15c]
  111d3d:	89 c1                	mov    ecx,eax
  111d3f:	48 8d 05 ca 49 00 00 	lea    rax,[rip+0x49ca]        # 116710 <keycode>
  111d46:	8a 04 08             	mov    al,BYTE PTR [rax+rcx*1]
  111d49:	88 85 a3 fe ff ff    	mov    BYTE PTR [rbp-0x15d],al
  111d4f:	0f be bd a3 fe ff ff 	movsx  edi,BYTE PTR [rbp-0x15d]
  111d56:	e8 f5 0c 00 00       	call   112a50 <_Z10isAlphabetc>
  111d5b:	a8 01                	test   al,0x1
  111d5d:	0f 85 05 00 00 00    	jne    111d68 <_Z17KeyboardInterruptP14InterruptFrame+0x138>
  111d63:	e9 1d 00 00 00       	jmp    111d85 <_Z17KeyboardInterruptP14InterruptFrame+0x155>
  111d68:	f6 05 51 be 50 00 01 	test   BYTE PTR [rip+0x50be51],0x1        # 61dbc0 <_ZZ17KeyboardInterruptP14InterruptFrameE7isShift>
  111d6f:	0f 84 10 00 00 00    	je     111d85 <_Z17KeyboardInterruptP14InterruptFrame+0x155>
  111d75:	0f b6 85 a3 fe ff ff 	movzx  eax,BYTE PTR [rbp-0x15d]
  111d7c:	83 e8 20             	sub    eax,0x20
  111d7f:	88 85 a3 fe ff ff    	mov    BYTE PTR [rbp-0x15d],al
  111d85:	81 bd a4 fe ff ff 80 	cmp    DWORD PTR [rbp-0x15c],0x80
  111d8c:	00 00 00 
  111d8f:	0f 83 13 00 00 00    	jae    111da8 <_Z17KeyboardInterruptP14InterruptFrame+0x178>
  111d95:	48 8d 3d 74 52 10 00 	lea    rdi,[rip+0x105274]        # 217010 <Input_Buffer>
  111d9c:	0f be b5 a3 fe ff ff 	movsx  esi,BYTE PTR [rbp-0x15d]
  111da3:	e8 c8 0f 00 00       	call   112d70 <_ZN11InputBuffer3addEc>
  111da8:	e8 58 be ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  111dad:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  111db4:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  111dbb:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  111dc2:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  111dc9:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  111dd0:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  111dd7:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  111dde:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  111de5:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  111dec:	ff 
  111ded:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  111df4:	ff 
  111df5:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  111dfc:	ff 
  111dfd:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  111e04:	ff 
  111e05:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  111e0c:	ff 
  111e0d:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  111e12:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  111e17:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  111e1c:	48 81 c4 18 01 00 00 	add    rsp,0x118
  111e23:	59                   	pop    rcx
  111e24:	5a                   	pop    rdx
  111e25:	5e                   	pop    rsi
  111e26:	5f                   	pop    rdi
  111e27:	41 58                	pop    r8
  111e29:	41 59                	pop    r9
  111e2b:	41 5a                	pop    r10
  111e2d:	41 5b                	pop    r11
  111e2f:	58                   	pop    rax
  111e30:	5d                   	pop    rbp
  111e31:	48 cf                	iretq
  111e33:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  111e3a:	84 00 00 00 00 00 

0000000000111e40 <_Z20ShowKeycodeInterruptP14InterruptFrame>:
  111e40:	55                   	push   rbp
  111e41:	48 89 e5             	mov    rbp,rsp
  111e44:	50                   	push   rax
  111e45:	41 53                	push   r11
  111e47:	41 52                	push   r10
  111e49:	41 51                	push   r9
  111e4b:	41 50                	push   r8
  111e4d:	57                   	push   rdi
  111e4e:	56                   	push   rsi
  111e4f:	52                   	push   rdx
  111e50:	51                   	push   rcx
  111e51:	48 81 ec 18 01 00 00 	sub    rsp,0x118
  111e58:	44 0f 29 7d a0       	movaps XMMWORD PTR [rbp-0x60],xmm15
  111e5d:	44 0f 29 75 90       	movaps XMMWORD PTR [rbp-0x70],xmm14
  111e62:	44 0f 29 6d 80       	movaps XMMWORD PTR [rbp-0x80],xmm13
  111e67:	44 0f 29 a5 70 ff ff 	movaps XMMWORD PTR [rbp-0x90],xmm12
  111e6e:	ff 
  111e6f:	44 0f 29 9d 60 ff ff 	movaps XMMWORD PTR [rbp-0xa0],xmm11
  111e76:	ff 
  111e77:	44 0f 29 95 50 ff ff 	movaps XMMWORD PTR [rbp-0xb0],xmm10
  111e7e:	ff 
  111e7f:	44 0f 29 8d 40 ff ff 	movaps XMMWORD PTR [rbp-0xc0],xmm9
  111e86:	ff 
  111e87:	44 0f 29 85 30 ff ff 	movaps XMMWORD PTR [rbp-0xd0],xmm8
  111e8e:	ff 
  111e8f:	0f 29 bd 20 ff ff ff 	movaps XMMWORD PTR [rbp-0xe0],xmm7
  111e96:	0f 29 b5 10 ff ff ff 	movaps XMMWORD PTR [rbp-0xf0],xmm6
  111e9d:	0f 29 ad 00 ff ff ff 	movaps XMMWORD PTR [rbp-0x100],xmm5
  111ea4:	0f 29 a5 f0 fe ff ff 	movaps XMMWORD PTR [rbp-0x110],xmm4
  111eab:	0f 29 9d e0 fe ff ff 	movaps XMMWORD PTR [rbp-0x120],xmm3
  111eb2:	0f 29 95 d0 fe ff ff 	movaps XMMWORD PTR [rbp-0x130],xmm2
  111eb9:	0f 29 8d c0 fe ff ff 	movaps XMMWORD PTR [rbp-0x140],xmm1
  111ec0:	0f 29 85 b0 fe ff ff 	movaps XMMWORD PTR [rbp-0x150],xmm0
  111ec7:	fc                   	cld
  111ec8:	48 8d 45 08          	lea    rax,[rbp+0x8]
  111ecc:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  111ed3:	bf 20 00 00 00       	mov    edi,0x20
  111ed8:	be 61 00 00 00       	mov    esi,0x61
  111edd:	e8 a0 bc ff ff       	call   10db82 <IoOut8>
  111ee2:	bf 60 00 00 00       	mov    edi,0x60
  111ee7:	e8 9e bc ff ff       	call   10db8a <IoIn8>
  111eec:	0f b6 c0             	movzx  eax,al
  111eef:	89 85 a4 fe ff ff    	mov    DWORD PTR [rbp-0x15c],eax
  111ef5:	8b 85 a4 fe ff ff    	mov    eax,DWORD PTR [rbp-0x15c]
  111efb:	89 c1                	mov    ecx,eax
  111efd:	89 ce                	mov    esi,ecx
  111eff:	48 8d 05 0a 48 00 00 	lea    rax,[rip+0x480a]        # 116710 <keycode>
  111f06:	0f be 14 08          	movsx  edx,BYTE PTR [rax+rcx*1]
  111f0a:	48 8d 3d 5b e8 fe ff 	lea    rdi,[rip+0xfffffffffffee85b]        # 10076c <_svfprintf_r.blanks-0x374>
  111f11:	31 c0                	xor    eax,eax
  111f13:	e8 58 34 ff ff       	call   105370 <Printf>
  111f18:	e8 e8 bc ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  111f1d:	0f 28 85 b0 fe ff ff 	movaps xmm0,XMMWORD PTR [rbp-0x150]
  111f24:	0f 28 8d c0 fe ff ff 	movaps xmm1,XMMWORD PTR [rbp-0x140]
  111f2b:	0f 28 95 d0 fe ff ff 	movaps xmm2,XMMWORD PTR [rbp-0x130]
  111f32:	0f 28 9d e0 fe ff ff 	movaps xmm3,XMMWORD PTR [rbp-0x120]
  111f39:	0f 28 a5 f0 fe ff ff 	movaps xmm4,XMMWORD PTR [rbp-0x110]
  111f40:	0f 28 ad 00 ff ff ff 	movaps xmm5,XMMWORD PTR [rbp-0x100]
  111f47:	0f 28 b5 10 ff ff ff 	movaps xmm6,XMMWORD PTR [rbp-0xf0]
  111f4e:	0f 28 bd 20 ff ff ff 	movaps xmm7,XMMWORD PTR [rbp-0xe0]
  111f55:	44 0f 28 85 30 ff ff 	movaps xmm8,XMMWORD PTR [rbp-0xd0]
  111f5c:	ff 
  111f5d:	44 0f 28 8d 40 ff ff 	movaps xmm9,XMMWORD PTR [rbp-0xc0]
  111f64:	ff 
  111f65:	44 0f 28 95 50 ff ff 	movaps xmm10,XMMWORD PTR [rbp-0xb0]
  111f6c:	ff 
  111f6d:	44 0f 28 9d 60 ff ff 	movaps xmm11,XMMWORD PTR [rbp-0xa0]
  111f74:	ff 
  111f75:	44 0f 28 a5 70 ff ff 	movaps xmm12,XMMWORD PTR [rbp-0x90]
  111f7c:	ff 
  111f7d:	44 0f 28 6d 80       	movaps xmm13,XMMWORD PTR [rbp-0x80]
  111f82:	44 0f 28 75 90       	movaps xmm14,XMMWORD PTR [rbp-0x70]
  111f87:	44 0f 28 7d a0       	movaps xmm15,XMMWORD PTR [rbp-0x60]
  111f8c:	48 81 c4 18 01 00 00 	add    rsp,0x118
  111f93:	59                   	pop    rcx
  111f94:	5a                   	pop    rdx
  111f95:	5e                   	pop    rsi
  111f96:	5f                   	pop    rdi
  111f97:	41 58                	pop    r8
  111f99:	41 59                	pop    r9
  111f9b:	41 5a                	pop    r10
  111f9d:	41 5b                	pop    r11
  111f9f:	58                   	pop    rax
  111fa0:	5d                   	pop    rbp
  111fa1:	48 cf                	iretq
  111fa3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  111faa:	84 00 00 00 00 00 

0000000000111fb0 <_Z16DefaultInterruptP14InterruptFrame>:
  111fb0:	55                   	push   rbp
  111fb1:	48 89 e5             	mov    rbp,rsp
  111fb4:	48 81 ec b0 00 00 00 	sub    rsp,0xb0
  111fbb:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  111fbf:	48 8b 05 42 47 00 00 	mov    rax,QWORD PTR [rip+0x4742]        # 116708 <InterruptMessagePosition>
  111fc6:	48 89 45 88          	mov    QWORD PTR [rbp-0x78],rax
  111fca:	c6 45 80 ff          	mov    BYTE PTR [rbp-0x80],0xff
  111fce:	c6 45 81 00          	mov    BYTE PTR [rbp-0x7f],0x0
  111fd2:	c6 45 82 00          	mov    BYTE PTR [rbp-0x7e],0x0
  111fd6:	48 8b 75 88          	mov    rsi,QWORD PTR [rbp-0x78]
  111fda:	8a 45 82             	mov    al,BYTE PTR [rbp-0x7e]
  111fdd:	88 85 7e ff ff ff    	mov    BYTE PTR [rbp-0x82],al
  111fe3:	66 8b 45 80          	mov    ax,WORD PTR [rbp-0x80]
  111fe7:	66 89 85 7c ff ff ff 	mov    WORD PTR [rbp-0x84],ax
  111fee:	0f b6 85 7e ff ff ff 	movzx  eax,BYTE PTR [rbp-0x82]
  111ff5:	c1 e0 10             	shl    eax,0x10
  111ff8:	0f b7 95 7c ff ff ff 	movzx  edx,WORD PTR [rbp-0x84]
  111fff:	09 c2                	or     edx,eax
  112001:	48 8d 3d 1e e5 fe ff 	lea    rdi,[rip+0xfffffffffffee51e]        # 100526 <_svfprintf_r.blanks-0x5ba>
  112008:	e8 63 2d ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  11200d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  112011:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  112014:	48 8d 35 b5 e4 fe ff 	lea    rsi,[rip+0xfffffffffffee4b5]        # 1004d0 <_svfprintf_r.blanks-0x610>
  11201b:	31 c0                	xor    eax,eax
  11201d:	48 8d 7d 90          	lea    rdi,[rbp-0x70]
  112021:	48 89 bd 58 ff ff ff 	mov    QWORD PTR [rbp-0xa8],rdi
  112028:	e8 63 ba ff ff       	call   10da90 <sprintf>
  11202d:	48 8b bd 58 ff ff ff 	mov    rdi,QWORD PTR [rbp-0xa8]
  112034:	c7 85 70 ff ff ff 90 	mov    DWORD PTR [rbp-0x90],0x190
  11203b:	01 00 00 
  11203e:	c7 85 74 ff ff ff 3d 	mov    DWORD PTR [rbp-0x8c],0x13d
  112045:	01 00 00 
  112048:	c6 85 68 ff ff ff ff 	mov    BYTE PTR [rbp-0x98],0xff
  11204f:	c6 85 69 ff ff ff 00 	mov    BYTE PTR [rbp-0x97],0x0
  112056:	c6 85 6a ff ff ff 00 	mov    BYTE PTR [rbp-0x96],0x0
  11205d:	48 8b b5 70 ff ff ff 	mov    rsi,QWORD PTR [rbp-0x90]
  112064:	8a 85 6a ff ff ff    	mov    al,BYTE PTR [rbp-0x96]
  11206a:	88 85 66 ff ff ff    	mov    BYTE PTR [rbp-0x9a],al
  112070:	66 8b 85 68 ff ff ff 	mov    ax,WORD PTR [rbp-0x98]
  112077:	66 89 85 64 ff ff ff 	mov    WORD PTR [rbp-0x9c],ax
  11207e:	0f b6 85 66 ff ff ff 	movzx  eax,BYTE PTR [rbp-0x9a]
  112085:	c1 e0 10             	shl    eax,0x10
  112088:	0f b7 95 64 ff ff ff 	movzx  edx,WORD PTR [rbp-0x9c]
  11208f:	09 c2                	or     edx,eax
  112091:	e8 da 2c ff ff       	call   104d70 <_Z9PrintLinePKc6Vector5Color>
  112096:	e8 85 23 ff ff       	call   104420 <_Z4stopv>
  11209b:	e8 65 bb ff ff       	call   10dc05 <NotifyEndOfInterrupt>
  1120a0:	48 81 c4 b0 00 00 00 	add    rsp,0xb0
  1120a7:	5d                   	pop    rbp
  1120a8:	c3                   	ret
  1120a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000001120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>:
  1120b0:	55                   	push   rbp
  1120b1:	48 89 e5             	mov    rbp,rsp
  1120b4:	48 83 ec 20          	sub    rsp,0x20
  1120b8:	66 89 f0             	mov    ax,si
  1120bb:	66 89 45 f8          	mov    WORD PTR [rbp-0x8],ax
  1120bf:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  1120c3:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
  1120c7:	48 89 4d e0          	mov    QWORD PTR [rbp-0x20],rcx
  1120cb:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  1120cf:	66 8b 4d f8          	mov    cx,WORD PTR [rbp-0x8]
  1120d3:	66 89 48 04          	mov    WORD PTR [rax+0x4],cx
  1120d7:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  1120db:	48 25 ff ff 00 00    	and    rax,0xffff
  1120e1:	66 89 c1             	mov    cx,ax
  1120e4:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  1120e8:	66 89 08             	mov    WORD PTR [rax],cx
  1120eb:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  1120ef:	48 c1 e8 10          	shr    rax,0x10
  1120f3:	48 25 ff 00 00 00    	and    rax,0xff
  1120f9:	66 89 c1             	mov    cx,ax
  1120fc:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  112100:	66 89 48 06          	mov    WORD PTR [rax+0x6],cx
  112104:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  112108:	48 c1 e8 20          	shr    rax,0x20
  11210c:	89 c1                	mov    ecx,eax
  11210e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  112112:	89 48 08             	mov    DWORD PTR [rax+0x8],ecx
  112115:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  112119:	66 89 c1             	mov    cx,ax
  11211c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  112120:	66 89 48 02          	mov    WORD PTR [rax+0x2],cx
  112124:	48 83 c4 20          	add    rsp,0x20
  112128:	5d                   	pop    rbp
  112129:	c3                   	ret
  11212a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000112130 <_Z13InitializePICv>:
  112130:	55                   	push   rbp
  112131:	48 89 e5             	mov    rbp,rsp
  112134:	bf 21 00 00 00       	mov    edi,0x21
  112139:	be ff 00 00 00       	mov    esi,0xff
  11213e:	e8 3f ba ff ff       	call   10db82 <IoOut8>
  112143:	bf a1 00 00 00       	mov    edi,0xa1
  112148:	be ff 00 00 00       	mov    esi,0xff
  11214d:	e8 30 ba ff ff       	call   10db82 <IoOut8>
  112152:	bf 20 00 00 00       	mov    edi,0x20
  112157:	be 11 00 00 00       	mov    esi,0x11
  11215c:	e8 21 ba ff ff       	call   10db82 <IoOut8>
  112161:	bf 21 00 00 00       	mov    edi,0x21
  112166:	be 20 00 00 00       	mov    esi,0x20
  11216b:	e8 12 ba ff ff       	call   10db82 <IoOut8>
  112170:	bf 21 00 00 00       	mov    edi,0x21
  112175:	be 04 00 00 00       	mov    esi,0x4
  11217a:	e8 03 ba ff ff       	call   10db82 <IoOut8>
  11217f:	bf 21 00 00 00       	mov    edi,0x21
  112184:	be 01 00 00 00       	mov    esi,0x1
  112189:	e8 f4 b9 ff ff       	call   10db82 <IoOut8>
  11218e:	bf a0 00 00 00       	mov    edi,0xa0
  112193:	be 11 00 00 00       	mov    esi,0x11
  112198:	e8 e5 b9 ff ff       	call   10db82 <IoOut8>
  11219d:	bf a1 00 00 00       	mov    edi,0xa1
  1121a2:	be 28 00 00 00       	mov    esi,0x28
  1121a7:	e8 d6 b9 ff ff       	call   10db82 <IoOut8>
  1121ac:	bf a1 00 00 00       	mov    edi,0xa1
  1121b1:	be 02 00 00 00       	mov    esi,0x2
  1121b6:	e8 c7 b9 ff ff       	call   10db82 <IoOut8>
  1121bb:	bf a1 00 00 00       	mov    edi,0xa1
  1121c0:	be 01 00 00 00       	mov    esi,0x1
  1121c5:	e8 b8 b9 ff ff       	call   10db82 <IoOut8>
  1121ca:	bf 21 00 00 00       	mov    edi,0x21
  1121cf:	be f9 00 00 00       	mov    esi,0xf9
  1121d4:	e8 a9 b9 ff ff       	call   10db82 <IoOut8>
  1121d9:	bf a1 00 00 00       	mov    edi,0xa1
  1121de:	be f7 00 00 00       	mov    esi,0xf7
  1121e3:	e8 9a b9 ff ff       	call   10db82 <IoOut8>
  1121e8:	5d                   	pop    rbp
  1121e9:	c3                   	ret
  1121ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000001121f0 <_Z19InitializeInterruptv>:
  1121f0:	55                   	push   rbp
  1121f1:	48 89 e5             	mov    rbp,rsp
  1121f4:	48 81 ec 20 01 00 00 	sub    rsp,0x120
  1121fb:	e8 e1 b9 ff ff       	call   10dbe1 <GetCS>
  112200:	66 89 45 fe          	mov    WORD PTR [rbp-0x2],ax
  112204:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
  11220b:	81 7d f8 00 01 00 00 	cmp    DWORD PTR [rbp-0x8],0x100
  112212:	0f 8d 5b 00 00 00    	jge    112273 <_Z19InitializeInterruptv+0x83>
  112218:	48 63 4d f8          	movsxd rcx,DWORD PTR [rbp-0x8]
  11221c:	48 8d 05 9d a9 50 00 	lea    rax,[rip+0x50a99d]        # 61cbc0 <idt>
  112223:	48 c1 e1 04          	shl    rcx,0x4
  112227:	48 01 c8             	add    rax,rcx
  11222a:	48 89 85 e8 fe ff ff 	mov    QWORD PTR [rbp-0x118],rax
  112231:	bf 0e 00 00 00       	mov    edi,0xe
  112236:	31 c9                	xor    ecx,ecx
  112238:	ba 01 00 00 00       	mov    edx,0x1
  11223d:	89 ce                	mov    esi,ecx
  11223f:	e8 6c 08 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  112244:	48 8b bd e8 fe ff ff 	mov    rdi,QWORD PTR [rbp-0x118]
  11224b:	66 89 45 f0          	mov    WORD PTR [rbp-0x10],ax
  11224f:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  112253:	89 c1                	mov    ecx,eax
  112255:	48 8d 15 54 fd ff ff 	lea    rdx,[rip+0xfffffffffffffd54]        # 111fb0 <_Z16DefaultInterruptP14InterruptFrame>
  11225c:	0f b7 75 f0          	movzx  esi,WORD PTR [rbp-0x10]
  112260:	e8 4b fe ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  112265:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  112268:	83 c0 01             	add    eax,0x1
  11226b:	89 45 f8             	mov    DWORD PTR [rbp-0x8],eax
  11226e:	e9 98 ff ff ff       	jmp    11220b <_Z19InitializeInterruptv+0x1b>
  112273:	bf 0e 00 00 00       	mov    edi,0xe
  112278:	31 c9                	xor    ecx,ecx
  11227a:	ba 01 00 00 00       	mov    edx,0x1
  11227f:	89 ce                	mov    esi,ecx
  112281:	e8 2a 08 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  112286:	66 89 45 e8          	mov    WORD PTR [rbp-0x18],ax
  11228a:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  11228e:	89 c1                	mov    ecx,eax
  112290:	48 8d 3d 29 a9 50 00 	lea    rdi,[rip+0x50a929]        # 61cbc0 <idt>
  112297:	48 83 c7 30          	add    rdi,0x30
  11229b:	48 8d 15 3e f3 ff ff 	lea    rdx,[rip+0xfffffffffffff33e]        # 1115e0 <_Z19BreakpointInterruptP14InterruptFrame>
  1122a2:	0f b7 75 e8          	movzx  esi,WORD PTR [rbp-0x18]
  1122a6:	e8 05 fe ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  1122ab:	bf 0e 00 00 00       	mov    edi,0xe
  1122b0:	31 c9                	xor    ecx,ecx
  1122b2:	ba 01 00 00 00       	mov    edx,0x1
  1122b7:	89 ce                	mov    esi,ecx
  1122b9:	e8 f2 07 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  1122be:	66 89 45 e0          	mov    WORD PTR [rbp-0x20],ax
  1122c2:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  1122c6:	89 c1                	mov    ecx,eax
  1122c8:	48 8d 3d f1 a8 50 00 	lea    rdi,[rip+0x50a8f1]        # 61cbc0 <idt>
  1122cf:	48 81 c7 10 02 00 00 	add    rdi,0x210
  1122d6:	48 8d 15 53 f9 ff ff 	lea    rdx,[rip+0xfffffffffffff953]        # 111c30 <_Z17KeyboardInterruptP14InterruptFrame>
  1122dd:	0f b7 75 e0          	movzx  esi,WORD PTR [rbp-0x20]
  1122e1:	e8 ca fd ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  1122e6:	bf 0e 00 00 00       	mov    edi,0xe
  1122eb:	31 c9                	xor    ecx,ecx
  1122ed:	ba 01 00 00 00       	mov    edx,0x1
  1122f2:	89 ce                	mov    esi,ecx
  1122f4:	e8 b7 07 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  1122f9:	66 89 45 d8          	mov    WORD PTR [rbp-0x28],ax
  1122fd:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  112301:	89 c1                	mov    ecx,eax
  112303:	48 8d 3d b6 a8 50 00 	lea    rdi,[rip+0x50a8b6]        # 61cbc0 <idt>
  11230a:	48 81 c7 c0 00 00 00 	add    rdi,0xc0
  112311:	48 8d 15 68 f4 ff ff 	lea    rdx,[rip+0xfffffffffffff468]        # 111780 <_Z17SegFaultInterruptP14InterruptFrame>
  112318:	0f b7 75 d8          	movzx  esi,WORD PTR [rbp-0x28]
  11231c:	e8 8f fd ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  112321:	bf 0e 00 00 00       	mov    edi,0xe
  112326:	31 c9                	xor    ecx,ecx
  112328:	ba 01 00 00 00       	mov    edx,0x1
  11232d:	89 ce                	mov    esi,ecx
  11232f:	e8 7c 07 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  112334:	66 89 45 d0          	mov    WORD PTR [rbp-0x30],ax
  112338:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  11233c:	89 c1                	mov    ecx,eax
  11233e:	48 8d 3d 7b a8 50 00 	lea    rdi,[rip+0x50a87b]        # 61cbc0 <idt>
  112345:	48 81 c7 d0 00 00 00 	add    rdi,0xd0
  11234c:	48 8d 15 4d f7 ff ff 	lea    rdx,[rip+0xfffffffffffff74d]        # 111aa0 <_Z26GeneralProtectionInterruptP14InterruptFrame>
  112353:	0f b7 75 d0          	movzx  esi,WORD PTR [rbp-0x30]
  112357:	e8 54 fd ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  11235c:	bf 0e 00 00 00       	mov    edi,0xe
  112361:	31 c9                	xor    ecx,ecx
  112363:	ba 01 00 00 00       	mov    edx,0x1
  112368:	89 ce                	mov    esi,ecx
  11236a:	e8 41 07 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  11236f:	66 89 45 c8          	mov    WORD PTR [rbp-0x38],ax
  112373:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  112377:	89 c1                	mov    ecx,eax
  112379:	48 8d 3d 40 a8 50 00 	lea    rdi,[rip+0x50a840]        # 61cbc0 <idt>
  112380:	48 81 c7 e0 00 00 00 	add    rdi,0xe0
  112387:	48 8d 15 82 f5 ff ff 	lea    rdx,[rip+0xfffffffffffff582]        # 111910 <_Z18PageFaultInterruptP14InterruptFrame>
  11238e:	0f b7 75 c8          	movzx  esi,WORD PTR [rbp-0x38]
  112392:	e8 19 fd ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  112397:	bf 0e 00 00 00       	mov    edi,0xe
  11239c:	31 c9                	xor    ecx,ecx
  11239e:	ba 01 00 00 00       	mov    edx,0x1
  1123a3:	89 ce                	mov    esi,ecx
  1123a5:	e8 06 07 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  1123aa:	66 89 45 c0          	mov    WORD PTR [rbp-0x40],ax
  1123ae:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  1123b2:	89 c1                	mov    ecx,eax
  1123b4:	48 8d 3d 05 a8 50 00 	lea    rdi,[rip+0x50a805]        # 61cbc0 <idt>
  1123bb:	48 83 c7 10          	add    rdi,0x10
  1123bf:	48 8d 15 ea c7 ff ff 	lea    rdx,[rip+0xffffffffffffc7ea]        # 10ebb0 <_Z11Interrupt_1P14InterruptFrame>
  1123c6:	0f b7 75 c0          	movzx  esi,WORD PTR [rbp-0x40]
  1123ca:	e8 e1 fc ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  1123cf:	bf 0e 00 00 00       	mov    edi,0xe
  1123d4:	31 c9                	xor    ecx,ecx
  1123d6:	ba 01 00 00 00       	mov    edx,0x1
  1123db:	89 ce                	mov    esi,ecx
  1123dd:	e8 ce 06 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  1123e2:	66 89 45 b8          	mov    WORD PTR [rbp-0x48],ax
  1123e6:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  1123ea:	89 c1                	mov    ecx,eax
  1123ec:	48 8d 3d cd a7 50 00 	lea    rdi,[rip+0x50a7cd]        # 61cbc0 <idt>
  1123f3:	48 83 c7 20          	add    rdi,0x20
  1123f7:	48 8d 15 42 c9 ff ff 	lea    rdx,[rip+0xffffffffffffc942]        # 10ed40 <_Z11Interrupt_2P14InterruptFrame>
  1123fe:	0f b7 75 b8          	movzx  esi,WORD PTR [rbp-0x48]
  112402:	e8 a9 fc ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  112407:	bf 0e 00 00 00       	mov    edi,0xe
  11240c:	31 c9                	xor    ecx,ecx
  11240e:	ba 01 00 00 00       	mov    edx,0x1
  112413:	89 ce                	mov    esi,ecx
  112415:	e8 96 06 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  11241a:	66 89 45 b0          	mov    WORD PTR [rbp-0x50],ax
  11241e:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  112422:	89 c1                	mov    ecx,eax
  112424:	48 8d 3d 95 a7 50 00 	lea    rdi,[rip+0x50a795]        # 61cbc0 <idt>
  11242b:	48 83 c7 40          	add    rdi,0x40
  11242f:	48 8d 15 9a ca ff ff 	lea    rdx,[rip+0xffffffffffffca9a]        # 10eed0 <_Z11Interrupt_4P14InterruptFrame>
  112436:	0f b7 75 b0          	movzx  esi,WORD PTR [rbp-0x50]
  11243a:	e8 71 fc ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  11243f:	bf 0e 00 00 00       	mov    edi,0xe
  112444:	31 c9                	xor    ecx,ecx
  112446:	ba 01 00 00 00       	mov    edx,0x1
  11244b:	89 ce                	mov    esi,ecx
  11244d:	e8 5e 06 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  112452:	66 89 45 a8          	mov    WORD PTR [rbp-0x58],ax
  112456:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  11245a:	89 c1                	mov    ecx,eax
  11245c:	48 8d 3d 5d a7 50 00 	lea    rdi,[rip+0x50a75d]        # 61cbc0 <idt>
  112463:	48 83 c7 50          	add    rdi,0x50
  112467:	48 8d 15 f2 cb ff ff 	lea    rdx,[rip+0xffffffffffffcbf2]        # 10f060 <_Z11Interrupt_5P14InterruptFrame>
  11246e:	0f b7 75 a8          	movzx  esi,WORD PTR [rbp-0x58]
  112472:	e8 39 fc ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  112477:	bf 0e 00 00 00       	mov    edi,0xe
  11247c:	31 c9                	xor    ecx,ecx
  11247e:	ba 01 00 00 00       	mov    edx,0x1
  112483:	89 ce                	mov    esi,ecx
  112485:	e8 26 06 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  11248a:	66 89 45 a0          	mov    WORD PTR [rbp-0x60],ax
  11248e:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  112492:	89 c1                	mov    ecx,eax
  112494:	48 8d 3d 25 a7 50 00 	lea    rdi,[rip+0x50a725]        # 61cbc0 <idt>
  11249b:	48 83 c7 60          	add    rdi,0x60
  11249f:	48 8d 15 4a cd ff ff 	lea    rdx,[rip+0xffffffffffffcd4a]        # 10f1f0 <_Z11Interrupt_6P14InterruptFrame>
  1124a6:	0f b7 75 a0          	movzx  esi,WORD PTR [rbp-0x60]
  1124aa:	e8 01 fc ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  1124af:	bf 0e 00 00 00       	mov    edi,0xe
  1124b4:	31 c9                	xor    ecx,ecx
  1124b6:	ba 01 00 00 00       	mov    edx,0x1
  1124bb:	89 ce                	mov    esi,ecx
  1124bd:	e8 ee 05 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  1124c2:	66 89 45 98          	mov    WORD PTR [rbp-0x68],ax
  1124c6:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  1124ca:	89 c1                	mov    ecx,eax
  1124cc:	48 8d 3d ed a6 50 00 	lea    rdi,[rip+0x50a6ed]        # 61cbc0 <idt>
  1124d3:	48 83 c7 70          	add    rdi,0x70
  1124d7:	48 8d 15 a2 ce ff ff 	lea    rdx,[rip+0xffffffffffffcea2]        # 10f380 <_Z11Interrupt_7P14InterruptFrame>
  1124de:	0f b7 75 98          	movzx  esi,WORD PTR [rbp-0x68]
  1124e2:	e8 c9 fb ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  1124e7:	bf 0e 00 00 00       	mov    edi,0xe
  1124ec:	31 c9                	xor    ecx,ecx
  1124ee:	ba 01 00 00 00       	mov    edx,0x1
  1124f3:	89 ce                	mov    esi,ecx
  1124f5:	e8 b6 05 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  1124fa:	66 89 45 90          	mov    WORD PTR [rbp-0x70],ax
  1124fe:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  112502:	89 c1                	mov    ecx,eax
  112504:	48 8d 3d b5 a6 50 00 	lea    rdi,[rip+0x50a6b5]        # 61cbc0 <idt>
  11250b:	48 81 c7 80 00 00 00 	add    rdi,0x80
  112512:	48 8d 15 f7 cf ff ff 	lea    rdx,[rip+0xffffffffffffcff7]        # 10f510 <_Z11Interrupt_8P14InterruptFrame>
  112519:	0f b7 75 90          	movzx  esi,WORD PTR [rbp-0x70]
  11251d:	e8 8e fb ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  112522:	bf 0e 00 00 00       	mov    edi,0xe
  112527:	31 c9                	xor    ecx,ecx
  112529:	ba 01 00 00 00       	mov    edx,0x1
  11252e:	89 ce                	mov    esi,ecx
  112530:	e8 7b 05 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  112535:	66 89 45 88          	mov    WORD PTR [rbp-0x78],ax
  112539:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  11253d:	89 c1                	mov    ecx,eax
  11253f:	48 8d 3d 7a a6 50 00 	lea    rdi,[rip+0x50a67a]        # 61cbc0 <idt>
  112546:	48 81 c7 90 00 00 00 	add    rdi,0x90
  11254d:	48 8d 15 4c d1 ff ff 	lea    rdx,[rip+0xffffffffffffd14c]        # 10f6a0 <_Z11Interrupt_9P14InterruptFrame>
  112554:	0f b7 75 88          	movzx  esi,WORD PTR [rbp-0x78]
  112558:	e8 53 fb ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  11255d:	bf 0e 00 00 00       	mov    edi,0xe
  112562:	31 c9                	xor    ecx,ecx
  112564:	ba 01 00 00 00       	mov    edx,0x1
  112569:	89 ce                	mov    esi,ecx
  11256b:	e8 40 05 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  112570:	66 89 45 80          	mov    WORD PTR [rbp-0x80],ax
  112574:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  112578:	89 c1                	mov    ecx,eax
  11257a:	48 8d 3d 3f a6 50 00 	lea    rdi,[rip+0x50a63f]        # 61cbc0 <idt>
  112581:	48 81 c7 a0 00 00 00 	add    rdi,0xa0
  112588:	48 8d 15 a1 d2 ff ff 	lea    rdx,[rip+0xffffffffffffd2a1]        # 10f830 <_Z12Interrupt_10P14InterruptFrame>
  11258f:	0f b7 75 80          	movzx  esi,WORD PTR [rbp-0x80]
  112593:	e8 18 fb ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  112598:	bf 0e 00 00 00       	mov    edi,0xe
  11259d:	31 c9                	xor    ecx,ecx
  11259f:	ba 01 00 00 00       	mov    edx,0x1
  1125a4:	89 ce                	mov    esi,ecx
  1125a6:	e8 05 05 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  1125ab:	66 89 85 78 ff ff ff 	mov    WORD PTR [rbp-0x88],ax
  1125b2:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  1125b6:	89 c1                	mov    ecx,eax
  1125b8:	48 8d 3d 01 a6 50 00 	lea    rdi,[rip+0x50a601]        # 61cbc0 <idt>
  1125bf:	48 81 c7 b0 00 00 00 	add    rdi,0xb0
  1125c6:	48 8d 15 f3 d3 ff ff 	lea    rdx,[rip+0xffffffffffffd3f3]        # 10f9c0 <_Z12Interrupt_11P14InterruptFrame>
  1125cd:	0f b7 b5 78 ff ff ff 	movzx  esi,WORD PTR [rbp-0x88]
  1125d4:	e8 d7 fa ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  1125d9:	bf 0e 00 00 00       	mov    edi,0xe
  1125de:	31 c9                	xor    ecx,ecx
  1125e0:	ba 01 00 00 00       	mov    edx,0x1
  1125e5:	89 ce                	mov    esi,ecx
  1125e7:	e8 c4 04 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  1125ec:	66 89 85 70 ff ff ff 	mov    WORD PTR [rbp-0x90],ax
  1125f3:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  1125f7:	89 c1                	mov    ecx,eax
  1125f9:	48 8d 3d c0 a5 50 00 	lea    rdi,[rip+0x50a5c0]        # 61cbc0 <idt>
  112600:	48 81 c7 f0 00 00 00 	add    rdi,0xf0
  112607:	48 8d 15 42 d5 ff ff 	lea    rdx,[rip+0xffffffffffffd542]        # 10fb50 <_Z12Interrupt_15P14InterruptFrame>
  11260e:	0f b7 b5 70 ff ff ff 	movzx  esi,WORD PTR [rbp-0x90]
  112615:	e8 96 fa ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  11261a:	bf 0e 00 00 00       	mov    edi,0xe
  11261f:	31 c9                	xor    ecx,ecx
  112621:	ba 01 00 00 00       	mov    edx,0x1
  112626:	89 ce                	mov    esi,ecx
  112628:	e8 83 04 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  11262d:	66 89 85 68 ff ff ff 	mov    WORD PTR [rbp-0x98],ax
  112634:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  112638:	89 c1                	mov    ecx,eax
  11263a:	48 8d 3d 7f a5 50 00 	lea    rdi,[rip+0x50a57f]        # 61cbc0 <idt>
  112641:	48 81 c7 00 01 00 00 	add    rdi,0x100
  112648:	48 8d 15 91 d6 ff ff 	lea    rdx,[rip+0xffffffffffffd691]        # 10fce0 <_Z12Interrupt_16P14InterruptFrame>
  11264f:	0f b7 b5 68 ff ff ff 	movzx  esi,WORD PTR [rbp-0x98]
  112656:	e8 55 fa ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  11265b:	bf 0e 00 00 00       	mov    edi,0xe
  112660:	31 c9                	xor    ecx,ecx
  112662:	ba 01 00 00 00       	mov    edx,0x1
  112667:	89 ce                	mov    esi,ecx
  112669:	e8 42 04 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  11266e:	66 89 85 60 ff ff ff 	mov    WORD PTR [rbp-0xa0],ax
  112675:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  112679:	89 c1                	mov    ecx,eax
  11267b:	48 8d 3d 3e a5 50 00 	lea    rdi,[rip+0x50a53e]        # 61cbc0 <idt>
  112682:	48 81 c7 10 01 00 00 	add    rdi,0x110
  112689:	48 8d 15 e0 d7 ff ff 	lea    rdx,[rip+0xffffffffffffd7e0]        # 10fe70 <_Z12Interrupt_17P14InterruptFrame>
  112690:	0f b7 b5 60 ff ff ff 	movzx  esi,WORD PTR [rbp-0xa0]
  112697:	e8 14 fa ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  11269c:	bf 0e 00 00 00       	mov    edi,0xe
  1126a1:	31 c9                	xor    ecx,ecx
  1126a3:	ba 01 00 00 00       	mov    edx,0x1
  1126a8:	89 ce                	mov    esi,ecx
  1126aa:	e8 01 04 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  1126af:	66 89 85 58 ff ff ff 	mov    WORD PTR [rbp-0xa8],ax
  1126b6:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  1126ba:	89 c1                	mov    ecx,eax
  1126bc:	48 8d 3d fd a4 50 00 	lea    rdi,[rip+0x50a4fd]        # 61cbc0 <idt>
  1126c3:	48 81 c7 20 01 00 00 	add    rdi,0x120
  1126ca:	48 8d 15 2f d9 ff ff 	lea    rdx,[rip+0xffffffffffffd92f]        # 110000 <_Z12Interrupt_18P14InterruptFrame>
  1126d1:	0f b7 b5 58 ff ff ff 	movzx  esi,WORD PTR [rbp-0xa8]
  1126d8:	e8 d3 f9 ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  1126dd:	bf 0e 00 00 00       	mov    edi,0xe
  1126e2:	31 c9                	xor    ecx,ecx
  1126e4:	ba 01 00 00 00       	mov    edx,0x1
  1126e9:	89 ce                	mov    esi,ecx
  1126eb:	e8 c0 03 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  1126f0:	66 89 85 50 ff ff ff 	mov    WORD PTR [rbp-0xb0],ax
  1126f7:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  1126fb:	89 c1                	mov    ecx,eax
  1126fd:	48 8d 3d bc a4 50 00 	lea    rdi,[rip+0x50a4bc]        # 61cbc0 <idt>
  112704:	48 81 c7 30 01 00 00 	add    rdi,0x130
  11270b:	48 8d 15 7e da ff ff 	lea    rdx,[rip+0xffffffffffffda7e]        # 110190 <_Z12Interrupt_19P14InterruptFrame>
  112712:	0f b7 b5 50 ff ff ff 	movzx  esi,WORD PTR [rbp-0xb0]
  112719:	e8 92 f9 ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  11271e:	bf 0e 00 00 00       	mov    edi,0xe
  112723:	31 c9                	xor    ecx,ecx
  112725:	ba 01 00 00 00       	mov    edx,0x1
  11272a:	89 ce                	mov    esi,ecx
  11272c:	e8 7f 03 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  112731:	66 89 85 48 ff ff ff 	mov    WORD PTR [rbp-0xb8],ax
  112738:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  11273c:	89 c1                	mov    ecx,eax
  11273e:	48 8d 3d 7b a4 50 00 	lea    rdi,[rip+0x50a47b]        # 61cbc0 <idt>
  112745:	48 81 c7 40 01 00 00 	add    rdi,0x140
  11274c:	48 8d 15 cd db ff ff 	lea    rdx,[rip+0xffffffffffffdbcd]        # 110320 <_Z12Interrupt_20P14InterruptFrame>
  112753:	0f b7 b5 48 ff ff ff 	movzx  esi,WORD PTR [rbp-0xb8]
  11275a:	e8 51 f9 ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  11275f:	bf 0e 00 00 00       	mov    edi,0xe
  112764:	31 c9                	xor    ecx,ecx
  112766:	ba 01 00 00 00       	mov    edx,0x1
  11276b:	89 ce                	mov    esi,ecx
  11276d:	e8 3e 03 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  112772:	66 89 85 40 ff ff ff 	mov    WORD PTR [rbp-0xc0],ax
  112779:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  11277d:	89 c1                	mov    ecx,eax
  11277f:	48 8d 3d 3a a4 50 00 	lea    rdi,[rip+0x50a43a]        # 61cbc0 <idt>
  112786:	48 81 c7 50 01 00 00 	add    rdi,0x150
  11278d:	48 8d 15 1c dd ff ff 	lea    rdx,[rip+0xffffffffffffdd1c]        # 1104b0 <_Z12Interrupt_21P14InterruptFrame>
  112794:	0f b7 b5 40 ff ff ff 	movzx  esi,WORD PTR [rbp-0xc0]
  11279b:	e8 10 f9 ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  1127a0:	bf 0e 00 00 00       	mov    edi,0xe
  1127a5:	31 c9                	xor    ecx,ecx
  1127a7:	ba 01 00 00 00       	mov    edx,0x1
  1127ac:	89 ce                	mov    esi,ecx
  1127ae:	e8 fd 02 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  1127b3:	66 89 85 38 ff ff ff 	mov    WORD PTR [rbp-0xc8],ax
  1127ba:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  1127be:	89 c1                	mov    ecx,eax
  1127c0:	48 8d 3d f9 a3 50 00 	lea    rdi,[rip+0x50a3f9]        # 61cbc0 <idt>
  1127c7:	48 81 c7 60 01 00 00 	add    rdi,0x160
  1127ce:	48 8d 15 6b de ff ff 	lea    rdx,[rip+0xffffffffffffde6b]        # 110640 <_Z12Interrupt_22P14InterruptFrame>
  1127d5:	0f b7 b5 38 ff ff ff 	movzx  esi,WORD PTR [rbp-0xc8]
  1127dc:	e8 cf f8 ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  1127e1:	bf 0e 00 00 00       	mov    edi,0xe
  1127e6:	31 c9                	xor    ecx,ecx
  1127e8:	ba 01 00 00 00       	mov    edx,0x1
  1127ed:	89 ce                	mov    esi,ecx
  1127ef:	e8 bc 02 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  1127f4:	66 89 85 30 ff ff ff 	mov    WORD PTR [rbp-0xd0],ax
  1127fb:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  1127ff:	89 c1                	mov    ecx,eax
  112801:	48 8d 3d b8 a3 50 00 	lea    rdi,[rip+0x50a3b8]        # 61cbc0 <idt>
  112808:	48 81 c7 70 01 00 00 	add    rdi,0x170
  11280f:	48 8d 15 ba df ff ff 	lea    rdx,[rip+0xffffffffffffdfba]        # 1107d0 <_Z12Interrupt_23P14InterruptFrame>
  112816:	0f b7 b5 30 ff ff ff 	movzx  esi,WORD PTR [rbp-0xd0]
  11281d:	e8 8e f8 ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  112822:	bf 0e 00 00 00       	mov    edi,0xe
  112827:	31 c9                	xor    ecx,ecx
  112829:	ba 01 00 00 00       	mov    edx,0x1
  11282e:	89 ce                	mov    esi,ecx
  112830:	e8 7b 02 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  112835:	66 89 85 28 ff ff ff 	mov    WORD PTR [rbp-0xd8],ax
  11283c:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  112840:	89 c1                	mov    ecx,eax
  112842:	48 8d 3d 77 a3 50 00 	lea    rdi,[rip+0x50a377]        # 61cbc0 <idt>
  112849:	48 81 c7 80 01 00 00 	add    rdi,0x180
  112850:	48 8d 15 09 e1 ff ff 	lea    rdx,[rip+0xffffffffffffe109]        # 110960 <_Z12Interrupt_24P14InterruptFrame>
  112857:	0f b7 b5 28 ff ff ff 	movzx  esi,WORD PTR [rbp-0xd8]
  11285e:	e8 4d f8 ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  112863:	bf 0e 00 00 00       	mov    edi,0xe
  112868:	31 c9                	xor    ecx,ecx
  11286a:	ba 01 00 00 00       	mov    edx,0x1
  11286f:	89 ce                	mov    esi,ecx
  112871:	e8 3a 02 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  112876:	66 89 85 20 ff ff ff 	mov    WORD PTR [rbp-0xe0],ax
  11287d:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  112881:	89 c1                	mov    ecx,eax
  112883:	48 8d 3d 36 a3 50 00 	lea    rdi,[rip+0x50a336]        # 61cbc0 <idt>
  11288a:	48 81 c7 90 01 00 00 	add    rdi,0x190
  112891:	48 8d 15 58 e2 ff ff 	lea    rdx,[rip+0xffffffffffffe258]        # 110af0 <_Z12Interrupt_25P14InterruptFrame>
  112898:	0f b7 b5 20 ff ff ff 	movzx  esi,WORD PTR [rbp-0xe0]
  11289f:	e8 0c f8 ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  1128a4:	bf 0e 00 00 00       	mov    edi,0xe
  1128a9:	31 c9                	xor    ecx,ecx
  1128ab:	ba 01 00 00 00       	mov    edx,0x1
  1128b0:	89 ce                	mov    esi,ecx
  1128b2:	e8 f9 01 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  1128b7:	66 89 85 18 ff ff ff 	mov    WORD PTR [rbp-0xe8],ax
  1128be:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  1128c2:	89 c1                	mov    ecx,eax
  1128c4:	48 8d 3d f5 a2 50 00 	lea    rdi,[rip+0x50a2f5]        # 61cbc0 <idt>
  1128cb:	48 81 c7 a0 01 00 00 	add    rdi,0x1a0
  1128d2:	48 8d 15 a7 e3 ff ff 	lea    rdx,[rip+0xffffffffffffe3a7]        # 110c80 <_Z12Interrupt_26P14InterruptFrame>
  1128d9:	0f b7 b5 18 ff ff ff 	movzx  esi,WORD PTR [rbp-0xe8]
  1128e0:	e8 cb f7 ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  1128e5:	bf 0e 00 00 00       	mov    edi,0xe
  1128ea:	31 c9                	xor    ecx,ecx
  1128ec:	ba 01 00 00 00       	mov    edx,0x1
  1128f1:	89 ce                	mov    esi,ecx
  1128f3:	e8 b8 01 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  1128f8:	66 89 85 10 ff ff ff 	mov    WORD PTR [rbp-0xf0],ax
  1128ff:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  112903:	89 c1                	mov    ecx,eax
  112905:	48 8d 3d b4 a2 50 00 	lea    rdi,[rip+0x50a2b4]        # 61cbc0 <idt>
  11290c:	48 81 c7 b0 01 00 00 	add    rdi,0x1b0
  112913:	48 8d 15 f6 e4 ff ff 	lea    rdx,[rip+0xffffffffffffe4f6]        # 110e10 <_Z12Interrupt_27P14InterruptFrame>
  11291a:	0f b7 b5 10 ff ff ff 	movzx  esi,WORD PTR [rbp-0xf0]
  112921:	e8 8a f7 ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  112926:	bf 0e 00 00 00       	mov    edi,0xe
  11292b:	31 c9                	xor    ecx,ecx
  11292d:	ba 01 00 00 00       	mov    edx,0x1
  112932:	89 ce                	mov    esi,ecx
  112934:	e8 77 01 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  112939:	66 89 85 08 ff ff ff 	mov    WORD PTR [rbp-0xf8],ax
  112940:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  112944:	89 c1                	mov    ecx,eax
  112946:	48 8d 3d 73 a2 50 00 	lea    rdi,[rip+0x50a273]        # 61cbc0 <idt>
  11294d:	48 81 c7 c0 01 00 00 	add    rdi,0x1c0
  112954:	48 8d 15 45 e6 ff ff 	lea    rdx,[rip+0xffffffffffffe645]        # 110fa0 <_Z12Interrupt_28P14InterruptFrame>
  11295b:	0f b7 b5 08 ff ff ff 	movzx  esi,WORD PTR [rbp-0xf8]
  112962:	e8 49 f7 ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  112967:	bf 0e 00 00 00       	mov    edi,0xe
  11296c:	31 c9                	xor    ecx,ecx
  11296e:	ba 01 00 00 00       	mov    edx,0x1
  112973:	89 ce                	mov    esi,ecx
  112975:	e8 36 01 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  11297a:	66 89 85 00 ff ff ff 	mov    WORD PTR [rbp-0x100],ax
  112981:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  112985:	89 c1                	mov    ecx,eax
  112987:	48 8d 3d 32 a2 50 00 	lea    rdi,[rip+0x50a232]        # 61cbc0 <idt>
  11298e:	48 81 c7 d0 01 00 00 	add    rdi,0x1d0
  112995:	48 8d 15 94 e7 ff ff 	lea    rdx,[rip+0xffffffffffffe794]        # 111130 <_Z12Interrupt_29P14InterruptFrame>
  11299c:	0f b7 b5 00 ff ff ff 	movzx  esi,WORD PTR [rbp-0x100]
  1129a3:	e8 08 f7 ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  1129a8:	bf 0e 00 00 00       	mov    edi,0xe
  1129ad:	31 c9                	xor    ecx,ecx
  1129af:	ba 01 00 00 00       	mov    edx,0x1
  1129b4:	89 ce                	mov    esi,ecx
  1129b6:	e8 f5 00 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  1129bb:	66 89 85 f8 fe ff ff 	mov    WORD PTR [rbp-0x108],ax
  1129c2:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  1129c6:	89 c1                	mov    ecx,eax
  1129c8:	48 8d 3d f1 a1 50 00 	lea    rdi,[rip+0x50a1f1]        # 61cbc0 <idt>
  1129cf:	48 81 c7 e0 01 00 00 	add    rdi,0x1e0
  1129d6:	48 8d 15 e3 e8 ff ff 	lea    rdx,[rip+0xffffffffffffe8e3]        # 1112c0 <_Z12Interrupt_30P14InterruptFrame>
  1129dd:	0f b7 b5 f8 fe ff ff 	movzx  esi,WORD PTR [rbp-0x108]
  1129e4:	e8 c7 f6 ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  1129e9:	bf 0e 00 00 00       	mov    edi,0xe
  1129ee:	31 c9                	xor    ecx,ecx
  1129f0:	ba 01 00 00 00       	mov    edx,0x1
  1129f5:	89 ce                	mov    esi,ecx
  1129f7:	e8 b4 00 00 00       	call   112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>
  1129fc:	66 89 85 f0 fe ff ff 	mov    WORD PTR [rbp-0x110],ax
  112a03:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  112a07:	89 c1                	mov    ecx,eax
  112a09:	48 8d 3d b0 a1 50 00 	lea    rdi,[rip+0x50a1b0]        # 61cbc0 <idt>
  112a10:	48 81 c7 f0 01 00 00 	add    rdi,0x1f0
  112a17:	48 8d 15 32 ea ff ff 	lea    rdx,[rip+0xffffffffffffea32]        # 111450 <_Z12Interrupt_31P14InterruptFrame>
  112a1e:	0f b7 b5 f0 fe ff ff 	movzx  esi,WORD PTR [rbp-0x110]
  112a25:	e8 86 f6 ff ff       	call   1120b0 <_Z11SetIDTEntryP19InterruptDescriptor28InterruptDescriptorAttributemm>
  112a2a:	bf ff 0f 00 00       	mov    edi,0xfff
  112a2f:	48 8d 35 8a a1 50 00 	lea    rsi,[rip+0x50a18a]        # 61cbc0 <idt>
  112a36:	e8 ac b1 ff ff       	call   10dbe7 <LoadIDT>
  112a3b:	48 81 c4 20 01 00 00 	add    rsp,0x120
  112a42:	5d                   	pop    rbp
  112a43:	c3                   	ret
  112a44:	cc                   	int3
  112a45:	cc                   	int3
  112a46:	cc                   	int3
  112a47:	cc                   	int3
  112a48:	cc                   	int3
  112a49:	cc                   	int3
  112a4a:	cc                   	int3
  112a4b:	cc                   	int3
  112a4c:	cc                   	int3
  112a4d:	cc                   	int3
  112a4e:	cc                   	int3
  112a4f:	cc                   	int3

0000000000112a50 <_Z10isAlphabetc>:
  112a50:	55                   	push   rbp
  112a51:	48 89 e5             	mov    rbp,rsp
  112a54:	48 83 ec 03          	sub    rsp,0x3
  112a58:	40 88 f8             	mov    al,dil
  112a5b:	88 45 ff             	mov    BYTE PTR [rbp-0x1],al
  112a5e:	0f be 45 ff          	movsx  eax,BYTE PTR [rbp-0x1]
  112a62:	83 f8 61             	cmp    eax,0x61
  112a65:	0f 8c 12 00 00 00    	jl     112a7d <_Z10isAlphabetc+0x2d>
  112a6b:	0f be 4d ff          	movsx  ecx,BYTE PTR [rbp-0x1]
  112a6f:	b0 01                	mov    al,0x1
  112a71:	83 f9 7a             	cmp    ecx,0x7a
  112a74:	88 45 fe             	mov    BYTE PTR [rbp-0x2],al
  112a77:	0f 8e 25 00 00 00    	jle    112aa2 <_Z10isAlphabetc+0x52>
  112a7d:	0f be 4d ff          	movsx  ecx,BYTE PTR [rbp-0x1]
  112a81:	31 c0                	xor    eax,eax
  112a83:	83 f9 41             	cmp    ecx,0x41
  112a86:	88 45 fd             	mov    BYTE PTR [rbp-0x3],al
  112a89:	0f 8f 0d 00 00 00    	jg     112a9c <_Z10isAlphabetc+0x4c>
  112a8f:	0f be 45 ff          	movsx  eax,BYTE PTR [rbp-0x1]
  112a93:	83 f8 5a             	cmp    eax,0x5a
  112a96:	0f 9d c0             	setge  al
  112a99:	88 45 fd             	mov    BYTE PTR [rbp-0x3],al
  112a9c:	8a 45 fd             	mov    al,BYTE PTR [rbp-0x3]
  112a9f:	88 45 fe             	mov    BYTE PTR [rbp-0x2],al
  112aa2:	8a 45 fe             	mov    al,BYTE PTR [rbp-0x2]
  112aa5:	24 01                	and    al,0x1
  112aa7:	0f b6 c0             	movzx  eax,al
  112aaa:	48 83 c4 03          	add    rsp,0x3
  112aae:	5d                   	pop    rbp
  112aaf:	c3                   	ret

0000000000112ab0 <_Z11MakeIDTAttr14DescriptorTypehbh>:
  112ab0:	55                   	push   rbp
  112ab1:	48 89 e5             	mov    rbp,rsp
  112ab4:	48 83 ec 10          	sub    rsp,0x10
  112ab8:	88 c8                	mov    al,cl
  112aba:	88 d1                	mov    cl,dl
  112abc:	40 88 f2             	mov    dl,sil
  112abf:	89 7d f4             	mov    DWORD PTR [rbp-0xc],edi
  112ac2:	88 55 f3             	mov    BYTE PTR [rbp-0xd],dl
  112ac5:	80 e1 01             	and    cl,0x1
  112ac8:	88 4d f2             	mov    BYTE PTR [rbp-0xe],cl
  112acb:	88 45 f1             	mov    BYTE PTR [rbp-0xf],al
  112ace:	48 8d 7d f8          	lea    rdi,[rbp-0x8]
  112ad2:	31 f6                	xor    esi,esi
  112ad4:	ba 02 00 00 00       	mov    edx,0x2
  112ad9:	e8 02 ae ff ff       	call   10d8e0 <memset>
  112ade:	0f b6 45 f1          	movzx  eax,BYTE PTR [rbp-0xf]
  112ae2:	66 89 c1             	mov    cx,ax
  112ae5:	66 8b 45 f8          	mov    ax,WORD PTR [rbp-0x8]
  112ae9:	66 83 e1 07          	and    cx,0x7
  112aed:	66 83 e0 f8          	and    ax,0xfff8
  112af1:	66 09 c8             	or     ax,cx
  112af4:	66 89 45 f8          	mov    WORD PTR [rbp-0x8],ax
  112af8:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  112afb:	66 89 c1             	mov    cx,ax
  112afe:	66 8b 45 f8          	mov    ax,WORD PTR [rbp-0x8]
  112b02:	66 83 e1 0f          	and    cx,0xf
  112b06:	66 c1 e1 08          	shl    cx,0x8
  112b0a:	66 25 ff f0          	and    ax,0xf0ff
  112b0e:	66 09 c8             	or     ax,cx
  112b11:	66 89 45 f8          	mov    WORD PTR [rbp-0x8],ax
  112b15:	0f b6 45 f3          	movzx  eax,BYTE PTR [rbp-0xd]
  112b19:	66 89 c1             	mov    cx,ax
  112b1c:	66 8b 45 f8          	mov    ax,WORD PTR [rbp-0x8]
  112b20:	66 83 e1 03          	and    cx,0x3
  112b24:	66 c1 e1 0d          	shl    cx,0xd
  112b28:	66 25 ff 9f          	and    ax,0x9fff
  112b2c:	66 09 c8             	or     ax,cx
  112b2f:	66 89 45 f8          	mov    WORD PTR [rbp-0x8],ax
  112b33:	8a 45 f2             	mov    al,BYTE PTR [rbp-0xe]
  112b36:	24 01                	and    al,0x1
  112b38:	0f b6 c0             	movzx  eax,al
  112b3b:	66 89 c1             	mov    cx,ax
  112b3e:	66 8b 45 f8          	mov    ax,WORD PTR [rbp-0x8]
  112b42:	66 83 e1 01          	and    cx,0x1
  112b46:	66 c1 e1 0f          	shl    cx,0xf
  112b4a:	66 25 ff 7f          	and    ax,0x7fff
  112b4e:	66 09 c8             	or     ax,cx
  112b51:	66 89 45 f8          	mov    WORD PTR [rbp-0x8],ax
  112b55:	66 8b 45 f8          	mov    ax,WORD PTR [rbp-0x8]
  112b59:	48 83 c4 10          	add    rsp,0x10
  112b5d:	5d                   	pop    rbp
  112b5e:	c3                   	ret
  112b5f:	cc                   	int3

0000000000112b60 <_Z22SetupIdentityPageTablev>:
  112b60:	55                   	push   rbp
  112b61:	48 89 e5             	mov    rbp,rsp
  112b64:	48 83 ec 30          	sub    rsp,0x30
  112b68:	48 8d 3d 91 b4 50 00 	lea    rdi,[rip+0x50b491]        # 61e000 <_ZN12_GLOBAL__N_19pdp_tableE>
  112b6f:	31 c0                	xor    eax,eax
  112b71:	89 c6                	mov    esi,eax
  112b73:	e8 08 01 00 00       	call   112c80 <_ZNSt3__15arrayImLm512EEixEm>
  112b78:	48 83 c8 03          	or     rax,0x3
  112b7c:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  112b80:	48 8d 3d 79 c4 50 00 	lea    rdi,[rip+0x50c479]        # 61f000 <_ZN12_GLOBAL__N_110pml4_tableE>
  112b87:	31 c0                	xor    eax,eax
  112b89:	89 c6                	mov    esi,eax
  112b8b:	e8 f0 00 00 00       	call   112c80 <_ZNSt3__15arrayImLm512EEixEm>
  112b90:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  112b94:	48 89 08             	mov    QWORD PTR [rax],rcx
  112b97:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  112b9e:	48 63 45 fc          	movsxd rax,DWORD PTR [rbp-0x4]
  112ba2:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  112ba6:	48 8d 3d 53 d4 50 00 	lea    rdi,[rip+0x50d453]        # 620000 <_ZN12_GLOBAL__N_114page_directoryE>
  112bad:	e8 fe 00 00 00       	call   112cb0 <_ZNKSt3__15arrayINS0_ImLm512EEELm64EE4sizeEv>
  112bb2:	48 89 c1             	mov    rcx,rax
  112bb5:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  112bb9:	48 39 c8             	cmp    rax,rcx
  112bbc:	0f 83 a4 00 00 00    	jae    112c66 <_Z22SetupIdentityPageTablev+0x106>
  112bc2:	48 63 75 fc          	movsxd rsi,DWORD PTR [rbp-0x4]
  112bc6:	48 8d 3d 33 d4 50 00 	lea    rdi,[rip+0x50d433]        # 620000 <_ZN12_GLOBAL__N_114page_directoryE>
  112bcd:	e8 fe 00 00 00       	call   112cd0 <_ZNSt3__15arrayINS0_ImLm512EEELm64EEixEm>
  112bd2:	48 83 c8 03          	or     rax,0x3
  112bd6:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  112bda:	48 63 75 fc          	movsxd rsi,DWORD PTR [rbp-0x4]
  112bde:	48 8d 3d 1b b4 50 00 	lea    rdi,[rip+0x50b41b]        # 61e000 <_ZN12_GLOBAL__N_19pdp_tableE>
  112be5:	e8 96 00 00 00       	call   112c80 <_ZNSt3__15arrayImLm512EEixEm>
  112bea:	48 8b 4d e0          	mov    rcx,QWORD PTR [rbp-0x20]
  112bee:	48 89 08             	mov    QWORD PTR [rax],rcx
  112bf1:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
  112bf8:	81 7d f8 00 02 00 00 	cmp    DWORD PTR [rbp-0x8],0x200
  112bff:	0f 8d 4e 00 00 00    	jge    112c53 <_Z22SetupIdentityPageTablev+0xf3>
  112c05:	48 63 45 fc          	movsxd rax,DWORD PTR [rbp-0x4]
  112c09:	48 c1 e0 1e          	shl    rax,0x1e
  112c0d:	48 63 4d f8          	movsxd rcx,DWORD PTR [rbp-0x8]
  112c11:	48 c1 e1 15          	shl    rcx,0x15
  112c15:	48 01 c8             	add    rax,rcx
  112c18:	48 0d 83 00 00 00    	or     rax,0x83
  112c1e:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
  112c22:	48 63 75 fc          	movsxd rsi,DWORD PTR [rbp-0x4]
  112c26:	48 8d 3d d3 d3 50 00 	lea    rdi,[rip+0x50d3d3]        # 620000 <_ZN12_GLOBAL__N_114page_directoryE>
  112c2d:	e8 9e 00 00 00       	call   112cd0 <_ZNSt3__15arrayINS0_ImLm512EEELm64EEixEm>
  112c32:	48 89 c7             	mov    rdi,rax
  112c35:	48 63 75 f8          	movsxd rsi,DWORD PTR [rbp-0x8]
  112c39:	e8 42 00 00 00       	call   112c80 <_ZNSt3__15arrayImLm512EEixEm>
  112c3e:	48 8b 4d d8          	mov    rcx,QWORD PTR [rbp-0x28]
  112c42:	48 89 08             	mov    QWORD PTR [rax],rcx
  112c45:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  112c48:	83 c0 01             	add    eax,0x1
  112c4b:	89 45 f8             	mov    DWORD PTR [rbp-0x8],eax
  112c4e:	e9 a5 ff ff ff       	jmp    112bf8 <_Z22SetupIdentityPageTablev+0x98>
  112c53:	e9 00 00 00 00       	jmp    112c58 <_Z22SetupIdentityPageTablev+0xf8>
  112c58:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  112c5b:	83 c0 01             	add    eax,0x1
  112c5e:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  112c61:	e9 38 ff ff ff       	jmp    112b9e <_Z22SetupIdentityPageTablev+0x3e>
  112c66:	48 8d 3d 93 c3 50 00 	lea    rdi,[rip+0x50c393]        # 61f000 <_ZN12_GLOBAL__N_110pml4_tableE>
  112c6d:	e8 8f af ff ff       	call   10dc01 <SetCR3>
  112c72:	48 83 c4 30          	add    rsp,0x30
  112c76:	5d                   	pop    rbp
  112c77:	c3                   	ret
  112c78:	cc                   	int3
  112c79:	cc                   	int3
  112c7a:	cc                   	int3
  112c7b:	cc                   	int3
  112c7c:	cc                   	int3
  112c7d:	cc                   	int3
  112c7e:	cc                   	int3
  112c7f:	cc                   	int3

0000000000112c80 <_ZNSt3__15arrayImLm512EEixEm>:
  112c80:	55                   	push   rbp
  112c81:	48 89 e5             	mov    rbp,rsp
  112c84:	48 83 ec 10          	sub    rsp,0x10
  112c88:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  112c8c:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  112c90:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  112c94:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  112c98:	48 c1 e1 03          	shl    rcx,0x3
  112c9c:	48 01 c8             	add    rax,rcx
  112c9f:	48 83 c4 10          	add    rsp,0x10
  112ca3:	5d                   	pop    rbp
  112ca4:	c3                   	ret
  112ca5:	cc                   	int3
  112ca6:	cc                   	int3
  112ca7:	cc                   	int3
  112ca8:	cc                   	int3
  112ca9:	cc                   	int3
  112caa:	cc                   	int3
  112cab:	cc                   	int3
  112cac:	cc                   	int3
  112cad:	cc                   	int3
  112cae:	cc                   	int3
  112caf:	cc                   	int3

0000000000112cb0 <_ZNKSt3__15arrayINS0_ImLm512EEELm64EE4sizeEv>:
  112cb0:	55                   	push   rbp
  112cb1:	48 89 e5             	mov    rbp,rsp
  112cb4:	50                   	push   rax
  112cb5:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  112cb9:	b8 40 00 00 00       	mov    eax,0x40
  112cbe:	48 83 c4 08          	add    rsp,0x8
  112cc2:	5d                   	pop    rbp
  112cc3:	c3                   	ret
  112cc4:	cc                   	int3
  112cc5:	cc                   	int3
  112cc6:	cc                   	int3
  112cc7:	cc                   	int3
  112cc8:	cc                   	int3
  112cc9:	cc                   	int3
  112cca:	cc                   	int3
  112ccb:	cc                   	int3
  112ccc:	cc                   	int3
  112ccd:	cc                   	int3
  112cce:	cc                   	int3
  112ccf:	cc                   	int3

0000000000112cd0 <_ZNSt3__15arrayINS0_ImLm512EEELm64EEixEm>:
  112cd0:	55                   	push   rbp
  112cd1:	48 89 e5             	mov    rbp,rsp
  112cd4:	48 83 ec 10          	sub    rsp,0x10
  112cd8:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  112cdc:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  112ce0:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  112ce4:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  112ce8:	48 c1 e1 0c          	shl    rcx,0xc
  112cec:	48 01 c8             	add    rax,rcx
  112cef:	48 83 c4 10          	add    rsp,0x10
  112cf3:	5d                   	pop    rbp
  112cf4:	c3                   	ret
  112cf5:	cc                   	int3
  112cf6:	cc                   	int3
  112cf7:	cc                   	int3
  112cf8:	cc                   	int3
  112cf9:	cc                   	int3
  112cfa:	cc                   	int3
  112cfb:	cc                   	int3
  112cfc:	cc                   	int3
  112cfd:	cc                   	int3
  112cfe:	cc                   	int3
  112cff:	cc                   	int3

0000000000112d00 <_Z17InitializeKeycodev>:
  112d00:	55                   	push   rbp
  112d01:	48 89 e5             	mov    rbp,rsp
  112d04:	48 83 ec 04          	sub    rsp,0x4
  112d08:	c7 45 fc 36 00 00 00 	mov    DWORD PTR [rbp-0x4],0x36
  112d0f:	81 7d fc 00 01 00 00 	cmp    DWORD PTR [rbp-0x4],0x100
  112d16:	0f 8d 1d 00 00 00    	jge    112d39 <_Z17InitializeKeycodev+0x39>
  112d1c:	48 63 4d fc          	movsxd rcx,DWORD PTR [rbp-0x4]
  112d20:	48 8d 05 e9 39 00 00 	lea    rax,[rip+0x39e9]        # 116710 <keycode>
  112d27:	c6 04 08 00          	mov    BYTE PTR [rax+rcx*1],0x0
  112d2b:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  112d2e:	83 c0 01             	add    eax,0x1
  112d31:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  112d34:	e9 d6 ff ff ff       	jmp    112d0f <_Z17InitializeKeycodev+0xf>
  112d39:	c6 05 fb 39 00 00 5d 	mov    BYTE PTR [rip+0x39fb],0x5d        # 11673b <keycode+0x2b>
  112d40:	c6 05 e5 39 00 00 0a 	mov    BYTE PTR [rip+0x39e5],0xa        # 11672c <keycode+0x1c>
  112d47:	c6 05 fb 39 00 00 20 	mov    BYTE PTR [rip+0x39fb],0x20        # 116749 <keycode+0x39>
  112d4e:	c6 05 2e 3a 00 00 5c 	mov    BYTE PTR [rip+0x3a2e],0x5c        # 116783 <keycode+0x73>
  112d55:	c6 05 31 3a 00 00 5c 	mov    BYTE PTR [rip+0x3a31],0x5c        # 11678d <keycode+0x7d>
  112d5c:	48 83 c4 04          	add    rsp,0x4
  112d60:	5d                   	pop    rbp
  112d61:	c3                   	ret
  112d62:	cc                   	int3
  112d63:	cc                   	int3
  112d64:	cc                   	int3
  112d65:	cc                   	int3
  112d66:	cc                   	int3
  112d67:	cc                   	int3
  112d68:	cc                   	int3
  112d69:	cc                   	int3
  112d6a:	cc                   	int3
  112d6b:	cc                   	int3
  112d6c:	cc                   	int3
  112d6d:	cc                   	int3
  112d6e:	cc                   	int3
  112d6f:	cc                   	int3

0000000000112d70 <_ZN11InputBuffer3addEc>:
  112d70:	55                   	push   rbp
  112d71:	48 89 e5             	mov    rbp,rsp
  112d74:	48 83 ec 20          	sub    rsp,0x20
  112d78:	40 88 f0             	mov    al,sil
  112d7b:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  112d7f:	88 45 ef             	mov    BYTE PTR [rbp-0x11],al
  112d82:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  112d86:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  112d8a:	0f be 45 ef          	movsx  eax,BYTE PTR [rbp-0x11]
  112d8e:	83 f8 08             	cmp    eax,0x8
  112d91:	0f 85 8b 00 00 00    	jne    112e22 <_ZN11InputBuffer3addEc+0xb2>
  112d97:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  112d9b:	83 b8 fc 03 00 00 00 	cmp    DWORD PTR [rax+0x3fc],0x0
  112da2:	0f 8e 7a 00 00 00    	jle    112e22 <_ZN11InputBuffer3addEc+0xb2>
  112da8:	48 8b 4d e0          	mov    rcx,QWORD PTR [rbp-0x20]
  112dac:	8b 81 f0 03 00 00    	mov    eax,DWORD PTR [rcx+0x3f0]
  112db2:	3b 81 f4 03 00 00    	cmp    eax,DWORD PTR [rcx+0x3f4]
  112db8:	0f 85 1f 00 00 00    	jne    112ddd <_ZN11InputBuffer3addEc+0x6d>
  112dbe:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  112dc2:	8b 80 f0 03 00 00    	mov    eax,DWORD PTR [rax+0x3f0]
  112dc8:	83 e8 01             	sub    eax,0x1
  112dcb:	b9 e8 03 00 00       	mov    ecx,0x3e8
  112dd0:	99                   	cdq
  112dd1:	f7 f9                	idiv   ecx
  112dd3:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  112dd7:	89 90 f0 03 00 00    	mov    DWORD PTR [rax+0x3f0],edx
  112ddd:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  112de1:	8b 80 f4 03 00 00    	mov    eax,DWORD PTR [rax+0x3f4]
  112de7:	83 e8 01             	sub    eax,0x1
  112dea:	b9 e8 03 00 00       	mov    ecx,0x3e8
  112def:	99                   	cdq
  112df0:	f7 f9                	idiv   ecx
  112df2:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  112df6:	89 90 f4 03 00 00    	mov    DWORD PTR [rax+0x3f4],edx
  112dfc:	48 63 88 f4 03 00 00 	movsxd rcx,DWORD PTR [rax+0x3f4]
  112e03:	c6 04 08 00          	mov    BYTE PTR [rax+rcx*1],0x0
  112e07:	8b 88 fc 03 00 00    	mov    ecx,DWORD PTR [rax+0x3fc]
  112e0d:	83 c1 ff             	add    ecx,0xffffffff
  112e10:	89 88 fc 03 00 00    	mov    DWORD PTR [rax+0x3fc],ecx
  112e16:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  112e1d:	e9 8d 00 00 00       	jmp    112eaf <_ZN11InputBuffer3addEc+0x13f>
  112e22:	0f be 45 ef          	movsx  eax,BYTE PTR [rbp-0x11]
  112e26:	83 f8 08             	cmp    eax,0x8
  112e29:	0f 85 1d 00 00 00    	jne    112e4c <_ZN11InputBuffer3addEc+0xdc>
  112e2f:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  112e33:	83 b8 fc 03 00 00 00 	cmp    DWORD PTR [rax+0x3fc],0x0
  112e3a:	0f 85 0c 00 00 00    	jne    112e4c <_ZN11InputBuffer3addEc+0xdc>
  112e40:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  112e47:	e9 63 00 00 00       	jmp    112eaf <_ZN11InputBuffer3addEc+0x13f>
  112e4c:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  112e50:	81 b8 fc 03 00 00 e8 	cmp    DWORD PTR [rax+0x3fc],0x3e8
  112e57:	03 00 00 
  112e5a:	0f 8d 47 00 00 00    	jge    112ea7 <_ZN11InputBuffer3addEc+0x137>
  112e60:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  112e64:	8a 55 ef             	mov    dl,BYTE PTR [rbp-0x11]
  112e67:	48 63 88 f4 03 00 00 	movsxd rcx,DWORD PTR [rax+0x3f4]
  112e6e:	88 14 08             	mov    BYTE PTR [rax+rcx*1],dl
  112e71:	8b 80 f4 03 00 00    	mov    eax,DWORD PTR [rax+0x3f4]
  112e77:	83 c0 01             	add    eax,0x1
  112e7a:	b9 e8 03 00 00       	mov    ecx,0x3e8
  112e7f:	99                   	cdq
  112e80:	f7 f9                	idiv   ecx
  112e82:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  112e86:	89 90 f4 03 00 00    	mov    DWORD PTR [rax+0x3f4],edx
  112e8c:	8b 88 fc 03 00 00    	mov    ecx,DWORD PTR [rax+0x3fc]
  112e92:	83 c1 01             	add    ecx,0x1
  112e95:	89 88 fc 03 00 00    	mov    DWORD PTR [rax+0x3fc],ecx
  112e9b:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  112ea2:	e9 08 00 00 00       	jmp    112eaf <_ZN11InputBuffer3addEc+0x13f>
  112ea7:	cc                   	int3
  112ea8:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [rbp-0x4],0x1
  112eaf:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  112eb2:	48 83 c4 20          	add    rsp,0x20
  112eb6:	5d                   	pop    rbp
  112eb7:	c3                   	ret
  112eb8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  112ebf:	00 

0000000000112ec0 <_ZN11InputBuffer7isEnterEv>:
  112ec0:	55                   	push   rbp
  112ec1:	48 89 e5             	mov    rbp,rsp
  112ec4:	48 83 ec 20          	sub    rsp,0x20
  112ec8:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  112ecc:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  112ed0:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  112ed4:	8b 80 ec 03 00 00    	mov    eax,DWORD PTR [rax+0x3ec]
  112eda:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
  112edd:	48 8b 4d e0          	mov    rcx,QWORD PTR [rbp-0x20]
  112ee1:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  112ee4:	3b 81 f4 03 00 00    	cmp    eax,DWORD PTR [rcx+0x3f4]
  112eea:	0f 84 34 00 00 00    	je     112f24 <_ZN11InputBuffer7isEnterEv+0x64>
  112ef0:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  112ef4:	48 63 4d ec          	movsxd rcx,DWORD PTR [rbp-0x14]
  112ef8:	0f be 04 08          	movsx  eax,BYTE PTR [rax+rcx*1]
  112efc:	83 f8 0a             	cmp    eax,0xa
  112eff:	0f 85 09 00 00 00    	jne    112f0e <_ZN11InputBuffer7isEnterEv+0x4e>
  112f05:	c6 45 ff 01          	mov    BYTE PTR [rbp-0x1],0x1
  112f09:	e9 1a 00 00 00       	jmp    112f28 <_ZN11InputBuffer7isEnterEv+0x68>
  112f0e:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  112f11:	83 c0 01             	add    eax,0x1
  112f14:	b9 e8 03 00 00       	mov    ecx,0x3e8
  112f19:	99                   	cdq
  112f1a:	f7 f9                	idiv   ecx
  112f1c:	89 55 ec             	mov    DWORD PTR [rbp-0x14],edx
  112f1f:	e9 b9 ff ff ff       	jmp    112edd <_ZN11InputBuffer7isEnterEv+0x1d>
  112f24:	c6 45 ff 00          	mov    BYTE PTR [rbp-0x1],0x0
  112f28:	8a 45 ff             	mov    al,BYTE PTR [rbp-0x1]
  112f2b:	24 01                	and    al,0x1
  112f2d:	0f b6 c0             	movzx  eax,al
  112f30:	48 83 c4 20          	add    rsp,0x20
  112f34:	5d                   	pop    rbp
  112f35:	c3                   	ret
  112f36:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  112f3d:	00 00 00 

0000000000112f40 <_ZN11InputBuffer3popEv>:
  112f40:	55                   	push   rbp
  112f41:	48 89 e5             	mov    rbp,rsp
  112f44:	48 83 ec 18          	sub    rsp,0x18
  112f48:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  112f4c:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  112f50:	48 89 4d e8          	mov    QWORD PTR [rbp-0x18],rcx
  112f54:	8b 81 f0 03 00 00    	mov    eax,DWORD PTR [rcx+0x3f0]
  112f5a:	3b 81 f4 03 00 00    	cmp    eax,DWORD PTR [rcx+0x3f4]
  112f60:	0f 84 42 00 00 00    	je     112fa8 <_ZN11InputBuffer3popEv+0x68>
  112f66:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  112f6a:	8b 80 f0 03 00 00    	mov    eax,DWORD PTR [rax+0x3f0]
  112f70:	83 c0 01             	add    eax,0x1
  112f73:	b9 e8 03 00 00       	mov    ecx,0x3e8
  112f78:	99                   	cdq
  112f79:	f7 f9                	idiv   ecx
  112f7b:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  112f7f:	89 90 f0 03 00 00    	mov    DWORD PTR [rax+0x3f0],edx
  112f85:	8b 80 f0 03 00 00    	mov    eax,DWORD PTR [rax+0x3f0]
  112f8b:	83 e8 01             	sub    eax,0x1
  112f8e:	b9 e8 03 00 00       	mov    ecx,0x3e8
  112f93:	99                   	cdq
  112f94:	f7 f9                	idiv   ecx
  112f96:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  112f9a:	48 63 ca             	movsxd rcx,edx
  112f9d:	8a 04 08             	mov    al,BYTE PTR [rax+rcx*1]
  112fa0:	88 45 ff             	mov    BYTE PTR [rbp-0x1],al
  112fa3:	e9 04 00 00 00       	jmp    112fac <_ZN11InputBuffer3popEv+0x6c>
  112fa8:	c6 45 ff 00          	mov    BYTE PTR [rbp-0x1],0x0
  112fac:	0f be 45 ff          	movsx  eax,BYTE PTR [rbp-0x1]
  112fb0:	48 83 c4 18          	add    rsp,0x18
  112fb4:	5d                   	pop    rbp
  112fb5:	c3                   	ret
  112fb6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  112fbd:	00 00 00 

0000000000112fc0 <_ZN11InputBuffer8allprintEv>:
  112fc0:	55                   	push   rbp
  112fc1:	48 89 e5             	mov    rbp,rsp
  112fc4:	48 83 ec 10          	sub    rsp,0x10
  112fc8:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  112fcc:	48 8b 75 f8          	mov    rsi,QWORD PTR [rbp-0x8]
  112fd0:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  112fd4:	48 63 86 f0 03 00 00 	movsxd rax,DWORD PTR [rsi+0x3f0]
  112fdb:	48 01 c6             	add    rsi,rax
  112fde:	48 8d 3d 50 d3 fe ff 	lea    rdi,[rip+0xfffffffffffed350]        # 100335 <_svfprintf_r.blanks-0x7ab>
  112fe5:	b0 00                	mov    al,0x0
  112fe7:	e8 84 23 ff ff       	call   105370 <Printf>
  112fec:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  112ff0:	8b 81 f0 03 00 00    	mov    eax,DWORD PTR [rcx+0x3f0]
  112ff6:	3b 81 f4 03 00 00    	cmp    eax,DWORD PTR [rcx+0x3f4]
  112ffc:	0f 8e 12 00 00 00    	jle    113014 <_ZN11InputBuffer8allprintEv+0x54>
  113002:	48 8b 75 f0          	mov    rsi,QWORD PTR [rbp-0x10]
  113006:	48 8d 3d 28 d3 fe ff 	lea    rdi,[rip+0xfffffffffffed328]        # 100335 <_svfprintf_r.blanks-0x7ab>
  11300d:	b0 00                	mov    al,0x0
  11300f:	e8 5c 23 ff ff       	call   105370 <Printf>
  113014:	48 83 c4 10          	add    rsp,0x10
  113018:	5d                   	pop    rbp
  113019:	c3                   	ret
  11301a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000113020 <_ZN11InputBuffer6allpopEPc>:
  113020:	55                   	push   rbp
  113021:	48 89 e5             	mov    rbp,rsp
  113024:	48 83 ec 20          	sub    rsp,0x20
  113028:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  11302c:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  113030:	48 8b 75 f8          	mov    rsi,QWORD PTR [rbp-0x8]
  113034:	48 89 75 e8          	mov    QWORD PTR [rbp-0x18],rsi
  113038:	8b 86 f4 03 00 00    	mov    eax,DWORD PTR [rsi+0x3f4]
  11303e:	83 e8 01             	sub    eax,0x1
  113041:	b9 e8 03 00 00       	mov    ecx,0x3e8
  113046:	99                   	cdq
  113047:	f7 f9                	idiv   ecx
  113049:	48 63 c2             	movsxd rax,edx
  11304c:	c6 04 06 00          	mov    BYTE PTR [rsi+rax*1],0x0
  113050:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  113054:	48 63 86 ec 03 00 00 	movsxd rax,DWORD PTR [rsi+0x3ec]
  11305b:	48 01 c6             	add    rsi,rax
  11305e:	e8 1d 28 ff ff       	call   105880 <strcpy>
  113063:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
  113067:	8b 81 f4 03 00 00    	mov    eax,DWORD PTR [rcx+0x3f4]
  11306d:	3b 81 ec 03 00 00    	cmp    eax,DWORD PTR [rcx+0x3ec]
  113073:	0f 8d 0d 00 00 00    	jge    113086 <_ZN11InputBuffer6allpopEPc+0x66>
  113079:	48 8b 75 e8          	mov    rsi,QWORD PTR [rbp-0x18]
  11307d:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  113081:	e8 8a 28 ff ff       	call   105910 <strcat>
  113086:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  11308a:	8b 88 f4 03 00 00    	mov    ecx,DWORD PTR [rax+0x3f4]
  113090:	89 88 ec 03 00 00    	mov    DWORD PTR [rax+0x3ec],ecx
  113096:	8b 88 f4 03 00 00    	mov    ecx,DWORD PTR [rax+0x3f4]
  11309c:	89 88 f0 03 00 00    	mov    DWORD PTR [rax+0x3f0],ecx
  1130a2:	c7 80 fc 03 00 00 00 	mov    DWORD PTR [rax+0x3fc],0x0
  1130a9:	00 00 00 
  1130ac:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  1130b0:	e8 cb 28 ff ff       	call   105980 <strlen>
  1130b5:	48 83 c4 20          	add    rsp,0x20
  1130b9:	5d                   	pop    rbp
  1130ba:	c3                   	ret
  1130bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000001130c0 <_Z9GetStringPc>:
  1130c0:	55                   	push   rbp
  1130c1:	48 89 e5             	mov    rbp,rsp
  1130c4:	48 83 ec 10          	sub    rsp,0x10
  1130c8:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  1130cc:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
  1130d3:	48 8d 3d 36 3f 10 00 	lea    rdi,[rip+0x103f36]        # 217010 <Input_Buffer>
  1130da:	e8 71 00 00 00       	call   113150 <_ZN11InputBuffer7isInputEv>
  1130df:	a8 01                	test   al,0x1
  1130e1:	0f 85 05 00 00 00    	jne    1130ec <_Z9GetStringPc+0x2c>
  1130e7:	e9 1d 00 00 00       	jmp    113109 <_Z9GetStringPc+0x49>
  1130ec:	48 8d 3d 1d 3f 10 00 	lea    rdi,[rip+0x103f1d]        # 217010 <Input_Buffer>
  1130f3:	e8 48 fe ff ff       	call   112f40 <_ZN11InputBuffer3popEv>
  1130f8:	0f be f0             	movsx  esi,al
  1130fb:	48 8d 3d f4 d2 fe ff 	lea    rdi,[rip+0xfffffffffffed2f4]        # 1003f6 <_svfprintf_r.blanks-0x6ea>
  113102:	b0 00                	mov    al,0x0
  113104:	e8 67 22 ff ff       	call   105370 <Printf>
  113109:	48 8d 3d 00 3f 10 00 	lea    rdi,[rip+0x103f00]        # 217010 <Input_Buffer>
  113110:	e8 ab fd ff ff       	call   112ec0 <_ZN11InputBuffer7isEnterEv>
  113115:	a8 01                	test   al,0x1
  113117:	0f 85 05 00 00 00    	jne    113122 <_Z9GetStringPc+0x62>
  11311d:	e9 22 00 00 00       	jmp    113144 <_Z9GetStringPc+0x84>
  113122:	48 8d 3d e7 3e 10 00 	lea    rdi,[rip+0x103ee7]        # 217010 <Input_Buffer>
  113129:	e8 92 fe ff ff       	call   112fc0 <_ZN11InputBuffer8allprintEv>
  11312e:	48 8b 75 f8          	mov    rsi,QWORD PTR [rbp-0x8]
  113132:	48 8d 3d d7 3e 10 00 	lea    rdi,[rip+0x103ed7]        # 217010 <Input_Buffer>
  113139:	e8 e2 fe ff ff       	call   113020 <_ZN11InputBuffer6allpopEPc>
  11313e:	48 83 c4 10          	add    rsp,0x10
  113142:	5d                   	pop    rbp
  113143:	c3                   	ret
  113144:	e9 8a ff ff ff       	jmp    1130d3 <_Z9GetStringPc+0x13>
  113149:	cc                   	int3
  11314a:	cc                   	int3
  11314b:	cc                   	int3
  11314c:	cc                   	int3
  11314d:	cc                   	int3
  11314e:	cc                   	int3
  11314f:	cc                   	int3

0000000000113150 <_ZN11InputBuffer7isInputEv>:
  113150:	55                   	push   rbp
  113151:	48 89 e5             	mov    rbp,rsp
  113154:	50                   	push   rax
  113155:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  113159:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
  11315d:	8b 81 f0 03 00 00    	mov    eax,DWORD PTR [rcx+0x3f0]
  113163:	3b 81 f4 03 00 00    	cmp    eax,DWORD PTR [rcx+0x3f4]
  113169:	0f 95 c0             	setne  al
  11316c:	24 01                	and    al,0x1
  11316e:	0f b6 c0             	movzx  eax,al
  113171:	48 83 c4 08          	add    rsp,0x8
  113175:	5d                   	pop    rbp
  113176:	c3                   	ret
  113177:	cc                   	int3
  113178:	cc                   	int3
  113179:	cc                   	int3
  11317a:	cc                   	int3
  11317b:	cc                   	int3
  11317c:	cc                   	int3
  11317d:	cc                   	int3
  11317e:	cc                   	int3
  11317f:	cc                   	int3

0000000000113180 <_Z8tokenizePc>:
  113180:	55                   	push   rbp
  113181:	48 89 e5             	mov    rbp,rsp
  113184:	48 83 ec 30          	sub    rsp,0x30
  113188:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  11318c:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
  113190:	e8 eb 27 ff ff       	call   105980 <strlen>
  113195:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
  113198:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [rbp-0x10],0x0
  11319f:	c7 45 ec 01 00 00 00 	mov    DWORD PTR [rbp-0x14],0x1
  1131a6:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  1131a9:	3b 45 f4             	cmp    eax,DWORD PTR [rbp-0xc]
  1131ac:	0f 8d 97 00 00 00    	jge    113249 <_Z8tokenizePc+0xc9>
  1131b2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  1131b6:	48 63 4d f0          	movsxd rcx,DWORD PTR [rbp-0x10]
  1131ba:	0f be 04 08          	movsx  eax,BYTE PTR [rax+rcx*1]
  1131be:	83 f8 20             	cmp    eax,0x20
  1131c1:	0f 85 74 00 00 00    	jne    11323b <_Z8tokenizePc+0xbb>
  1131c7:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  1131cb:	8b 4d f0             	mov    ecx,DWORD PTR [rbp-0x10]
  1131ce:	89 ca                	mov    edx,ecx
  1131d0:	83 c2 01             	add    edx,0x1
  1131d3:	89 55 f0             	mov    DWORD PTR [rbp-0x10],edx
  1131d6:	48 63 c9             	movsxd rcx,ecx
  1131d9:	c6 04 08 00          	mov    BYTE PTR [rax+rcx*1],0x0
  1131dd:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  1131e1:	48 63 4d f0          	movsxd rcx,DWORD PTR [rbp-0x10]
  1131e5:	0f be 0c 08          	movsx  ecx,BYTE PTR [rax+rcx*1]
  1131e9:	31 c0                	xor    eax,eax
  1131eb:	83 f9 20             	cmp    ecx,0x20
  1131ee:	88 45 df             	mov    BYTE PTR [rbp-0x21],al
  1131f1:	0f 85 0c 00 00 00    	jne    113203 <_Z8tokenizePc+0x83>
  1131f7:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  1131fa:	3b 45 f4             	cmp    eax,DWORD PTR [rbp-0xc]
  1131fd:	0f 9c c0             	setl   al
  113200:	88 45 df             	mov    BYTE PTR [rbp-0x21],al
  113203:	8a 45 df             	mov    al,BYTE PTR [rbp-0x21]
  113206:	a8 01                	test   al,0x1
  113208:	0f 85 05 00 00 00    	jne    113213 <_Z8tokenizePc+0x93>
  11320e:	e9 0e 00 00 00       	jmp    113221 <_Z8tokenizePc+0xa1>
  113213:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  113216:	83 c0 01             	add    eax,0x1
  113219:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
  11321c:	e9 bc ff ff ff       	jmp    1131dd <_Z8tokenizePc+0x5d>
  113221:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  113224:	3b 45 f4             	cmp    eax,DWORD PTR [rbp-0xc]
  113227:	0f 84 09 00 00 00    	je     113236 <_Z8tokenizePc+0xb6>
  11322d:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  113230:	83 c0 01             	add    eax,0x1
  113233:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
  113236:	e9 00 00 00 00       	jmp    11323b <_Z8tokenizePc+0xbb>
  11323b:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  11323e:	83 c0 01             	add    eax,0x1
  113241:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
  113244:	e9 5d ff ff ff       	jmp    1131a6 <_Z8tokenizePc+0x26>
  113249:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [rbp-0x10],0x0
  113250:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [rbp-0x18],0x0
  113257:	48 63 7d ec          	movsxd rdi,DWORD PTR [rbp-0x14]
  11325b:	48 c1 e7 03          	shl    rdi,0x3
  11325f:	48 83 c7 01          	add    rdi,0x1
  113263:	e8 a8 07 00 00       	call   113a10 <malloc>
  113268:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  11326c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  113270:	48 63 4d f0          	movsxd rcx,DWORD PTR [rbp-0x10]
  113274:	0f be 04 08          	movsx  eax,BYTE PTR [rax+rcx*1]
  113278:	83 f8 20             	cmp    eax,0x20
  11327b:	0f 84 1a 00 00 00    	je     11329b <_Z8tokenizePc+0x11b>
  113281:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  113285:	48 63 4d f0          	movsxd rcx,DWORD PTR [rbp-0x10]
  113289:	0f be 0c 08          	movsx  ecx,BYTE PTR [rax+rcx*1]
  11328d:	31 c0                	xor    eax,eax
  11328f:	83 f9 00             	cmp    ecx,0x0
  113292:	88 45 de             	mov    BYTE PTR [rbp-0x22],al
  113295:	0f 85 0c 00 00 00    	jne    1132a7 <_Z8tokenizePc+0x127>
  11329b:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  11329e:	3b 45 f4             	cmp    eax,DWORD PTR [rbp-0xc]
  1132a1:	0f 9c c0             	setl   al
  1132a4:	88 45 de             	mov    BYTE PTR [rbp-0x22],al
  1132a7:	8a 45 de             	mov    al,BYTE PTR [rbp-0x22]
  1132aa:	a8 01                	test   al,0x1
  1132ac:	0f 85 05 00 00 00    	jne    1132b7 <_Z8tokenizePc+0x137>
  1132b2:	e9 0e 00 00 00       	jmp    1132c5 <_Z8tokenizePc+0x145>
  1132b7:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  1132ba:	83 c0 01             	add    eax,0x1
  1132bd:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
  1132c0:	e9 a7 ff ff ff       	jmp    11326c <_Z8tokenizePc+0xec>
  1132c5:	e9 00 00 00 00       	jmp    1132ca <_Z8tokenizePc+0x14a>
  1132ca:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  1132cd:	3b 45 f4             	cmp    eax,DWORD PTR [rbp-0xc]
  1132d0:	0f 8d 0d 01 00 00    	jge    1133e3 <_Z8tokenizePc+0x263>
  1132d6:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
  1132da:	48 63 45 f0          	movsxd rax,DWORD PTR [rbp-0x10]
  1132de:	48 01 c7             	add    rdi,rax
  1132e1:	e8 9a 26 ff ff       	call   105980 <strlen>
  1132e6:	48 89 c7             	mov    rdi,rax
  1132e9:	e8 22 07 00 00       	call   113a10 <malloc>
  1132ee:	48 89 c2             	mov    rdx,rax
  1132f1:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  1132f5:	48 63 4d e8          	movsxd rcx,DWORD PTR [rbp-0x18]
  1132f9:	48 89 14 c8          	mov    QWORD PTR [rax+rcx*8],rdx
  1132fd:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  113301:	48 63 4d e8          	movsxd rcx,DWORD PTR [rbp-0x18]
  113305:	48 8b 3c c8          	mov    rdi,QWORD PTR [rax+rcx*8]
  113309:	48 8b 75 f8          	mov    rsi,QWORD PTR [rbp-0x8]
  11330d:	48 63 45 f0          	movsxd rax,DWORD PTR [rbp-0x10]
  113311:	48 01 c6             	add    rsi,rax
  113314:	e8 67 25 ff ff       	call   105880 <strcpy>
  113319:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  11331d:	48 63 4d f0          	movsxd rcx,DWORD PTR [rbp-0x10]
  113321:	0f be 0c 08          	movsx  ecx,BYTE PTR [rax+rcx*1]
  113325:	31 c0                	xor    eax,eax
  113327:	83 f9 20             	cmp    ecx,0x20
  11332a:	88 45 dd             	mov    BYTE PTR [rbp-0x23],al
  11332d:	0f 84 26 00 00 00    	je     113359 <_Z8tokenizePc+0x1d9>
  113333:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  113337:	48 63 4d f0          	movsxd rcx,DWORD PTR [rbp-0x10]
  11333b:	0f be 0c 08          	movsx  ecx,BYTE PTR [rax+rcx*1]
  11333f:	31 c0                	xor    eax,eax
  113341:	83 f9 00             	cmp    ecx,0x0
  113344:	88 45 dd             	mov    BYTE PTR [rbp-0x23],al
  113347:	0f 84 0c 00 00 00    	je     113359 <_Z8tokenizePc+0x1d9>
  11334d:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  113350:	3b 45 f4             	cmp    eax,DWORD PTR [rbp-0xc]
  113353:	0f 9c c0             	setl   al
  113356:	88 45 dd             	mov    BYTE PTR [rbp-0x23],al
  113359:	8a 45 dd             	mov    al,BYTE PTR [rbp-0x23]
  11335c:	a8 01                	test   al,0x1
  11335e:	0f 85 05 00 00 00    	jne    113369 <_Z8tokenizePc+0x1e9>
  113364:	e9 0e 00 00 00       	jmp    113377 <_Z8tokenizePc+0x1f7>
  113369:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  11336c:	83 c0 01             	add    eax,0x1
  11336f:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
  113372:	e9 a2 ff ff ff       	jmp    113319 <_Z8tokenizePc+0x199>
  113377:	e9 00 00 00 00       	jmp    11337c <_Z8tokenizePc+0x1fc>
  11337c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  113380:	48 63 4d f0          	movsxd rcx,DWORD PTR [rbp-0x10]
  113384:	0f be 04 08          	movsx  eax,BYTE PTR [rax+rcx*1]
  113388:	83 f8 20             	cmp    eax,0x20
  11338b:	0f 84 1a 00 00 00    	je     1133ab <_Z8tokenizePc+0x22b>
  113391:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  113395:	48 63 4d f0          	movsxd rcx,DWORD PTR [rbp-0x10]
  113399:	0f be 0c 08          	movsx  ecx,BYTE PTR [rax+rcx*1]
  11339d:	31 c0                	xor    eax,eax
  11339f:	83 f9 00             	cmp    ecx,0x0
  1133a2:	88 45 dc             	mov    BYTE PTR [rbp-0x24],al
  1133a5:	0f 85 0c 00 00 00    	jne    1133b7 <_Z8tokenizePc+0x237>
  1133ab:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  1133ae:	3b 45 f4             	cmp    eax,DWORD PTR [rbp-0xc]
  1133b1:	0f 9c c0             	setl   al
  1133b4:	88 45 dc             	mov    BYTE PTR [rbp-0x24],al
  1133b7:	8a 45 dc             	mov    al,BYTE PTR [rbp-0x24]
  1133ba:	a8 01                	test   al,0x1
  1133bc:	0f 85 05 00 00 00    	jne    1133c7 <_Z8tokenizePc+0x247>
  1133c2:	e9 0e 00 00 00       	jmp    1133d5 <_Z8tokenizePc+0x255>
  1133c7:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  1133ca:	83 c0 01             	add    eax,0x1
  1133cd:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
  1133d0:	e9 a7 ff ff ff       	jmp    11337c <_Z8tokenizePc+0x1fc>
  1133d5:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
  1133d8:	83 c0 01             	add    eax,0x1
  1133db:	89 45 e8             	mov    DWORD PTR [rbp-0x18],eax
  1133de:	e9 e7 fe ff ff       	jmp    1132ca <_Z8tokenizePc+0x14a>
  1133e3:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  1133e7:	48 63 4d e8          	movsxd rcx,DWORD PTR [rbp-0x18]
  1133eb:	48 c7 04 c8 00 00 00 	mov    QWORD PTR [rax+rcx*8],0x0
  1133f2:	00 
  1133f3:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  1133f7:	48 83 c4 30          	add    rsp,0x30
  1133fb:	5d                   	pop    rbp
  1133fc:	c3                   	ret
  1133fd:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000113400 <_Z10free_tokenPPc>:
  113400:	55                   	push   rbp
  113401:	48 89 e5             	mov    rbp,rsp
  113404:	48 83 ec 10          	sub    rsp,0x10
  113408:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  11340c:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
  113413:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  113417:	48 63 4d f4          	movsxd rcx,DWORD PTR [rbp-0xc]
  11341b:	48 83 3c c8 00       	cmp    QWORD PTR [rax+rcx*8],0x0
  113420:	0f 84 1f 00 00 00    	je     113445 <_Z10free_tokenPPc+0x45>
  113426:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  11342a:	48 63 4d f4          	movsxd rcx,DWORD PTR [rbp-0xc]
  11342e:	48 8b 3c c8          	mov    rdi,QWORD PTR [rax+rcx*8]
  113432:	e8 f9 05 00 00       	call   113a30 <free>
  113437:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  11343a:	83 c0 01             	add    eax,0x1
  11343d:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
  113440:	e9 ce ff ff ff       	jmp    113413 <_Z10free_tokenPPc+0x13>
  113445:	48 83 c4 10          	add    rsp,0x10
  113449:	5d                   	pop    rbp
  11344a:	c3                   	ret
  11344b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000113450 <_Z10show_tokenPPc>:
  113450:	55                   	push   rbp
  113451:	48 89 e5             	mov    rbp,rsp
  113454:	48 83 ec 10          	sub    rsp,0x10
  113458:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  11345c:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
  113463:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  113467:	48 83 38 00          	cmp    QWORD PTR [rax],0x0
  11346b:	0f 85 0e 00 00 00    	jne    11347f <_Z10show_tokenPPc+0x2f>
  113471:	48 8d 3d fd d2 fe ff 	lea    rdi,[rip+0xfffffffffffed2fd]        # 100775 <_svfprintf_r.blanks-0x36b>
  113478:	b0 00                	mov    al,0x0
  11347a:	e8 f1 1e ff ff       	call   105370 <Printf>
  11347f:	e9 00 00 00 00       	jmp    113484 <_Z10show_tokenPPc+0x34>
  113484:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  113488:	48 63 4d f4          	movsxd rcx,DWORD PTR [rbp-0xc]
  11348c:	48 83 3c c8 00       	cmp    QWORD PTR [rax+rcx*8],0x0
  113491:	0f 84 4a 00 00 00    	je     1134e1 <_Z10show_tokenPPc+0x91>
  113497:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  11349b:	48 63 4d f4          	movsxd rcx,DWORD PTR [rbp-0xc]
  11349f:	48 8b 34 c8          	mov    rsi,QWORD PTR [rax+rcx*8]
  1134a3:	48 8d 3d 57 d1 fe ff 	lea    rdi,[rip+0xfffffffffffed157]        # 100601 <_svfprintf_r.blanks-0x4df>
  1134aa:	b0 00                	mov    al,0x0
  1134ac:	e8 bf 1e ff ff       	call   105370 <Printf>
  1134b1:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  1134b5:	48 63 4d f4          	movsxd rcx,DWORD PTR [rbp-0xc]
  1134b9:	48 8b 3c c8          	mov    rdi,QWORD PTR [rax+rcx*8]
  1134bd:	e8 be 24 ff ff       	call   105980 <strlen>
  1134c2:	48 89 c6             	mov    rsi,rax
  1134c5:	48 8d 3d 79 d2 fe ff 	lea    rdi,[rip+0xfffffffffffed279]        # 100745 <_svfprintf_r.blanks-0x39b>
  1134cc:	b0 00                	mov    al,0x0
  1134ce:	e8 9d 1e ff ff       	call   105370 <Printf>
  1134d3:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  1134d6:	83 c0 01             	add    eax,0x1
  1134d9:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
  1134dc:	e9 a3 ff ff ff       	jmp    113484 <_Z10show_tokenPPc+0x34>
  1134e1:	48 83 c4 10          	add    rsp,0x10
  1134e5:	5d                   	pop    rbp
  1134e6:	c3                   	ret
  1134e7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  1134ee:	00 00 

00000000001134f0 <_Z7commandPc>:
  1134f0:	55                   	push   rbp
  1134f1:	48 89 e5             	mov    rbp,rsp
  1134f4:	48 83 ec 20          	sub    rsp,0x20
  1134f8:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  1134fc:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  113500:	48 8d 35 ae ce fe ff 	lea    rsi,[rip+0xfffffffffffeceae]        # 1003b5 <_svfprintf_r.blanks-0x72b>
  113507:	e8 e4 48 ff ff       	call   107df0 <strcmp>
  11350c:	83 f8 00             	cmp    eax,0x0
  11350f:	0f 85 0c 00 00 00    	jne    113521 <_Z7commandPc+0x31>
  113515:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  11351c:	e9 4d 01 00 00       	jmp    11366e <_Z7commandPc+0x17e>
  113521:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  113525:	48 8d 35 9c cd fe ff 	lea    rsi,[rip+0xfffffffffffecd9c]        # 1002c8 <_svfprintf_r.blanks-0x818>
  11352c:	e8 bf 48 ff ff       	call   107df0 <strcmp>
  113531:	83 f8 00             	cmp    eax,0x0
  113534:	0f 85 24 00 00 00    	jne    11355e <_Z7commandPc+0x6e>
  11353a:	bf 2c 01 00 00       	mov    edi,0x12c
  11353f:	e8 3c 20 ff ff       	call   105580 <_Z15WriteMandelbroti>
  113544:	48 8d 3d 6b d0 fe ff 	lea    rdi,[rip+0xfffffffffffed06b]        # 1005b6 <_svfprintf_r.blanks-0x52a>
  11354b:	b0 00                	mov    al,0x0
  11354d:	e8 1e 1e ff ff       	call   105370 <Printf>
  113552:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  113559:	e9 10 01 00 00       	jmp    11366e <_Z7commandPc+0x17e>
  11355e:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  113562:	48 8d 35 16 d1 fe ff 	lea    rsi,[rip+0xfffffffffffed116]        # 10067f <_svfprintf_r.blanks-0x461>
  113569:	e8 82 48 ff ff       	call   107df0 <strcmp>
  11356e:	83 f8 00             	cmp    eax,0x0
  113571:	0f 85 1f 00 00 00    	jne    113596 <_Z7commandPc+0xa6>
  113577:	e8 d4 20 ff ff       	call   105650 <_Z5clearv>
  11357c:	48 8d 3d 33 d0 fe ff 	lea    rdi,[rip+0xfffffffffffed033]        # 1005b6 <_svfprintf_r.blanks-0x52a>
  113583:	b0 00                	mov    al,0x0
  113585:	e8 e6 1d ff ff       	call   105370 <Printf>
  11358a:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  113591:	e9 d8 00 00 00       	jmp    11366e <_Z7commandPc+0x17e>
  113596:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  11359a:	48 8d 35 1d d1 fe ff 	lea    rsi,[rip+0xfffffffffffed11d]        # 1006be <_svfprintf_r.blanks-0x422>
  1135a1:	e8 4a 48 ff ff       	call   107df0 <strcmp>
  1135a6:	83 f8 00             	cmp    eax,0x0
  1135a9:	0f 85 0d 00 00 00    	jne    1135bc <_Z7commandPc+0xcc>
  1135af:	cc                   	int3
  1135b0:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  1135b7:	e9 b2 00 00 00       	jmp    11366e <_Z7commandPc+0x17e>
  1135bc:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  1135c0:	31 c0                	xor    eax,eax
  1135c2:	89 c6                	mov    esi,eax
  1135c4:	ba 10 00 00 00       	mov    edx,0x10
  1135c9:	e8 62 06 00 00       	call   113c30 <strtol>
  1135ce:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  1135d2:	48 83 7d e8 00       	cmp    QWORD PTR [rbp-0x18],0x0
  1135d7:	0f 84 78 00 00 00    	je     113655 <_Z7commandPc+0x165>
  1135dd:	48 8b 75 e8          	mov    rsi,QWORD PTR [rbp-0x18]
  1135e1:	48 8d 3d e8 d1 fe ff 	lea    rdi,[rip+0xfffffffffffed1e8]        # 1007d0 <_svfprintf_r.blanks-0x310>
  1135e8:	b0 00                	mov    al,0x0
  1135ea:	e8 81 1d ff ff       	call   105370 <Printf>
  1135ef:	48 8d 05 2a 3e 50 00 	lea    rax,[rip+0x503e2a]        # 617420 <memory_manager>
  1135f6:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  1135f9:	48 8b 75 e8          	mov    rsi,QWORD PTR [rbp-0x18]
  1135fd:	e8 9e 0a 00 00       	call   1140a0 <_ZN19BitmapMemoryManager11IsAvailableEm>
  113602:	a8 01                	test   al,0x1
  113604:	0f 85 05 00 00 00    	jne    11360f <_Z7commandPc+0x11f>
  11360a:	e9 13 00 00 00       	jmp    113622 <_Z7commandPc+0x132>
  11360f:	48 8d 3d 45 d0 fe ff 	lea    rdi,[rip+0xfffffffffffed045]        # 10065b <_svfprintf_r.blanks-0x485>
  113616:	b0 00                	mov    al,0x0
  113618:	e8 53 1d ff ff       	call   105370 <Printf>
  11361d:	e9 0e 00 00 00       	jmp    113630 <_Z7commandPc+0x140>
  113622:	48 8d 3d 58 d1 fe ff 	lea    rdi,[rip+0xfffffffffffed158]        # 100781 <_svfprintf_r.blanks-0x35f>
  113629:	b0 00                	mov    al,0x0
  11362b:	e8 40 1d ff ff       	call   105370 <Printf>
  113630:	48 8b 7d e8          	mov    rdi,QWORD PTR [rbp-0x18]
  113634:	e8 d7 af ff ff       	call   10e610 <_Z15search_mem_typem>
  113639:	89 c6                	mov    esi,eax
  11363b:	48 8d 3d 43 d0 fe ff 	lea    rdi,[rip+0xfffffffffffed043]        # 100685 <_svfprintf_r.blanks-0x45b>
  113642:	b0 00                	mov    al,0x0
  113644:	e8 27 1d ff ff       	call   105370 <Printf>
  113649:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  113650:	e9 19 00 00 00       	jmp    11366e <_Z7commandPc+0x17e>
  113655:	48 8b 75 f0          	mov    rsi,QWORD PTR [rbp-0x10]
  113659:	48 8d 3d 99 cd fe ff 	lea    rdi,[rip+0xfffffffffffecd99]        # 1003f9 <_svfprintf_r.blanks-0x6e7>
  113660:	b0 00                	mov    al,0x0
  113662:	e8 09 1d ff ff       	call   105370 <Printf>
  113667:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  11366e:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  113671:	48 83 c4 20          	add    rsp,0x20
  113675:	5d                   	pop    rbp
  113676:	c3                   	ret
  113677:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  11367e:	00 00 

0000000000113680 <_Z7commandPPc>:
  113680:	55                   	push   rbp
  113681:	48 89 e5             	mov    rbp,rsp
  113684:	48 83 ec 40          	sub    rsp,0x40
  113688:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  11368c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  113690:	48 83 38 00          	cmp    QWORD PTR [rax],0x0
  113694:	0f 85 0c 00 00 00    	jne    1136a6 <_Z7commandPPc+0x26>
  11369a:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  1136a1:	e9 22 03 00 00       	jmp    1139c8 <_Z7commandPPc+0x348>
  1136a6:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  1136aa:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  1136ad:	48 8d 35 84 cc fe ff 	lea    rsi,[rip+0xfffffffffffecc84]        # 100338 <_svfprintf_r.blanks-0x7a8>
  1136b4:	e8 37 47 ff ff       	call   107df0 <strcmp>
  1136b9:	83 f8 00             	cmp    eax,0x0
  1136bc:	0f 85 82 00 00 00    	jne    113744 <_Z7commandPPc+0xc4>
  1136c2:	c7 45 ec 01 00 00 00 	mov    DWORD PTR [rbp-0x14],0x1
  1136c9:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  1136cd:	48 63 4d ec          	movsxd rcx,DWORD PTR [rbp-0x14]
  1136d1:	48 83 3c c8 00       	cmp    QWORD PTR [rax+rcx*8],0x0
  1136d6:	0f 84 4e 00 00 00    	je     11372a <_Z7commandPPc+0xaa>
  1136dc:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  1136e0:	48 63 4d ec          	movsxd rcx,DWORD PTR [rbp-0x14]
  1136e4:	48 8b 34 c8          	mov    rsi,QWORD PTR [rax+rcx*8]
  1136e8:	48 8d 3d 46 cc fe ff 	lea    rdi,[rip+0xfffffffffffecc46]        # 100335 <_svfprintf_r.blanks-0x7ab>
  1136ef:	b0 00                	mov    al,0x0
  1136f1:	e8 7a 1c ff ff       	call   105370 <Printf>
  1136f6:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  1136fa:	8b 4d ec             	mov    ecx,DWORD PTR [rbp-0x14]
  1136fd:	83 c1 01             	add    ecx,0x1
  113700:	48 63 c9             	movsxd rcx,ecx
  113703:	48 83 3c c8 00       	cmp    QWORD PTR [rax+rcx*8],0x0
  113708:	0f 84 0e 00 00 00    	je     11371c <_Z7commandPPc+0x9c>
  11370e:	48 8d 3d 22 cf fe ff 	lea    rdi,[rip+0xfffffffffffecf22]        # 100637 <_svfprintf_r.blanks-0x4a9>
  113715:	b0 00                	mov    al,0x0
  113717:	e8 54 1c ff ff       	call   105370 <Printf>
  11371c:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  11371f:	83 c0 01             	add    eax,0x1
  113722:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
  113725:	e9 9f ff ff ff       	jmp    1136c9 <_Z7commandPPc+0x49>
  11372a:	48 8d 3d 65 cf fe ff 	lea    rdi,[rip+0xfffffffffffecf65]        # 100696 <_svfprintf_r.blanks-0x44a>
  113731:	b0 00                	mov    al,0x0
  113733:	e8 38 1c ff ff       	call   105370 <Printf>
  113738:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  11373f:	e9 84 02 00 00       	jmp    1139c8 <_Z7commandPPc+0x348>
  113744:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  113748:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  11374b:	48 8d 35 76 cb fe ff 	lea    rsi,[rip+0xfffffffffffecb76]        # 1002c8 <_svfprintf_r.blanks-0x818>
  113752:	e8 99 46 ff ff       	call   107df0 <strcmp>
  113757:	83 f8 00             	cmp    eax,0x0
  11375a:	0f 85 4f 00 00 00    	jne    1137af <_Z7commandPPc+0x12f>
  113760:	c7 45 e8 f4 01 00 00 	mov    DWORD PTR [rbp-0x18],0x1f4
  113767:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  11376b:	48 83 78 08 00       	cmp    QWORD PTR [rax+0x8],0x0
  113770:	0f 84 25 00 00 00    	je     11379b <_Z7commandPPc+0x11b>
  113776:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  11377a:	48 8b 78 08          	mov    rdi,QWORD PTR [rax+0x8]
  11377e:	e8 dd 04 00 00       	call   113c60 <atoi>
  113783:	89 45 e8             	mov    DWORD PTR [rbp-0x18],eax
  113786:	83 f8 00             	cmp    eax,0x0
  113789:	0f 85 07 00 00 00    	jne    113796 <_Z7commandPPc+0x116>
  11378f:	c7 45 e8 f4 01 00 00 	mov    DWORD PTR [rbp-0x18],0x1f4
  113796:	e9 00 00 00 00       	jmp    11379b <_Z7commandPPc+0x11b>
  11379b:	8b 7d e8             	mov    edi,DWORD PTR [rbp-0x18]
  11379e:	e8 dd 1d ff ff       	call   105580 <_Z15WriteMandelbroti>
  1137a3:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  1137aa:	e9 19 02 00 00       	jmp    1139c8 <_Z7commandPPc+0x348>
  1137af:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  1137b3:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  1137b6:	48 8d 35 c2 ce fe ff 	lea    rsi,[rip+0xfffffffffffecec2]        # 10067f <_svfprintf_r.blanks-0x461>
  1137bd:	e8 2e 46 ff ff       	call   107df0 <strcmp>
  1137c2:	83 f8 00             	cmp    eax,0x0
  1137c5:	0f 85 11 00 00 00    	jne    1137dc <_Z7commandPPc+0x15c>
  1137cb:	e8 80 1e ff ff       	call   105650 <_Z5clearv>
  1137d0:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  1137d7:	e9 ec 01 00 00       	jmp    1139c8 <_Z7commandPPc+0x348>
  1137dc:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  1137e0:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  1137e3:	48 8d 35 76 c9 fe ff 	lea    rsi,[rip+0xfffffffffffec976]        # 100160 <_svfprintf_r.blanks-0x980>
  1137ea:	e8 01 46 ff ff       	call   107df0 <strcmp>
  1137ef:	83 f8 00             	cmp    eax,0x0
  1137f2:	0f 85 d1 00 00 00    	jne    1138c9 <_Z7commandPPc+0x249>
  1137f8:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  1137fc:	48 83 78 08 00       	cmp    QWORD PTR [rax+0x8],0x0
  113801:	0f 85 1a 00 00 00    	jne    113821 <_Z7commandPPc+0x1a1>
  113807:	48 8d 3d af cd fe ff 	lea    rdi,[rip+0xfffffffffffecdaf]        # 1005bd <_svfprintf_r.blanks-0x523>
  11380e:	b0 00                	mov    al,0x0
  113810:	e8 5b 1b ff ff       	call   105370 <Printf>
  113815:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [rbp-0x4],0x1
  11381c:	e9 a7 01 00 00       	jmp    1139c8 <_Z7commandPPc+0x348>
  113821:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  113825:	48 8b 78 08          	mov    rdi,QWORD PTR [rax+0x8]
  113829:	48 8d 35 aa cd fe ff 	lea    rsi,[rip+0xfffffffffffecdaa]        # 1005da <_svfprintf_r.blanks-0x506>
  113830:	e8 bb 45 ff ff       	call   107df0 <strcmp>
  113835:	83 f8 00             	cmp    eax,0x0
  113838:	0f 85 71 00 00 00    	jne    1138af <_Z7commandPPc+0x22f>
  11383e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  113842:	48 83 78 10 00       	cmp    QWORD PTR [rax+0x10],0x0
  113847:	0f 84 48 00 00 00    	je     113895 <_Z7commandPPc+0x215>
  11384d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  113851:	48 8b 78 10          	mov    rdi,QWORD PTR [rax+0x10]
  113855:	31 c0                	xor    eax,eax
  113857:	89 c6                	mov    esi,eax
  113859:	31 d2                	xor    edx,edx
  11385b:	e8 d0 03 00 00       	call   113c30 <strtol>
  113860:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  113864:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  113868:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
  11386c:	48 8b 7d e0          	mov    rdi,QWORD PTR [rbp-0x20]
  113870:	e8 9b ad ff ff       	call   10e610 <_Z15search_mem_typem>
  113875:	48 8b 75 c8          	mov    rsi,QWORD PTR [rbp-0x38]
  113879:	89 c2                	mov    edx,eax
  11387b:	48 8d 3d 51 ca fe ff 	lea    rdi,[rip+0xfffffffffffeca51]        # 1002d3 <_svfprintf_r.blanks-0x80d>
  113882:	b0 00                	mov    al,0x0
  113884:	e8 e7 1a ff ff       	call   105370 <Printf>
  113889:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  113890:	e9 33 01 00 00       	jmp    1139c8 <_Z7commandPPc+0x348>
  113895:	48 8d 3d 21 cd fe ff 	lea    rdi,[rip+0xfffffffffffecd21]        # 1005bd <_svfprintf_r.blanks-0x523>
  11389c:	b0 00                	mov    al,0x0
  11389e:	e8 cd 1a ff ff       	call   105370 <Printf>
  1138a3:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [rbp-0x4],0x1
  1138aa:	e9 19 01 00 00       	jmp    1139c8 <_Z7commandPPc+0x348>
  1138af:	48 8d 3d 82 cf fe ff 	lea    rdi,[rip+0xfffffffffffecf82]        # 100838 <_svfprintf_r.blanks-0x2a8>
  1138b6:	b0 00                	mov    al,0x0
  1138b8:	e8 b3 1a ff ff       	call   105370 <Printf>
  1138bd:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [rbp-0x4],0x1
  1138c4:	e9 ff 00 00 00       	jmp    1139c8 <_Z7commandPPc+0x348>
  1138c9:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  1138cd:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  1138d0:	48 8d 35 a8 cd fe ff 	lea    rsi,[rip+0xfffffffffffecda8]        # 10067f <_svfprintf_r.blanks-0x461>
  1138d7:	e8 14 45 ff ff       	call   107df0 <strcmp>
  1138dc:	83 f8 00             	cmp    eax,0x0
  1138df:	0f 85 11 00 00 00    	jne    1138f6 <_Z7commandPPc+0x276>
  1138e5:	e8 66 1d ff ff       	call   105650 <_Z5clearv>
  1138ea:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  1138f1:	e9 d2 00 00 00       	jmp    1139c8 <_Z7commandPPc+0x348>
  1138f6:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  1138fa:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  1138fd:	48 8d 35 7c ca fe ff 	lea    rsi,[rip+0xfffffffffffeca7c]        # 100380 <_svfprintf_r.blanks-0x760>
  113904:	e8 e7 44 ff ff       	call   107df0 <strcmp>
  113909:	83 f8 00             	cmp    eax,0x0
  11390c:	0f 85 3d 00 00 00    	jne    11394f <_Z7commandPPc+0x2cf>
  113912:	e8 b9 0b 00 00       	call   1144d0 <_Z10LAPICTimerv>
  113917:	89 45 dc             	mov    DWORD PTR [rbp-0x24],eax
  11391a:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  11391e:	48 83 c7 08          	add    rdi,0x8
  113922:	e8 59 fd ff ff       	call   113680 <_Z7commandPPc>
  113927:	e8 a4 0b 00 00       	call   1144d0 <_Z10LAPICTimerv>
  11392c:	2b 45 dc             	sub    eax,DWORD PTR [rbp-0x24]
  11392f:	89 45 dc             	mov    DWORD PTR [rbp-0x24],eax
  113932:	8b 75 dc             	mov    esi,DWORD PTR [rbp-0x24]
  113935:	48 8d 3d 0d c9 fe ff 	lea    rdi,[rip+0xfffffffffffec90d]        # 100249 <_svfprintf_r.blanks-0x897>
  11393c:	b0 00                	mov    al,0x0
  11393e:	e8 2d 1a ff ff       	call   105370 <Printf>
  113943:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  11394a:	e9 79 00 00 00       	jmp    1139c8 <_Z7commandPPc+0x348>
  11394f:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  113953:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  113956:	48 8d 35 f7 c8 fe ff 	lea    rsi,[rip+0xfffffffffffec8f7]        # 100254 <_svfprintf_r.blanks-0x88c>
  11395d:	e8 8e 44 ff ff       	call   107df0 <strcmp>
  113962:	83 f8 00             	cmp    eax,0x0
  113965:	0f 85 41 00 00 00    	jne    1139ac <_Z7commandPPc+0x32c>
  11396b:	e8 a3 a2 ff ff       	call   10dc13 <rdtsc>
  113970:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
  113974:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  113978:	48 83 c7 08          	add    rdi,0x8
  11397c:	e8 ff fc ff ff       	call   113680 <_Z7commandPPc>
  113981:	e8 8d a2 ff ff       	call   10dc13 <rdtsc>
  113986:	48 2b 45 d0          	sub    rax,QWORD PTR [rbp-0x30]
  11398a:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
  11398e:	48 8b 75 d0          	mov    rsi,QWORD PTR [rbp-0x30]
  113992:	48 8d 3d b2 ca fe ff 	lea    rdi,[rip+0xfffffffffffecab2]        # 10044b <_svfprintf_r.blanks-0x695>
  113999:	b0 00                	mov    al,0x0
  11399b:	e8 d0 19 ff ff       	call   105370 <Printf>
  1139a0:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  1139a7:	e9 1c 00 00 00       	jmp    1139c8 <_Z7commandPPc+0x348>
  1139ac:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  1139b0:	48 8b 30             	mov    rsi,QWORD PTR [rax]
  1139b3:	48 8d 3d 27 cc fe ff 	lea    rdi,[rip+0xfffffffffffecc27]        # 1005e1 <_svfprintf_r.blanks-0x4ff>
  1139ba:	b0 00                	mov    al,0x0
  1139bc:	e8 af 19 ff ff       	call   105370 <Printf>
  1139c1:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [rbp-0x4],0x1
  1139c8:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  1139cb:	48 83 c4 40          	add    rsp,0x40
  1139cf:	5d                   	pop    rbp
  1139d0:	c3                   	ret
  1139d1:	cc                   	int3
  1139d2:	cc                   	int3
  1139d3:	cc                   	int3
  1139d4:	cc                   	int3
  1139d5:	cc                   	int3
  1139d6:	cc                   	int3
  1139d7:	cc                   	int3
  1139d8:	cc                   	int3
  1139d9:	cc                   	int3
  1139da:	cc                   	int3
  1139db:	cc                   	int3
  1139dc:	cc                   	int3
  1139dd:	cc                   	int3
  1139de:	cc                   	int3
  1139df:	cc                   	int3

00000000001139e0 <__cxx_global_var_init>:
  1139e0:	55                   	push   rbp
  1139e1:	48 89 e5             	mov    rbp,rsp
  1139e4:	e8 a7 0c ff ff       	call   104690 <_ZNSt3__114numeric_limitsImE3maxEv>
  1139e9:	48 89 c6             	mov    rsi,rax
  1139ec:	48 8d 3d 0d c6 54 00 	lea    rdi,[rip+0x54c60d]        # 660000 <_ZL10kNullFrame>
  1139f3:	e8 a8 0c ff ff       	call   1046a0 <_ZN7FrameIDC2Em>
  1139f8:	5d                   	pop    rbp
  1139f9:	c3                   	ret
  1139fa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000113a00 <_GLOBAL__sub_I_command.cpp>:
  113a00:	55                   	push   rbp
  113a01:	48 89 e5             	mov    rbp,rsp
  113a04:	e8 d7 ff ff ff       	call   1139e0 <__cxx_global_var_init>
  113a09:	5d                   	pop    rbp
  113a0a:	c3                   	ret
  113a0b:	cc                   	int3
  113a0c:	cc                   	int3
  113a0d:	cc                   	int3
  113a0e:	cc                   	int3
  113a0f:	cc                   	int3

0000000000113a10 <malloc>:
  113a10:	48 89 fe             	mov    rsi,rdi
  113a13:	48 8d 05 be 1b 00 00 	lea    rax,[rip+0x1bbe]        # 1155d8 <_impure_ptr>
  113a1a:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  113a1d:	e9 0e 45 ff ff       	jmp    107f30 <_malloc_r>
  113a22:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  113a29:	1f 84 00 00 00 00 00 

0000000000113a30 <free>:
  113a30:	48 89 fe             	mov    rsi,rdi
  113a33:	48 8d 05 9e 1b 00 00 	lea    rax,[rip+0x1b9e]        # 1155d8 <_impure_ptr>
  113a3a:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  113a3d:	e9 8e 4e ff ff       	jmp    1088d0 <_free_r>
  113a42:	cc                   	int3
  113a43:	cc                   	int3
  113a44:	cc                   	int3
  113a45:	cc                   	int3
  113a46:	cc                   	int3
  113a47:	cc                   	int3
  113a48:	cc                   	int3
  113a49:	cc                   	int3
  113a4a:	cc                   	int3
  113a4b:	cc                   	int3
  113a4c:	cc                   	int3
  113a4d:	cc                   	int3
  113a4e:	cc                   	int3
  113a4f:	cc                   	int3

0000000000113a50 <_strtol_r>:
  113a50:	48 8d 05 81 1b 00 00 	lea    rax,[rip+0x1b81]        # 1155d8 <_impure_ptr>
  113a57:	48 8b 00             	mov    rax,QWORD PTR [rax]
  113a5a:	4c 8b 40 48          	mov    r8,QWORD PTR [rax+0x48]
  113a5e:	4d 85 c0             	test   r8,r8
  113a61:	75 07                	jne    113a6a <_strtol_r+0x1a>
  113a63:	4c 8d 05 be 22 00 00 	lea    r8,[rip+0x22be]        # 115d28 <__global_locale>
  113a6a:	eb 04                	jmp    113a70 <_strtol_l>
  113a6c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000113a70 <_strtol_l>:
  113a70:	55                   	push   rbp
  113a71:	41 57                	push   r15
  113a73:	41 56                	push   r14
  113a75:	41 55                	push   r13
  113a77:	41 54                	push   r12
  113a79:	53                   	push   rbx
  113a7a:	50                   	push   rax
  113a7b:	4c 89 c3             	mov    rbx,r8
  113a7e:	41 89 cd             	mov    r13d,ecx
  113a81:	49 89 d6             	mov    r14,rdx
  113a84:	49 89 f4             	mov    r12,rsi
  113a87:	48 89 3c 24          	mov    QWORD PTR [rsp],rdi
  113a8b:	48 89 f5             	mov    rbp,rsi
  113a8e:	66 90                	xchg   ax,ax
  113a90:	44 0f b6 7d 00       	movzx  r15d,BYTE PTR [rbp+0x0]
  113a95:	48 ff c5             	inc    rbp
  113a98:	48 89 df             	mov    rdi,rbx
  113a9b:	e8 c0 42 ff ff       	call   107d60 <__locale_ctype_ptr_l>
  113aa0:	42 f6 44 38 01 08    	test   BYTE PTR [rax+r15*1+0x1],0x8
  113aa6:	75 e8                	jne    113a90 <_strtol_l+0x20>
  113aa8:	41 83 ff 2b          	cmp    r15d,0x2b
  113aac:	74 06                	je     113ab4 <_strtol_l+0x44>
  113aae:	41 83 ff 2d          	cmp    r15d,0x2d
  113ab2:	75 12                	jne    113ac6 <_strtol_l+0x56>
  113ab4:	0f b6 5d 00          	movzx  ebx,BYTE PTR [rbp+0x0]
  113ab8:	48 ff c5             	inc    rbp
  113abb:	41 f7 c5 ef ff ff ff 	test   r13d,0xffffffef
  113ac2:	74 0e                	je     113ad2 <_strtol_l+0x62>
  113ac4:	eb 2b                	jmp    113af1 <_strtol_l+0x81>
  113ac6:	44 89 fb             	mov    ebx,r15d
  113ac9:	41 f7 c5 ef ff ff ff 	test   r13d,0xffffffef
  113ad0:	75 1f                	jne    113af1 <_strtol_l+0x81>
  113ad2:	80 fb 30             	cmp    bl,0x30
  113ad5:	75 1a                	jne    113af1 <_strtol_l+0x81>
  113ad7:	0f b6 45 00          	movzx  eax,BYTE PTR [rbp+0x0]
  113adb:	83 c8 20             	or     eax,0x20
  113ade:	83 f8 78             	cmp    eax,0x78
  113ae1:	75 20                	jne    113b03 <_strtol_l+0x93>
  113ae3:	0f b6 5d 01          	movzx  ebx,BYTE PTR [rbp+0x1]
  113ae7:	48 83 c5 02          	add    rbp,0x2
  113aeb:	41 bd 10 00 00 00    	mov    r13d,0x10
  113af1:	45 85 ed             	test   r13d,r13d
  113af4:	0f 94 c0             	sete   al
  113af7:	80 fb 30             	cmp    bl,0x30
  113afa:	74 0d                	je     113b09 <_strtol_l+0x99>
  113afc:	b9 0a 00 00 00       	mov    ecx,0xa
  113b01:	eb 0d                	jmp    113b10 <_strtol_l+0xa0>
  113b03:	45 85 ed             	test   r13d,r13d
  113b06:	0f 94 c0             	sete   al
  113b09:	b9 08 00 00 00       	mov    ecx,0x8
  113b0e:	b3 30                	mov    bl,0x30
  113b10:	84 c0                	test   al,al
  113b12:	44 0f 45 e9          	cmovne r13d,ecx
  113b16:	48 b8 ff ff ff ff ff 	movabs rax,0x7fffffffffffffff
  113b1d:	ff ff 7f 
  113b20:	4c 8d 40 01          	lea    r8,[rax+0x1]
  113b24:	41 80 ff 2d          	cmp    r15b,0x2d
  113b28:	4c 0f 45 c0          	cmovne r8,rax
  113b2c:	4d 63 cd             	movsxd r9,r13d
  113b2f:	4c 89 c0             	mov    rax,r8
  113b32:	4c 09 c8             	or     rax,r9
  113b35:	48 c1 e8 20          	shr    rax,0x20
  113b39:	74 0a                	je     113b45 <_strtol_l+0xd5>
  113b3b:	4c 89 c0             	mov    rax,r8
  113b3e:	31 d2                	xor    edx,edx
  113b40:	49 f7 f1             	div    r9
  113b43:	eb 08                	jmp    113b4d <_strtol_l+0xdd>
  113b45:	44 89 c0             	mov    eax,r8d
  113b48:	31 d2                	xor    edx,edx
  113b4a:	41 f7 f5             	div    r13d
  113b4d:	48 ff cd             	dec    rbp
  113b50:	31 c9                	xor    ecx,ecx
  113b52:	31 ff                	xor    edi,edi
  113b54:	eb 17                	jmp    113b6d <_strtol_l+0xfd>
  113b56:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  113b5d:	00 00 00 
  113b60:	48 89 ce             	mov    rsi,rcx
  113b63:	0f b6 5d 01          	movzx  ebx,BYTE PTR [rbp+0x1]
  113b67:	48 ff c5             	inc    rbp
  113b6a:	48 89 f1             	mov    rcx,rsi
  113b6d:	0f b6 f3             	movzx  esi,bl
  113b70:	8d 5e d0             	lea    ebx,[rsi-0x30]
  113b73:	83 fb 0a             	cmp    ebx,0xa
  113b76:	72 25                	jb     113b9d <_strtol_l+0x12d>
  113b78:	8d 5e bf             	lea    ebx,[rsi-0x41]
  113b7b:	83 fb 19             	cmp    ebx,0x19
  113b7e:	77 10                	ja     113b90 <_strtol_l+0x120>
  113b80:	83 c6 c9             	add    esi,0xffffffc9
  113b83:	eb 16                	jmp    113b9b <_strtol_l+0x12b>
  113b85:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  113b8c:	00 00 00 00 
  113b90:	8d 5e 9f             	lea    ebx,[rsi-0x61]
  113b93:	83 fb 19             	cmp    ebx,0x19
  113b96:	77 31                	ja     113bc9 <_strtol_l+0x159>
  113b98:	83 c6 a9             	add    esi,0xffffffa9
  113b9b:	89 f3                	mov    ebx,esi
  113b9d:	44 39 eb             	cmp    ebx,r13d
  113ba0:	7d 27                	jge    113bc9 <_strtol_l+0x159>
  113ba2:	85 ff                	test   edi,edi
  113ba4:	bf ff ff ff ff       	mov    edi,0xffffffff
  113ba9:	78 b5                	js     113b60 <_strtol_l+0xf0>
  113bab:	48 39 c1             	cmp    rcx,rax
  113bae:	77 b0                	ja     113b60 <_strtol_l+0xf0>
  113bb0:	75 07                	jne    113bb9 <_strtol_l+0x149>
  113bb2:	48 89 c6             	mov    rsi,rax
  113bb5:	39 d3                	cmp    ebx,edx
  113bb7:	7f aa                	jg     113b63 <_strtol_l+0xf3>
  113bb9:	49 0f af c9          	imul   rcx,r9
  113bbd:	89 de                	mov    esi,ebx
  113bbf:	48 01 ce             	add    rsi,rcx
  113bc2:	bf 01 00 00 00       	mov    edi,0x1
  113bc7:	eb 9a                	jmp    113b63 <_strtol_l+0xf3>
  113bc9:	85 ff                	test   edi,edi
  113bcb:	78 2e                	js     113bfb <_strtol_l+0x18b>
  113bcd:	49 89 c8             	mov    r8,rcx
  113bd0:	49 f7 d8             	neg    r8
  113bd3:	41 80 ff 2d          	cmp    r15b,0x2d
  113bd7:	4c 0f 45 c1          	cmovne r8,rcx
  113bdb:	4d 85 f6             	test   r14,r14
  113bde:	74 09                	je     113be9 <_strtol_l+0x179>
  113be0:	85 ff                	test   edi,edi
  113be2:	49 0f 44 ec          	cmove  rbp,r12
  113be6:	49 89 2e             	mov    QWORD PTR [r14],rbp
  113be9:	4c 89 c0             	mov    rax,r8
  113bec:	48 83 c4 08          	add    rsp,0x8
  113bf0:	5b                   	pop    rbx
  113bf1:	41 5c                	pop    r12
  113bf3:	41 5d                	pop    r13
  113bf5:	41 5e                	pop    r14
  113bf7:	41 5f                	pop    r15
  113bf9:	5d                   	pop    rbp
  113bfa:	c3                   	ret
  113bfb:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
  113bff:	c7 00 22 00 00 00    	mov    DWORD PTR [rax],0x22
  113c05:	4d 85 f6             	test   r14,r14
  113c08:	75 d6                	jne    113be0 <_strtol_l+0x170>
  113c0a:	eb dd                	jmp    113be9 <_strtol_l+0x179>
  113c0c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000113c10 <strtol_l>:
  113c10:	49 89 c8             	mov    r8,rcx
  113c13:	89 d1                	mov    ecx,edx
  113c15:	48 89 f2             	mov    rdx,rsi
  113c18:	48 89 fe             	mov    rsi,rdi
  113c1b:	48 8d 05 b6 19 00 00 	lea    rax,[rip+0x19b6]        # 1155d8 <_impure_ptr>
  113c22:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  113c25:	e9 46 fe ff ff       	jmp    113a70 <_strtol_l>
  113c2a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000113c30 <strtol>:
  113c30:	89 d1                	mov    ecx,edx
  113c32:	48 89 f2             	mov    rdx,rsi
  113c35:	48 89 fe             	mov    rsi,rdi
  113c38:	48 8d 05 99 19 00 00 	lea    rax,[rip+0x1999]        # 1155d8 <_impure_ptr>
  113c3f:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  113c42:	4c 8b 47 48          	mov    r8,QWORD PTR [rdi+0x48]
  113c46:	4d 85 c0             	test   r8,r8
  113c49:	75 07                	jne    113c52 <strtol+0x22>
  113c4b:	4c 8d 05 d6 20 00 00 	lea    r8,[rip+0x20d6]        # 115d28 <__global_locale>
  113c52:	e9 19 fe ff ff       	jmp    113a70 <_strtol_l>
  113c57:	cc                   	int3
  113c58:	cc                   	int3
  113c59:	cc                   	int3
  113c5a:	cc                   	int3
  113c5b:	cc                   	int3
  113c5c:	cc                   	int3
  113c5d:	cc                   	int3
  113c5e:	cc                   	int3
  113c5f:	cc                   	int3

0000000000113c60 <atoi>:
  113c60:	31 f6                	xor    esi,esi
  113c62:	ba 0a 00 00 00       	mov    edx,0xa
  113c67:	e9 c4 ff ff ff       	jmp    113c30 <strtol>
  113c6c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000113c70 <_atoi_r>:
  113c70:	31 d2                	xor    edx,edx
  113c72:	b9 0a 00 00 00       	mov    ecx,0xa
  113c77:	e9 d4 fd ff ff       	jmp    113a50 <_strtol_r>
  113c7c:	cc                   	int3
  113c7d:	cc                   	int3
  113c7e:	cc                   	int3
  113c7f:	cc                   	int3

0000000000113c80 <_ZN19BitmapMemoryManagerC1Ev>:
  113c80:	55                   	push   rbp
  113c81:	48 89 e5             	mov    rbp,rsp
  113c84:	48 83 ec 10          	sub    rsp,0x10
  113c88:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  113c8c:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
  113c90:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  113c94:	31 f6                	xor    esi,esi
  113c96:	ba 00 00 40 00       	mov    edx,0x400000
  113c9b:	e8 40 9c ff ff       	call   10d8e0 <memset>
  113ca0:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  113ca4:	48 81 c7 00 00 40 00 	add    rdi,0x400000
  113cab:	31 c0                	xor    eax,eax
  113cad:	89 c6                	mov    esi,eax
  113caf:	e8 ec 09 ff ff       	call   1046a0 <_ZN7FrameIDC2Em>
  113cb4:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  113cb8:	48 81 c7 08 00 40 00 	add    rdi,0x400008
  113cbf:	be 00 00 00 02       	mov    esi,0x2000000
  113cc4:	e8 d7 09 ff ff       	call   1046a0 <_ZN7FrameIDC2Em>
  113cc9:	48 83 c4 10          	add    rsp,0x10
  113ccd:	5d                   	pop    rbp
  113cce:	c3                   	ret
  113ccf:	90                   	nop

0000000000113cd0 <_ZN19BitmapMemoryManager8AllocateEm>:
  113cd0:	55                   	push   rbp
  113cd1:	48 89 e5             	mov    rbp,rsp
  113cd4:	48 83 ec 50          	sub    rsp,0x50
  113cd8:	48 89 7d b8          	mov    QWORD PTR [rbp-0x48],rdi
  113cdc:	48 89 7d c0          	mov    QWORD PTR [rbp-0x40],rdi
  113ce0:	48 89 75 f8          	mov    QWORD PTR [rbp-0x8],rsi
  113ce4:	48 89 55 f0          	mov    QWORD PTR [rbp-0x10],rdx
  113ce8:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
  113cec:	48 89 7d c8          	mov    QWORD PTR [rbp-0x38],rdi
  113cf0:	48 81 c7 00 00 40 00 	add    rdi,0x400000
  113cf7:	e8 64 06 00 00       	call   114360 <_ZNK7FrameID2IDEv>
  113cfc:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  113d00:	48 c7 45 e0 00 00 00 	mov    QWORD PTR [rbp-0x20],0x0
  113d07:	00 
  113d08:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  113d0c:	48 3b 45 f0          	cmp    rax,QWORD PTR [rbp-0x10]
  113d10:	0f 83 9f 00 00 00    	jae    113db5 <_ZN19BitmapMemoryManager8AllocateEm+0xe5>
  113d16:	48 8b 7d c8          	mov    rdi,QWORD PTR [rbp-0x38]
  113d1a:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  113d1e:	48 03 45 e0          	add    rax,QWORD PTR [rbp-0x20]
  113d22:	48 89 45 b0          	mov    QWORD PTR [rbp-0x50],rax
  113d26:	48 81 c7 08 00 40 00 	add    rdi,0x400008
  113d2d:	e8 2e 06 00 00       	call   114360 <_ZNK7FrameID2IDEv>
  113d32:	48 89 c1             	mov    rcx,rax
  113d35:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
  113d39:	48 39 c8             	cmp    rax,rcx
  113d3c:	0f 82 2d 00 00 00    	jb     113d6f <_ZN19BitmapMemoryManager8AllocateEm+0x9f>
  113d42:	48 8b 7d b8          	mov    rdi,QWORD PTR [rbp-0x48]
  113d46:	48 8b 05 bb c2 54 00 	mov    rax,QWORD PTR [rip+0x54c2bb]        # 660008 <_ZL10kNullFrame>
  113d4d:	48 89 07             	mov    QWORD PTR [rdi],rax
  113d50:	48 83 c7 08          	add    rdi,0x8
  113d54:	be 03 00 00 00       	mov    esi,0x3
  113d59:	48 8d 15 fa c4 fe ff 	lea    rdx,[rip+0xfffffffffffec4fa]        # 10025a <_svfprintf_r.blanks-0x886>
  113d60:	b9 10 00 00 00       	mov    ecx,0x10
  113d65:	e8 16 06 00 00       	call   114380 <_ZN5ErrorC2ENS_4CodeEPKci>
  113d6a:	e9 b4 00 00 00       	jmp    113e23 <_ZN19BitmapMemoryManager8AllocateEm+0x153>
  113d6f:	48 8b 75 e8          	mov    rsi,QWORD PTR [rbp-0x18]
  113d73:	48 03 75 e0          	add    rsi,QWORD PTR [rbp-0x20]
  113d77:	48 8d 7d d8          	lea    rdi,[rbp-0x28]
  113d7b:	e8 20 09 ff ff       	call   1046a0 <_ZN7FrameIDC2Em>
  113d80:	48 8b 7d c8          	mov    rdi,QWORD PTR [rbp-0x38]
  113d84:	48 8b 75 d8          	mov    rsi,QWORD PTR [rbp-0x28]
  113d88:	e8 a3 00 00 00       	call   113e30 <_ZNK19BitmapMemoryManager6GetBitE7FrameID>
  113d8d:	a8 01                	test   al,0x1
  113d8f:	0f 85 05 00 00 00    	jne    113d9a <_ZN19BitmapMemoryManager8AllocateEm+0xca>
  113d95:	e9 05 00 00 00       	jmp    113d9f <_ZN19BitmapMemoryManager8AllocateEm+0xcf>
  113d9a:	e9 16 00 00 00       	jmp    113db5 <_ZN19BitmapMemoryManager8AllocateEm+0xe5>
  113d9f:	e9 00 00 00 00       	jmp    113da4 <_ZN19BitmapMemoryManager8AllocateEm+0xd4>
  113da4:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  113da8:	48 83 c0 01          	add    rax,0x1
  113dac:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  113db0:	e9 53 ff ff ff       	jmp    113d08 <_ZN19BitmapMemoryManager8AllocateEm+0x38>
  113db5:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  113db9:	48 3b 45 f0          	cmp    rax,QWORD PTR [rbp-0x10]
  113dbd:	0f 85 4b 00 00 00    	jne    113e0e <_ZN19BitmapMemoryManager8AllocateEm+0x13e>
  113dc3:	48 8b 75 e8          	mov    rsi,QWORD PTR [rbp-0x18]
  113dc7:	48 8d 7d d0          	lea    rdi,[rbp-0x30]
  113dcb:	e8 d0 08 ff ff       	call   1046a0 <_ZN7FrameIDC2Em>
  113dd0:	48 8b 7d c8          	mov    rdi,QWORD PTR [rbp-0x38]
  113dd4:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  113dd8:	48 8b 75 d0          	mov    rsi,QWORD PTR [rbp-0x30]
  113ddc:	e8 bf 00 00 00       	call   113ea0 <_ZN19BitmapMemoryManager13MarkAllocatedE7FrameIDm>
  113de1:	48 8b 7d b8          	mov    rdi,QWORD PTR [rbp-0x48]
  113de5:	48 8b 75 e8          	mov    rsi,QWORD PTR [rbp-0x18]
  113de9:	e8 b2 08 ff ff       	call   1046a0 <_ZN7FrameIDC2Em>
  113dee:	48 8b 7d b8          	mov    rdi,QWORD PTR [rbp-0x48]
  113df2:	48 83 c7 08          	add    rdi,0x8
  113df6:	31 f6                	xor    esi,esi
  113df8:	48 8d 15 5b c4 fe ff 	lea    rdx,[rip+0xfffffffffffec45b]        # 10025a <_svfprintf_r.blanks-0x886>
  113dff:	b9 1a 00 00 00       	mov    ecx,0x1a
  113e04:	e8 77 05 00 00       	call   114380 <_ZN5ErrorC2ENS_4CodeEPKci>
  113e09:	e9 15 00 00 00       	jmp    113e23 <_ZN19BitmapMemoryManager8AllocateEm+0x153>
  113e0e:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  113e12:	48 83 c0 01          	add    rax,0x1
  113e16:	48 03 45 e8          	add    rax,QWORD PTR [rbp-0x18]
  113e1a:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  113e1e:	e9 dd fe ff ff       	jmp    113d00 <_ZN19BitmapMemoryManager8AllocateEm+0x30>
  113e23:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
  113e27:	48 83 c4 50          	add    rsp,0x50
  113e2b:	5d                   	pop    rbp
  113e2c:	c3                   	ret
  113e2d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000113e30 <_ZNK19BitmapMemoryManager6GetBitE7FrameID>:
  113e30:	55                   	push   rbp
  113e31:	48 89 e5             	mov    rbp,rsp
  113e34:	48 83 ec 30          	sub    rsp,0x30
  113e38:	48 89 75 f8          	mov    QWORD PTR [rbp-0x8],rsi
  113e3c:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  113e40:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  113e44:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
  113e48:	48 8d 7d f8          	lea    rdi,[rbp-0x8]
  113e4c:	e8 0f 05 00 00       	call   114360 <_ZNK7FrameID2IDEv>
  113e51:	48 c1 e8 06          	shr    rax,0x6
  113e55:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  113e59:	48 8d 7d f8          	lea    rdi,[rbp-0x8]
  113e5d:	e8 fe 04 00 00       	call   114360 <_ZNK7FrameID2IDEv>
  113e62:	48 8b 7d d8          	mov    rdi,QWORD PTR [rbp-0x28]
  113e66:	48 83 e0 3f          	and    rax,0x3f
  113e6a:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  113e6e:	48 8b 75 e8          	mov    rsi,QWORD PTR [rbp-0x18]
  113e72:	e8 79 05 00 00       	call   1143f0 <_ZNKSt3__15arrayImLm524288EEixEm>
  113e77:	48 8b 00             	mov    rax,QWORD PTR [rax]
  113e7a:	48 8b 4d e0          	mov    rcx,QWORD PTR [rbp-0x20]
  113e7e:	ba 01 00 00 00       	mov    edx,0x1
  113e83:	48 d3 e2             	shl    rdx,cl
  113e86:	48 89 d1             	mov    rcx,rdx
  113e89:	48 21 c8             	and    rax,rcx
  113e8c:	48 83 f8 00          	cmp    rax,0x0
  113e90:	0f 95 c0             	setne  al
  113e93:	24 01                	and    al,0x1
  113e95:	0f b6 c0             	movzx  eax,al
  113e98:	48 83 c4 30          	add    rsp,0x30
  113e9c:	5d                   	pop    rbp
  113e9d:	c3                   	ret
  113e9e:	66 90                	xchg   ax,ax

0000000000113ea0 <_ZN19BitmapMemoryManager13MarkAllocatedE7FrameIDm>:
  113ea0:	55                   	push   rbp
  113ea1:	48 89 e5             	mov    rbp,rsp
  113ea4:	48 83 ec 30          	sub    rsp,0x30
  113ea8:	48 89 75 f8          	mov    QWORD PTR [rbp-0x8],rsi
  113eac:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  113eb0:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
  113eb4:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  113eb8:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
  113ebc:	48 c7 45 e0 00 00 00 	mov    QWORD PTR [rbp-0x20],0x0
  113ec3:	00 
  113ec4:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  113ec8:	48 3b 45 e8          	cmp    rax,QWORD PTR [rbp-0x18]
  113ecc:	0f 83 3c 00 00 00    	jae    113f0e <_ZN19BitmapMemoryManager13MarkAllocatedE7FrameIDm+0x6e>
  113ed2:	48 8d 7d f8          	lea    rdi,[rbp-0x8]
  113ed6:	e8 85 04 00 00       	call   114360 <_ZNK7FrameID2IDEv>
  113edb:	48 89 c6             	mov    rsi,rax
  113ede:	48 03 75 e0          	add    rsi,QWORD PTR [rbp-0x20]
  113ee2:	48 8d 7d d8          	lea    rdi,[rbp-0x28]
  113ee6:	e8 b5 07 ff ff       	call   1046a0 <_ZN7FrameIDC2Em>
  113eeb:	48 8b 7d d0          	mov    rdi,QWORD PTR [rbp-0x30]
  113eef:	48 8b 75 d8          	mov    rsi,QWORD PTR [rbp-0x28]
  113ef3:	ba 01 00 00 00       	mov    edx,0x1
  113ef8:	e8 b3 00 00 00       	call   113fb0 <_ZN19BitmapMemoryManager6SetBitE7FrameIDb>
  113efd:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  113f01:	48 83 c0 01          	add    rax,0x1
  113f05:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  113f09:	e9 b6 ff ff ff       	jmp    113ec4 <_ZN19BitmapMemoryManager13MarkAllocatedE7FrameIDm+0x24>
  113f0e:	48 83 c4 30          	add    rsp,0x30
  113f12:	5d                   	pop    rbp
  113f13:	c3                   	ret
  113f14:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  113f1b:	00 00 00 00 00 

0000000000113f20 <_ZN19BitmapMemoryManager4FreeE7FrameIDm>:
  113f20:	55                   	push   rbp
  113f21:	48 89 e5             	mov    rbp,rsp
  113f24:	48 83 ec 40          	sub    rsp,0x40
  113f28:	48 89 75 e8          	mov    QWORD PTR [rbp-0x18],rsi
  113f2c:	48 89 7d e0          	mov    QWORD PTR [rbp-0x20],rdi
  113f30:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  113f34:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  113f38:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
  113f3c:	48 c7 45 d0 00 00 00 	mov    QWORD PTR [rbp-0x30],0x0
  113f43:	00 
  113f44:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  113f48:	48 3b 45 d8          	cmp    rax,QWORD PTR [rbp-0x28]
  113f4c:	0f 83 39 00 00 00    	jae    113f8b <_ZN19BitmapMemoryManager4FreeE7FrameIDm+0x6b>
  113f52:	48 8d 7d e8          	lea    rdi,[rbp-0x18]
  113f56:	e8 05 04 00 00       	call   114360 <_ZNK7FrameID2IDEv>
  113f5b:	48 89 c6             	mov    rsi,rax
  113f5e:	48 03 75 d0          	add    rsi,QWORD PTR [rbp-0x30]
  113f62:	48 8d 7d c8          	lea    rdi,[rbp-0x38]
  113f66:	e8 35 07 ff ff       	call   1046a0 <_ZN7FrameIDC2Em>
  113f6b:	48 8b 7d c0          	mov    rdi,QWORD PTR [rbp-0x40]
  113f6f:	48 8b 75 c8          	mov    rsi,QWORD PTR [rbp-0x38]
  113f73:	31 d2                	xor    edx,edx
  113f75:	e8 36 00 00 00       	call   113fb0 <_ZN19BitmapMemoryManager6SetBitE7FrameIDb>
  113f7a:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  113f7e:	48 83 c0 01          	add    rax,0x1
  113f82:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
  113f86:	e9 b9 ff ff ff       	jmp    113f44 <_ZN19BitmapMemoryManager4FreeE7FrameIDm+0x24>
  113f8b:	48 8d 15 c8 c2 fe ff 	lea    rdx,[rip+0xfffffffffffec2c8]        # 10025a <_svfprintf_r.blanks-0x886>
  113f92:	48 8d 7d f0          	lea    rdi,[rbp-0x10]
  113f96:	31 f6                	xor    esi,esi
  113f98:	b9 25 00 00 00       	mov    ecx,0x25
  113f9d:	e8 de 03 00 00       	call   114380 <_ZN5ErrorC2ENS_4CodeEPKci>
  113fa2:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  113fa6:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  113faa:	48 83 c4 40          	add    rsp,0x40
  113fae:	5d                   	pop    rbp
  113faf:	c3                   	ret

0000000000113fb0 <_ZN19BitmapMemoryManager6SetBitE7FrameIDb>:
  113fb0:	55                   	push   rbp
  113fb1:	48 89 e5             	mov    rbp,rsp
  113fb4:	48 83 ec 40          	sub    rsp,0x40
  113fb8:	88 d0                	mov    al,dl
  113fba:	48 89 75 f8          	mov    QWORD PTR [rbp-0x8],rsi
  113fbe:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  113fc2:	24 01                	and    al,0x1
  113fc4:	88 45 ef             	mov    BYTE PTR [rbp-0x11],al
  113fc7:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  113fcb:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
  113fcf:	48 8d 7d f8          	lea    rdi,[rbp-0x8]
  113fd3:	e8 88 03 00 00       	call   114360 <_ZNK7FrameID2IDEv>
  113fd8:	48 c1 e8 06          	shr    rax,0x6
  113fdc:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  113fe0:	48 8d 7d f8          	lea    rdi,[rbp-0x8]
  113fe4:	e8 77 03 00 00       	call   114360 <_ZNK7FrameID2IDEv>
  113fe9:	48 83 e0 3f          	and    rax,0x3f
  113fed:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
  113ff1:	f6 45 ef 01          	test   BYTE PTR [rbp-0x11],0x1
  113ff5:	0f 84 2c 00 00 00    	je     114027 <_ZN19BitmapMemoryManager6SetBitE7FrameIDb+0x77>
  113ffb:	48 8b 7d d0          	mov    rdi,QWORD PTR [rbp-0x30]
  113fff:	48 8b 4d d8          	mov    rcx,QWORD PTR [rbp-0x28]
  114003:	b8 01 00 00 00       	mov    eax,0x1
  114008:	48 d3 e0             	shl    rax,cl
  11400b:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
  11400f:	48 8b 75 e0          	mov    rsi,QWORD PTR [rbp-0x20]
  114013:	e8 08 04 00 00       	call   114420 <_ZNSt3__15arrayImLm524288EEixEm>
  114018:	48 8b 4d c8          	mov    rcx,QWORD PTR [rbp-0x38]
  11401c:	48 0b 08             	or     rcx,QWORD PTR [rax]
  11401f:	48 89 08             	mov    QWORD PTR [rax],rcx
  114022:	e9 2b 00 00 00       	jmp    114052 <_ZN19BitmapMemoryManager6SetBitE7FrameIDb+0xa2>
  114027:	48 8b 7d d0          	mov    rdi,QWORD PTR [rbp-0x30]
  11402b:	48 8b 4d d8          	mov    rcx,QWORD PTR [rbp-0x28]
  11402f:	b8 01 00 00 00       	mov    eax,0x1
  114034:	48 d3 e0             	shl    rax,cl
  114037:	48 83 f0 ff          	xor    rax,0xffffffffffffffff
  11403b:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
  11403f:	48 8b 75 e0          	mov    rsi,QWORD PTR [rbp-0x20]
  114043:	e8 d8 03 00 00       	call   114420 <_ZNSt3__15arrayImLm524288EEixEm>
  114048:	48 8b 4d c0          	mov    rcx,QWORD PTR [rbp-0x40]
  11404c:	48 23 08             	and    rcx,QWORD PTR [rax]
  11404f:	48 89 08             	mov    QWORD PTR [rax],rcx
  114052:	48 83 c4 40          	add    rsp,0x40
  114056:	5d                   	pop    rbp
  114057:	c3                   	ret
  114058:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  11405f:	00 

0000000000114060 <_ZN19BitmapMemoryManager14SetMemoryRangeE7FrameIDS0_>:
  114060:	55                   	push   rbp
  114061:	48 89 e5             	mov    rbp,rsp
  114064:	48 83 ec 18          	sub    rsp,0x18
  114068:	48 89 75 f8          	mov    QWORD PTR [rbp-0x8],rsi
  11406c:	48 89 55 f0          	mov    QWORD PTR [rbp-0x10],rdx
  114070:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  114074:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  114078:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
  11407c:	48 89 88 00 00 40 00 	mov    QWORD PTR [rax+0x400000],rcx
  114083:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  114087:	48 89 88 08 00 40 00 	mov    QWORD PTR [rax+0x400008],rcx
  11408e:	48 83 c4 18          	add    rsp,0x18
  114092:	5d                   	pop    rbp
  114093:	c3                   	ret
  114094:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  11409b:	00 00 00 00 00 

00000000001140a0 <_ZN19BitmapMemoryManager11IsAvailableEm>:
  1140a0:	55                   	push   rbp
  1140a1:	48 89 e5             	mov    rbp,rsp
  1140a4:	48 83 ec 20          	sub    rsp,0x20
  1140a8:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  1140ac:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  1140b0:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  1140b4:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  1140b8:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  1140bc:	e8 ff 02 00 00       	call   1143c0 <_Z16AddressToFrameIDm>
  1140c1:	48 8b 7d e0          	mov    rdi,QWORD PTR [rbp-0x20]
  1140c5:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  1140c9:	48 8b 75 e8          	mov    rsi,QWORD PTR [rbp-0x18]
  1140cd:	e8 5e fd ff ff       	call   113e30 <_ZNK19BitmapMemoryManager6GetBitE7FrameID>
  1140d2:	24 01                	and    al,0x1
  1140d4:	0f b6 c0             	movzx  eax,al
  1140d7:	83 f8 00             	cmp    eax,0x0
  1140da:	0f 94 c0             	sete   al
  1140dd:	24 01                	and    al,0x1
  1140df:	0f b6 c0             	movzx  eax,al
  1140e2:	48 83 c4 20          	add    rsp,0x20
  1140e6:	5d                   	pop    rbp
  1140e7:	c3                   	ret
  1140e8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  1140ef:	00 

00000000001140f0 <_Z23InitializeMemoryManagerP19BitmapMemoryManagerP9MemoryMap>:
  1140f0:	55                   	push   rbp
  1140f1:	48 89 e5             	mov    rbp,rsp
  1140f4:	48 83 ec 70          	sub    rsp,0x70
  1140f8:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  1140fc:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  114100:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  114104:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  114108:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  11410c:	48 c7 45 e0 00 00 00 	mov    QWORD PTR [rbp-0x20],0x0
  114113:	00 
  114114:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  114118:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
  11411c:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  114120:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
  114124:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  114128:	48 03 4a 10          	add    rcx,QWORD PTR [rdx+0x10]
  11412c:	48 39 c8             	cmp    rax,rcx
  11412f:	0f 83 e4 00 00 00    	jae    114219 <_Z23InitializeMemoryManagerP19BitmapMemoryManagerP9MemoryMap+0x129>
  114135:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  114139:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
  11413d:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  114141:	48 8b 4d d0          	mov    rcx,QWORD PTR [rbp-0x30]
  114145:	48 3b 41 08          	cmp    rax,QWORD PTR [rcx+0x8]
  114149:	0f 83 36 00 00 00    	jae    114185 <_Z23InitializeMemoryManagerP19BitmapMemoryManagerP9MemoryMap+0x95>
  11414f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  114153:	48 89 45 a0          	mov    QWORD PTR [rbp-0x60],rax
  114157:	48 8b 75 e0          	mov    rsi,QWORD PTR [rbp-0x20]
  11415b:	48 c1 ee 0c          	shr    rsi,0xc
  11415f:	48 8d 7d c8          	lea    rdi,[rbp-0x38]
  114163:	e8 38 05 ff ff       	call   1046a0 <_ZN7FrameIDC2Em>
  114168:	48 8b 7d a0          	mov    rdi,QWORD PTR [rbp-0x60]
  11416c:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  114170:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
  114174:	48 2b 55 e0          	sub    rdx,QWORD PTR [rbp-0x20]
  114178:	48 c1 ea 0c          	shr    rdx,0xc
  11417c:	48 8b 75 c8          	mov    rsi,QWORD PTR [rbp-0x38]
  114180:	e8 1b fd ff ff       	call   113ea0 <_ZN19BitmapMemoryManager13MarkAllocatedE7FrameIDm>
  114185:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  114189:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  11418d:	48 8b 4d d0          	mov    rcx,QWORD PTR [rbp-0x30]
  114191:	48 8b 49 18          	mov    rcx,QWORD PTR [rcx+0x18]
  114195:	48 c1 e1 0c          	shl    rcx,0xc
  114199:	48 01 c8             	add    rax,rcx
  11419c:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
  1141a0:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  1141a4:	8b 38                	mov    edi,DWORD PTR [rax]
  1141a6:	e8 a5 02 00 00       	call   114450 <_Z11IsAvailable10MemoryType>
  1141ab:	a8 01                	test   al,0x1
  1141ad:	0f 85 05 00 00 00    	jne    1141b8 <_Z23InitializeMemoryManagerP19BitmapMemoryManagerP9MemoryMap+0xc8>
  1141b3:	e9 0d 00 00 00       	jmp    1141c5 <_Z23InitializeMemoryManagerP19BitmapMemoryManagerP9MemoryMap+0xd5>
  1141b8:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
  1141bc:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  1141c0:	e9 3a 00 00 00       	jmp    1141ff <_Z23InitializeMemoryManagerP19BitmapMemoryManagerP9MemoryMap+0x10f>
  1141c5:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  1141c9:	48 89 45 98          	mov    QWORD PTR [rbp-0x68],rax
  1141cd:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  1141d1:	48 8b 70 08          	mov    rsi,QWORD PTR [rax+0x8]
  1141d5:	48 c1 ee 0c          	shr    rsi,0xc
  1141d9:	48 8d 7d b8          	lea    rdi,[rbp-0x48]
  1141dd:	e8 be 04 ff ff       	call   1046a0 <_ZN7FrameIDC2Em>
  1141e2:	48 8b 7d 98          	mov    rdi,QWORD PTR [rbp-0x68]
  1141e6:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  1141ea:	48 8b 50 18          	mov    rdx,QWORD PTR [rax+0x18]
  1141ee:	48 c1 e2 0c          	shl    rdx,0xc
  1141f2:	48 c1 ea 0c          	shr    rdx,0xc
  1141f6:	48 8b 75 b8          	mov    rsi,QWORD PTR [rbp-0x48]
  1141fa:	e8 a1 fc ff ff       	call   113ea0 <_ZN19BitmapMemoryManager13MarkAllocatedE7FrameIDm>
  1141ff:	e9 00 00 00 00       	jmp    114204 <_Z23InitializeMemoryManagerP19BitmapMemoryManagerP9MemoryMap+0x114>
  114204:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  114208:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
  11420c:	48 03 45 d8          	add    rax,QWORD PTR [rbp-0x28]
  114210:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
  114214:	e9 03 ff ff ff       	jmp    11411c <_Z23InitializeMemoryManagerP19BitmapMemoryManagerP9MemoryMap+0x2c>
  114219:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  11421d:	48 89 45 90          	mov    QWORD PTR [rbp-0x70],rax
  114221:	48 8d 7d b0          	lea    rdi,[rbp-0x50]
  114225:	be 01 00 00 00       	mov    esi,0x1
  11422a:	e8 71 04 ff ff       	call   1046a0 <_ZN7FrameIDC2Em>
  11422f:	48 8b 75 e0          	mov    rsi,QWORD PTR [rbp-0x20]
  114233:	48 c1 ee 0c          	shr    rsi,0xc
  114237:	48 8d 7d a8          	lea    rdi,[rbp-0x58]
  11423b:	e8 60 04 ff ff       	call   1046a0 <_ZN7FrameIDC2Em>
  114240:	48 8b 7d 90          	mov    rdi,QWORD PTR [rbp-0x70]
  114244:	48 8b 75 b0          	mov    rsi,QWORD PTR [rbp-0x50]
  114248:	48 8b 55 a8          	mov    rdx,QWORD PTR [rbp-0x58]
  11424c:	e8 0f fe ff ff       	call   114060 <_ZN19BitmapMemoryManager14SetMemoryRangeE7FrameIDS0_>
  114251:	48 83 c4 70          	add    rsp,0x70
  114255:	5d                   	pop    rbp
  114256:	c3                   	ret
  114257:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  11425e:	00 00 

0000000000114260 <_Z14InitializeHeapR19BitmapMemoryManager>:
  114260:	55                   	push   rbp
  114261:	48 89 e5             	mov    rbp,rsp
  114264:	48 83 ec 40          	sub    rsp,0x40
  114268:	48 89 7d c8          	mov    QWORD PTR [rbp-0x38],rdi
  11426c:	48 89 7d d0          	mov    QWORD PTR [rbp-0x30],rdi
  114270:	48 89 75 f8          	mov    QWORD PTR [rbp-0x8],rsi
  114274:	c7 45 f4 00 80 00 00 	mov    DWORD PTR [rbp-0xc],0x8000
  11427b:	48 8b 75 f8          	mov    rsi,QWORD PTR [rbp-0x8]
  11427f:	48 8d 7d d8          	lea    rdi,[rbp-0x28]
  114283:	ba 00 80 00 00       	mov    edx,0x8000
  114288:	e8 43 fa ff ff       	call   113cd0 <_ZN19BitmapMemoryManager8AllocateEm>
  11428d:	48 8d 7d d8          	lea    rdi,[rbp-0x28]
  114291:	48 83 c7 08          	add    rdi,0x8
  114295:	e8 86 04 ff ff       	call   104720 <_ZNK5ErrorcvbEv>
  11429a:	a8 01                	test   al,0x1
  11429c:	0f 85 05 00 00 00    	jne    1142a7 <_Z14InitializeHeapR19BitmapMemoryManager+0x47>
  1142a2:	e9 20 00 00 00       	jmp    1142c7 <_Z14InitializeHeapR19BitmapMemoryManager+0x67>
  1142a7:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  1142ab:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
  1142b2:	48 8b 4d e0          	mov    rcx,QWORD PTR [rbp-0x20]
  1142b6:	48 89 48 08          	mov    QWORD PTR [rax+0x8],rcx
  1142ba:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
  1142be:	48 89 48 10          	mov    QWORD PTR [rax+0x10],rcx
  1142c2:	e9 5d 00 00 00       	jmp    114324 <_Z14InitializeHeapR19BitmapMemoryManager+0xc4>
  1142c7:	48 8d 7d d8          	lea    rdi,[rbp-0x28]
  1142cb:	e8 90 00 00 00       	call   114360 <_ZNK7FrameID2IDEv>
  1142d0:	48 8b 7d c8          	mov    rdi,QWORD PTR [rbp-0x38]
  1142d4:	48 89 c1             	mov    rcx,rax
  1142d7:	48 c1 e1 0c          	shl    rcx,0xc
  1142db:	48 8d 05 c6 88 50 00 	lea    rax,[rip+0x5088c6]        # 61cba8 <program_break>
  1142e2:	48 89 08             	mov    QWORD PTR [rax],rcx
  1142e5:	48 8d 05 bc 88 50 00 	lea    rax,[rip+0x5088bc]        # 61cba8 <program_break>
  1142ec:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  1142ef:	48 81 c1 00 00 00 08 	add    rcx,0x8000000
  1142f6:	48 8d 05 b3 88 50 00 	lea    rax,[rip+0x5088b3]        # 61cbb0 <program_break_end>
  1142fd:	48 89 08             	mov    QWORD PTR [rax],rcx
  114300:	48 8d 05 a1 88 50 00 	lea    rax,[rip+0x5088a1]        # 61cba8 <program_break>
  114307:	48 8b 00             	mov    rax,QWORD PTR [rax]
  11430a:	48 89 07             	mov    QWORD PTR [rdi],rax
  11430d:	48 83 c7 08          	add    rdi,0x8
  114311:	31 f6                	xor    esi,esi
  114313:	48 8d 15 40 bf fe ff 	lea    rdx,[rip+0xfffffffffffebf40]        # 10025a <_svfprintf_r.blanks-0x886>
  11431a:	b9 6c 00 00 00       	mov    ecx,0x6c
  11431f:	e8 5c 00 00 00       	call   114380 <_ZN5ErrorC2ENS_4CodeEPKci>
  114324:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  114328:	48 83 c4 40          	add    rsp,0x40
  11432c:	5d                   	pop    rbp
  11432d:	c3                   	ret
  11432e:	cc                   	int3
  11432f:	cc                   	int3

0000000000114330 <__cxx_global_var_init>:
  114330:	55                   	push   rbp
  114331:	48 89 e5             	mov    rbp,rsp
  114334:	e8 57 03 ff ff       	call   104690 <_ZNSt3__114numeric_limitsImE3maxEv>
  114339:	48 89 c6             	mov    rsi,rax
  11433c:	48 8d 3d c5 bc 54 00 	lea    rdi,[rip+0x54bcc5]        # 660008 <_ZL10kNullFrame>
  114343:	e8 58 03 ff ff       	call   1046a0 <_ZN7FrameIDC2Em>
  114348:	5d                   	pop    rbp
  114349:	c3                   	ret
  11434a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000114350 <_GLOBAL__sub_I_memory_manager.cpp>:
  114350:	55                   	push   rbp
  114351:	48 89 e5             	mov    rbp,rsp
  114354:	e8 d7 ff ff ff       	call   114330 <__cxx_global_var_init>
  114359:	5d                   	pop    rbp
  11435a:	c3                   	ret
  11435b:	cc                   	int3
  11435c:	cc                   	int3
  11435d:	cc                   	int3
  11435e:	cc                   	int3
  11435f:	cc                   	int3

0000000000114360 <_ZNK7FrameID2IDEv>:
  114360:	55                   	push   rbp
  114361:	48 89 e5             	mov    rbp,rsp
  114364:	50                   	push   rax
  114365:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  114369:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  11436d:	48 8b 00             	mov    rax,QWORD PTR [rax]
  114370:	48 83 c4 08          	add    rsp,0x8
  114374:	5d                   	pop    rbp
  114375:	c3                   	ret
  114376:	cc                   	int3
  114377:	cc                   	int3
  114378:	cc                   	int3
  114379:	cc                   	int3
  11437a:	cc                   	int3
  11437b:	cc                   	int3
  11437c:	cc                   	int3
  11437d:	cc                   	int3
  11437e:	cc                   	int3
  11437f:	cc                   	int3

0000000000114380 <_ZN5ErrorC2ENS_4CodeEPKci>:
  114380:	55                   	push   rbp
  114381:	48 89 e5             	mov    rbp,rsp
  114384:	48 83 ec 20          	sub    rsp,0x20
  114388:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  11438c:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi
  11438f:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
  114393:	89 4d e4             	mov    DWORD PTR [rbp-0x1c],ecx
  114396:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  11439a:	8b 4d f4             	mov    ecx,DWORD PTR [rbp-0xc]
  11439d:	89 08                	mov    DWORD PTR [rax],ecx
  11439f:	8b 4d e4             	mov    ecx,DWORD PTR [rbp-0x1c]
  1143a2:	89 48 04             	mov    DWORD PTR [rax+0x4],ecx
  1143a5:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
  1143a9:	48 89 48 08          	mov    QWORD PTR [rax+0x8],rcx
  1143ad:	48 83 c4 20          	add    rsp,0x20
  1143b1:	5d                   	pop    rbp
  1143b2:	c3                   	ret
  1143b3:	cc                   	int3
  1143b4:	cc                   	int3
  1143b5:	cc                   	int3
  1143b6:	cc                   	int3
  1143b7:	cc                   	int3
  1143b8:	cc                   	int3
  1143b9:	cc                   	int3
  1143ba:	cc                   	int3
  1143bb:	cc                   	int3
  1143bc:	cc                   	int3
  1143bd:	cc                   	int3
  1143be:	cc                   	int3
  1143bf:	cc                   	int3

00000000001143c0 <_Z16AddressToFrameIDm>:
  1143c0:	55                   	push   rbp
  1143c1:	48 89 e5             	mov    rbp,rsp
  1143c4:	48 83 ec 10          	sub    rsp,0x10
  1143c8:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  1143cc:	48 8b 75 f0          	mov    rsi,QWORD PTR [rbp-0x10]
  1143d0:	48 c1 ee 0c          	shr    rsi,0xc
  1143d4:	48 8d 7d f8          	lea    rdi,[rbp-0x8]
  1143d8:	e8 c3 02 ff ff       	call   1046a0 <_ZN7FrameIDC2Em>
  1143dd:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  1143e1:	48 83 c4 10          	add    rsp,0x10
  1143e5:	5d                   	pop    rbp
  1143e6:	c3                   	ret
  1143e7:	cc                   	int3
  1143e8:	cc                   	int3
  1143e9:	cc                   	int3
  1143ea:	cc                   	int3
  1143eb:	cc                   	int3
  1143ec:	cc                   	int3
  1143ed:	cc                   	int3
  1143ee:	cc                   	int3
  1143ef:	cc                   	int3

00000000001143f0 <_ZNKSt3__15arrayImLm524288EEixEm>:
  1143f0:	55                   	push   rbp
  1143f1:	48 89 e5             	mov    rbp,rsp
  1143f4:	48 83 ec 10          	sub    rsp,0x10
  1143f8:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  1143fc:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  114400:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  114404:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  114408:	48 c1 e1 03          	shl    rcx,0x3
  11440c:	48 01 c8             	add    rax,rcx
  11440f:	48 83 c4 10          	add    rsp,0x10
  114413:	5d                   	pop    rbp
  114414:	c3                   	ret
  114415:	cc                   	int3
  114416:	cc                   	int3
  114417:	cc                   	int3
  114418:	cc                   	int3
  114419:	cc                   	int3
  11441a:	cc                   	int3
  11441b:	cc                   	int3
  11441c:	cc                   	int3
  11441d:	cc                   	int3
  11441e:	cc                   	int3
  11441f:	cc                   	int3

0000000000114420 <_ZNSt3__15arrayImLm524288EEixEm>:
  114420:	55                   	push   rbp
  114421:	48 89 e5             	mov    rbp,rsp
  114424:	48 83 ec 10          	sub    rsp,0x10
  114428:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  11442c:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  114430:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  114434:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  114438:	48 c1 e1 03          	shl    rcx,0x3
  11443c:	48 01 c8             	add    rax,rcx
  11443f:	48 83 c4 10          	add    rsp,0x10
  114443:	5d                   	pop    rbp
  114444:	c3                   	ret
  114445:	cc                   	int3
  114446:	cc                   	int3
  114447:	cc                   	int3
  114448:	cc                   	int3
  114449:	cc                   	int3
  11444a:	cc                   	int3
  11444b:	cc                   	int3
  11444c:	cc                   	int3
  11444d:	cc                   	int3
  11444e:	cc                   	int3
  11444f:	cc                   	int3

0000000000114450 <_Z11IsAvailable10MemoryType>:
  114450:	55                   	push   rbp
  114451:	48 89 e5             	mov    rbp,rsp
  114454:	50                   	push   rax
  114455:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  114458:	b0 01                	mov    al,0x1
  11445a:	83 7d fc 03          	cmp    DWORD PTR [rbp-0x4],0x3
  11445e:	88 45 fb             	mov    BYTE PTR [rbp-0x5],al
  114461:	0f 84 19 00 00 00    	je     114480 <_Z11IsAvailable10MemoryType+0x30>
  114467:	b0 01                	mov    al,0x1
  114469:	83 7d fc 04          	cmp    DWORD PTR [rbp-0x4],0x4
  11446d:	88 45 fb             	mov    BYTE PTR [rbp-0x5],al
  114470:	0f 84 0a 00 00 00    	je     114480 <_Z11IsAvailable10MemoryType+0x30>
  114476:	83 7d fc 07          	cmp    DWORD PTR [rbp-0x4],0x7
  11447a:	0f 94 c0             	sete   al
  11447d:	88 45 fb             	mov    BYTE PTR [rbp-0x5],al
  114480:	8a 45 fb             	mov    al,BYTE PTR [rbp-0x5]
  114483:	24 01                	and    al,0x1
  114485:	0f b6 c0             	movzx  eax,al
  114488:	48 83 c4 08          	add    rsp,0x8
  11448c:	5d                   	pop    rbp
  11448d:	c3                   	ret
  11448e:	cc                   	int3
  11448f:	cc                   	int3

0000000000114490 <_Z20InitializeLAPICTimerv>:
  114490:	55                   	push   rbp
  114491:	48 89 e5             	mov    rbp,rsp
  114494:	48 8b 05 5d cc fe ff 	mov    rax,QWORD PTR [rip+0xfffffffffffecc5d]        # 1010f8 <_ZN12_GLOBAL__N_113divide_configE>
  11449b:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
  1144a1:	48 8b 05 58 cc fe ff 	mov    rax,QWORD PTR [rip+0xfffffffffffecc58]        # 101100 <_ZN12_GLOBAL__N_19lvt_timerE>
  1144a8:	c7 00 20 00 01 00    	mov    DWORD PTR [rax],0x10020
  1144ae:	5d                   	pop    rbp
  1144af:	c3                   	ret

00000000001144b0 <_Z15StartLAPICTimerv>:
  1144b0:	55                   	push   rbp
  1144b1:	48 89 e5             	mov    rbp,rsp
  1144b4:	48 8b 05 4d cc fe ff 	mov    rax,QWORD PTR [rip+0xfffffffffffecc4d]        # 101108 <_ZN12_GLOBAL__N_113initial_countE>
  1144bb:	c7 00 ff ff ff ff    	mov    DWORD PTR [rax],0xffffffff
  1144c1:	5d                   	pop    rbp
  1144c2:	c3                   	ret
  1144c3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  1144ca:	84 00 00 00 00 00 

00000000001144d0 <_Z10LAPICTimerv>:
  1144d0:	55                   	push   rbp
  1144d1:	48 89 e5             	mov    rbp,rsp
  1144d4:	b8 90 03 e0 fe       	mov    eax,0xfee00390
  1144d9:	8b 08                	mov    ecx,DWORD PTR [rax]
  1144db:	b8 ff ff ff ff       	mov    eax,0xffffffff
  1144e0:	29 c8                	sub    eax,ecx
  1144e2:	5d                   	pop    rbp
  1144e3:	c3                   	ret
  1144e4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  1144eb:	00 00 00 00 00 

00000000001144f0 <_Z14StopLAPICTimerv>:
  1144f0:	55                   	push   rbp
  1144f1:	48 89 e5             	mov    rbp,rsp
  1144f4:	48 8b 05 0d cc fe ff 	mov    rax,QWORD PTR [rip+0xfffffffffffecc0d]        # 101108 <_ZN12_GLOBAL__N_113initial_countE>
  1144fb:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
  114501:	5d                   	pop    rbp
  114502:	c3                   	ret
