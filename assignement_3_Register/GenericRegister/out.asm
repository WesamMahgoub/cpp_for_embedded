
d:/vsc/GenericRegister/out.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret    
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 05 44 00 00 	mov    0x4405(%rip),%rax        # 140005420 <.refptr.__mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 06 44 00 00 	mov    0x4406(%rip),%rax        # 140005430 <.refptr.__mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 09 44 00 00 	mov    0x4409(%rip),%rax        # 140005440 <.refptr.__mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 7c 43 00 00 	mov    0x437c(%rip),%rax        # 1400053c0 <.refptr.__image_base__>
   140001044:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001049:	75 0f                	jne    14000105a <pre_c_init+0x4a>
   14000104b:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000104f:	48 01 d0             	add    %rdx,%rax
   140001052:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001058:	74 66                	je     1400010c0 <pre_c_init+0xb0>
   14000105a:	48 8b 05 af 43 00 00 	mov    0x43af(%rip),%rax        # 140005410 <.refptr.__mingw_app_type>
   140001061:	89 0d b9 6f 00 00    	mov    %ecx,0x6fb9(%rip)        # 140008020 <managedapp>
   140001067:	8b 00                	mov    (%rax),%eax
   140001069:	85 c0                	test   %eax,%eax
   14000106b:	74 43                	je     1400010b0 <pre_c_init+0xa0>
   14000106d:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001072:	e8 21 21 00 00       	call   140003198 <__set_app_type>
   140001077:	e8 94 20 00 00       	call   140003110 <__p__fmode>
   14000107c:	48 8b 15 5d 44 00 00 	mov    0x445d(%rip),%rdx        # 1400054e0 <.refptr._fmode>
   140001083:	8b 12                	mov    (%rdx),%edx
   140001085:	89 10                	mov    %edx,(%rax)
   140001087:	e8 94 20 00 00       	call   140003120 <__p__commode>
   14000108c:	48 8b 15 2d 44 00 00 	mov    0x442d(%rip),%rdx        # 1400054c0 <.refptr._commode>
   140001093:	8b 12                	mov    (%rdx),%edx
   140001095:	89 10                	mov    %edx,(%rax)
   140001097:	e8 94 10 00 00       	call   140002130 <_setargv>
   14000109c:	48 8b 05 ad 42 00 00 	mov    0x42ad(%rip),%rax        # 140005350 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010a3:	83 38 01             	cmpl   $0x1,(%rax)
   1400010a6:	74 50                	je     1400010f8 <pre_c_init+0xe8>
   1400010a8:	31 c0                	xor    %eax,%eax
   1400010aa:	48 83 c4 28          	add    $0x28,%rsp
   1400010ae:	c3                   	ret    
   1400010af:	90                   	nop
   1400010b0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400010b5:	e8 de 20 00 00       	call   140003198 <__set_app_type>
   1400010ba:	eb bb                	jmp    140001077 <pre_c_init+0x67>
   1400010bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400010c0:	0f b7 50 18          	movzwl 0x18(%rax),%edx
   1400010c4:	66 81 fa 0b 01       	cmp    $0x10b,%dx
   1400010c9:	74 45                	je     140001110 <pre_c_init+0x100>
   1400010cb:	66 81 fa 0b 02       	cmp    $0x20b,%dx
   1400010d0:	75 88                	jne    14000105a <pre_c_init+0x4a>
   1400010d2:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
   1400010d9:	0f 86 7b ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   1400010df:	8b 90 f8 00 00 00    	mov    0xf8(%rax),%edx
   1400010e5:	31 c9                	xor    %ecx,%ecx
   1400010e7:	85 d2                	test   %edx,%edx
   1400010e9:	0f 95 c1             	setne  %cl
   1400010ec:	e9 69 ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   1400010f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400010f8:	48 8b 0d 01 44 00 00 	mov    0x4401(%rip),%rcx        # 140005500 <.refptr._matherr>
   1400010ff:	e8 8c 17 00 00       	call   140002890 <__mingw_setusermatherr>
   140001104:	31 c0                	xor    %eax,%eax
   140001106:	48 83 c4 28          	add    $0x28,%rsp
   14000110a:	c3                   	ret    
   14000110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001110:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
   140001114:	0f 86 40 ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   14000111a:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
   140001121:	31 c9                	xor    %ecx,%ecx
   140001123:	45 85 c0             	test   %r8d,%r8d
   140001126:	0f 95 c1             	setne  %cl
   140001129:	e9 2c ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   14000112e:	66 90                	xchg   %ax,%ax

0000000140001130 <pre_cpp_init>:
   140001130:	48 83 ec 38          	sub    $0x38,%rsp
   140001134:	48 8b 05 d5 43 00 00 	mov    0x43d5(%rip),%rax        # 140005510 <.refptr._newmode>
   14000113b:	4c 8d 05 e6 6e 00 00 	lea    0x6ee6(%rip),%r8        # 140008028 <envp>
   140001142:	48 8d 15 e7 6e 00 00 	lea    0x6ee7(%rip),%rdx        # 140008030 <argv>
   140001149:	48 8d 0d e8 6e 00 00 	lea    0x6ee8(%rip),%rcx        # 140008038 <argc>
   140001150:	8b 00                	mov    (%rax),%eax
   140001152:	89 05 c0 6e 00 00    	mov    %eax,0x6ec0(%rip)        # 140008018 <startinfo>
   140001158:	48 8d 05 b9 6e 00 00 	lea    0x6eb9(%rip),%rax        # 140008018 <startinfo>
   14000115f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140001164:	48 8b 05 65 43 00 00 	mov    0x4365(%rip),%rax        # 1400054d0 <.refptr._dowildcard>
   14000116b:	44 8b 08             	mov    (%rax),%r9d
   14000116e:	e8 15 20 00 00       	call   140003188 <__getmainargs>
   140001173:	90                   	nop
   140001174:	48 83 c4 38          	add    $0x38,%rsp
   140001178:	c3                   	ret    
   140001179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140001180 <__tmainCRTStartup>:
   140001180:	41 55                	push   %r13
   140001182:	41 54                	push   %r12
   140001184:	55                   	push   %rbp
   140001185:	57                   	push   %rdi
   140001186:	56                   	push   %rsi
   140001187:	53                   	push   %rbx
   140001188:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
   14000118f:	b9 0d 00 00 00       	mov    $0xd,%ecx
   140001194:	31 c0                	xor    %eax,%eax
   140001196:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
   14000119b:	4c 89 c7             	mov    %r8,%rdi
   14000119e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
   1400011a1:	48 8b 3d 68 42 00 00 	mov    0x4268(%rip),%rdi        # 140005410 <.refptr.__mingw_app_type>
   1400011a8:	44 8b 0f             	mov    (%rdi),%r9d
   1400011ab:	45 85 c9             	test   %r9d,%r9d
   1400011ae:	0f 85 9c 02 00 00    	jne    140001450 <__tmainCRTStartup+0x2d0>
   1400011b4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
   1400011bb:	00 00 
   1400011bd:	48 8b 1d 9c 42 00 00 	mov    0x429c(%rip),%rbx        # 140005460 <.refptr.__native_startup_lock>
   1400011c4:	48 8b 70 08          	mov    0x8(%rax),%rsi
   1400011c8:	31 ed                	xor    %ebp,%ebp
   1400011ca:	4c 8b 25 1f 80 00 00 	mov    0x801f(%rip),%r12        # 1400091f0 <__imp_Sleep>
   1400011d1:	eb 16                	jmp    1400011e9 <__tmainCRTStartup+0x69>
   1400011d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400011d8:	48 39 c6             	cmp    %rax,%rsi
   1400011db:	0f 84 17 02 00 00    	je     1400013f8 <__tmainCRTStartup+0x278>
   1400011e1:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   1400011e6:	41 ff d4             	call   *%r12
   1400011e9:	48 89 e8             	mov    %rbp,%rax
   1400011ec:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
   1400011f1:	48 85 c0             	test   %rax,%rax
   1400011f4:	75 e2                	jne    1400011d8 <__tmainCRTStartup+0x58>
   1400011f6:	48 8b 35 73 42 00 00 	mov    0x4273(%rip),%rsi        # 140005470 <.refptr.__native_startup_state>
   1400011fd:	31 ed                	xor    %ebp,%ebp
   1400011ff:	8b 06                	mov    (%rsi),%eax
   140001201:	83 f8 01             	cmp    $0x1,%eax
   140001204:	0f 84 05 02 00 00    	je     14000140f <__tmainCRTStartup+0x28f>
   14000120a:	8b 06                	mov    (%rsi),%eax
   14000120c:	85 c0                	test   %eax,%eax
   14000120e:	0f 84 6c 02 00 00    	je     140001480 <__tmainCRTStartup+0x300>
   140001214:	c7 05 fe 6d 00 00 01 	movl   $0x1,0x6dfe(%rip)        # 14000801c <has_cctor>
   14000121b:	00 00 00 
   14000121e:	8b 06                	mov    (%rsi),%eax
   140001220:	83 f8 01             	cmp    $0x1,%eax
   140001223:	0f 84 fb 01 00 00    	je     140001424 <__tmainCRTStartup+0x2a4>
   140001229:	85 ed                	test   %ebp,%ebp
   14000122b:	0f 84 14 02 00 00    	je     140001445 <__tmainCRTStartup+0x2c5>
   140001231:	48 8b 05 78 41 00 00 	mov    0x4178(%rip),%rax        # 1400053b0 <.refptr.__dyn_tls_init_callback>
   140001238:	48 8b 00             	mov    (%rax),%rax
   14000123b:	48 85 c0             	test   %rax,%rax
   14000123e:	74 0c                	je     14000124c <__tmainCRTStartup+0xcc>
   140001240:	45 31 c0             	xor    %r8d,%r8d
   140001243:	ba 02 00 00 00       	mov    $0x2,%edx
   140001248:	31 c9                	xor    %ecx,%ecx
   14000124a:	ff d0                	call   *%rax
   14000124c:	e8 af 12 00 00       	call   140002500 <_pei386_runtime_relocator>
   140001251:	48 8b 0d 98 42 00 00 	mov    0x4298(%rip),%rcx        # 1400054f0 <.refptr._gnu_exception_handler>
   140001258:	ff 15 8a 7f 00 00    	call   *0x7f8a(%rip)        # 1400091e8 <__imp_SetUnhandledExceptionFilter>
   14000125e:	48 8b 15 eb 41 00 00 	mov    0x41eb(%rip),%rdx        # 140005450 <.refptr.__mingw_oldexcpt_handler>
   140001265:	48 8d 0d 94 fd ff ff 	lea    -0x26c(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   14000126c:	48 89 02             	mov    %rax,(%rdx)
   14000126f:	e8 dc 1e 00 00       	call   140003150 <_set_invalid_parameter_handler>
   140001274:	e8 97 10 00 00       	call   140002310 <_fpreset>
   140001279:	48 8b 05 40 41 00 00 	mov    0x4140(%rip),%rax        # 1400053c0 <.refptr.__image_base__>
   140001280:	48 89 05 89 6d 00 00 	mov    %rax,0x6d89(%rip)        # 140008010 <__mingw_winmain_hInstance>
   140001287:	e8 a4 1e 00 00       	call   140003130 <__p__acmdln>
   14000128c:	31 c9                	xor    %ecx,%ecx
   14000128e:	48 8b 00             	mov    (%rax),%rax
   140001291:	48 85 c0             	test   %rax,%rax
   140001294:	75 1c                	jne    1400012b2 <__tmainCRTStartup+0x132>
   140001296:	eb 58                	jmp    1400012f0 <__tmainCRTStartup+0x170>
   140001298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000129f:	00 
   1400012a0:	84 d2                	test   %dl,%dl
   1400012a2:	74 45                	je     1400012e9 <__tmainCRTStartup+0x169>
   1400012a4:	83 e1 01             	and    $0x1,%ecx
   1400012a7:	74 27                	je     1400012d0 <__tmainCRTStartup+0x150>
   1400012a9:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400012ae:	48 83 c0 01          	add    $0x1,%rax
   1400012b2:	0f b6 10             	movzbl (%rax),%edx
   1400012b5:	80 fa 20             	cmp    $0x20,%dl
   1400012b8:	7e e6                	jle    1400012a0 <__tmainCRTStartup+0x120>
   1400012ba:	41 89 c8             	mov    %ecx,%r8d
   1400012bd:	41 83 f0 01          	xor    $0x1,%r8d
   1400012c1:	80 fa 22             	cmp    $0x22,%dl
   1400012c4:	41 0f 44 c8          	cmove  %r8d,%ecx
   1400012c8:	eb e4                	jmp    1400012ae <__tmainCRTStartup+0x12e>
   1400012ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400012d0:	84 d2                	test   %dl,%dl
   1400012d2:	74 15                	je     1400012e9 <__tmainCRTStartup+0x169>
   1400012d4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400012d8:	0f b6 50 01          	movzbl 0x1(%rax),%edx
   1400012dc:	48 83 c0 01          	add    $0x1,%rax
   1400012e0:	84 d2                	test   %dl,%dl
   1400012e2:	74 05                	je     1400012e9 <__tmainCRTStartup+0x169>
   1400012e4:	80 fa 20             	cmp    $0x20,%dl
   1400012e7:	7e ef                	jle    1400012d8 <__tmainCRTStartup+0x158>
   1400012e9:	48 89 05 18 6d 00 00 	mov    %rax,0x6d18(%rip)        # 140008008 <__mingw_winmain_lpCmdLine>
   1400012f0:	44 8b 07             	mov    (%rdi),%r8d
   1400012f3:	45 85 c0             	test   %r8d,%r8d
   1400012f6:	74 16                	je     14000130e <__tmainCRTStartup+0x18e>
   1400012f8:	b8 0a 00 00 00       	mov    $0xa,%eax
   1400012fd:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
   140001302:	0f 85 e0 00 00 00    	jne    1400013e8 <__tmainCRTStartup+0x268>
   140001308:	89 05 f2 2c 00 00    	mov    %eax,0x2cf2(%rip)        # 140004000 <__data_start__>
   14000130e:	48 63 2d 23 6d 00 00 	movslq 0x6d23(%rip),%rbp        # 140008038 <argc>
   140001315:	44 8d 65 01          	lea    0x1(%rbp),%r12d
   140001319:	4d 63 e4             	movslq %r12d,%r12
   14000131c:	49 c1 e4 03          	shl    $0x3,%r12
   140001320:	4c 89 e1             	mov    %r12,%rcx
   140001323:	e8 d0 1e 00 00       	call   1400031f8 <malloc>
   140001328:	4c 8b 2d 01 6d 00 00 	mov    0x6d01(%rip),%r13        # 140008030 <argv>
   14000132f:	48 89 c7             	mov    %rax,%rdi
   140001332:	85 ed                	test   %ebp,%ebp
   140001334:	7e 42                	jle    140001378 <__tmainCRTStartup+0x1f8>
   140001336:	31 db                	xor    %ebx,%ebx
   140001338:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000133f:	00 
   140001340:	49 8b 4c dd 00       	mov    0x0(%r13,%rbx,8),%rcx
   140001345:	e8 c6 1e 00 00       	call   140003210 <strlen>
   14000134a:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000134e:	48 89 f1             	mov    %rsi,%rcx
   140001351:	e8 a2 1e 00 00       	call   1400031f8 <malloc>
   140001356:	49 89 f0             	mov    %rsi,%r8
   140001359:	48 89 04 df          	mov    %rax,(%rdi,%rbx,8)
   14000135d:	49 8b 54 dd 00       	mov    0x0(%r13,%rbx,8),%rdx
   140001362:	48 89 c1             	mov    %rax,%rcx
   140001365:	48 83 c3 01          	add    $0x1,%rbx
   140001369:	e8 92 1e 00 00       	call   140003200 <memcpy>
   14000136e:	48 39 dd             	cmp    %rbx,%rbp
   140001371:	75 cd                	jne    140001340 <__tmainCRTStartup+0x1c0>
   140001373:	4a 8d 44 27 f8       	lea    -0x8(%rdi,%r12,1),%rax
   140001378:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   14000137f:	48 89 3d aa 6c 00 00 	mov    %rdi,0x6caa(%rip)        # 140008030 <argv>
   140001386:	e8 85 0d 00 00       	call   140002110 <__main>
   14000138b:	48 8b 05 3e 40 00 00 	mov    0x403e(%rip),%rax        # 1400053d0 <.refptr.__imp___initenv>
   140001392:	4c 8b 05 8f 6c 00 00 	mov    0x6c8f(%rip),%r8        # 140008028 <envp>
   140001399:	8b 0d 99 6c 00 00    	mov    0x6c99(%rip),%ecx        # 140008038 <argc>
   14000139f:	48 8b 00             	mov    (%rax),%rax
   1400013a2:	4c 89 00             	mov    %r8,(%rax)
   1400013a5:	48 8b 15 84 6c 00 00 	mov    0x6c84(%rip),%rdx        # 140008030 <argv>
   1400013ac:	e8 7f 01 00 00       	call   140001530 <main>
   1400013b1:	8b 0d 69 6c 00 00    	mov    0x6c69(%rip),%ecx        # 140008020 <managedapp>
   1400013b7:	89 05 67 6c 00 00    	mov    %eax,0x6c67(%rip)        # 140008024 <mainret>
   1400013bd:	85 c9                	test   %ecx,%ecx
   1400013bf:	0f 84 d9 00 00 00    	je     14000149e <__tmainCRTStartup+0x31e>
   1400013c5:	8b 15 51 6c 00 00    	mov    0x6c51(%rip),%edx        # 14000801c <has_cctor>
   1400013cb:	85 d2                	test   %edx,%edx
   1400013cd:	0f 84 8d 00 00 00    	je     140001460 <__tmainCRTStartup+0x2e0>
   1400013d3:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   1400013da:	5b                   	pop    %rbx
   1400013db:	5e                   	pop    %rsi
   1400013dc:	5f                   	pop    %rdi
   1400013dd:	5d                   	pop    %rbp
   1400013de:	41 5c                	pop    %r12
   1400013e0:	41 5d                	pop    %r13
   1400013e2:	c3                   	ret    
   1400013e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400013e8:	0f b7 44 24 60       	movzwl 0x60(%rsp),%eax
   1400013ed:	e9 16 ff ff ff       	jmp    140001308 <__tmainCRTStartup+0x188>
   1400013f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400013f8:	48 8b 35 71 40 00 00 	mov    0x4071(%rip),%rsi        # 140005470 <.refptr.__native_startup_state>
   1400013ff:	bd 01 00 00 00       	mov    $0x1,%ebp
   140001404:	8b 06                	mov    (%rsi),%eax
   140001406:	83 f8 01             	cmp    $0x1,%eax
   140001409:	0f 85 fb fd ff ff    	jne    14000120a <__tmainCRTStartup+0x8a>
   14000140f:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   140001414:	e8 8f 1d 00 00       	call   1400031a8 <_amsg_exit>
   140001419:	8b 06                	mov    (%rsi),%eax
   14000141b:	83 f8 01             	cmp    $0x1,%eax
   14000141e:	0f 85 05 fe ff ff    	jne    140001229 <__tmainCRTStartup+0xa9>
   140001424:	48 8b 15 65 40 00 00 	mov    0x4065(%rip),%rdx        # 140005490 <.refptr.__xc_z>
   14000142b:	48 8b 0d 4e 40 00 00 	mov    0x404e(%rip),%rcx        # 140005480 <.refptr.__xc_a>
   140001432:	e8 81 1d 00 00       	call   1400031b8 <_initterm>
   140001437:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   14000143d:	85 ed                	test   %ebp,%ebp
   14000143f:	0f 85 ec fd ff ff    	jne    140001231 <__tmainCRTStartup+0xb1>
   140001445:	31 c0                	xor    %eax,%eax
   140001447:	48 87 03             	xchg   %rax,(%rbx)
   14000144a:	e9 e2 fd ff ff       	jmp    140001231 <__tmainCRTStartup+0xb1>
   14000144f:	90                   	nop
   140001450:	4c 89 c1             	mov    %r8,%rcx
   140001453:	ff 15 77 7d 00 00    	call   *0x7d77(%rip)        # 1400091d0 <__imp_GetStartupInfoA>
   140001459:	e9 56 fd ff ff       	jmp    1400011b4 <__tmainCRTStartup+0x34>
   14000145e:	66 90                	xchg   %ax,%ax
   140001460:	e8 4b 1d 00 00       	call   1400031b0 <_cexit>
   140001465:	8b 05 b9 6b 00 00    	mov    0x6bb9(%rip),%eax        # 140008024 <mainret>
   14000146b:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   140001472:	5b                   	pop    %rbx
   140001473:	5e                   	pop    %rsi
   140001474:	5f                   	pop    %rdi
   140001475:	5d                   	pop    %rbp
   140001476:	41 5c                	pop    %r12
   140001478:	41 5d                	pop    %r13
   14000147a:	c3                   	ret    
   14000147b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001480:	48 8b 15 29 40 00 00 	mov    0x4029(%rip),%rdx        # 1400054b0 <.refptr.__xi_z>
   140001487:	48 8b 0d 12 40 00 00 	mov    0x4012(%rip),%rcx        # 1400054a0 <.refptr.__xi_a>
   14000148e:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   140001494:	e8 1f 1d 00 00       	call   1400031b8 <_initterm>
   140001499:	e9 80 fd ff ff       	jmp    14000121e <__tmainCRTStartup+0x9e>
   14000149e:	89 c1                	mov    %eax,%ecx
   1400014a0:	e8 33 1d 00 00       	call   1400031d8 <exit>
   1400014a5:	90                   	nop
   1400014a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400014ad:	00 00 00 

00000001400014b0 <WinMainCRTStartup>:
   1400014b0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400014b4 <.l_startw>:
   1400014b4:	48 8b 05 55 3f 00 00 	mov    0x3f55(%rip),%rax        # 140005410 <.refptr.__mingw_app_type>
   1400014bb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   1400014c1:	e8 ba fc ff ff       	call   140001180 <__tmainCRTStartup>
   1400014c6:	90                   	nop

00000001400014c7 <.l_endw>:
   1400014c7:	90                   	nop
   1400014c8:	48 83 c4 28          	add    $0x28,%rsp
   1400014cc:	c3                   	ret    
   1400014cd:	0f 1f 00             	nopl   (%rax)

00000001400014d0 <mainCRTStartup>:
   1400014d0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400014d4 <.l_start>:
   1400014d4:	48 8b 05 35 3f 00 00 	mov    0x3f35(%rip),%rax        # 140005410 <.refptr.__mingw_app_type>
   1400014db:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   1400014e1:	e8 9a fc ff ff       	call   140001180 <__tmainCRTStartup>
   1400014e6:	90                   	nop

00000001400014e7 <.l_end>:
   1400014e7:	90                   	nop
   1400014e8:	48 83 c4 28          	add    $0x28,%rsp
   1400014ec:	c3                   	ret    
   1400014ed:	0f 1f 00             	nopl   (%rax)

00000001400014f0 <atexit>:
   1400014f0:	48 83 ec 28          	sub    $0x28,%rsp
   1400014f4:	e8 c7 1c 00 00       	call   1400031c0 <_onexit>
   1400014f9:	48 83 f8 01          	cmp    $0x1,%rax
   1400014fd:	19 c0                	sbb    %eax,%eax
   1400014ff:	48 83 c4 28          	add    $0x28,%rsp
   140001503:	c3                   	ret    
   140001504:	90                   	nop
   140001505:	90                   	nop
   140001506:	90                   	nop
   140001507:	90                   	nop
   140001508:	90                   	nop
   140001509:	90                   	nop
   14000150a:	90                   	nop
   14000150b:	90                   	nop
   14000150c:	90                   	nop
   14000150d:	90                   	nop
   14000150e:	90                   	nop
   14000150f:	90                   	nop

0000000140001510 <__gcc_register_frame>:
   140001510:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 140001520 <__gcc_deregister_frame>
   140001517:	e9 d4 ff ff ff       	jmp    1400014f0 <atexit>
   14000151c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001520 <__gcc_deregister_frame>:
   140001520:	c3                   	ret    
   140001521:	90                   	nop
   140001522:	90                   	nop
   140001523:	90                   	nop
   140001524:	90                   	nop
   140001525:	90                   	nop
   140001526:	90                   	nop
   140001527:	90                   	nop
   140001528:	90                   	nop
   140001529:	90                   	nop
   14000152a:	90                   	nop
   14000152b:	90                   	nop
   14000152c:	90                   	nop
   14000152d:	90                   	nop
   14000152e:	90                   	nop
        cout << (T)Reg << endl;
    }
};

int main()
{
   14000152f:	90                   	nop

0000000140001530 <main>:
   140001530:	55                   	push   %rbp
   140001531:	53                   	push   %rbx
   140001532:	48 83 ec 38          	sub    $0x38,%rsp
   140001536:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   14000153b:	e8 d0 0b 00 00       	call   140002110 <__main>
    Register<uint16> TMR0;
   140001540:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   140001544:	48 89 c1             	mov    %rax,%rcx
   140001547:	e8 d4 22 00 00       	call   140003820 <_ZN8RegisterItEC1Ev>
    //Register<uint32> TMR1;
    //TMR1.setPermission(Write);
    uint16 var1 = 8;
   14000154c:	66 c7 45 f2 08 00    	movw   $0x8,-0xe(%rbp)
    TMR0.setPermission(Read);
   140001552:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   140001556:	ba 01 00 00 00       	mov    $0x1,%edx
   14000155b:	48 89 c1             	mov    %rax,%rcx
   14000155e:	e8 2d 1d 00 00       	call   140003290 <_ZN8RegisterItE13setPermissionEh>
    cout << (uint16)TMR0.setRegisterValue(5) << endl << (uint16)TMR0.getRegisterValue(&var1) << endl << (uint16)var1 << endl << (uint16)TMR0.SetBit(3) << endl << (uint16)TMR0.GetBit(&var1,3) << endl << (uint16)var1 << endl << (uint16)TMR0.ClearBit(3) << endl << (uint16)TMR0.GetBit(&var1,3) << endl << (uint16)var1 << endl;
   140001563:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   140001567:	ba 05 00 00 00       	mov    $0x5,%edx
   14000156c:	48 89 c1             	mov    %rax,%rcx
   14000156f:	e8 bc 1f 00 00       	call   140003530 <_ZN8RegisterItE16setRegisterValueEt>
   140001574:	0f b6 c0             	movzbl %al,%eax
   140001577:	89 c2                	mov    %eax,%edx
   140001579:	48 8b 05 e0 3d 00 00 	mov    0x3de0(%rip),%rax        # 140005360 <__fu0__ZSt4cout>
   140001580:	48 89 c1             	mov    %rax,%rcx
   140001583:	e8 c0 0a 00 00       	call   140002048 <_ZNSolsEt>
   140001588:	48 89 c1             	mov    %rax,%rcx
   14000158b:	48 8b 05 de 3d 00 00 	mov    0x3dde(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001592:	48 89 c2             	mov    %rax,%rdx
   140001595:	e8 b6 0a 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   14000159a:	48 89 c3             	mov    %rax,%rbx
   14000159d:	48 8d 55 f2          	lea    -0xe(%rbp),%rdx
   1400015a1:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   1400015a5:	48 89 c1             	mov    %rax,%rcx
   1400015a8:	e8 e3 1e 00 00       	call   140003490 <_ZN8RegisterItE16getRegisterValueEPt>
   1400015ad:	0f b6 c0             	movzbl %al,%eax
   1400015b0:	89 c2                	mov    %eax,%edx
   1400015b2:	48 89 d9             	mov    %rbx,%rcx
   1400015b5:	e8 8e 0a 00 00       	call   140002048 <_ZNSolsEt>
   1400015ba:	48 89 c1             	mov    %rax,%rcx
   1400015bd:	48 8b 05 ac 3d 00 00 	mov    0x3dac(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   1400015c4:	48 89 c2             	mov    %rax,%rdx
   1400015c7:	e8 84 0a 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   1400015cc:	48 89 c1             	mov    %rax,%rcx
   1400015cf:	0f b7 45 f2          	movzwl -0xe(%rbp),%eax
   1400015d3:	0f b7 c0             	movzwl %ax,%eax
   1400015d6:	89 c2                	mov    %eax,%edx
   1400015d8:	e8 6b 0a 00 00       	call   140002048 <_ZNSolsEt>
   1400015dd:	48 89 c1             	mov    %rax,%rcx
   1400015e0:	48 8b 05 89 3d 00 00 	mov    0x3d89(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   1400015e7:	48 89 c2             	mov    %rax,%rdx
   1400015ea:	e8 61 0a 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   1400015ef:	48 89 c3             	mov    %rax,%rbx
   1400015f2:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   1400015f6:	ba 03 00 00 00       	mov    $0x3,%edx
   1400015fb:	48 89 c1             	mov    %rax,%rcx
   1400015fe:	e8 9d 20 00 00       	call   1400036a0 <_ZN8RegisterItE6SetBitEi>
   140001603:	0f b6 c0             	movzbl %al,%eax
   140001606:	89 c2                	mov    %eax,%edx
   140001608:	48 89 d9             	mov    %rbx,%rcx
   14000160b:	e8 38 0a 00 00       	call   140002048 <_ZNSolsEt>
   140001610:	48 89 c1             	mov    %rax,%rcx
   140001613:	48 8b 05 56 3d 00 00 	mov    0x3d56(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   14000161a:	48 89 c2             	mov    %rax,%rdx
   14000161d:	e8 2e 0a 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001622:	48 89 c3             	mov    %rax,%rbx
   140001625:	48 8d 55 f2          	lea    -0xe(%rbp),%rdx
   140001629:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   14000162d:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   140001633:	48 89 c1             	mov    %rax,%rcx
   140001636:	e8 95 1f 00 00       	call   1400035d0 <_ZN8RegisterItE6GetBitEPth>
   14000163b:	0f b6 c0             	movzbl %al,%eax
   14000163e:	89 c2                	mov    %eax,%edx
   140001640:	48 89 d9             	mov    %rbx,%rcx
   140001643:	e8 00 0a 00 00       	call   140002048 <_ZNSolsEt>
   140001648:	48 89 c1             	mov    %rax,%rcx
   14000164b:	48 8b 05 1e 3d 00 00 	mov    0x3d1e(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001652:	48 89 c2             	mov    %rax,%rdx
   140001655:	e8 f6 09 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   14000165a:	48 89 c1             	mov    %rax,%rcx
   14000165d:	0f b7 45 f2          	movzwl -0xe(%rbp),%eax
   140001661:	0f b7 c0             	movzwl %ax,%eax
   140001664:	89 c2                	mov    %eax,%edx
   140001666:	e8 dd 09 00 00       	call   140002048 <_ZNSolsEt>
   14000166b:	48 89 c1             	mov    %rax,%rcx
   14000166e:	48 8b 05 fb 3c 00 00 	mov    0x3cfb(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001675:	48 89 c2             	mov    %rax,%rdx
   140001678:	e8 d3 09 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   14000167d:	48 89 c3             	mov    %rax,%rbx
   140001680:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   140001684:	ba 03 00 00 00       	mov    $0x3,%edx
   140001689:	48 89 c1             	mov    %rax,%rcx
   14000168c:	e8 cf 20 00 00       	call   140003760 <_ZN8RegisterItE8ClearBitEi>
   140001691:	0f b6 c0             	movzbl %al,%eax
   140001694:	89 c2                	mov    %eax,%edx
   140001696:	48 89 d9             	mov    %rbx,%rcx
   140001699:	e8 aa 09 00 00       	call   140002048 <_ZNSolsEt>
   14000169e:	48 89 c1             	mov    %rax,%rcx
   1400016a1:	48 8b 05 c8 3c 00 00 	mov    0x3cc8(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   1400016a8:	48 89 c2             	mov    %rax,%rdx
   1400016ab:	e8 a0 09 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   1400016b0:	48 89 c3             	mov    %rax,%rbx
   1400016b3:	48 8d 55 f2          	lea    -0xe(%rbp),%rdx
   1400016b7:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   1400016bb:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   1400016c1:	48 89 c1             	mov    %rax,%rcx
   1400016c4:	e8 07 1f 00 00       	call   1400035d0 <_ZN8RegisterItE6GetBitEPth>
   1400016c9:	0f b6 c0             	movzbl %al,%eax
   1400016cc:	89 c2                	mov    %eax,%edx
   1400016ce:	48 89 d9             	mov    %rbx,%rcx
   1400016d1:	e8 72 09 00 00       	call   140002048 <_ZNSolsEt>
   1400016d6:	48 89 c1             	mov    %rax,%rcx
   1400016d9:	48 8b 05 90 3c 00 00 	mov    0x3c90(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   1400016e0:	48 89 c2             	mov    %rax,%rdx
   1400016e3:	e8 68 09 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   1400016e8:	48 89 c1             	mov    %rax,%rcx
   1400016eb:	0f b7 45 f2          	movzwl -0xe(%rbp),%eax
   1400016ef:	0f b7 c0             	movzwl %ax,%eax
   1400016f2:	89 c2                	mov    %eax,%edx
   1400016f4:	e8 4f 09 00 00       	call   140002048 <_ZNSolsEt>
   1400016f9:	48 89 c1             	mov    %rax,%rcx
   1400016fc:	48 8b 05 6d 3c 00 00 	mov    0x3c6d(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001703:	48 89 c2             	mov    %rax,%rdx
   140001706:	e8 45 09 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
    TMR0.setPermission(Write);
   14000170b:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   14000170f:	ba 03 00 00 00       	mov    $0x3,%edx
   140001714:	48 89 c1             	mov    %rax,%rcx
   140001717:	e8 74 1b 00 00       	call   140003290 <_ZN8RegisterItE13setPermissionEh>
    cout << (uint16)TMR0.setRegisterValue(5) << endl << (uint16)TMR0.getRegisterValue(&var1) << endl << (uint16)var1 << endl << (uint16)TMR0.SetBit(3) << endl << (uint16)TMR0.GetBit(&var1,3) << endl << (uint16)var1 << endl << (uint16)TMR0.ClearBit(3) << endl << (uint16)TMR0.GetBit(&var1,3) << endl << (uint16)var1 << endl;
   14000171c:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   140001720:	ba 05 00 00 00       	mov    $0x5,%edx
   140001725:	48 89 c1             	mov    %rax,%rcx
   140001728:	e8 03 1e 00 00       	call   140003530 <_ZN8RegisterItE16setRegisterValueEt>
   14000172d:	0f b6 c0             	movzbl %al,%eax
   140001730:	89 c2                	mov    %eax,%edx
   140001732:	48 8b 05 27 3c 00 00 	mov    0x3c27(%rip),%rax        # 140005360 <__fu0__ZSt4cout>
   140001739:	48 89 c1             	mov    %rax,%rcx
   14000173c:	e8 07 09 00 00       	call   140002048 <_ZNSolsEt>
   140001741:	48 89 c1             	mov    %rax,%rcx
   140001744:	48 8b 05 25 3c 00 00 	mov    0x3c25(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   14000174b:	48 89 c2             	mov    %rax,%rdx
   14000174e:	e8 fd 08 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001753:	48 89 c3             	mov    %rax,%rbx
   140001756:	48 8d 55 f2          	lea    -0xe(%rbp),%rdx
   14000175a:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   14000175e:	48 89 c1             	mov    %rax,%rcx
   140001761:	e8 2a 1d 00 00       	call   140003490 <_ZN8RegisterItE16getRegisterValueEPt>
   140001766:	0f b6 c0             	movzbl %al,%eax
   140001769:	89 c2                	mov    %eax,%edx
   14000176b:	48 89 d9             	mov    %rbx,%rcx
   14000176e:	e8 d5 08 00 00       	call   140002048 <_ZNSolsEt>
   140001773:	48 89 c1             	mov    %rax,%rcx
   140001776:	48 8b 05 f3 3b 00 00 	mov    0x3bf3(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   14000177d:	48 89 c2             	mov    %rax,%rdx
   140001780:	e8 cb 08 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001785:	48 89 c1             	mov    %rax,%rcx
   140001788:	0f b7 45 f2          	movzwl -0xe(%rbp),%eax
   14000178c:	0f b7 c0             	movzwl %ax,%eax
   14000178f:	89 c2                	mov    %eax,%edx
   140001791:	e8 b2 08 00 00       	call   140002048 <_ZNSolsEt>
   140001796:	48 89 c1             	mov    %rax,%rcx
   140001799:	48 8b 05 d0 3b 00 00 	mov    0x3bd0(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   1400017a0:	48 89 c2             	mov    %rax,%rdx
   1400017a3:	e8 a8 08 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   1400017a8:	48 89 c3             	mov    %rax,%rbx
   1400017ab:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   1400017af:	ba 03 00 00 00       	mov    $0x3,%edx
   1400017b4:	48 89 c1             	mov    %rax,%rcx
   1400017b7:	e8 e4 1e 00 00       	call   1400036a0 <_ZN8RegisterItE6SetBitEi>
   1400017bc:	0f b6 c0             	movzbl %al,%eax
   1400017bf:	89 c2                	mov    %eax,%edx
   1400017c1:	48 89 d9             	mov    %rbx,%rcx
   1400017c4:	e8 7f 08 00 00       	call   140002048 <_ZNSolsEt>
   1400017c9:	48 89 c1             	mov    %rax,%rcx
   1400017cc:	48 8b 05 9d 3b 00 00 	mov    0x3b9d(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   1400017d3:	48 89 c2             	mov    %rax,%rdx
   1400017d6:	e8 75 08 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   1400017db:	48 89 c3             	mov    %rax,%rbx
   1400017de:	48 8d 55 f2          	lea    -0xe(%rbp),%rdx
   1400017e2:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   1400017e6:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   1400017ec:	48 89 c1             	mov    %rax,%rcx
   1400017ef:	e8 dc 1d 00 00       	call   1400035d0 <_ZN8RegisterItE6GetBitEPth>
   1400017f4:	0f b6 c0             	movzbl %al,%eax
   1400017f7:	89 c2                	mov    %eax,%edx
   1400017f9:	48 89 d9             	mov    %rbx,%rcx
   1400017fc:	e8 47 08 00 00       	call   140002048 <_ZNSolsEt>
   140001801:	48 89 c1             	mov    %rax,%rcx
   140001804:	48 8b 05 65 3b 00 00 	mov    0x3b65(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   14000180b:	48 89 c2             	mov    %rax,%rdx
   14000180e:	e8 3d 08 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001813:	48 89 c1             	mov    %rax,%rcx
   140001816:	0f b7 45 f2          	movzwl -0xe(%rbp),%eax
   14000181a:	0f b7 c0             	movzwl %ax,%eax
   14000181d:	89 c2                	mov    %eax,%edx
   14000181f:	e8 24 08 00 00       	call   140002048 <_ZNSolsEt>
   140001824:	48 89 c1             	mov    %rax,%rcx
   140001827:	48 8b 05 42 3b 00 00 	mov    0x3b42(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   14000182e:	48 89 c2             	mov    %rax,%rdx
   140001831:	e8 1a 08 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001836:	48 89 c3             	mov    %rax,%rbx
   140001839:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   14000183d:	ba 03 00 00 00       	mov    $0x3,%edx
   140001842:	48 89 c1             	mov    %rax,%rcx
   140001845:	e8 16 1f 00 00       	call   140003760 <_ZN8RegisterItE8ClearBitEi>
   14000184a:	0f b6 c0             	movzbl %al,%eax
   14000184d:	89 c2                	mov    %eax,%edx
   14000184f:	48 89 d9             	mov    %rbx,%rcx
   140001852:	e8 f1 07 00 00       	call   140002048 <_ZNSolsEt>
   140001857:	48 89 c1             	mov    %rax,%rcx
   14000185a:	48 8b 05 0f 3b 00 00 	mov    0x3b0f(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001861:	48 89 c2             	mov    %rax,%rdx
   140001864:	e8 e7 07 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001869:	48 89 c3             	mov    %rax,%rbx
   14000186c:	48 8d 55 f2          	lea    -0xe(%rbp),%rdx
   140001870:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   140001874:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   14000187a:	48 89 c1             	mov    %rax,%rcx
   14000187d:	e8 4e 1d 00 00       	call   1400035d0 <_ZN8RegisterItE6GetBitEPth>
   140001882:	0f b6 c0             	movzbl %al,%eax
   140001885:	89 c2                	mov    %eax,%edx
   140001887:	48 89 d9             	mov    %rbx,%rcx
   14000188a:	e8 b9 07 00 00       	call   140002048 <_ZNSolsEt>
   14000188f:	48 89 c1             	mov    %rax,%rcx
   140001892:	48 8b 05 d7 3a 00 00 	mov    0x3ad7(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001899:	48 89 c2             	mov    %rax,%rdx
   14000189c:	e8 af 07 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   1400018a1:	48 89 c1             	mov    %rax,%rcx
   1400018a4:	0f b7 45 f2          	movzwl -0xe(%rbp),%eax
   1400018a8:	0f b7 c0             	movzwl %ax,%eax
   1400018ab:	89 c2                	mov    %eax,%edx
   1400018ad:	e8 96 07 00 00       	call   140002048 <_ZNSolsEt>
   1400018b2:	48 89 c1             	mov    %rax,%rcx
   1400018b5:	48 8b 05 b4 3a 00 00 	mov    0x3ab4(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   1400018bc:	48 89 c2             	mov    %rax,%rdx
   1400018bf:	e8 8c 07 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
    TMR0.setPermission(ReWr);
   1400018c4:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   1400018c8:	ba 02 00 00 00       	mov    $0x2,%edx
   1400018cd:	48 89 c1             	mov    %rax,%rcx
   1400018d0:	e8 bb 19 00 00       	call   140003290 <_ZN8RegisterItE13setPermissionEh>
    cout << (uint16)TMR0.setRegisterValue(5) << endl << (uint16)TMR0.getRegisterValue(&var1) << endl << (uint16)var1 << endl << (uint16)TMR0.SetBit(3) << endl << (uint16)TMR0.GetBit(&var1,3) << endl << (uint16)var1 << endl << (uint16)TMR0.ClearBit(3) << endl << (uint16)TMR0.GetBit(&var1,3) << endl << (uint16)var1 << endl;
   1400018d5:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   1400018d9:	ba 05 00 00 00       	mov    $0x5,%edx
   1400018de:	48 89 c1             	mov    %rax,%rcx
   1400018e1:	e8 4a 1c 00 00       	call   140003530 <_ZN8RegisterItE16setRegisterValueEt>
   1400018e6:	0f b6 c0             	movzbl %al,%eax
   1400018e9:	89 c2                	mov    %eax,%edx
   1400018eb:	48 8b 05 6e 3a 00 00 	mov    0x3a6e(%rip),%rax        # 140005360 <__fu0__ZSt4cout>
   1400018f2:	48 89 c1             	mov    %rax,%rcx
   1400018f5:	e8 4e 07 00 00       	call   140002048 <_ZNSolsEt>
   1400018fa:	48 89 c1             	mov    %rax,%rcx
   1400018fd:	48 8b 05 6c 3a 00 00 	mov    0x3a6c(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001904:	48 89 c2             	mov    %rax,%rdx
   140001907:	e8 44 07 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   14000190c:	48 89 c3             	mov    %rax,%rbx
   14000190f:	48 8d 55 f2          	lea    -0xe(%rbp),%rdx
   140001913:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   140001917:	48 89 c1             	mov    %rax,%rcx
   14000191a:	e8 71 1b 00 00       	call   140003490 <_ZN8RegisterItE16getRegisterValueEPt>
   14000191f:	0f b6 c0             	movzbl %al,%eax
   140001922:	89 c2                	mov    %eax,%edx
   140001924:	48 89 d9             	mov    %rbx,%rcx
   140001927:	e8 1c 07 00 00       	call   140002048 <_ZNSolsEt>
   14000192c:	48 89 c1             	mov    %rax,%rcx
   14000192f:	48 8b 05 3a 3a 00 00 	mov    0x3a3a(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001936:	48 89 c2             	mov    %rax,%rdx
   140001939:	e8 12 07 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   14000193e:	48 89 c1             	mov    %rax,%rcx
   140001941:	0f b7 45 f2          	movzwl -0xe(%rbp),%eax
   140001945:	0f b7 c0             	movzwl %ax,%eax
   140001948:	89 c2                	mov    %eax,%edx
   14000194a:	e8 f9 06 00 00       	call   140002048 <_ZNSolsEt>
   14000194f:	48 89 c1             	mov    %rax,%rcx
   140001952:	48 8b 05 17 3a 00 00 	mov    0x3a17(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001959:	48 89 c2             	mov    %rax,%rdx
   14000195c:	e8 ef 06 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001961:	48 89 c3             	mov    %rax,%rbx
   140001964:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   140001968:	ba 03 00 00 00       	mov    $0x3,%edx
   14000196d:	48 89 c1             	mov    %rax,%rcx
   140001970:	e8 2b 1d 00 00       	call   1400036a0 <_ZN8RegisterItE6SetBitEi>
   140001975:	0f b6 c0             	movzbl %al,%eax
   140001978:	89 c2                	mov    %eax,%edx
   14000197a:	48 89 d9             	mov    %rbx,%rcx
   14000197d:	e8 c6 06 00 00       	call   140002048 <_ZNSolsEt>
   140001982:	48 89 c1             	mov    %rax,%rcx
   140001985:	48 8b 05 e4 39 00 00 	mov    0x39e4(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   14000198c:	48 89 c2             	mov    %rax,%rdx
   14000198f:	e8 bc 06 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001994:	48 89 c3             	mov    %rax,%rbx
   140001997:	48 8d 55 f2          	lea    -0xe(%rbp),%rdx
   14000199b:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   14000199f:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   1400019a5:	48 89 c1             	mov    %rax,%rcx
   1400019a8:	e8 23 1c 00 00       	call   1400035d0 <_ZN8RegisterItE6GetBitEPth>
   1400019ad:	0f b6 c0             	movzbl %al,%eax
   1400019b0:	89 c2                	mov    %eax,%edx
   1400019b2:	48 89 d9             	mov    %rbx,%rcx
   1400019b5:	e8 8e 06 00 00       	call   140002048 <_ZNSolsEt>
   1400019ba:	48 89 c1             	mov    %rax,%rcx
   1400019bd:	48 8b 05 ac 39 00 00 	mov    0x39ac(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   1400019c4:	48 89 c2             	mov    %rax,%rdx
   1400019c7:	e8 84 06 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   1400019cc:	48 89 c1             	mov    %rax,%rcx
   1400019cf:	0f b7 45 f2          	movzwl -0xe(%rbp),%eax
   1400019d3:	0f b7 c0             	movzwl %ax,%eax
   1400019d6:	89 c2                	mov    %eax,%edx
   1400019d8:	e8 6b 06 00 00       	call   140002048 <_ZNSolsEt>
   1400019dd:	48 89 c1             	mov    %rax,%rcx
   1400019e0:	48 8b 05 89 39 00 00 	mov    0x3989(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   1400019e7:	48 89 c2             	mov    %rax,%rdx
   1400019ea:	e8 61 06 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   1400019ef:	48 89 c3             	mov    %rax,%rbx
   1400019f2:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   1400019f6:	ba 03 00 00 00       	mov    $0x3,%edx
   1400019fb:	48 89 c1             	mov    %rax,%rcx
   1400019fe:	e8 5d 1d 00 00       	call   140003760 <_ZN8RegisterItE8ClearBitEi>
   140001a03:	0f b6 c0             	movzbl %al,%eax
   140001a06:	89 c2                	mov    %eax,%edx
   140001a08:	48 89 d9             	mov    %rbx,%rcx
   140001a0b:	e8 38 06 00 00       	call   140002048 <_ZNSolsEt>
   140001a10:	48 89 c1             	mov    %rax,%rcx
   140001a13:	48 8b 05 56 39 00 00 	mov    0x3956(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001a1a:	48 89 c2             	mov    %rax,%rdx
   140001a1d:	e8 2e 06 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001a22:	48 89 c3             	mov    %rax,%rbx
   140001a25:	48 8d 55 f2          	lea    -0xe(%rbp),%rdx
   140001a29:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   140001a2d:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   140001a33:	48 89 c1             	mov    %rax,%rcx
   140001a36:	e8 95 1b 00 00       	call   1400035d0 <_ZN8RegisterItE6GetBitEPth>
   140001a3b:	0f b6 c0             	movzbl %al,%eax
   140001a3e:	89 c2                	mov    %eax,%edx
   140001a40:	48 89 d9             	mov    %rbx,%rcx
   140001a43:	e8 00 06 00 00       	call   140002048 <_ZNSolsEt>
   140001a48:	48 89 c1             	mov    %rax,%rcx
   140001a4b:	48 8b 05 1e 39 00 00 	mov    0x391e(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001a52:	48 89 c2             	mov    %rax,%rdx
   140001a55:	e8 f6 05 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001a5a:	48 89 c1             	mov    %rax,%rcx
   140001a5d:	0f b7 45 f2          	movzwl -0xe(%rbp),%eax
   140001a61:	0f b7 c0             	movzwl %ax,%eax
   140001a64:	89 c2                	mov    %eax,%edx
   140001a66:	e8 dd 05 00 00       	call   140002048 <_ZNSolsEt>
   140001a6b:	48 89 c1             	mov    %rax,%rcx
   140001a6e:	48 8b 05 fb 38 00 00 	mov    0x38fb(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001a75:	48 89 c2             	mov    %rax,%rdx
   140001a78:	e8 d3 05 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
    TMR0.setPermission(Res);
   140001a7d:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   140001a81:	ba 00 00 00 00       	mov    $0x0,%edx
   140001a86:	48 89 c1             	mov    %rax,%rcx
   140001a89:	e8 02 18 00 00       	call   140003290 <_ZN8RegisterItE13setPermissionEh>
    cout << (uint16)TMR0.setRegisterValue(5) << endl << (uint16)TMR0.getRegisterValue(&var1) << endl << (uint16)var1 << endl << (uint16)TMR0.SetBit(3) << endl << (uint16)TMR0.GetBit(&var1,3) << endl << (uint16)var1 << endl << (uint16)TMR0.ClearBit(3) << endl << (uint16)TMR0.GetBit(&var1,3) << endl << (uint16)var1 << endl;
   140001a8e:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   140001a92:	ba 05 00 00 00       	mov    $0x5,%edx
   140001a97:	48 89 c1             	mov    %rax,%rcx
   140001a9a:	e8 91 1a 00 00       	call   140003530 <_ZN8RegisterItE16setRegisterValueEt>
   140001a9f:	0f b6 c0             	movzbl %al,%eax
   140001aa2:	89 c2                	mov    %eax,%edx
   140001aa4:	48 8b 05 b5 38 00 00 	mov    0x38b5(%rip),%rax        # 140005360 <__fu0__ZSt4cout>
   140001aab:	48 89 c1             	mov    %rax,%rcx
   140001aae:	e8 95 05 00 00       	call   140002048 <_ZNSolsEt>
   140001ab3:	48 89 c1             	mov    %rax,%rcx
   140001ab6:	48 8b 05 b3 38 00 00 	mov    0x38b3(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001abd:	48 89 c2             	mov    %rax,%rdx
   140001ac0:	e8 8b 05 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001ac5:	48 89 c3             	mov    %rax,%rbx
   140001ac8:	48 8d 55 f2          	lea    -0xe(%rbp),%rdx
   140001acc:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   140001ad0:	48 89 c1             	mov    %rax,%rcx
   140001ad3:	e8 b8 19 00 00       	call   140003490 <_ZN8RegisterItE16getRegisterValueEPt>
   140001ad8:	0f b6 c0             	movzbl %al,%eax
   140001adb:	89 c2                	mov    %eax,%edx
   140001add:	48 89 d9             	mov    %rbx,%rcx
   140001ae0:	e8 63 05 00 00       	call   140002048 <_ZNSolsEt>
   140001ae5:	48 89 c1             	mov    %rax,%rcx
   140001ae8:	48 8b 05 81 38 00 00 	mov    0x3881(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001aef:	48 89 c2             	mov    %rax,%rdx
   140001af2:	e8 59 05 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001af7:	48 89 c1             	mov    %rax,%rcx
   140001afa:	0f b7 45 f2          	movzwl -0xe(%rbp),%eax
   140001afe:	0f b7 c0             	movzwl %ax,%eax
   140001b01:	89 c2                	mov    %eax,%edx
   140001b03:	e8 40 05 00 00       	call   140002048 <_ZNSolsEt>
   140001b08:	48 89 c1             	mov    %rax,%rcx
   140001b0b:	48 8b 05 5e 38 00 00 	mov    0x385e(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001b12:	48 89 c2             	mov    %rax,%rdx
   140001b15:	e8 36 05 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001b1a:	48 89 c3             	mov    %rax,%rbx
   140001b1d:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   140001b21:	ba 03 00 00 00       	mov    $0x3,%edx
   140001b26:	48 89 c1             	mov    %rax,%rcx
   140001b29:	e8 72 1b 00 00       	call   1400036a0 <_ZN8RegisterItE6SetBitEi>
   140001b2e:	0f b6 c0             	movzbl %al,%eax
   140001b31:	89 c2                	mov    %eax,%edx
   140001b33:	48 89 d9             	mov    %rbx,%rcx
   140001b36:	e8 0d 05 00 00       	call   140002048 <_ZNSolsEt>
   140001b3b:	48 89 c1             	mov    %rax,%rcx
   140001b3e:	48 8b 05 2b 38 00 00 	mov    0x382b(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001b45:	48 89 c2             	mov    %rax,%rdx
   140001b48:	e8 03 05 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001b4d:	48 89 c3             	mov    %rax,%rbx
   140001b50:	48 8d 55 f2          	lea    -0xe(%rbp),%rdx
   140001b54:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   140001b58:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   140001b5e:	48 89 c1             	mov    %rax,%rcx
   140001b61:	e8 6a 1a 00 00       	call   1400035d0 <_ZN8RegisterItE6GetBitEPth>
   140001b66:	0f b6 c0             	movzbl %al,%eax
   140001b69:	89 c2                	mov    %eax,%edx
   140001b6b:	48 89 d9             	mov    %rbx,%rcx
   140001b6e:	e8 d5 04 00 00       	call   140002048 <_ZNSolsEt>
   140001b73:	48 89 c1             	mov    %rax,%rcx
   140001b76:	48 8b 05 f3 37 00 00 	mov    0x37f3(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001b7d:	48 89 c2             	mov    %rax,%rdx
   140001b80:	e8 cb 04 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001b85:	48 89 c1             	mov    %rax,%rcx
   140001b88:	0f b7 45 f2          	movzwl -0xe(%rbp),%eax
   140001b8c:	0f b7 c0             	movzwl %ax,%eax
   140001b8f:	89 c2                	mov    %eax,%edx
   140001b91:	e8 b2 04 00 00       	call   140002048 <_ZNSolsEt>
   140001b96:	48 89 c1             	mov    %rax,%rcx
   140001b99:	48 8b 05 d0 37 00 00 	mov    0x37d0(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001ba0:	48 89 c2             	mov    %rax,%rdx
   140001ba3:	e8 a8 04 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001ba8:	48 89 c3             	mov    %rax,%rbx
   140001bab:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   140001baf:	ba 03 00 00 00       	mov    $0x3,%edx
   140001bb4:	48 89 c1             	mov    %rax,%rcx
   140001bb7:	e8 a4 1b 00 00       	call   140003760 <_ZN8RegisterItE8ClearBitEi>
   140001bbc:	0f b6 c0             	movzbl %al,%eax
   140001bbf:	89 c2                	mov    %eax,%edx
   140001bc1:	48 89 d9             	mov    %rbx,%rcx
   140001bc4:	e8 7f 04 00 00       	call   140002048 <_ZNSolsEt>
   140001bc9:	48 89 c1             	mov    %rax,%rcx
   140001bcc:	48 8b 05 9d 37 00 00 	mov    0x379d(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001bd3:	48 89 c2             	mov    %rax,%rdx
   140001bd6:	e8 75 04 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001bdb:	48 89 c3             	mov    %rax,%rbx
   140001bde:	48 8d 55 f2          	lea    -0xe(%rbp),%rdx
   140001be2:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   140001be6:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   140001bec:	48 89 c1             	mov    %rax,%rcx
   140001bef:	e8 dc 19 00 00       	call   1400035d0 <_ZN8RegisterItE6GetBitEPth>
   140001bf4:	0f b6 c0             	movzbl %al,%eax
   140001bf7:	89 c2                	mov    %eax,%edx
   140001bf9:	48 89 d9             	mov    %rbx,%rcx
   140001bfc:	e8 47 04 00 00       	call   140002048 <_ZNSolsEt>
   140001c01:	48 89 c1             	mov    %rax,%rcx
   140001c04:	48 8b 05 65 37 00 00 	mov    0x3765(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001c0b:	48 89 c2             	mov    %rax,%rdx
   140001c0e:	e8 3d 04 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001c13:	48 89 c1             	mov    %rax,%rcx
   140001c16:	0f b7 45 f2          	movzwl -0xe(%rbp),%eax
   140001c1a:	0f b7 c0             	movzwl %ax,%eax
   140001c1d:	89 c2                	mov    %eax,%edx
   140001c1f:	e8 24 04 00 00       	call   140002048 <_ZNSolsEt>
   140001c24:	48 89 c1             	mov    %rax,%rcx
   140001c27:	48 8b 05 42 37 00 00 	mov    0x3742(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001c2e:	48 89 c2             	mov    %rax,%rdx
   140001c31:	e8 1a 04 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
    TMR0.setPermission(3,ReWr);
   140001c36:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   140001c3a:	41 b8 02 00 00 00    	mov    $0x2,%r8d
   140001c40:	ba 03 00 00 00       	mov    $0x3,%edx
   140001c45:	48 89 c1             	mov    %rax,%rcx
   140001c48:	e8 c3 16 00 00       	call   140003310 <_ZN8RegisterItE13setPermissionEhh>
    cout << (uint16)TMR0.setRegisterValue(5) << endl << (uint16)TMR0.getRegisterValue(&var1) << endl << (uint16)var1 << endl << (uint16)TMR0.SetBit(3) << endl << (uint16)TMR0.GetBit(&var1,3) << endl << (uint16)var1 << endl << (uint16)TMR0.ClearBit(3) << endl << (uint16)TMR0.GetBit(&var1,3) << endl << (uint16)var1 << endl;
   140001c4d:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   140001c51:	ba 05 00 00 00       	mov    $0x5,%edx
   140001c56:	48 89 c1             	mov    %rax,%rcx
   140001c59:	e8 d2 18 00 00       	call   140003530 <_ZN8RegisterItE16setRegisterValueEt>
   140001c5e:	0f b6 c0             	movzbl %al,%eax
   140001c61:	89 c2                	mov    %eax,%edx
   140001c63:	48 8b 05 f6 36 00 00 	mov    0x36f6(%rip),%rax        # 140005360 <__fu0__ZSt4cout>
   140001c6a:	48 89 c1             	mov    %rax,%rcx
   140001c6d:	e8 d6 03 00 00       	call   140002048 <_ZNSolsEt>
   140001c72:	48 89 c1             	mov    %rax,%rcx
   140001c75:	48 8b 05 f4 36 00 00 	mov    0x36f4(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001c7c:	48 89 c2             	mov    %rax,%rdx
   140001c7f:	e8 cc 03 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001c84:	48 89 c3             	mov    %rax,%rbx
   140001c87:	48 8d 55 f2          	lea    -0xe(%rbp),%rdx
   140001c8b:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   140001c8f:	48 89 c1             	mov    %rax,%rcx
   140001c92:	e8 f9 17 00 00       	call   140003490 <_ZN8RegisterItE16getRegisterValueEPt>
   140001c97:	0f b6 c0             	movzbl %al,%eax
   140001c9a:	89 c2                	mov    %eax,%edx
   140001c9c:	48 89 d9             	mov    %rbx,%rcx
   140001c9f:	e8 a4 03 00 00       	call   140002048 <_ZNSolsEt>
   140001ca4:	48 89 c1             	mov    %rax,%rcx
   140001ca7:	48 8b 05 c2 36 00 00 	mov    0x36c2(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001cae:	48 89 c2             	mov    %rax,%rdx
   140001cb1:	e8 9a 03 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001cb6:	48 89 c1             	mov    %rax,%rcx
   140001cb9:	0f b7 45 f2          	movzwl -0xe(%rbp),%eax
   140001cbd:	0f b7 c0             	movzwl %ax,%eax
   140001cc0:	89 c2                	mov    %eax,%edx
   140001cc2:	e8 81 03 00 00       	call   140002048 <_ZNSolsEt>
   140001cc7:	48 89 c1             	mov    %rax,%rcx
   140001cca:	48 8b 05 9f 36 00 00 	mov    0x369f(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001cd1:	48 89 c2             	mov    %rax,%rdx
   140001cd4:	e8 77 03 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001cd9:	48 89 c3             	mov    %rax,%rbx
   140001cdc:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   140001ce0:	ba 03 00 00 00       	mov    $0x3,%edx
   140001ce5:	48 89 c1             	mov    %rax,%rcx
   140001ce8:	e8 b3 19 00 00       	call   1400036a0 <_ZN8RegisterItE6SetBitEi>
   140001ced:	0f b6 c0             	movzbl %al,%eax
   140001cf0:	89 c2                	mov    %eax,%edx
   140001cf2:	48 89 d9             	mov    %rbx,%rcx
   140001cf5:	e8 4e 03 00 00       	call   140002048 <_ZNSolsEt>
   140001cfa:	48 89 c1             	mov    %rax,%rcx
   140001cfd:	48 8b 05 6c 36 00 00 	mov    0x366c(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001d04:	48 89 c2             	mov    %rax,%rdx
   140001d07:	e8 44 03 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001d0c:	48 89 c3             	mov    %rax,%rbx
   140001d0f:	48 8d 55 f2          	lea    -0xe(%rbp),%rdx
   140001d13:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   140001d17:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   140001d1d:	48 89 c1             	mov    %rax,%rcx
   140001d20:	e8 ab 18 00 00       	call   1400035d0 <_ZN8RegisterItE6GetBitEPth>
   140001d25:	0f b6 c0             	movzbl %al,%eax
   140001d28:	89 c2                	mov    %eax,%edx
   140001d2a:	48 89 d9             	mov    %rbx,%rcx
   140001d2d:	e8 16 03 00 00       	call   140002048 <_ZNSolsEt>
   140001d32:	48 89 c1             	mov    %rax,%rcx
   140001d35:	48 8b 05 34 36 00 00 	mov    0x3634(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001d3c:	48 89 c2             	mov    %rax,%rdx
   140001d3f:	e8 0c 03 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001d44:	48 89 c1             	mov    %rax,%rcx
   140001d47:	0f b7 45 f2          	movzwl -0xe(%rbp),%eax
   140001d4b:	0f b7 c0             	movzwl %ax,%eax
   140001d4e:	89 c2                	mov    %eax,%edx
   140001d50:	e8 f3 02 00 00       	call   140002048 <_ZNSolsEt>
   140001d55:	48 89 c1             	mov    %rax,%rcx
   140001d58:	48 8b 05 11 36 00 00 	mov    0x3611(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001d5f:	48 89 c2             	mov    %rax,%rdx
   140001d62:	e8 e9 02 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001d67:	48 89 c3             	mov    %rax,%rbx
   140001d6a:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   140001d6e:	ba 03 00 00 00       	mov    $0x3,%edx
   140001d73:	48 89 c1             	mov    %rax,%rcx
   140001d76:	e8 e5 19 00 00       	call   140003760 <_ZN8RegisterItE8ClearBitEi>
   140001d7b:	0f b6 c0             	movzbl %al,%eax
   140001d7e:	89 c2                	mov    %eax,%edx
   140001d80:	48 89 d9             	mov    %rbx,%rcx
   140001d83:	e8 c0 02 00 00       	call   140002048 <_ZNSolsEt>
   140001d88:	48 89 c1             	mov    %rax,%rcx
   140001d8b:	48 8b 05 de 35 00 00 	mov    0x35de(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001d92:	48 89 c2             	mov    %rax,%rdx
   140001d95:	e8 b6 02 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001d9a:	48 89 c3             	mov    %rax,%rbx
   140001d9d:	48 8d 55 f2          	lea    -0xe(%rbp),%rdx
   140001da1:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   140001da5:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   140001dab:	48 89 c1             	mov    %rax,%rcx
   140001dae:	e8 1d 18 00 00       	call   1400035d0 <_ZN8RegisterItE6GetBitEPth>
   140001db3:	0f b6 c0             	movzbl %al,%eax
   140001db6:	89 c2                	mov    %eax,%edx
   140001db8:	48 89 d9             	mov    %rbx,%rcx
   140001dbb:	e8 88 02 00 00       	call   140002048 <_ZNSolsEt>
   140001dc0:	48 89 c1             	mov    %rax,%rcx
   140001dc3:	48 8b 05 a6 35 00 00 	mov    0x35a6(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001dca:	48 89 c2             	mov    %rax,%rdx
   140001dcd:	e8 7e 02 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001dd2:	48 89 c1             	mov    %rax,%rcx
   140001dd5:	0f b7 45 f2          	movzwl -0xe(%rbp),%eax
   140001dd9:	0f b7 c0             	movzwl %ax,%eax
   140001ddc:	89 c2                	mov    %eax,%edx
   140001dde:	e8 65 02 00 00       	call   140002048 <_ZNSolsEt>
   140001de3:	48 89 c1             	mov    %rax,%rcx
   140001de6:	48 8b 05 83 35 00 00 	mov    0x3583(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001ded:	48 89 c2             	mov    %rax,%rdx
   140001df0:	e8 5b 02 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
    cout << (uint16)TMR0.setRegisterValue(5) << endl << (uint16)TMR0.getRegisterValue(&var1) << endl << (uint16)var1 << endl << (uint16)TMR0.SetBit(4) << endl << (uint16)TMR0.GetBit(&var1,4) << endl << (uint16)var1 << endl << (uint16)TMR0.ClearBit(4) << endl << (uint16)TMR0.GetBit(&var1,4) << endl << (uint16)var1 << endl;
   140001df5:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   140001df9:	ba 05 00 00 00       	mov    $0x5,%edx
   140001dfe:	48 89 c1             	mov    %rax,%rcx
   140001e01:	e8 2a 17 00 00       	call   140003530 <_ZN8RegisterItE16setRegisterValueEt>
   140001e06:	0f b6 c0             	movzbl %al,%eax
   140001e09:	89 c2                	mov    %eax,%edx
   140001e0b:	48 8b 05 4e 35 00 00 	mov    0x354e(%rip),%rax        # 140005360 <__fu0__ZSt4cout>
   140001e12:	48 89 c1             	mov    %rax,%rcx
   140001e15:	e8 2e 02 00 00       	call   140002048 <_ZNSolsEt>
   140001e1a:	48 89 c1             	mov    %rax,%rcx
   140001e1d:	48 8b 05 4c 35 00 00 	mov    0x354c(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001e24:	48 89 c2             	mov    %rax,%rdx
   140001e27:	e8 24 02 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001e2c:	48 89 c3             	mov    %rax,%rbx
   140001e2f:	48 8d 55 f2          	lea    -0xe(%rbp),%rdx
   140001e33:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   140001e37:	48 89 c1             	mov    %rax,%rcx
   140001e3a:	e8 51 16 00 00       	call   140003490 <_ZN8RegisterItE16getRegisterValueEPt>
   140001e3f:	0f b6 c0             	movzbl %al,%eax
   140001e42:	89 c2                	mov    %eax,%edx
   140001e44:	48 89 d9             	mov    %rbx,%rcx
   140001e47:	e8 fc 01 00 00       	call   140002048 <_ZNSolsEt>
   140001e4c:	48 89 c1             	mov    %rax,%rcx
   140001e4f:	48 8b 05 1a 35 00 00 	mov    0x351a(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001e56:	48 89 c2             	mov    %rax,%rdx
   140001e59:	e8 f2 01 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001e5e:	48 89 c1             	mov    %rax,%rcx
   140001e61:	0f b7 45 f2          	movzwl -0xe(%rbp),%eax
   140001e65:	0f b7 c0             	movzwl %ax,%eax
   140001e68:	89 c2                	mov    %eax,%edx
   140001e6a:	e8 d9 01 00 00       	call   140002048 <_ZNSolsEt>
   140001e6f:	48 89 c1             	mov    %rax,%rcx
   140001e72:	48 8b 05 f7 34 00 00 	mov    0x34f7(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001e79:	48 89 c2             	mov    %rax,%rdx
   140001e7c:	e8 cf 01 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001e81:	48 89 c3             	mov    %rax,%rbx
   140001e84:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   140001e88:	ba 04 00 00 00       	mov    $0x4,%edx
   140001e8d:	48 89 c1             	mov    %rax,%rcx
   140001e90:	e8 0b 18 00 00       	call   1400036a0 <_ZN8RegisterItE6SetBitEi>
   140001e95:	0f b6 c0             	movzbl %al,%eax
   140001e98:	89 c2                	mov    %eax,%edx
   140001e9a:	48 89 d9             	mov    %rbx,%rcx
   140001e9d:	e8 a6 01 00 00       	call   140002048 <_ZNSolsEt>
   140001ea2:	48 89 c1             	mov    %rax,%rcx
   140001ea5:	48 8b 05 c4 34 00 00 	mov    0x34c4(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001eac:	48 89 c2             	mov    %rax,%rdx
   140001eaf:	e8 9c 01 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001eb4:	48 89 c3             	mov    %rax,%rbx
   140001eb7:	48 8d 55 f2          	lea    -0xe(%rbp),%rdx
   140001ebb:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   140001ebf:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140001ec5:	48 89 c1             	mov    %rax,%rcx
   140001ec8:	e8 03 17 00 00       	call   1400035d0 <_ZN8RegisterItE6GetBitEPth>
   140001ecd:	0f b6 c0             	movzbl %al,%eax
   140001ed0:	89 c2                	mov    %eax,%edx
   140001ed2:	48 89 d9             	mov    %rbx,%rcx
   140001ed5:	e8 6e 01 00 00       	call   140002048 <_ZNSolsEt>
   140001eda:	48 89 c1             	mov    %rax,%rcx
   140001edd:	48 8b 05 8c 34 00 00 	mov    0x348c(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001ee4:	48 89 c2             	mov    %rax,%rdx
   140001ee7:	e8 64 01 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001eec:	48 89 c1             	mov    %rax,%rcx
   140001eef:	0f b7 45 f2          	movzwl -0xe(%rbp),%eax
   140001ef3:	0f b7 c0             	movzwl %ax,%eax
   140001ef6:	89 c2                	mov    %eax,%edx
   140001ef8:	e8 4b 01 00 00       	call   140002048 <_ZNSolsEt>
   140001efd:	48 89 c1             	mov    %rax,%rcx
   140001f00:	48 8b 05 69 34 00 00 	mov    0x3469(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001f07:	48 89 c2             	mov    %rax,%rdx
   140001f0a:	e8 41 01 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001f0f:	48 89 c3             	mov    %rax,%rbx
   140001f12:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   140001f16:	ba 04 00 00 00       	mov    $0x4,%edx
   140001f1b:	48 89 c1             	mov    %rax,%rcx
   140001f1e:	e8 3d 18 00 00       	call   140003760 <_ZN8RegisterItE8ClearBitEi>
   140001f23:	0f b6 c0             	movzbl %al,%eax
   140001f26:	89 c2                	mov    %eax,%edx
   140001f28:	48 89 d9             	mov    %rbx,%rcx
   140001f2b:	e8 18 01 00 00       	call   140002048 <_ZNSolsEt>
   140001f30:	48 89 c1             	mov    %rax,%rcx
   140001f33:	48 8b 05 36 34 00 00 	mov    0x3436(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001f3a:	48 89 c2             	mov    %rax,%rdx
   140001f3d:	e8 0e 01 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001f42:	48 89 c3             	mov    %rax,%rbx
   140001f45:	48 8d 55 f2          	lea    -0xe(%rbp),%rdx
   140001f49:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
   140001f4d:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140001f53:	48 89 c1             	mov    %rax,%rcx
   140001f56:	e8 75 16 00 00       	call   1400035d0 <_ZN8RegisterItE6GetBitEPth>
   140001f5b:	0f b6 c0             	movzbl %al,%eax
   140001f5e:	89 c2                	mov    %eax,%edx
   140001f60:	48 89 d9             	mov    %rbx,%rcx
   140001f63:	e8 e0 00 00 00       	call   140002048 <_ZNSolsEt>
   140001f68:	48 89 c1             	mov    %rax,%rcx
   140001f6b:	48 8b 05 fe 33 00 00 	mov    0x33fe(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001f72:	48 89 c2             	mov    %rax,%rdx
   140001f75:	e8 d6 00 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
   140001f7a:	48 89 c1             	mov    %rax,%rcx
   140001f7d:	0f b7 45 f2          	movzwl -0xe(%rbp),%eax
   140001f81:	0f b7 c0             	movzwl %ax,%eax
   140001f84:	89 c2                	mov    %eax,%edx
   140001f86:	e8 bd 00 00 00       	call   140002048 <_ZNSolsEt>
   140001f8b:	48 89 c1             	mov    %rax,%rcx
   140001f8e:	48 8b 05 db 33 00 00 	mov    0x33db(%rip),%rax        # 140005370 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001f95:	48 89 c2             	mov    %rax,%rdx
   140001f98:	e8 b3 00 00 00       	call   140002050 <_ZNSolsEPFRSoS_E>
    ARM.display();
    r = ARM.GetBit(9);
    ARM.display();
    ARM.SetBit(3);
    ARM.display();*/
    return 0;
   140001f9d:	b8 00 00 00 00       	mov    $0x0,%eax
   140001fa2:	48 83 c4 38          	add    $0x38,%rsp
   140001fa6:	5b                   	pop    %rbx
   140001fa7:	5d                   	pop    %rbp
   140001fa8:	c3                   	ret    

0000000140001fa9 <__tcf_0>:
  extern wostream wclog;	/// Linked to standard error (buffered)
#endif
  ///@}

  // For construction of filebuffers for cout, cin, cerr, clog et. al.
  static ios_base::Init __ioinit;
   140001fa9:	55                   	push   %rbp
   140001faa:	48 89 e5             	mov    %rsp,%rbp
   140001fad:	48 83 ec 20          	sub    $0x20,%rsp
   140001fb1:	48 8d 05 88 60 00 00 	lea    0x6088(%rip),%rax        # 140008040 <_ZStL8__ioinit>
   140001fb8:	48 89 c1             	mov    %rax,%rcx
   140001fbb:	e8 78 00 00 00       	call   140002038 <_ZNSt8ios_base4InitD1Ev>
   140001fc0:	90                   	nop
   140001fc1:	48 83 c4 20          	add    $0x20,%rsp
   140001fc5:	5d                   	pop    %rbp
   140001fc6:	c3                   	ret    

0000000140001fc7 <_Z41__static_initialization_and_destruction_0ii>:
   140001fc7:	55                   	push   %rbp
   140001fc8:	48 89 e5             	mov    %rsp,%rbp
   140001fcb:	48 83 ec 20          	sub    $0x20,%rsp
   140001fcf:	89 4d 10             	mov    %ecx,0x10(%rbp)
   140001fd2:	89 55 18             	mov    %edx,0x18(%rbp)
   140001fd5:	83 7d 10 01          	cmpl   $0x1,0x10(%rbp)
   140001fd9:	75 27                	jne    140002002 <_Z41__static_initialization_and_destruction_0ii+0x3b>
   140001fdb:	81 7d 18 ff ff 00 00 	cmpl   $0xffff,0x18(%rbp)
   140001fe2:	75 1e                	jne    140002002 <_Z41__static_initialization_and_destruction_0ii+0x3b>
   140001fe4:	48 8d 05 55 60 00 00 	lea    0x6055(%rip),%rax        # 140008040 <_ZStL8__ioinit>
   140001feb:	48 89 c1             	mov    %rax,%rcx
   140001fee:	e8 4d 00 00 00       	call   140002040 <_ZNSt8ios_base4InitC1Ev>
   140001ff3:	48 8d 05 af ff ff ff 	lea    -0x51(%rip),%rax        # 140001fa9 <__tcf_0>
   140001ffa:	48 89 c1             	mov    %rax,%rcx
   140001ffd:	e8 ee f4 ff ff       	call   1400014f0 <atexit>
   140002002:	90                   	nop
   140002003:	48 83 c4 20          	add    $0x20,%rsp
   140002007:	5d                   	pop    %rbp
   140002008:	c3                   	ret    

0000000140002009 <_GLOBAL__sub_I_main>:
   140002009:	55                   	push   %rbp
   14000200a:	48 89 e5             	mov    %rsp,%rbp
   14000200d:	48 83 ec 20          	sub    $0x20,%rsp
   140002011:	ba ff ff 00 00       	mov    $0xffff,%edx
   140002016:	b9 01 00 00 00       	mov    $0x1,%ecx
   14000201b:	e8 a7 ff ff ff       	call   140001fc7 <_Z41__static_initialization_and_destruction_0ii>
   140002020:	90                   	nop
   140002021:	48 83 c4 20          	add    $0x20,%rsp
   140002025:	5d                   	pop    %rbp
   140002026:	c3                   	ret    
   140002027:	90                   	nop
   140002028:	90                   	nop
   140002029:	90                   	nop
   14000202a:	90                   	nop
   14000202b:	90                   	nop
   14000202c:	90                   	nop
   14000202d:	90                   	nop
   14000202e:	90                   	nop
   14000202f:	90                   	nop

0000000140002030 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>:
   140002030:	ff 25 da 72 00 00    	jmp    *0x72da(%rip)        # 140009310 <__imp__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140002036:	90                   	nop
   140002037:	90                   	nop

0000000140002038 <_ZNSt8ios_base4InitD1Ev>:
   140002038:	ff 25 c2 72 00 00    	jmp    *0x72c2(%rip)        # 140009300 <__imp__ZNSt8ios_base4InitD1Ev>
   14000203e:	90                   	nop
   14000203f:	90                   	nop

0000000140002040 <_ZNSt8ios_base4InitC1Ev>:
   140002040:	ff 25 b2 72 00 00    	jmp    *0x72b2(%rip)        # 1400092f8 <__imp__ZNSt8ios_base4InitC1Ev>
   140002046:	90                   	nop
   140002047:	90                   	nop

0000000140002048 <_ZNSolsEt>:
   140002048:	ff 25 a2 72 00 00    	jmp    *0x72a2(%rip)        # 1400092f0 <__imp__ZNSolsEt>
   14000204e:	90                   	nop
   14000204f:	90                   	nop

0000000140002050 <_ZNSolsEPFRSoS_E>:
   140002050:	ff 25 92 72 00 00    	jmp    *0x7292(%rip)        # 1400092e8 <__imp__ZNSolsEPFRSoS_E>
   140002056:	90                   	nop
   140002057:	90                   	nop
   140002058:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000205f:	00 

0000000140002060 <__do_global_dtors>:
   140002060:	48 83 ec 28          	sub    $0x28,%rsp
   140002064:	48 8b 05 a5 1f 00 00 	mov    0x1fa5(%rip),%rax        # 140004010 <p.0>
   14000206b:	48 8b 00             	mov    (%rax),%rax
   14000206e:	48 85 c0             	test   %rax,%rax
   140002071:	74 22                	je     140002095 <__do_global_dtors+0x35>
   140002073:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002078:	ff d0                	call   *%rax
   14000207a:	48 8b 05 8f 1f 00 00 	mov    0x1f8f(%rip),%rax        # 140004010 <p.0>
   140002081:	48 8d 50 08          	lea    0x8(%rax),%rdx
   140002085:	48 8b 40 08          	mov    0x8(%rax),%rax
   140002089:	48 89 15 80 1f 00 00 	mov    %rdx,0x1f80(%rip)        # 140004010 <p.0>
   140002090:	48 85 c0             	test   %rax,%rax
   140002093:	75 e3                	jne    140002078 <__do_global_dtors+0x18>
   140002095:	48 83 c4 28          	add    $0x28,%rsp
   140002099:	c3                   	ret    
   14000209a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400020a0 <__do_global_ctors>:
   1400020a0:	56                   	push   %rsi
   1400020a1:	53                   	push   %rbx
   1400020a2:	48 83 ec 28          	sub    $0x28,%rsp
   1400020a6:	48 8b 15 d3 32 00 00 	mov    0x32d3(%rip),%rdx        # 140005380 <.refptr.__CTOR_LIST__>
   1400020ad:	48 8b 02             	mov    (%rdx),%rax
   1400020b0:	89 c1                	mov    %eax,%ecx
   1400020b2:	83 f8 ff             	cmp    $0xffffffff,%eax
   1400020b5:	74 39                	je     1400020f0 <__do_global_ctors+0x50>
   1400020b7:	85 c9                	test   %ecx,%ecx
   1400020b9:	74 20                	je     1400020db <__do_global_ctors+0x3b>
   1400020bb:	89 c8                	mov    %ecx,%eax
   1400020bd:	83 e9 01             	sub    $0x1,%ecx
   1400020c0:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   1400020c4:	48 29 c8             	sub    %rcx,%rax
   1400020c7:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   1400020cc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400020d0:	ff 13                	call   *(%rbx)
   1400020d2:	48 83 eb 08          	sub    $0x8,%rbx
   1400020d6:	48 39 f3             	cmp    %rsi,%rbx
   1400020d9:	75 f5                	jne    1400020d0 <__do_global_ctors+0x30>
   1400020db:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 140002060 <__do_global_dtors>
   1400020e2:	48 83 c4 28          	add    $0x28,%rsp
   1400020e6:	5b                   	pop    %rbx
   1400020e7:	5e                   	pop    %rsi
   1400020e8:	e9 03 f4 ff ff       	jmp    1400014f0 <atexit>
   1400020ed:	0f 1f 00             	nopl   (%rax)
   1400020f0:	31 c0                	xor    %eax,%eax
   1400020f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400020f8:	44 8d 40 01          	lea    0x1(%rax),%r8d
   1400020fc:	89 c1                	mov    %eax,%ecx
   1400020fe:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   140002103:	4c 89 c0             	mov    %r8,%rax
   140002106:	75 f0                	jne    1400020f8 <__do_global_ctors+0x58>
   140002108:	eb ad                	jmp    1400020b7 <__do_global_ctors+0x17>
   14000210a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140002110 <__main>:
   140002110:	8b 05 3a 5f 00 00    	mov    0x5f3a(%rip),%eax        # 140008050 <initialized>
   140002116:	85 c0                	test   %eax,%eax
   140002118:	74 06                	je     140002120 <__main+0x10>
   14000211a:	c3                   	ret    
   14000211b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002120:	c7 05 26 5f 00 00 01 	movl   $0x1,0x5f26(%rip)        # 140008050 <initialized>
   140002127:	00 00 00 
   14000212a:	e9 71 ff ff ff       	jmp    1400020a0 <__do_global_ctors>
   14000212f:	90                   	nop

0000000140002130 <_setargv>:
   140002130:	31 c0                	xor    %eax,%eax
   140002132:	c3                   	ret    
   140002133:	90                   	nop
   140002134:	90                   	nop
   140002135:	90                   	nop
   140002136:	90                   	nop
   140002137:	90                   	nop
   140002138:	90                   	nop
   140002139:	90                   	nop
   14000213a:	90                   	nop
   14000213b:	90                   	nop
   14000213c:	90                   	nop
   14000213d:	90                   	nop
   14000213e:	90                   	nop
   14000213f:	90                   	nop

0000000140002140 <__dyn_tls_dtor>:
   140002140:	48 83 ec 28          	sub    $0x28,%rsp
   140002144:	83 fa 03             	cmp    $0x3,%edx
   140002147:	74 17                	je     140002160 <__dyn_tls_dtor+0x20>
   140002149:	85 d2                	test   %edx,%edx
   14000214b:	74 13                	je     140002160 <__dyn_tls_dtor+0x20>
   14000214d:	b8 01 00 00 00       	mov    $0x1,%eax
   140002152:	48 83 c4 28          	add    $0x28,%rsp
   140002156:	c3                   	ret    
   140002157:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000215e:	00 00 
   140002160:	e8 9b 0a 00 00       	call   140002c00 <__mingw_TLScallback>
   140002165:	b8 01 00 00 00       	mov    $0x1,%eax
   14000216a:	48 83 c4 28          	add    $0x28,%rsp
   14000216e:	c3                   	ret    
   14000216f:	90                   	nop

0000000140002170 <__dyn_tls_init>:
   140002170:	56                   	push   %rsi
   140002171:	53                   	push   %rbx
   140002172:	48 83 ec 28          	sub    $0x28,%rsp
   140002176:	48 8b 05 c3 31 00 00 	mov    0x31c3(%rip),%rax        # 140005340 <.refptr._CRT_MT>
   14000217d:	83 38 02             	cmpl   $0x2,(%rax)
   140002180:	74 06                	je     140002188 <__dyn_tls_init+0x18>
   140002182:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   140002188:	83 fa 02             	cmp    $0x2,%edx
   14000218b:	74 13                	je     1400021a0 <__dyn_tls_init+0x30>
   14000218d:	83 fa 01             	cmp    $0x1,%edx
   140002190:	74 4e                	je     1400021e0 <__dyn_tls_init+0x70>
   140002192:	b8 01 00 00 00       	mov    $0x1,%eax
   140002197:	48 83 c4 28          	add    $0x28,%rsp
   14000219b:	5b                   	pop    %rbx
   14000219c:	5e                   	pop    %rsi
   14000219d:	c3                   	ret    
   14000219e:	66 90                	xchg   %ax,%ax
   1400021a0:	48 8d 1d b1 7e 00 00 	lea    0x7eb1(%rip),%rbx        # 14000a058 <__xd_z>
   1400021a7:	48 8d 35 aa 7e 00 00 	lea    0x7eaa(%rip),%rsi        # 14000a058 <__xd_z>
   1400021ae:	48 39 de             	cmp    %rbx,%rsi
   1400021b1:	74 df                	je     140002192 <__dyn_tls_init+0x22>
   1400021b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400021b8:	48 8b 03             	mov    (%rbx),%rax
   1400021bb:	48 85 c0             	test   %rax,%rax
   1400021be:	74 02                	je     1400021c2 <__dyn_tls_init+0x52>
   1400021c0:	ff d0                	call   *%rax
   1400021c2:	48 83 c3 08          	add    $0x8,%rbx
   1400021c6:	48 39 de             	cmp    %rbx,%rsi
   1400021c9:	75 ed                	jne    1400021b8 <__dyn_tls_init+0x48>
   1400021cb:	b8 01 00 00 00       	mov    $0x1,%eax
   1400021d0:	48 83 c4 28          	add    $0x28,%rsp
   1400021d4:	5b                   	pop    %rbx
   1400021d5:	5e                   	pop    %rsi
   1400021d6:	c3                   	ret    
   1400021d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400021de:	00 00 
   1400021e0:	e8 1b 0a 00 00       	call   140002c00 <__mingw_TLScallback>
   1400021e5:	b8 01 00 00 00       	mov    $0x1,%eax
   1400021ea:	48 83 c4 28          	add    $0x28,%rsp
   1400021ee:	5b                   	pop    %rbx
   1400021ef:	5e                   	pop    %rsi
   1400021f0:	c3                   	ret    
   1400021f1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400021f8:	00 00 00 00 
   1400021fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002200 <__tlregdtor>:
   140002200:	31 c0                	xor    %eax,%eax
   140002202:	c3                   	ret    
   140002203:	90                   	nop
   140002204:	90                   	nop
   140002205:	90                   	nop
   140002206:	90                   	nop
   140002207:	90                   	nop
   140002208:	90                   	nop
   140002209:	90                   	nop
   14000220a:	90                   	nop
   14000220b:	90                   	nop
   14000220c:	90                   	nop
   14000220d:	90                   	nop
   14000220e:	90                   	nop
   14000220f:	90                   	nop

0000000140002210 <_matherr>:
   140002210:	56                   	push   %rsi
   140002211:	53                   	push   %rbx
   140002212:	48 83 ec 78          	sub    $0x78,%rsp
   140002216:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
   14000221b:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
   140002220:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
   140002226:	83 39 06             	cmpl   $0x6,(%rcx)
   140002229:	0f 87 cd 00 00 00    	ja     1400022fc <_matherr+0xec>
   14000222f:	8b 01                	mov    (%rcx),%eax
   140002231:	48 8d 15 4c 2f 00 00 	lea    0x2f4c(%rip),%rdx        # 140005184 <.rdata+0x124>
   140002238:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   14000223c:	48 01 d0             	add    %rdx,%rax
   14000223f:	ff e0                	jmp    *%rax
   140002241:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002248:	48 8d 1d 30 2e 00 00 	lea    0x2e30(%rip),%rbx        # 14000507f <.rdata+0x1f>
   14000224f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   140002255:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   14000225a:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   14000225f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   140002263:	b9 02 00 00 00       	mov    $0x2,%ecx
   140002268:	e8 f3 0e 00 00       	call   140003160 <__acrt_iob_func>
   14000226d:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   140002274:	49 89 d8             	mov    %rbx,%r8
   140002277:	48 8d 15 da 2e 00 00 	lea    0x2eda(%rip),%rdx        # 140005158 <.rdata+0xf8>
   14000227e:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   140002284:	48 89 c1             	mov    %rax,%rcx
   140002287:	49 89 f1             	mov    %rsi,%r9
   14000228a:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   140002290:	e8 4b 0f 00 00       	call   1400031e0 <fprintf>
   140002295:	90                   	nop
   140002296:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
   14000229b:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
   1400022a0:	31 c0                	xor    %eax,%eax
   1400022a2:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
   1400022a8:	48 83 c4 78          	add    $0x78,%rsp
   1400022ac:	5b                   	pop    %rbx
   1400022ad:	5e                   	pop    %rsi
   1400022ae:	c3                   	ret    
   1400022af:	90                   	nop
   1400022b0:	48 8d 1d a9 2d 00 00 	lea    0x2da9(%rip),%rbx        # 140005060 <.rdata>
   1400022b7:	eb 96                	jmp    14000224f <_matherr+0x3f>
   1400022b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400022c0:	48 8d 1d f9 2d 00 00 	lea    0x2df9(%rip),%rbx        # 1400050c0 <.rdata+0x60>
   1400022c7:	eb 86                	jmp    14000224f <_matherr+0x3f>
   1400022c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400022d0:	48 8d 1d c9 2d 00 00 	lea    0x2dc9(%rip),%rbx        # 1400050a0 <.rdata+0x40>
   1400022d7:	e9 73 ff ff ff       	jmp    14000224f <_matherr+0x3f>
   1400022dc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400022e0:	48 8d 1d 29 2e 00 00 	lea    0x2e29(%rip),%rbx        # 140005110 <.rdata+0xb0>
   1400022e7:	e9 63 ff ff ff       	jmp    14000224f <_matherr+0x3f>
   1400022ec:	0f 1f 40 00          	nopl   0x0(%rax)
   1400022f0:	48 8d 1d f1 2d 00 00 	lea    0x2df1(%rip),%rbx        # 1400050e8 <.rdata+0x88>
   1400022f7:	e9 53 ff ff ff       	jmp    14000224f <_matherr+0x3f>
   1400022fc:	48 8d 1d 43 2e 00 00 	lea    0x2e43(%rip),%rbx        # 140005146 <.rdata+0xe6>
   140002303:	e9 47 ff ff ff       	jmp    14000224f <_matherr+0x3f>
   140002308:	90                   	nop
   140002309:	90                   	nop
   14000230a:	90                   	nop
   14000230b:	90                   	nop
   14000230c:	90                   	nop
   14000230d:	90                   	nop
   14000230e:	90                   	nop
   14000230f:	90                   	nop

0000000140002310 <_fpreset>:
   140002310:	db e3                	fninit 
   140002312:	c3                   	ret    
   140002313:	90                   	nop
   140002314:	90                   	nop
   140002315:	90                   	nop
   140002316:	90                   	nop
   140002317:	90                   	nop
   140002318:	90                   	nop
   140002319:	90                   	nop
   14000231a:	90                   	nop
   14000231b:	90                   	nop
   14000231c:	90                   	nop
   14000231d:	90                   	nop
   14000231e:	90                   	nop
   14000231f:	90                   	nop

0000000140002320 <__report_error>:
   140002320:	41 54                	push   %r12
   140002322:	53                   	push   %rbx
   140002323:	48 83 ec 38          	sub    $0x38,%rsp
   140002327:	49 89 cc             	mov    %rcx,%r12
   14000232a:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   14000232f:	b9 02 00 00 00       	mov    $0x2,%ecx
   140002334:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140002339:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000233e:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140002343:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140002348:	e8 13 0e 00 00       	call   140003160 <__acrt_iob_func>
   14000234d:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   140002353:	ba 01 00 00 00       	mov    $0x1,%edx
   140002358:	48 8d 0d 41 2e 00 00 	lea    0x2e41(%rip),%rcx        # 1400051a0 <.rdata>
   14000235f:	49 89 c1             	mov    %rax,%r9
   140002362:	e8 89 0e 00 00       	call   1400031f0 <fwrite>
   140002367:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
   14000236c:	b9 02 00 00 00       	mov    $0x2,%ecx
   140002371:	e8 ea 0d 00 00       	call   140003160 <__acrt_iob_func>
   140002376:	4c 89 e2             	mov    %r12,%rdx
   140002379:	48 89 c1             	mov    %rax,%rcx
   14000237c:	49 89 d8             	mov    %rbx,%r8
   14000237f:	e8 9c 0e 00 00       	call   140003220 <vfprintf>
   140002384:	e8 3f 0e 00 00       	call   1400031c8 <abort>
   140002389:	90                   	nop
   14000238a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140002390 <mark_section_writable>:
   140002390:	41 54                	push   %r12
   140002392:	56                   	push   %rsi
   140002393:	53                   	push   %rbx
   140002394:	48 83 ec 50          	sub    $0x50,%rsp
   140002398:	48 63 1d 15 5d 00 00 	movslq 0x5d15(%rip),%rbx        # 1400080b4 <maxSections>
   14000239f:	49 89 cc             	mov    %rcx,%r12
   1400023a2:	85 db                	test   %ebx,%ebx
   1400023a4:	0f 8e 16 01 00 00    	jle    1400024c0 <mark_section_writable+0x130>
   1400023aa:	48 8b 05 07 5d 00 00 	mov    0x5d07(%rip),%rax        # 1400080b8 <the_secs>
   1400023b1:	45 31 c9             	xor    %r9d,%r9d
   1400023b4:	48 83 c0 18          	add    $0x18,%rax
   1400023b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400023bf:	00 
   1400023c0:	4c 8b 00             	mov    (%rax),%r8
   1400023c3:	4d 39 e0             	cmp    %r12,%r8
   1400023c6:	77 13                	ja     1400023db <mark_section_writable+0x4b>
   1400023c8:	48 8b 50 08          	mov    0x8(%rax),%rdx
   1400023cc:	8b 52 08             	mov    0x8(%rdx),%edx
   1400023cf:	49 01 d0             	add    %rdx,%r8
   1400023d2:	4d 39 c4             	cmp    %r8,%r12
   1400023d5:	0f 82 8a 00 00 00    	jb     140002465 <mark_section_writable+0xd5>
   1400023db:	41 83 c1 01          	add    $0x1,%r9d
   1400023df:	48 83 c0 28          	add    $0x28,%rax
   1400023e3:	41 39 d9             	cmp    %ebx,%r9d
   1400023e6:	75 d8                	jne    1400023c0 <mark_section_writable+0x30>
   1400023e8:	4c 89 e1             	mov    %r12,%rcx
   1400023eb:	e8 20 0a 00 00       	call   140002e10 <__mingw_GetSectionForAddress>
   1400023f0:	48 89 c6             	mov    %rax,%rsi
   1400023f3:	48 85 c0             	test   %rax,%rax
   1400023f6:	0f 84 e6 00 00 00    	je     1400024e2 <mark_section_writable+0x152>
   1400023fc:	48 8b 05 b5 5c 00 00 	mov    0x5cb5(%rip),%rax        # 1400080b8 <the_secs>
   140002403:	48 8d 1c 9b          	lea    (%rbx,%rbx,4),%rbx
   140002407:	48 c1 e3 03          	shl    $0x3,%rbx
   14000240b:	48 01 d8             	add    %rbx,%rax
   14000240e:	48 89 70 20          	mov    %rsi,0x20(%rax)
   140002412:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140002418:	e8 23 0b 00 00       	call   140002f40 <_GetPEImageBase>
   14000241d:	8b 56 0c             	mov    0xc(%rsi),%edx
   140002420:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   140002426:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   14000242a:	48 8b 05 87 5c 00 00 	mov    0x5c87(%rip),%rax        # 1400080b8 <the_secs>
   140002431:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140002436:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   14000243b:	ff 15 c7 6d 00 00    	call   *0x6dc7(%rip)        # 140009208 <__imp_VirtualQuery>
   140002441:	48 85 c0             	test   %rax,%rax
   140002444:	0f 84 7d 00 00 00    	je     1400024c7 <mark_section_writable+0x137>
   14000244a:	8b 44 24 44          	mov    0x44(%rsp),%eax
   14000244e:	8d 50 c0             	lea    -0x40(%rax),%edx
   140002451:	83 e2 bf             	and    $0xffffffbf,%edx
   140002454:	74 08                	je     14000245e <mark_section_writable+0xce>
   140002456:	8d 50 fc             	lea    -0x4(%rax),%edx
   140002459:	83 e2 fb             	and    $0xfffffffb,%edx
   14000245c:	75 12                	jne    140002470 <mark_section_writable+0xe0>
   14000245e:	83 05 4f 5c 00 00 01 	addl   $0x1,0x5c4f(%rip)        # 1400080b4 <maxSections>
   140002465:	48 83 c4 50          	add    $0x50,%rsp
   140002469:	5b                   	pop    %rbx
   14000246a:	5e                   	pop    %rsi
   14000246b:	41 5c                	pop    %r12
   14000246d:	c3                   	ret    
   14000246e:	66 90                	xchg   %ax,%ax
   140002470:	83 f8 02             	cmp    $0x2,%eax
   140002473:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140002478:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   14000247d:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140002483:	b8 40 00 00 00       	mov    $0x40,%eax
   140002488:	44 0f 45 c0          	cmovne %eax,%r8d
   14000248c:	48 03 1d 25 5c 00 00 	add    0x5c25(%rip),%rbx        # 1400080b8 <the_secs>
   140002493:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   140002497:	49 89 d9             	mov    %rbx,%r9
   14000249a:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   14000249e:	ff 15 5c 6d 00 00    	call   *0x6d5c(%rip)        # 140009200 <__imp_VirtualProtect>
   1400024a4:	85 c0                	test   %eax,%eax
   1400024a6:	75 b6                	jne    14000245e <mark_section_writable+0xce>
   1400024a8:	ff 15 1a 6d 00 00    	call   *0x6d1a(%rip)        # 1400091c8 <__imp_GetLastError>
   1400024ae:	48 8d 0d 63 2d 00 00 	lea    0x2d63(%rip),%rcx        # 140005218 <.rdata+0x78>
   1400024b5:	89 c2                	mov    %eax,%edx
   1400024b7:	e8 64 fe ff ff       	call   140002320 <__report_error>
   1400024bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400024c0:	31 db                	xor    %ebx,%ebx
   1400024c2:	e9 21 ff ff ff       	jmp    1400023e8 <mark_section_writable+0x58>
   1400024c7:	48 8b 05 ea 5b 00 00 	mov    0x5bea(%rip),%rax        # 1400080b8 <the_secs>
   1400024ce:	8b 56 08             	mov    0x8(%rsi),%edx
   1400024d1:	48 8d 0d 08 2d 00 00 	lea    0x2d08(%rip),%rcx        # 1400051e0 <.rdata+0x40>
   1400024d8:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   1400024dd:	e8 3e fe ff ff       	call   140002320 <__report_error>
   1400024e2:	4c 89 e2             	mov    %r12,%rdx
   1400024e5:	48 8d 0d d4 2c 00 00 	lea    0x2cd4(%rip),%rcx        # 1400051c0 <.rdata+0x20>
   1400024ec:	e8 2f fe ff ff       	call   140002320 <__report_error>
   1400024f1:	90                   	nop
   1400024f2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400024f9:	00 00 00 00 
   1400024fd:	0f 1f 00             	nopl   (%rax)

0000000140002500 <_pei386_runtime_relocator>:
   140002500:	55                   	push   %rbp
   140002501:	41 57                	push   %r15
   140002503:	41 56                	push   %r14
   140002505:	41 55                	push   %r13
   140002507:	41 54                	push   %r12
   140002509:	57                   	push   %rdi
   14000250a:	56                   	push   %rsi
   14000250b:	53                   	push   %rbx
   14000250c:	48 83 ec 48          	sub    $0x48,%rsp
   140002510:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   140002515:	8b 35 95 5b 00 00    	mov    0x5b95(%rip),%esi        # 1400080b0 <was_init.0>
   14000251b:	85 f6                	test   %esi,%esi
   14000251d:	74 11                	je     140002530 <_pei386_runtime_relocator+0x30>
   14000251f:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140002523:	5b                   	pop    %rbx
   140002524:	5e                   	pop    %rsi
   140002525:	5f                   	pop    %rdi
   140002526:	41 5c                	pop    %r12
   140002528:	41 5d                	pop    %r13
   14000252a:	41 5e                	pop    %r14
   14000252c:	41 5f                	pop    %r15
   14000252e:	5d                   	pop    %rbp
   14000252f:	c3                   	ret    
   140002530:	c7 05 76 5b 00 00 01 	movl   $0x1,0x5b76(%rip)        # 1400080b0 <was_init.0>
   140002537:	00 00 00 
   14000253a:	e8 51 09 00 00       	call   140002e90 <__mingw_GetSectionCount>
   14000253f:	48 98                	cltq   
   140002541:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002545:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   14000254c:	00 
   14000254d:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140002551:	e8 7a 0b 00 00       	call   1400030d0 <___chkstk_ms>
   140002556:	48 8b 3d 33 2e 00 00 	mov    0x2e33(%rip),%rdi        # 140005390 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   14000255d:	48 8b 1d 3c 2e 00 00 	mov    0x2e3c(%rip),%rbx        # 1400053a0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   140002564:	c7 05 46 5b 00 00 00 	movl   $0x0,0x5b46(%rip)        # 1400080b4 <maxSections>
   14000256b:	00 00 00 
   14000256e:	48 29 c4             	sub    %rax,%rsp
   140002571:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   140002576:	48 89 05 3b 5b 00 00 	mov    %rax,0x5b3b(%rip)        # 1400080b8 <the_secs>
   14000257d:	48 89 f8             	mov    %rdi,%rax
   140002580:	48 29 d8             	sub    %rbx,%rax
   140002583:	48 83 f8 07          	cmp    $0x7,%rax
   140002587:	7e 96                	jle    14000251f <_pei386_runtime_relocator+0x1f>
   140002589:	8b 13                	mov    (%rbx),%edx
   14000258b:	48 83 f8 0b          	cmp    $0xb,%rax
   14000258f:	0f 8f 83 01 00 00    	jg     140002718 <_pei386_runtime_relocator+0x218>
   140002595:	8b 03                	mov    (%rbx),%eax
   140002597:	85 c0                	test   %eax,%eax
   140002599:	0f 85 29 02 00 00    	jne    1400027c8 <_pei386_runtime_relocator+0x2c8>
   14000259f:	8b 43 04             	mov    0x4(%rbx),%eax
   1400025a2:	85 c0                	test   %eax,%eax
   1400025a4:	0f 85 1e 02 00 00    	jne    1400027c8 <_pei386_runtime_relocator+0x2c8>
   1400025aa:	8b 53 08             	mov    0x8(%rbx),%edx
   1400025ad:	83 fa 01             	cmp    $0x1,%edx
   1400025b0:	0f 85 72 02 00 00    	jne    140002828 <_pei386_runtime_relocator+0x328>
   1400025b6:	48 83 c3 0c          	add    $0xc,%rbx
   1400025ba:	48 39 fb             	cmp    %rdi,%rbx
   1400025bd:	0f 83 5c ff ff ff    	jae    14000251f <_pei386_runtime_relocator+0x1f>
   1400025c3:	4c 8b 3d f6 2d 00 00 	mov    0x2df6(%rip),%r15        # 1400053c0 <.refptr.__image_base__>
   1400025ca:	49 bc 00 00 00 00 ff 	movabs $0xffffffff00000000,%r12
   1400025d1:	ff ff ff 
   1400025d4:	eb 5d                	jmp    140002633 <_pei386_runtime_relocator+0x133>
   1400025d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400025dd:	00 00 00 
   1400025e0:	41 0f b6 06          	movzbl (%r14),%eax
   1400025e4:	49 89 c3             	mov    %rax,%r11
   1400025e7:	49 81 cb 00 ff ff ff 	or     $0xffffffffffffff00,%r11
   1400025ee:	84 c0                	test   %al,%al
   1400025f0:	49 0f 48 c3          	cmovs  %r11,%rax
   1400025f4:	48 29 c8             	sub    %rcx,%rax
   1400025f7:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   1400025fe:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   140002602:	75 17                	jne    14000261b <_pei386_runtime_relocator+0x11b>
   140002604:	49 83 fd 80          	cmp    $0xffffffffffffff80,%r13
   140002608:	0f 8c 06 02 00 00    	jl     140002814 <_pei386_runtime_relocator+0x314>
   14000260e:	49 81 fd ff 00 00 00 	cmp    $0xff,%r13
   140002615:	0f 8f f9 01 00 00    	jg     140002814 <_pei386_runtime_relocator+0x314>
   14000261b:	4c 89 f1             	mov    %r14,%rcx
   14000261e:	e8 6d fd ff ff       	call   140002390 <mark_section_writable>
   140002623:	45 88 2e             	mov    %r13b,(%r14)
   140002626:	48 83 c3 0c          	add    $0xc,%rbx
   14000262a:	48 39 fb             	cmp    %rdi,%rbx
   14000262d:	0f 83 8d 00 00 00    	jae    1400026c0 <_pei386_runtime_relocator+0x1c0>
   140002633:	8b 0b                	mov    (%rbx),%ecx
   140002635:	44 8b 43 08          	mov    0x8(%rbx),%r8d
   140002639:	44 8b 73 04          	mov    0x4(%rbx),%r14d
   14000263d:	4c 01 f9             	add    %r15,%rcx
   140002640:	41 0f b6 d0          	movzbl %r8b,%edx
   140002644:	4c 8b 09             	mov    (%rcx),%r9
   140002647:	4d 01 fe             	add    %r15,%r14
   14000264a:	83 fa 20             	cmp    $0x20,%edx
   14000264d:	0f 84 25 01 00 00    	je     140002778 <_pei386_runtime_relocator+0x278>
   140002653:	0f 87 e7 00 00 00    	ja     140002740 <_pei386_runtime_relocator+0x240>
   140002659:	83 fa 08             	cmp    $0x8,%edx
   14000265c:	74 82                	je     1400025e0 <_pei386_runtime_relocator+0xe0>
   14000265e:	83 fa 10             	cmp    $0x10,%edx
   140002661:	0f 85 a1 01 00 00    	jne    140002808 <_pei386_runtime_relocator+0x308>
   140002667:	41 0f b7 06          	movzwl (%r14),%eax
   14000266b:	49 89 c3             	mov    %rax,%r11
   14000266e:	49 81 cb 00 00 ff ff 	or     $0xffffffffffff0000,%r11
   140002675:	66 85 c0             	test   %ax,%ax
   140002678:	49 0f 48 c3          	cmovs  %r11,%rax
   14000267c:	48 29 c8             	sub    %rcx,%rax
   14000267f:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   140002686:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   14000268a:	75 1a                	jne    1400026a6 <_pei386_runtime_relocator+0x1a6>
   14000268c:	49 81 fd 00 80 ff ff 	cmp    $0xffffffffffff8000,%r13
   140002693:	0f 8c 7b 01 00 00    	jl     140002814 <_pei386_runtime_relocator+0x314>
   140002699:	49 81 fd ff ff 00 00 	cmp    $0xffff,%r13
   1400026a0:	0f 8f 6e 01 00 00    	jg     140002814 <_pei386_runtime_relocator+0x314>
   1400026a6:	4c 89 f1             	mov    %r14,%rcx
   1400026a9:	48 83 c3 0c          	add    $0xc,%rbx
   1400026ad:	e8 de fc ff ff       	call   140002390 <mark_section_writable>
   1400026b2:	66 45 89 2e          	mov    %r13w,(%r14)
   1400026b6:	48 39 fb             	cmp    %rdi,%rbx
   1400026b9:	0f 82 74 ff ff ff    	jb     140002633 <_pei386_runtime_relocator+0x133>
   1400026bf:	90                   	nop
   1400026c0:	8b 15 ee 59 00 00    	mov    0x59ee(%rip),%edx        # 1400080b4 <maxSections>
   1400026c6:	85 d2                	test   %edx,%edx
   1400026c8:	0f 8e 51 fe ff ff    	jle    14000251f <_pei386_runtime_relocator+0x1f>
   1400026ce:	48 8b 3d 2b 6b 00 00 	mov    0x6b2b(%rip),%rdi        # 140009200 <__imp_VirtualProtect>
   1400026d5:	31 db                	xor    %ebx,%ebx
   1400026d7:	4c 8d 65 fc          	lea    -0x4(%rbp),%r12
   1400026db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400026e0:	48 8b 05 d1 59 00 00 	mov    0x59d1(%rip),%rax        # 1400080b8 <the_secs>
   1400026e7:	48 01 d8             	add    %rbx,%rax
   1400026ea:	44 8b 00             	mov    (%rax),%r8d
   1400026ed:	45 85 c0             	test   %r8d,%r8d
   1400026f0:	74 0d                	je     1400026ff <_pei386_runtime_relocator+0x1ff>
   1400026f2:	48 8b 50 10          	mov    0x10(%rax),%rdx
   1400026f6:	48 8b 48 08          	mov    0x8(%rax),%rcx
   1400026fa:	4d 89 e1             	mov    %r12,%r9
   1400026fd:	ff d7                	call   *%rdi
   1400026ff:	83 c6 01             	add    $0x1,%esi
   140002702:	48 83 c3 28          	add    $0x28,%rbx
   140002706:	3b 35 a8 59 00 00    	cmp    0x59a8(%rip),%esi        # 1400080b4 <maxSections>
   14000270c:	7c d2                	jl     1400026e0 <_pei386_runtime_relocator+0x1e0>
   14000270e:	e9 0c fe ff ff       	jmp    14000251f <_pei386_runtime_relocator+0x1f>
   140002713:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002718:	85 d2                	test   %edx,%edx
   14000271a:	0f 85 a8 00 00 00    	jne    1400027c8 <_pei386_runtime_relocator+0x2c8>
   140002720:	8b 43 04             	mov    0x4(%rbx),%eax
   140002723:	89 c2                	mov    %eax,%edx
   140002725:	0b 53 08             	or     0x8(%rbx),%edx
   140002728:	0f 85 74 fe ff ff    	jne    1400025a2 <_pei386_runtime_relocator+0xa2>
   14000272e:	48 83 c3 0c          	add    $0xc,%rbx
   140002732:	e9 5e fe ff ff       	jmp    140002595 <_pei386_runtime_relocator+0x95>
   140002737:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000273e:	00 00 
   140002740:	83 fa 40             	cmp    $0x40,%edx
   140002743:	0f 85 bf 00 00 00    	jne    140002808 <_pei386_runtime_relocator+0x308>
   140002749:	49 8b 06             	mov    (%r14),%rax
   14000274c:	48 29 c8             	sub    %rcx,%rax
   14000274f:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   140002756:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   14000275a:	75 09                	jne    140002765 <_pei386_runtime_relocator+0x265>
   14000275c:	4d 85 ed             	test   %r13,%r13
   14000275f:	0f 89 af 00 00 00    	jns    140002814 <_pei386_runtime_relocator+0x314>
   140002765:	4c 89 f1             	mov    %r14,%rcx
   140002768:	e8 23 fc ff ff       	call   140002390 <mark_section_writable>
   14000276d:	4d 89 2e             	mov    %r13,(%r14)
   140002770:	e9 b1 fe ff ff       	jmp    140002626 <_pei386_runtime_relocator+0x126>
   140002775:	0f 1f 00             	nopl   (%rax)
   140002778:	41 8b 06             	mov    (%r14),%eax
   14000277b:	49 89 c2             	mov    %rax,%r10
   14000277e:	4c 09 e0             	or     %r12,%rax
   140002781:	45 85 d2             	test   %r10d,%r10d
   140002784:	49 0f 49 c2          	cmovns %r10,%rax
   140002788:	48 29 c8             	sub    %rcx,%rax
   14000278b:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   140002792:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   140002796:	75 19                	jne    1400027b1 <_pei386_runtime_relocator+0x2b1>
   140002798:	48 b8 ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%rax
   14000279f:	ff ff ff 
   1400027a2:	49 39 c5             	cmp    %rax,%r13
   1400027a5:	7e 6d                	jle    140002814 <_pei386_runtime_relocator+0x314>
   1400027a7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   1400027ac:	49 39 c5             	cmp    %rax,%r13
   1400027af:	7f 63                	jg     140002814 <_pei386_runtime_relocator+0x314>
   1400027b1:	4c 89 f1             	mov    %r14,%rcx
   1400027b4:	e8 d7 fb ff ff       	call   140002390 <mark_section_writable>
   1400027b9:	45 89 2e             	mov    %r13d,(%r14)
   1400027bc:	e9 65 fe ff ff       	jmp    140002626 <_pei386_runtime_relocator+0x126>
   1400027c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400027c8:	48 39 fb             	cmp    %rdi,%rbx
   1400027cb:	0f 83 4e fd ff ff    	jae    14000251f <_pei386_runtime_relocator+0x1f>
   1400027d1:	4c 8b 35 e8 2b 00 00 	mov    0x2be8(%rip),%r14        # 1400053c0 <.refptr.__image_base__>
   1400027d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400027df:	00 
   1400027e0:	44 8b 63 04          	mov    0x4(%rbx),%r12d
   1400027e4:	44 8b 2b             	mov    (%rbx),%r13d
   1400027e7:	48 83 c3 08          	add    $0x8,%rbx
   1400027eb:	4d 01 f4             	add    %r14,%r12
   1400027ee:	45 03 2c 24          	add    (%r12),%r13d
   1400027f2:	4c 89 e1             	mov    %r12,%rcx
   1400027f5:	e8 96 fb ff ff       	call   140002390 <mark_section_writable>
   1400027fa:	45 89 2c 24          	mov    %r13d,(%r12)
   1400027fe:	48 39 fb             	cmp    %rdi,%rbx
   140002801:	72 dd                	jb     1400027e0 <_pei386_runtime_relocator+0x2e0>
   140002803:	e9 b8 fe ff ff       	jmp    1400026c0 <_pei386_runtime_relocator+0x1c0>
   140002808:	48 8d 0d 69 2a 00 00 	lea    0x2a69(%rip),%rcx        # 140005278 <.rdata+0xd8>
   14000280f:	e8 0c fb ff ff       	call   140002320 <__report_error>
   140002814:	4c 89 6c 24 20       	mov    %r13,0x20(%rsp)
   140002819:	4d 89 f0             	mov    %r14,%r8
   14000281c:	48 8d 0d 85 2a 00 00 	lea    0x2a85(%rip),%rcx        # 1400052a8 <.rdata+0x108>
   140002823:	e8 f8 fa ff ff       	call   140002320 <__report_error>
   140002828:	48 8d 0d 11 2a 00 00 	lea    0x2a11(%rip),%rcx        # 140005240 <.rdata+0xa0>
   14000282f:	e8 ec fa ff ff       	call   140002320 <__report_error>
   140002834:	90                   	nop
   140002835:	90                   	nop
   140002836:	90                   	nop
   140002837:	90                   	nop
   140002838:	90                   	nop
   140002839:	90                   	nop
   14000283a:	90                   	nop
   14000283b:	90                   	nop
   14000283c:	90                   	nop
   14000283d:	90                   	nop
   14000283e:	90                   	nop
   14000283f:	90                   	nop

0000000140002840 <__mingw_raise_matherr>:
   140002840:	48 83 ec 58          	sub    $0x58,%rsp
   140002844:	48 8b 05 75 58 00 00 	mov    0x5875(%rip),%rax        # 1400080c0 <stUserMathErr>
   14000284b:	48 85 c0             	test   %rax,%rax
   14000284e:	74 2c                	je     14000287c <__mingw_raise_matherr+0x3c>
   140002850:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140002857:	00 00 
   140002859:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   14000285d:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140002862:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   140002867:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
   14000286d:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
   140002873:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140002879:	ff d0                	call   *%rax
   14000287b:	90                   	nop
   14000287c:	48 83 c4 58          	add    $0x58,%rsp
   140002880:	c3                   	ret    
   140002881:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002888:	00 00 00 00 
   14000288c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002890 <__mingw_setusermatherr>:
   140002890:	48 89 0d 29 58 00 00 	mov    %rcx,0x5829(%rip)        # 1400080c0 <stUserMathErr>
   140002897:	e9 04 09 00 00       	jmp    1400031a0 <__setusermatherr>
   14000289c:	90                   	nop
   14000289d:	90                   	nop
   14000289e:	90                   	nop
   14000289f:	90                   	nop

00000001400028a0 <_gnu_exception_handler>:
   1400028a0:	41 54                	push   %r12
   1400028a2:	48 83 ec 20          	sub    $0x20,%rsp
   1400028a6:	48 8b 11             	mov    (%rcx),%rdx
   1400028a9:	8b 02                	mov    (%rdx),%eax
   1400028ab:	49 89 cc             	mov    %rcx,%r12
   1400028ae:	89 c1                	mov    %eax,%ecx
   1400028b0:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   1400028b6:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   1400028bc:	0f 84 be 00 00 00    	je     140002980 <_gnu_exception_handler+0xe0>
   1400028c2:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   1400028c7:	0f 87 9a 00 00 00    	ja     140002967 <_gnu_exception_handler+0xc7>
   1400028cd:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   1400028d2:	76 44                	jbe    140002918 <_gnu_exception_handler+0x78>
   1400028d4:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   1400028d9:	83 f8 09             	cmp    $0x9,%eax
   1400028dc:	77 2a                	ja     140002908 <_gnu_exception_handler+0x68>
   1400028de:	48 8d 15 1b 2a 00 00 	lea    0x2a1b(%rip),%rdx        # 140005300 <.rdata>
   1400028e5:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   1400028e9:	48 01 d0             	add    %rdx,%rax
   1400028ec:	ff e0                	jmp    *%rax
   1400028ee:	66 90                	xchg   %ax,%ax
   1400028f0:	ba 01 00 00 00       	mov    $0x1,%edx
   1400028f5:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400028fa:	e8 09 09 00 00       	call   140003208 <signal>
   1400028ff:	e8 0c fa ff ff       	call   140002310 <_fpreset>
   140002904:	0f 1f 40 00          	nopl   0x0(%rax)
   140002908:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   14000290d:	48 83 c4 20          	add    $0x20,%rsp
   140002911:	41 5c                	pop    %r12
   140002913:	c3                   	ret    
   140002914:	0f 1f 40 00          	nopl   0x0(%rax)
   140002918:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   14000291d:	0f 84 dd 00 00 00    	je     140002a00 <_gnu_exception_handler+0x160>
   140002923:	76 3b                	jbe    140002960 <_gnu_exception_handler+0xc0>
   140002925:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   14000292a:	74 dc                	je     140002908 <_gnu_exception_handler+0x68>
   14000292c:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140002931:	75 34                	jne    140002967 <_gnu_exception_handler+0xc7>
   140002933:	31 d2                	xor    %edx,%edx
   140002935:	b9 04 00 00 00       	mov    $0x4,%ecx
   14000293a:	e8 c9 08 00 00       	call   140003208 <signal>
   14000293f:	48 83 f8 01          	cmp    $0x1,%rax
   140002943:	0f 84 e3 00 00 00    	je     140002a2c <_gnu_exception_handler+0x18c>
   140002949:	48 85 c0             	test   %rax,%rax
   14000294c:	74 19                	je     140002967 <_gnu_exception_handler+0xc7>
   14000294e:	b9 04 00 00 00       	mov    $0x4,%ecx
   140002953:	ff d0                	call   *%rax
   140002955:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   14000295a:	eb b1                	jmp    14000290d <_gnu_exception_handler+0x6d>
   14000295c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002960:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   140002965:	74 a1                	je     140002908 <_gnu_exception_handler+0x68>
   140002967:	48 8b 05 72 57 00 00 	mov    0x5772(%rip),%rax        # 1400080e0 <__mingw_oldexcpt_handler>
   14000296e:	48 85 c0             	test   %rax,%rax
   140002971:	74 1d                	je     140002990 <_gnu_exception_handler+0xf0>
   140002973:	4c 89 e1             	mov    %r12,%rcx
   140002976:	48 83 c4 20          	add    $0x20,%rsp
   14000297a:	41 5c                	pop    %r12
   14000297c:	48 ff e0             	rex.W jmp *%rax
   14000297f:	90                   	nop
   140002980:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140002984:	0f 85 38 ff ff ff    	jne    1400028c2 <_gnu_exception_handler+0x22>
   14000298a:	e9 79 ff ff ff       	jmp    140002908 <_gnu_exception_handler+0x68>
   14000298f:	90                   	nop
   140002990:	31 c0                	xor    %eax,%eax
   140002992:	48 83 c4 20          	add    $0x20,%rsp
   140002996:	41 5c                	pop    %r12
   140002998:	c3                   	ret    
   140002999:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400029a0:	31 d2                	xor    %edx,%edx
   1400029a2:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400029a7:	e8 5c 08 00 00       	call   140003208 <signal>
   1400029ac:	48 83 f8 01          	cmp    $0x1,%rax
   1400029b0:	0f 84 3a ff ff ff    	je     1400028f0 <_gnu_exception_handler+0x50>
   1400029b6:	48 85 c0             	test   %rax,%rax
   1400029b9:	74 ac                	je     140002967 <_gnu_exception_handler+0xc7>
   1400029bb:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400029c0:	ff d0                	call   *%rax
   1400029c2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   1400029c7:	e9 41 ff ff ff       	jmp    14000290d <_gnu_exception_handler+0x6d>
   1400029cc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400029d0:	31 d2                	xor    %edx,%edx
   1400029d2:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400029d7:	e8 2c 08 00 00       	call   140003208 <signal>
   1400029dc:	48 83 f8 01          	cmp    $0x1,%rax
   1400029e0:	75 d4                	jne    1400029b6 <_gnu_exception_handler+0x116>
   1400029e2:	ba 01 00 00 00       	mov    $0x1,%edx
   1400029e7:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400029ec:	e8 17 08 00 00       	call   140003208 <signal>
   1400029f1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   1400029f6:	e9 12 ff ff ff       	jmp    14000290d <_gnu_exception_handler+0x6d>
   1400029fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002a00:	31 d2                	xor    %edx,%edx
   140002a02:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140002a07:	e8 fc 07 00 00       	call   140003208 <signal>
   140002a0c:	48 83 f8 01          	cmp    $0x1,%rax
   140002a10:	74 31                	je     140002a43 <_gnu_exception_handler+0x1a3>
   140002a12:	48 85 c0             	test   %rax,%rax
   140002a15:	0f 84 4c ff ff ff    	je     140002967 <_gnu_exception_handler+0xc7>
   140002a1b:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140002a20:	ff d0                	call   *%rax
   140002a22:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002a27:	e9 e1 fe ff ff       	jmp    14000290d <_gnu_exception_handler+0x6d>
   140002a2c:	ba 01 00 00 00       	mov    $0x1,%edx
   140002a31:	b9 04 00 00 00       	mov    $0x4,%ecx
   140002a36:	e8 cd 07 00 00       	call   140003208 <signal>
   140002a3b:	83 c8 ff             	or     $0xffffffff,%eax
   140002a3e:	e9 ca fe ff ff       	jmp    14000290d <_gnu_exception_handler+0x6d>
   140002a43:	ba 01 00 00 00       	mov    $0x1,%edx
   140002a48:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140002a4d:	e8 b6 07 00 00       	call   140003208 <signal>
   140002a52:	83 c8 ff             	or     $0xffffffff,%eax
   140002a55:	e9 b3 fe ff ff       	jmp    14000290d <_gnu_exception_handler+0x6d>
   140002a5a:	90                   	nop
   140002a5b:	90                   	nop
   140002a5c:	90                   	nop
   140002a5d:	90                   	nop
   140002a5e:	90                   	nop
   140002a5f:	90                   	nop

0000000140002a60 <__mingwthr_run_key_dtors.part.0>:
   140002a60:	41 55                	push   %r13
   140002a62:	41 54                	push   %r12
   140002a64:	57                   	push   %rdi
   140002a65:	56                   	push   %rsi
   140002a66:	53                   	push   %rbx
   140002a67:	48 83 ec 20          	sub    $0x20,%rsp
   140002a6b:	4c 8d 2d ae 56 00 00 	lea    0x56ae(%rip),%r13        # 140008120 <__mingwthr_cs>
   140002a72:	4c 89 e9             	mov    %r13,%rcx
   140002a75:	ff 15 45 67 00 00    	call   *0x6745(%rip)        # 1400091c0 <__imp_EnterCriticalSection>
   140002a7b:	48 8b 1d 7e 56 00 00 	mov    0x567e(%rip),%rbx        # 140008100 <key_dtor_list>
   140002a82:	48 85 db             	test   %rbx,%rbx
   140002a85:	74 35                	je     140002abc <__mingwthr_run_key_dtors.part.0+0x5c>
   140002a87:	48 8b 3d 6a 67 00 00 	mov    0x676a(%rip),%rdi        # 1400091f8 <__imp_TlsGetValue>
   140002a8e:	48 8b 35 33 67 00 00 	mov    0x6733(%rip),%rsi        # 1400091c8 <__imp_GetLastError>
   140002a95:	0f 1f 00             	nopl   (%rax)
   140002a98:	8b 0b                	mov    (%rbx),%ecx
   140002a9a:	ff d7                	call   *%rdi
   140002a9c:	49 89 c4             	mov    %rax,%r12
   140002a9f:	ff d6                	call   *%rsi
   140002aa1:	85 c0                	test   %eax,%eax
   140002aa3:	75 0e                	jne    140002ab3 <__mingwthr_run_key_dtors.part.0+0x53>
   140002aa5:	4d 85 e4             	test   %r12,%r12
   140002aa8:	74 09                	je     140002ab3 <__mingwthr_run_key_dtors.part.0+0x53>
   140002aaa:	48 8b 43 08          	mov    0x8(%rbx),%rax
   140002aae:	4c 89 e1             	mov    %r12,%rcx
   140002ab1:	ff d0                	call   *%rax
   140002ab3:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140002ab7:	48 85 db             	test   %rbx,%rbx
   140002aba:	75 dc                	jne    140002a98 <__mingwthr_run_key_dtors.part.0+0x38>
   140002abc:	4c 89 e9             	mov    %r13,%rcx
   140002abf:	48 83 c4 20          	add    $0x20,%rsp
   140002ac3:	5b                   	pop    %rbx
   140002ac4:	5e                   	pop    %rsi
   140002ac5:	5f                   	pop    %rdi
   140002ac6:	41 5c                	pop    %r12
   140002ac8:	41 5d                	pop    %r13
   140002aca:	48 ff 25 0f 67 00 00 	rex.W jmp *0x670f(%rip)        # 1400091e0 <__imp_LeaveCriticalSection>
   140002ad1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002ad8:	00 00 00 00 
   140002adc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002ae0 <___w64_mingwthr_add_key_dtor>:
   140002ae0:	41 54                	push   %r12
   140002ae2:	57                   	push   %rdi
   140002ae3:	56                   	push   %rsi
   140002ae4:	53                   	push   %rbx
   140002ae5:	48 83 ec 28          	sub    $0x28,%rsp
   140002ae9:	8b 05 19 56 00 00    	mov    0x5619(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002aef:	89 cf                	mov    %ecx,%edi
   140002af1:	48 89 d6             	mov    %rdx,%rsi
   140002af4:	85 c0                	test   %eax,%eax
   140002af6:	75 10                	jne    140002b08 <___w64_mingwthr_add_key_dtor+0x28>
   140002af8:	48 83 c4 28          	add    $0x28,%rsp
   140002afc:	5b                   	pop    %rbx
   140002afd:	5e                   	pop    %rsi
   140002afe:	5f                   	pop    %rdi
   140002aff:	41 5c                	pop    %r12
   140002b01:	c3                   	ret    
   140002b02:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002b08:	ba 18 00 00 00       	mov    $0x18,%edx
   140002b0d:	b9 01 00 00 00       	mov    $0x1,%ecx
   140002b12:	e8 b9 06 00 00       	call   1400031d0 <calloc>
   140002b17:	48 89 c3             	mov    %rax,%rbx
   140002b1a:	48 85 c0             	test   %rax,%rax
   140002b1d:	74 3d                	je     140002b5c <___w64_mingwthr_add_key_dtor+0x7c>
   140002b1f:	4c 8d 25 fa 55 00 00 	lea    0x55fa(%rip),%r12        # 140008120 <__mingwthr_cs>
   140002b26:	89 38                	mov    %edi,(%rax)
   140002b28:	48 89 70 08          	mov    %rsi,0x8(%rax)
   140002b2c:	4c 89 e1             	mov    %r12,%rcx
   140002b2f:	ff 15 8b 66 00 00    	call   *0x668b(%rip)        # 1400091c0 <__imp_EnterCriticalSection>
   140002b35:	48 8b 05 c4 55 00 00 	mov    0x55c4(%rip),%rax        # 140008100 <key_dtor_list>
   140002b3c:	4c 89 e1             	mov    %r12,%rcx
   140002b3f:	48 89 1d ba 55 00 00 	mov    %rbx,0x55ba(%rip)        # 140008100 <key_dtor_list>
   140002b46:	48 89 43 10          	mov    %rax,0x10(%rbx)
   140002b4a:	ff 15 90 66 00 00    	call   *0x6690(%rip)        # 1400091e0 <__imp_LeaveCriticalSection>
   140002b50:	31 c0                	xor    %eax,%eax
   140002b52:	48 83 c4 28          	add    $0x28,%rsp
   140002b56:	5b                   	pop    %rbx
   140002b57:	5e                   	pop    %rsi
   140002b58:	5f                   	pop    %rdi
   140002b59:	41 5c                	pop    %r12
   140002b5b:	c3                   	ret    
   140002b5c:	83 c8 ff             	or     $0xffffffff,%eax
   140002b5f:	eb 97                	jmp    140002af8 <___w64_mingwthr_add_key_dtor+0x18>
   140002b61:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002b68:	00 00 00 00 
   140002b6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002b70 <___w64_mingwthr_remove_key_dtor>:
   140002b70:	41 54                	push   %r12
   140002b72:	53                   	push   %rbx
   140002b73:	48 83 ec 28          	sub    $0x28,%rsp
   140002b77:	8b 05 8b 55 00 00    	mov    0x558b(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002b7d:	89 cb                	mov    %ecx,%ebx
   140002b7f:	85 c0                	test   %eax,%eax
   140002b81:	75 0d                	jne    140002b90 <___w64_mingwthr_remove_key_dtor+0x20>
   140002b83:	31 c0                	xor    %eax,%eax
   140002b85:	48 83 c4 28          	add    $0x28,%rsp
   140002b89:	5b                   	pop    %rbx
   140002b8a:	41 5c                	pop    %r12
   140002b8c:	c3                   	ret    
   140002b8d:	0f 1f 00             	nopl   (%rax)
   140002b90:	4c 8d 25 89 55 00 00 	lea    0x5589(%rip),%r12        # 140008120 <__mingwthr_cs>
   140002b97:	4c 89 e1             	mov    %r12,%rcx
   140002b9a:	ff 15 20 66 00 00    	call   *0x6620(%rip)        # 1400091c0 <__imp_EnterCriticalSection>
   140002ba0:	48 8b 0d 59 55 00 00 	mov    0x5559(%rip),%rcx        # 140008100 <key_dtor_list>
   140002ba7:	48 85 c9             	test   %rcx,%rcx
   140002baa:	74 27                	je     140002bd3 <___w64_mingwthr_remove_key_dtor+0x63>
   140002bac:	31 d2                	xor    %edx,%edx
   140002bae:	eb 0b                	jmp    140002bbb <___w64_mingwthr_remove_key_dtor+0x4b>
   140002bb0:	48 89 ca             	mov    %rcx,%rdx
   140002bb3:	48 85 c0             	test   %rax,%rax
   140002bb6:	74 1b                	je     140002bd3 <___w64_mingwthr_remove_key_dtor+0x63>
   140002bb8:	48 89 c1             	mov    %rax,%rcx
   140002bbb:	8b 01                	mov    (%rcx),%eax
   140002bbd:	39 d8                	cmp    %ebx,%eax
   140002bbf:	48 8b 41 10          	mov    0x10(%rcx),%rax
   140002bc3:	75 eb                	jne    140002bb0 <___w64_mingwthr_remove_key_dtor+0x40>
   140002bc5:	48 85 d2             	test   %rdx,%rdx
   140002bc8:	74 26                	je     140002bf0 <___w64_mingwthr_remove_key_dtor+0x80>
   140002bca:	48 89 42 10          	mov    %rax,0x10(%rdx)
   140002bce:	e8 15 06 00 00       	call   1400031e8 <free>
   140002bd3:	4c 89 e1             	mov    %r12,%rcx
   140002bd6:	ff 15 04 66 00 00    	call   *0x6604(%rip)        # 1400091e0 <__imp_LeaveCriticalSection>
   140002bdc:	31 c0                	xor    %eax,%eax
   140002bde:	48 83 c4 28          	add    $0x28,%rsp
   140002be2:	5b                   	pop    %rbx
   140002be3:	41 5c                	pop    %r12
   140002be5:	c3                   	ret    
   140002be6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002bed:	00 00 00 
   140002bf0:	48 89 05 09 55 00 00 	mov    %rax,0x5509(%rip)        # 140008100 <key_dtor_list>
   140002bf7:	eb d5                	jmp    140002bce <___w64_mingwthr_remove_key_dtor+0x5e>
   140002bf9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002c00 <__mingw_TLScallback>:
   140002c00:	53                   	push   %rbx
   140002c01:	48 83 ec 20          	sub    $0x20,%rsp
   140002c05:	83 fa 02             	cmp    $0x2,%edx
   140002c08:	74 46                	je     140002c50 <__mingw_TLScallback+0x50>
   140002c0a:	77 2c                	ja     140002c38 <__mingw_TLScallback+0x38>
   140002c0c:	85 d2                	test   %edx,%edx
   140002c0e:	74 50                	je     140002c60 <__mingw_TLScallback+0x60>
   140002c10:	8b 05 f2 54 00 00    	mov    0x54f2(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002c16:	85 c0                	test   %eax,%eax
   140002c18:	0f 84 b2 00 00 00    	je     140002cd0 <__mingw_TLScallback+0xd0>
   140002c1e:	c7 05 e0 54 00 00 01 	movl   $0x1,0x54e0(%rip)        # 140008108 <__mingwthr_cs_init>
   140002c25:	00 00 00 
   140002c28:	b8 01 00 00 00       	mov    $0x1,%eax
   140002c2d:	48 83 c4 20          	add    $0x20,%rsp
   140002c31:	5b                   	pop    %rbx
   140002c32:	c3                   	ret    
   140002c33:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002c38:	83 fa 03             	cmp    $0x3,%edx
   140002c3b:	75 eb                	jne    140002c28 <__mingw_TLScallback+0x28>
   140002c3d:	8b 05 c5 54 00 00    	mov    0x54c5(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002c43:	85 c0                	test   %eax,%eax
   140002c45:	74 e1                	je     140002c28 <__mingw_TLScallback+0x28>
   140002c47:	e8 14 fe ff ff       	call   140002a60 <__mingwthr_run_key_dtors.part.0>
   140002c4c:	eb da                	jmp    140002c28 <__mingw_TLScallback+0x28>
   140002c4e:	66 90                	xchg   %ax,%ax
   140002c50:	e8 bb f6 ff ff       	call   140002310 <_fpreset>
   140002c55:	b8 01 00 00 00       	mov    $0x1,%eax
   140002c5a:	48 83 c4 20          	add    $0x20,%rsp
   140002c5e:	5b                   	pop    %rbx
   140002c5f:	c3                   	ret    
   140002c60:	8b 05 a2 54 00 00    	mov    0x54a2(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002c66:	85 c0                	test   %eax,%eax
   140002c68:	75 56                	jne    140002cc0 <__mingw_TLScallback+0xc0>
   140002c6a:	8b 05 98 54 00 00    	mov    0x5498(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002c70:	83 f8 01             	cmp    $0x1,%eax
   140002c73:	75 b3                	jne    140002c28 <__mingw_TLScallback+0x28>
   140002c75:	48 8b 1d 84 54 00 00 	mov    0x5484(%rip),%rbx        # 140008100 <key_dtor_list>
   140002c7c:	48 85 db             	test   %rbx,%rbx
   140002c7f:	74 18                	je     140002c99 <__mingw_TLScallback+0x99>
   140002c81:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002c88:	48 89 d9             	mov    %rbx,%rcx
   140002c8b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140002c8f:	e8 54 05 00 00       	call   1400031e8 <free>
   140002c94:	48 85 db             	test   %rbx,%rbx
   140002c97:	75 ef                	jne    140002c88 <__mingw_TLScallback+0x88>
   140002c99:	48 8d 0d 80 54 00 00 	lea    0x5480(%rip),%rcx        # 140008120 <__mingwthr_cs>
   140002ca0:	48 c7 05 55 54 00 00 	movq   $0x0,0x5455(%rip)        # 140008100 <key_dtor_list>
   140002ca7:	00 00 00 00 
   140002cab:	c7 05 53 54 00 00 00 	movl   $0x0,0x5453(%rip)        # 140008108 <__mingwthr_cs_init>
   140002cb2:	00 00 00 
   140002cb5:	ff 15 fd 64 00 00    	call   *0x64fd(%rip)        # 1400091b8 <__IAT_start__>
   140002cbb:	e9 68 ff ff ff       	jmp    140002c28 <__mingw_TLScallback+0x28>
   140002cc0:	e8 9b fd ff ff       	call   140002a60 <__mingwthr_run_key_dtors.part.0>
   140002cc5:	eb a3                	jmp    140002c6a <__mingw_TLScallback+0x6a>
   140002cc7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140002cce:	00 00 
   140002cd0:	48 8d 0d 49 54 00 00 	lea    0x5449(%rip),%rcx        # 140008120 <__mingwthr_cs>
   140002cd7:	ff 15 fb 64 00 00    	call   *0x64fb(%rip)        # 1400091d8 <__imp_InitializeCriticalSection>
   140002cdd:	e9 3c ff ff ff       	jmp    140002c1e <__mingw_TLScallback+0x1e>
   140002ce2:	90                   	nop
   140002ce3:	90                   	nop
   140002ce4:	90                   	nop
   140002ce5:	90                   	nop
   140002ce6:	90                   	nop
   140002ce7:	90                   	nop
   140002ce8:	90                   	nop
   140002ce9:	90                   	nop
   140002cea:	90                   	nop
   140002ceb:	90                   	nop
   140002cec:	90                   	nop
   140002ced:	90                   	nop
   140002cee:	90                   	nop
   140002cef:	90                   	nop

0000000140002cf0 <_ValidateImageBase>:
   140002cf0:	31 c0                	xor    %eax,%eax
   140002cf2:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002cf7:	75 0f                	jne    140002d08 <_ValidateImageBase+0x18>
   140002cf9:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   140002cfd:	48 01 d1             	add    %rdx,%rcx
   140002d00:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   140002d06:	74 08                	je     140002d10 <_ValidateImageBase+0x20>
   140002d08:	c3                   	ret    
   140002d09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002d10:	31 c0                	xor    %eax,%eax
   140002d12:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   140002d18:	0f 94 c0             	sete   %al
   140002d1b:	c3                   	ret    
   140002d1c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002d20 <_FindPESection>:
   140002d20:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002d24:	48 01 c1             	add    %rax,%rcx
   140002d27:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   140002d2b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   140002d30:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
   140002d34:	85 c9                	test   %ecx,%ecx
   140002d36:	74 2d                	je     140002d65 <_FindPESection+0x45>
   140002d38:	83 e9 01             	sub    $0x1,%ecx
   140002d3b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   140002d3f:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   140002d44:	0f 1f 40 00          	nopl   0x0(%rax)
   140002d48:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140002d4c:	4c 89 c1             	mov    %r8,%rcx
   140002d4f:	49 39 d0             	cmp    %rdx,%r8
   140002d52:	77 08                	ja     140002d5c <_FindPESection+0x3c>
   140002d54:	03 48 08             	add    0x8(%rax),%ecx
   140002d57:	48 39 d1             	cmp    %rdx,%rcx
   140002d5a:	77 0b                	ja     140002d67 <_FindPESection+0x47>
   140002d5c:	48 83 c0 28          	add    $0x28,%rax
   140002d60:	4c 39 c8             	cmp    %r9,%rax
   140002d63:	75 e3                	jne    140002d48 <_FindPESection+0x28>
   140002d65:	31 c0                	xor    %eax,%eax
   140002d67:	c3                   	ret    
   140002d68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002d6f:	00 

0000000140002d70 <_FindPESectionByName>:
   140002d70:	41 54                	push   %r12
   140002d72:	56                   	push   %rsi
   140002d73:	53                   	push   %rbx
   140002d74:	48 83 ec 20          	sub    $0x20,%rsp
   140002d78:	48 89 cb             	mov    %rcx,%rbx
   140002d7b:	e8 90 04 00 00       	call   140003210 <strlen>
   140002d80:	48 83 f8 08          	cmp    $0x8,%rax
   140002d84:	77 7a                	ja     140002e00 <_FindPESectionByName+0x90>
   140002d86:	48 8b 15 33 26 00 00 	mov    0x2633(%rip),%rdx        # 1400053c0 <.refptr.__image_base__>
   140002d8d:	45 31 e4             	xor    %r12d,%r12d
   140002d90:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140002d95:	75 57                	jne    140002dee <_FindPESectionByName+0x7e>
   140002d97:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
   140002d9b:	48 01 d0             	add    %rdx,%rax
   140002d9e:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140002da4:	75 48                	jne    140002dee <_FindPESectionByName+0x7e>
   140002da6:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   140002dac:	75 40                	jne    140002dee <_FindPESectionByName+0x7e>
   140002dae:	0f b7 50 14          	movzwl 0x14(%rax),%edx
   140002db2:	4c 8d 64 10 18       	lea    0x18(%rax,%rdx,1),%r12
   140002db7:	0f b7 40 06          	movzwl 0x6(%rax),%eax
   140002dbb:	85 c0                	test   %eax,%eax
   140002dbd:	74 41                	je     140002e00 <_FindPESectionByName+0x90>
   140002dbf:	83 e8 01             	sub    $0x1,%eax
   140002dc2:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002dc6:	49 8d 74 c4 28       	lea    0x28(%r12,%rax,8),%rsi
   140002dcb:	eb 0c                	jmp    140002dd9 <_FindPESectionByName+0x69>
   140002dcd:	0f 1f 00             	nopl   (%rax)
   140002dd0:	49 83 c4 28          	add    $0x28,%r12
   140002dd4:	49 39 f4             	cmp    %rsi,%r12
   140002dd7:	74 27                	je     140002e00 <_FindPESectionByName+0x90>
   140002dd9:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   140002ddf:	48 89 da             	mov    %rbx,%rdx
   140002de2:	4c 89 e1             	mov    %r12,%rcx
   140002de5:	e8 2e 04 00 00       	call   140003218 <strncmp>
   140002dea:	85 c0                	test   %eax,%eax
   140002dec:	75 e2                	jne    140002dd0 <_FindPESectionByName+0x60>
   140002dee:	4c 89 e0             	mov    %r12,%rax
   140002df1:	48 83 c4 20          	add    $0x20,%rsp
   140002df5:	5b                   	pop    %rbx
   140002df6:	5e                   	pop    %rsi
   140002df7:	41 5c                	pop    %r12
   140002df9:	c3                   	ret    
   140002dfa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002e00:	45 31 e4             	xor    %r12d,%r12d
   140002e03:	4c 89 e0             	mov    %r12,%rax
   140002e06:	48 83 c4 20          	add    $0x20,%rsp
   140002e0a:	5b                   	pop    %rbx
   140002e0b:	5e                   	pop    %rsi
   140002e0c:	41 5c                	pop    %r12
   140002e0e:	c3                   	ret    
   140002e0f:	90                   	nop

0000000140002e10 <__mingw_GetSectionForAddress>:
   140002e10:	48 8b 15 a9 25 00 00 	mov    0x25a9(%rip),%rdx        # 1400053c0 <.refptr.__image_base__>
   140002e17:	31 c0                	xor    %eax,%eax
   140002e19:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140002e1e:	75 10                	jne    140002e30 <__mingw_GetSectionForAddress+0x20>
   140002e20:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002e24:	49 01 d0             	add    %rdx,%r8
   140002e27:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140002e2e:	74 08                	je     140002e38 <__mingw_GetSectionForAddress+0x28>
   140002e30:	c3                   	ret    
   140002e31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002e38:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140002e3f:	75 ef                	jne    140002e30 <__mingw_GetSectionForAddress+0x20>
   140002e41:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   140002e46:	48 29 d1             	sub    %rdx,%rcx
   140002e49:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
   140002e4e:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   140002e53:	85 d2                	test   %edx,%edx
   140002e55:	74 2e                	je     140002e85 <__mingw_GetSectionForAddress+0x75>
   140002e57:	83 ea 01             	sub    $0x1,%edx
   140002e5a:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   140002e5e:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   140002e63:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002e68:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140002e6c:	4c 89 c2             	mov    %r8,%rdx
   140002e6f:	4c 39 c1             	cmp    %r8,%rcx
   140002e72:	72 08                	jb     140002e7c <__mingw_GetSectionForAddress+0x6c>
   140002e74:	03 50 08             	add    0x8(%rax),%edx
   140002e77:	48 39 d1             	cmp    %rdx,%rcx
   140002e7a:	72 b4                	jb     140002e30 <__mingw_GetSectionForAddress+0x20>
   140002e7c:	48 83 c0 28          	add    $0x28,%rax
   140002e80:	4c 39 c8             	cmp    %r9,%rax
   140002e83:	75 e3                	jne    140002e68 <__mingw_GetSectionForAddress+0x58>
   140002e85:	31 c0                	xor    %eax,%eax
   140002e87:	c3                   	ret    
   140002e88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002e8f:	00 

0000000140002e90 <__mingw_GetSectionCount>:
   140002e90:	48 8b 05 29 25 00 00 	mov    0x2529(%rip),%rax        # 1400053c0 <.refptr.__image_base__>
   140002e97:	45 31 c0             	xor    %r8d,%r8d
   140002e9a:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140002e9f:	75 0f                	jne    140002eb0 <__mingw_GetSectionCount+0x20>
   140002ea1:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140002ea5:	48 01 d0             	add    %rdx,%rax
   140002ea8:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140002eae:	74 08                	je     140002eb8 <__mingw_GetSectionCount+0x28>
   140002eb0:	44 89 c0             	mov    %r8d,%eax
   140002eb3:	c3                   	ret    
   140002eb4:	0f 1f 40 00          	nopl   0x0(%rax)
   140002eb8:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   140002ebe:	75 f0                	jne    140002eb0 <__mingw_GetSectionCount+0x20>
   140002ec0:	44 0f b7 40 06       	movzwl 0x6(%rax),%r8d
   140002ec5:	44 89 c0             	mov    %r8d,%eax
   140002ec8:	c3                   	ret    
   140002ec9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002ed0 <_FindPESectionExec>:
   140002ed0:	4c 8b 05 e9 24 00 00 	mov    0x24e9(%rip),%r8        # 1400053c0 <.refptr.__image_base__>
   140002ed7:	31 c0                	xor    %eax,%eax
   140002ed9:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   140002edf:	75 0f                	jne    140002ef0 <_FindPESectionExec+0x20>
   140002ee1:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   140002ee5:	4c 01 c2             	add    %r8,%rdx
   140002ee8:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   140002eee:	74 08                	je     140002ef8 <_FindPESectionExec+0x28>
   140002ef0:	c3                   	ret    
   140002ef1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002ef8:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   140002efe:	75 f0                	jne    140002ef0 <_FindPESectionExec+0x20>
   140002f00:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   140002f04:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   140002f09:	0f b7 52 06          	movzwl 0x6(%rdx),%edx
   140002f0d:	85 d2                	test   %edx,%edx
   140002f0f:	74 27                	je     140002f38 <_FindPESectionExec+0x68>
   140002f11:	83 ea 01             	sub    $0x1,%edx
   140002f14:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   140002f18:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   140002f1d:	0f 1f 00             	nopl   (%rax)
   140002f20:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   140002f24:	74 09                	je     140002f2f <_FindPESectionExec+0x5f>
   140002f26:	48 85 c9             	test   %rcx,%rcx
   140002f29:	74 c5                	je     140002ef0 <_FindPESectionExec+0x20>
   140002f2b:	48 83 e9 01          	sub    $0x1,%rcx
   140002f2f:	48 83 c0 28          	add    $0x28,%rax
   140002f33:	48 39 d0             	cmp    %rdx,%rax
   140002f36:	75 e8                	jne    140002f20 <_FindPESectionExec+0x50>
   140002f38:	31 c0                	xor    %eax,%eax
   140002f3a:	c3                   	ret    
   140002f3b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000140002f40 <_GetPEImageBase>:
   140002f40:	48 8b 05 79 24 00 00 	mov    0x2479(%rip),%rax        # 1400053c0 <.refptr.__image_base__>
   140002f47:	45 31 c0             	xor    %r8d,%r8d
   140002f4a:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140002f4f:	75 0f                	jne    140002f60 <_GetPEImageBase+0x20>
   140002f51:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140002f55:	48 01 c2             	add    %rax,%rdx
   140002f58:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   140002f5e:	74 08                	je     140002f68 <_GetPEImageBase+0x28>
   140002f60:	4c 89 c0             	mov    %r8,%rax
   140002f63:	c3                   	ret    
   140002f64:	0f 1f 40 00          	nopl   0x0(%rax)
   140002f68:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   140002f6e:	4c 0f 44 c0          	cmove  %rax,%r8
   140002f72:	4c 89 c0             	mov    %r8,%rax
   140002f75:	c3                   	ret    
   140002f76:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002f7d:	00 00 00 

0000000140002f80 <_IsNonwritableInCurrentImage>:
   140002f80:	48 8b 15 39 24 00 00 	mov    0x2439(%rip),%rdx        # 1400053c0 <.refptr.__image_base__>
   140002f87:	31 c0                	xor    %eax,%eax
   140002f89:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140002f8e:	75 10                	jne    140002fa0 <_IsNonwritableInCurrentImage+0x20>
   140002f90:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002f94:	49 01 d0             	add    %rdx,%r8
   140002f97:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140002f9e:	74 08                	je     140002fa8 <_IsNonwritableInCurrentImage+0x28>
   140002fa0:	c3                   	ret    
   140002fa1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002fa8:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140002faf:	75 ef                	jne    140002fa0 <_IsNonwritableInCurrentImage+0x20>
   140002fb1:	48 29 d1             	sub    %rdx,%rcx
   140002fb4:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   140002fb9:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140002fbe:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   140002fc3:	45 85 c0             	test   %r8d,%r8d
   140002fc6:	74 d8                	je     140002fa0 <_IsNonwritableInCurrentImage+0x20>
   140002fc8:	41 8d 40 ff          	lea    -0x1(%r8),%eax
   140002fcc:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002fd0:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
   140002fd5:	0f 1f 00             	nopl   (%rax)
   140002fd8:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
   140002fdc:	4c 89 c0             	mov    %r8,%rax
   140002fdf:	4c 39 c1             	cmp    %r8,%rcx
   140002fe2:	72 08                	jb     140002fec <_IsNonwritableInCurrentImage+0x6c>
   140002fe4:	03 42 08             	add    0x8(%rdx),%eax
   140002fe7:	48 39 c1             	cmp    %rax,%rcx
   140002fea:	72 14                	jb     140003000 <_IsNonwritableInCurrentImage+0x80>
   140002fec:	48 83 c2 28          	add    $0x28,%rdx
   140002ff0:	4c 39 ca             	cmp    %r9,%rdx
   140002ff3:	75 e3                	jne    140002fd8 <_IsNonwritableInCurrentImage+0x58>
   140002ff5:	31 c0                	xor    %eax,%eax
   140002ff7:	c3                   	ret    
   140002ff8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002fff:	00 
   140003000:	8b 42 24             	mov    0x24(%rdx),%eax
   140003003:	f7 d0                	not    %eax
   140003005:	c1 e8 1f             	shr    $0x1f,%eax
   140003008:	c3                   	ret    
   140003009:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140003010 <__mingw_enum_import_library_names>:
   140003010:	4c 8b 1d a9 23 00 00 	mov    0x23a9(%rip),%r11        # 1400053c0 <.refptr.__image_base__>
   140003017:	45 31 c9             	xor    %r9d,%r9d
   14000301a:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   140003020:	75 10                	jne    140003032 <__mingw_enum_import_library_names+0x22>
   140003022:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
   140003026:	4d 01 d8             	add    %r11,%r8
   140003029:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140003030:	74 0e                	je     140003040 <__mingw_enum_import_library_names+0x30>
   140003032:	4c 89 c8             	mov    %r9,%rax
   140003035:	c3                   	ret    
   140003036:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000303d:	00 00 00 
   140003040:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140003047:	75 e9                	jne    140003032 <__mingw_enum_import_library_names+0x22>
   140003049:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
   140003050:	85 c0                	test   %eax,%eax
   140003052:	74 de                	je     140003032 <__mingw_enum_import_library_names+0x22>
   140003054:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   140003059:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   14000305e:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   140003063:	45 85 c0             	test   %r8d,%r8d
   140003066:	74 ca                	je     140003032 <__mingw_enum_import_library_names+0x22>
   140003068:	41 83 e8 01          	sub    $0x1,%r8d
   14000306c:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   140003070:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   140003075:	0f 1f 00             	nopl   (%rax)
   140003078:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   14000307c:	4d 89 c8             	mov    %r9,%r8
   14000307f:	4c 39 c8             	cmp    %r9,%rax
   140003082:	72 09                	jb     14000308d <__mingw_enum_import_library_names+0x7d>
   140003084:	44 03 42 08          	add    0x8(%rdx),%r8d
   140003088:	4c 39 c0             	cmp    %r8,%rax
   14000308b:	72 13                	jb     1400030a0 <__mingw_enum_import_library_names+0x90>
   14000308d:	48 83 c2 28          	add    $0x28,%rdx
   140003091:	49 39 d2             	cmp    %rdx,%r10
   140003094:	75 e2                	jne    140003078 <__mingw_enum_import_library_names+0x68>
   140003096:	45 31 c9             	xor    %r9d,%r9d
   140003099:	4c 89 c8             	mov    %r9,%rax
   14000309c:	c3                   	ret    
   14000309d:	0f 1f 00             	nopl   (%rax)
   1400030a0:	4c 01 d8             	add    %r11,%rax
   1400030a3:	eb 0a                	jmp    1400030af <__mingw_enum_import_library_names+0x9f>
   1400030a5:	0f 1f 00             	nopl   (%rax)
   1400030a8:	83 e9 01             	sub    $0x1,%ecx
   1400030ab:	48 83 c0 14          	add    $0x14,%rax
   1400030af:	44 8b 40 04          	mov    0x4(%rax),%r8d
   1400030b3:	45 85 c0             	test   %r8d,%r8d
   1400030b6:	75 07                	jne    1400030bf <__mingw_enum_import_library_names+0xaf>
   1400030b8:	8b 50 0c             	mov    0xc(%rax),%edx
   1400030bb:	85 d2                	test   %edx,%edx
   1400030bd:	74 d7                	je     140003096 <__mingw_enum_import_library_names+0x86>
   1400030bf:	85 c9                	test   %ecx,%ecx
   1400030c1:	7f e5                	jg     1400030a8 <__mingw_enum_import_library_names+0x98>
   1400030c3:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   1400030c7:	4d 01 d9             	add    %r11,%r9
   1400030ca:	4c 89 c8             	mov    %r9,%rax
   1400030cd:	c3                   	ret    
   1400030ce:	90                   	nop
   1400030cf:	90                   	nop

00000001400030d0 <___chkstk_ms>:
   1400030d0:	51                   	push   %rcx
   1400030d1:	50                   	push   %rax
   1400030d2:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   1400030d8:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   1400030dd:	72 19                	jb     1400030f8 <___chkstk_ms+0x28>
   1400030df:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   1400030e6:	48 83 09 00          	orq    $0x0,(%rcx)
   1400030ea:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   1400030f0:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   1400030f6:	77 e7                	ja     1400030df <___chkstk_ms+0xf>
   1400030f8:	48 29 c1             	sub    %rax,%rcx
   1400030fb:	48 83 09 00          	orq    $0x0,(%rcx)
   1400030ff:	58                   	pop    %rax
   140003100:	59                   	pop    %rcx
   140003101:	c3                   	ret    
   140003102:	90                   	nop
   140003103:	90                   	nop
   140003104:	90                   	nop
   140003105:	90                   	nop
   140003106:	90                   	nop
   140003107:	90                   	nop
   140003108:	90                   	nop
   140003109:	90                   	nop
   14000310a:	90                   	nop
   14000310b:	90                   	nop
   14000310c:	90                   	nop
   14000310d:	90                   	nop
   14000310e:	90                   	nop
   14000310f:	90                   	nop

0000000140003110 <__p__fmode>:
   140003110:	48 8b 05 e9 22 00 00 	mov    0x22e9(%rip),%rax        # 140005400 <.refptr.__imp__fmode>
   140003117:	48 8b 00             	mov    (%rax),%rax
   14000311a:	c3                   	ret    
   14000311b:	90                   	nop
   14000311c:	90                   	nop
   14000311d:	90                   	nop
   14000311e:	90                   	nop
   14000311f:	90                   	nop

0000000140003120 <__p__commode>:
   140003120:	48 8b 05 c9 22 00 00 	mov    0x22c9(%rip),%rax        # 1400053f0 <.refptr.__imp__commode>
   140003127:	48 8b 00             	mov    (%rax),%rax
   14000312a:	c3                   	ret    
   14000312b:	90                   	nop
   14000312c:	90                   	nop
   14000312d:	90                   	nop
   14000312e:	90                   	nop
   14000312f:	90                   	nop

0000000140003130 <__p__acmdln>:
   140003130:	48 8b 05 a9 22 00 00 	mov    0x22a9(%rip),%rax        # 1400053e0 <.refptr.__imp__acmdln>
   140003137:	48 8b 00             	mov    (%rax),%rax
   14000313a:	c3                   	ret    
   14000313b:	90                   	nop
   14000313c:	90                   	nop
   14000313d:	90                   	nop
   14000313e:	90                   	nop
   14000313f:	90                   	nop

0000000140003140 <_get_invalid_parameter_handler>:
   140003140:	48 8b 05 49 50 00 00 	mov    0x5049(%rip),%rax        # 140008190 <handler>
   140003147:	c3                   	ret    
   140003148:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000314f:	00 

0000000140003150 <_set_invalid_parameter_handler>:
   140003150:	48 89 c8             	mov    %rcx,%rax
   140003153:	48 87 05 36 50 00 00 	xchg   %rax,0x5036(%rip)        # 140008190 <handler>
   14000315a:	c3                   	ret    
   14000315b:	90                   	nop
   14000315c:	90                   	nop
   14000315d:	90                   	nop
   14000315e:	90                   	nop
   14000315f:	90                   	nop

0000000140003160 <__acrt_iob_func>:
   140003160:	53                   	push   %rbx
   140003161:	48 83 ec 20          	sub    $0x20,%rsp
   140003165:	89 cb                	mov    %ecx,%ebx
   140003167:	e8 24 00 00 00       	call   140003190 <__iob_func>
   14000316c:	89 d9                	mov    %ebx,%ecx
   14000316e:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
   140003172:	48 c1 e2 04          	shl    $0x4,%rdx
   140003176:	48 01 d0             	add    %rdx,%rax
   140003179:	48 83 c4 20          	add    $0x20,%rsp
   14000317d:	5b                   	pop    %rbx
   14000317e:	c3                   	ret    
   14000317f:	90                   	nop

0000000140003180 <__C_specific_handler>:
   140003180:	ff 25 92 60 00 00    	jmp    *0x6092(%rip)        # 140009218 <__imp___C_specific_handler>
   140003186:	90                   	nop
   140003187:	90                   	nop

0000000140003188 <__getmainargs>:
   140003188:	ff 25 92 60 00 00    	jmp    *0x6092(%rip)        # 140009220 <__imp___getmainargs>
   14000318e:	90                   	nop
   14000318f:	90                   	nop

0000000140003190 <__iob_func>:
   140003190:	ff 25 9a 60 00 00    	jmp    *0x609a(%rip)        # 140009230 <__imp___iob_func>
   140003196:	90                   	nop
   140003197:	90                   	nop

0000000140003198 <__set_app_type>:
   140003198:	ff 25 9a 60 00 00    	jmp    *0x609a(%rip)        # 140009238 <__imp___set_app_type>
   14000319e:	90                   	nop
   14000319f:	90                   	nop

00000001400031a0 <__setusermatherr>:
   1400031a0:	ff 25 9a 60 00 00    	jmp    *0x609a(%rip)        # 140009240 <__imp___setusermatherr>
   1400031a6:	90                   	nop
   1400031a7:	90                   	nop

00000001400031a8 <_amsg_exit>:
   1400031a8:	ff 25 a2 60 00 00    	jmp    *0x60a2(%rip)        # 140009250 <__imp__amsg_exit>
   1400031ae:	90                   	nop
   1400031af:	90                   	nop

00000001400031b0 <_cexit>:
   1400031b0:	ff 25 a2 60 00 00    	jmp    *0x60a2(%rip)        # 140009258 <__imp__cexit>
   1400031b6:	90                   	nop
   1400031b7:	90                   	nop

00000001400031b8 <_initterm>:
   1400031b8:	ff 25 b2 60 00 00    	jmp    *0x60b2(%rip)        # 140009270 <__imp__initterm>
   1400031be:	90                   	nop
   1400031bf:	90                   	nop

00000001400031c0 <_onexit>:
   1400031c0:	ff 25 b2 60 00 00    	jmp    *0x60b2(%rip)        # 140009278 <__imp__onexit>
   1400031c6:	90                   	nop
   1400031c7:	90                   	nop

00000001400031c8 <abort>:
   1400031c8:	ff 25 b2 60 00 00    	jmp    *0x60b2(%rip)        # 140009280 <__imp_abort>
   1400031ce:	90                   	nop
   1400031cf:	90                   	nop

00000001400031d0 <calloc>:
   1400031d0:	ff 25 b2 60 00 00    	jmp    *0x60b2(%rip)        # 140009288 <__imp_calloc>
   1400031d6:	90                   	nop
   1400031d7:	90                   	nop

00000001400031d8 <exit>:
   1400031d8:	ff 25 b2 60 00 00    	jmp    *0x60b2(%rip)        # 140009290 <__imp_exit>
   1400031de:	90                   	nop
   1400031df:	90                   	nop

00000001400031e0 <fprintf>:
   1400031e0:	ff 25 b2 60 00 00    	jmp    *0x60b2(%rip)        # 140009298 <__imp_fprintf>
   1400031e6:	90                   	nop
   1400031e7:	90                   	nop

00000001400031e8 <free>:
   1400031e8:	ff 25 b2 60 00 00    	jmp    *0x60b2(%rip)        # 1400092a0 <__imp_free>
   1400031ee:	90                   	nop
   1400031ef:	90                   	nop

00000001400031f0 <fwrite>:
   1400031f0:	ff 25 b2 60 00 00    	jmp    *0x60b2(%rip)        # 1400092a8 <__imp_fwrite>
   1400031f6:	90                   	nop
   1400031f7:	90                   	nop

00000001400031f8 <malloc>:
   1400031f8:	ff 25 b2 60 00 00    	jmp    *0x60b2(%rip)        # 1400092b0 <__imp_malloc>
   1400031fe:	90                   	nop
   1400031ff:	90                   	nop

0000000140003200 <memcpy>:
   140003200:	ff 25 b2 60 00 00    	jmp    *0x60b2(%rip)        # 1400092b8 <__imp_memcpy>
   140003206:	90                   	nop
   140003207:	90                   	nop

0000000140003208 <signal>:
   140003208:	ff 25 b2 60 00 00    	jmp    *0x60b2(%rip)        # 1400092c0 <__imp_signal>
   14000320e:	90                   	nop
   14000320f:	90                   	nop

0000000140003210 <strlen>:
   140003210:	ff 25 b2 60 00 00    	jmp    *0x60b2(%rip)        # 1400092c8 <__imp_strlen>
   140003216:	90                   	nop
   140003217:	90                   	nop

0000000140003218 <strncmp>:
   140003218:	ff 25 b2 60 00 00    	jmp    *0x60b2(%rip)        # 1400092d0 <__imp_strncmp>
   14000321e:	90                   	nop
   14000321f:	90                   	nop

0000000140003220 <vfprintf>:
   140003220:	ff 25 b2 60 00 00    	jmp    *0x60b2(%rip)        # 1400092d8 <__imp_vfprintf>
   140003226:	90                   	nop
   140003227:	90                   	nop
   140003228:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000322f:	00 

0000000140003230 <VirtualQuery>:
   140003230:	ff 25 d2 5f 00 00    	jmp    *0x5fd2(%rip)        # 140009208 <__imp_VirtualQuery>
   140003236:	90                   	nop
   140003237:	90                   	nop

0000000140003238 <VirtualProtect>:
   140003238:	ff 25 c2 5f 00 00    	jmp    *0x5fc2(%rip)        # 140009200 <__imp_VirtualProtect>
   14000323e:	90                   	nop
   14000323f:	90                   	nop

0000000140003240 <TlsGetValue>:
   140003240:	ff 25 b2 5f 00 00    	jmp    *0x5fb2(%rip)        # 1400091f8 <__imp_TlsGetValue>
   140003246:	90                   	nop
   140003247:	90                   	nop

0000000140003248 <Sleep>:
   140003248:	ff 25 a2 5f 00 00    	jmp    *0x5fa2(%rip)        # 1400091f0 <__imp_Sleep>
   14000324e:	90                   	nop
   14000324f:	90                   	nop

0000000140003250 <SetUnhandledExceptionFilter>:
   140003250:	ff 25 92 5f 00 00    	jmp    *0x5f92(%rip)        # 1400091e8 <__imp_SetUnhandledExceptionFilter>
   140003256:	90                   	nop
   140003257:	90                   	nop

0000000140003258 <LeaveCriticalSection>:
   140003258:	ff 25 82 5f 00 00    	jmp    *0x5f82(%rip)        # 1400091e0 <__imp_LeaveCriticalSection>
   14000325e:	90                   	nop
   14000325f:	90                   	nop

0000000140003260 <InitializeCriticalSection>:
   140003260:	ff 25 72 5f 00 00    	jmp    *0x5f72(%rip)        # 1400091d8 <__imp_InitializeCriticalSection>
   140003266:	90                   	nop
   140003267:	90                   	nop

0000000140003268 <GetStartupInfoA>:
   140003268:	ff 25 62 5f 00 00    	jmp    *0x5f62(%rip)        # 1400091d0 <__imp_GetStartupInfoA>
   14000326e:	90                   	nop
   14000326f:	90                   	nop

0000000140003270 <GetLastError>:
   140003270:	ff 25 52 5f 00 00    	jmp    *0x5f52(%rip)        # 1400091c8 <__imp_GetLastError>
   140003276:	90                   	nop
   140003277:	90                   	nop

0000000140003278 <EnterCriticalSection>:
   140003278:	ff 25 42 5f 00 00    	jmp    *0x5f42(%rip)        # 1400091c0 <__imp_EnterCriticalSection>
   14000327e:	90                   	nop
   14000327f:	90                   	nop

0000000140003280 <DeleteCriticalSection>:
   140003280:	ff 25 32 5f 00 00    	jmp    *0x5f32(%rip)        # 1400091b8 <__IAT_start__>
   140003286:	90                   	nop
   140003287:	90                   	nop
   140003288:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000328f:	00 

0000000140003290 <_ZN8RegisterItE13setPermissionEh>:
    void setPermission(uint8 permission)
   140003290:	55                   	push   %rbp
   140003291:	48 89 e5             	mov    %rsp,%rbp
   140003294:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140003298:	89 d0                	mov    %edx,%eax
   14000329a:	88 45 18             	mov    %al,0x18(%rbp)
        if(permission == Read)
   14000329d:	80 7d 18 01          	cmpb   $0x1,0x18(%rbp)
   1400032a1:	75 16                	jne    1400032b9 <_ZN8RegisterItE13setPermissionEh+0x29>
            Status = (T)0;
   1400032a3:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400032a7:	66 c7 40 02 00 00    	movw   $0x0,0x2(%rax)
            RW = (T)~(0);
   1400032ad:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400032b1:	66 c7 40 04 ff ff    	movw   $0xffff,0x4(%rax)
    }
   1400032b7:	eb 4c                	jmp    140003305 <_ZN8RegisterItE13setPermissionEh+0x75>
        else if(permission == Write)
   1400032b9:	80 7d 18 03          	cmpb   $0x3,0x18(%rbp)
   1400032bd:	75 16                	jne    1400032d5 <_ZN8RegisterItE13setPermissionEh+0x45>
            Status = (T)~(0);
   1400032bf:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400032c3:	66 c7 40 02 ff ff    	movw   $0xffff,0x2(%rax)
            RW = (T)0;
   1400032c9:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400032cd:	66 c7 40 04 00 00    	movw   $0x0,0x4(%rax)
    }
   1400032d3:	eb 30                	jmp    140003305 <_ZN8RegisterItE13setPermissionEh+0x75>
        else if(permission == ReWr)
   1400032d5:	80 7d 18 02          	cmpb   $0x2,0x18(%rbp)
   1400032d9:	75 16                	jne    1400032f1 <_ZN8RegisterItE13setPermissionEh+0x61>
            Status = (T)~(0);
   1400032db:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400032df:	66 c7 40 02 ff ff    	movw   $0xffff,0x2(%rax)
            RW = (T)~(0);
   1400032e5:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400032e9:	66 c7 40 04 ff ff    	movw   $0xffff,0x4(%rax)
    }
   1400032ef:	eb 14                	jmp    140003305 <_ZN8RegisterItE13setPermissionEh+0x75>
            Status = (T)0;
   1400032f1:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400032f5:	66 c7 40 02 00 00    	movw   $0x0,0x2(%rax)
            RW = (T)0;
   1400032fb:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400032ff:	66 c7 40 04 00 00    	movw   $0x0,0x4(%rax)
    }
   140003305:	90                   	nop
   140003306:	5d                   	pop    %rbp
   140003307:	c3                   	ret    
   140003308:	90                   	nop
   140003309:	90                   	nop
   14000330a:	90                   	nop
   14000330b:	90                   	nop
   14000330c:	90                   	nop
   14000330d:	90                   	nop
   14000330e:	90                   	nop
    void setPermission(uint8 num,uint8 permission)
   14000330f:	90                   	nop

0000000140003310 <_ZN8RegisterItE13setPermissionEhh>:
   140003310:	55                   	push   %rbp
   140003311:	48 89 e5             	mov    %rsp,%rbp
   140003314:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140003318:	89 d0                	mov    %edx,%eax
   14000331a:	44 89 c2             	mov    %r8d,%edx
   14000331d:	88 45 18             	mov    %al,0x18(%rbp)
   140003320:	89 d0                	mov    %edx,%eax
   140003322:	88 45 20             	mov    %al,0x20(%rbp)
        if(permission == Read)
   140003325:	80 7d 20 01          	cmpb   $0x1,0x20(%rbp)
   140003329:	75 55                	jne    140003380 <_ZN8RegisterItE13setPermissionEhh+0x70>
            Status = Status & ~(1 << num);
   14000332b:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000332f:	0f b7 40 02          	movzwl 0x2(%rax),%eax
   140003333:	41 89 c0             	mov    %eax,%r8d
   140003336:	0f b6 45 18          	movzbl 0x18(%rbp),%eax
   14000333a:	ba 01 00 00 00       	mov    $0x1,%edx
   14000333f:	89 c1                	mov    %eax,%ecx
   140003341:	d3 e2                	shl    %cl,%edx
   140003343:	89 d0                	mov    %edx,%eax
   140003345:	f7 d0                	not    %eax
   140003347:	44 21 c0             	and    %r8d,%eax
   14000334a:	89 c2                	mov    %eax,%edx
   14000334c:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003350:	66 89 50 02          	mov    %dx,0x2(%rax)
            RW = RW |  (1 << num);
   140003354:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003358:	0f b7 40 04          	movzwl 0x4(%rax),%eax
   14000335c:	41 89 c0             	mov    %eax,%r8d
   14000335f:	0f b6 45 18          	movzbl 0x18(%rbp),%eax
   140003363:	ba 01 00 00 00       	mov    $0x1,%edx
   140003368:	89 c1                	mov    %eax,%ecx
   14000336a:	d3 e2                	shl    %cl,%edx
   14000336c:	89 d0                	mov    %edx,%eax
   14000336e:	44 09 c0             	or     %r8d,%eax
   140003371:	89 c2                	mov    %eax,%edx
   140003373:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003377:	66 89 50 04          	mov    %dx,0x4(%rax)
    }
   14000337b:	e9 03 01 00 00       	jmp    140003483 <_ZN8RegisterItE13setPermissionEhh+0x173>
        else if(permission == Write)
   140003380:	80 7d 20 03          	cmpb   $0x3,0x20(%rbp)
   140003384:	75 55                	jne    1400033db <_ZN8RegisterItE13setPermissionEhh+0xcb>
            Status = Status |  (1 << num);
   140003386:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000338a:	0f b7 40 02          	movzwl 0x2(%rax),%eax
   14000338e:	41 89 c0             	mov    %eax,%r8d
   140003391:	0f b6 45 18          	movzbl 0x18(%rbp),%eax
   140003395:	ba 01 00 00 00       	mov    $0x1,%edx
   14000339a:	89 c1                	mov    %eax,%ecx
   14000339c:	d3 e2                	shl    %cl,%edx
   14000339e:	89 d0                	mov    %edx,%eax
   1400033a0:	44 09 c0             	or     %r8d,%eax
   1400033a3:	89 c2                	mov    %eax,%edx
   1400033a5:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400033a9:	66 89 50 02          	mov    %dx,0x2(%rax)
            RW = RW & ~(1 << num);
   1400033ad:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400033b1:	0f b7 40 04          	movzwl 0x4(%rax),%eax
   1400033b5:	41 89 c0             	mov    %eax,%r8d
   1400033b8:	0f b6 45 18          	movzbl 0x18(%rbp),%eax
   1400033bc:	ba 01 00 00 00       	mov    $0x1,%edx
   1400033c1:	89 c1                	mov    %eax,%ecx
   1400033c3:	d3 e2                	shl    %cl,%edx
   1400033c5:	89 d0                	mov    %edx,%eax
   1400033c7:	f7 d0                	not    %eax
   1400033c9:	44 21 c0             	and    %r8d,%eax
   1400033cc:	89 c2                	mov    %eax,%edx
   1400033ce:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400033d2:	66 89 50 04          	mov    %dx,0x4(%rax)
    }
   1400033d6:	e9 a8 00 00 00       	jmp    140003483 <_ZN8RegisterItE13setPermissionEhh+0x173>
        else if(permission == ReWr)
   1400033db:	80 7d 20 02          	cmpb   $0x2,0x20(%rbp)
   1400033df:	75 50                	jne    140003431 <_ZN8RegisterItE13setPermissionEhh+0x121>
            Status = Status |  (1 << num);
   1400033e1:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400033e5:	0f b7 40 02          	movzwl 0x2(%rax),%eax
   1400033e9:	41 89 c0             	mov    %eax,%r8d
   1400033ec:	0f b6 45 18          	movzbl 0x18(%rbp),%eax
   1400033f0:	ba 01 00 00 00       	mov    $0x1,%edx
   1400033f5:	89 c1                	mov    %eax,%ecx
   1400033f7:	d3 e2                	shl    %cl,%edx
   1400033f9:	89 d0                	mov    %edx,%eax
   1400033fb:	44 09 c0             	or     %r8d,%eax
   1400033fe:	89 c2                	mov    %eax,%edx
   140003400:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003404:	66 89 50 02          	mov    %dx,0x2(%rax)
            RW = RW |  (1 << num);
   140003408:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000340c:	0f b7 40 04          	movzwl 0x4(%rax),%eax
   140003410:	41 89 c0             	mov    %eax,%r8d
   140003413:	0f b6 45 18          	movzbl 0x18(%rbp),%eax
   140003417:	ba 01 00 00 00       	mov    $0x1,%edx
   14000341c:	89 c1                	mov    %eax,%ecx
   14000341e:	d3 e2                	shl    %cl,%edx
   140003420:	89 d0                	mov    %edx,%eax
   140003422:	44 09 c0             	or     %r8d,%eax
   140003425:	89 c2                	mov    %eax,%edx
   140003427:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000342b:	66 89 50 04          	mov    %dx,0x4(%rax)
    }
   14000342f:	eb 52                	jmp    140003483 <_ZN8RegisterItE13setPermissionEhh+0x173>
            Status = Status & ~(1 << num);
   140003431:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003435:	0f b7 40 02          	movzwl 0x2(%rax),%eax
   140003439:	41 89 c0             	mov    %eax,%r8d
   14000343c:	0f b6 45 18          	movzbl 0x18(%rbp),%eax
   140003440:	ba 01 00 00 00       	mov    $0x1,%edx
   140003445:	89 c1                	mov    %eax,%ecx
   140003447:	d3 e2                	shl    %cl,%edx
   140003449:	89 d0                	mov    %edx,%eax
   14000344b:	f7 d0                	not    %eax
   14000344d:	44 21 c0             	and    %r8d,%eax
   140003450:	89 c2                	mov    %eax,%edx
   140003452:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003456:	66 89 50 02          	mov    %dx,0x2(%rax)
            RW = RW & ~(1 << num);
   14000345a:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000345e:	0f b7 40 04          	movzwl 0x4(%rax),%eax
   140003462:	41 89 c0             	mov    %eax,%r8d
   140003465:	0f b6 45 18          	movzbl 0x18(%rbp),%eax
   140003469:	ba 01 00 00 00       	mov    $0x1,%edx
   14000346e:	89 c1                	mov    %eax,%ecx
   140003470:	d3 e2                	shl    %cl,%edx
   140003472:	89 d0                	mov    %edx,%eax
   140003474:	f7 d0                	not    %eax
   140003476:	44 21 c0             	and    %r8d,%eax
   140003479:	89 c2                	mov    %eax,%edx
   14000347b:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000347f:	66 89 50 04          	mov    %dx,0x4(%rax)
    }
   140003483:	90                   	nop
   140003484:	5d                   	pop    %rbp
   140003485:	c3                   	ret    
   140003486:	90                   	nop
   140003487:	90                   	nop
   140003488:	90                   	nop
   140003489:	90                   	nop
   14000348a:	90                   	nop
   14000348b:	90                   	nop
   14000348c:	90                   	nop
   14000348d:	90                   	nop
   14000348e:	90                   	nop
    uint8 getRegisterValue(T *Temp)
   14000348f:	90                   	nop

0000000140003490 <_ZN8RegisterItE16getRegisterValueEPt>:
   140003490:	55                   	push   %rbp
   140003491:	48 89 e5             	mov    %rsp,%rbp
   140003494:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140003498:	48 89 55 18          	mov    %rdx,0x18(%rbp)
        if(RW == (T)~(0))
   14000349c:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400034a0:	0f b7 40 04          	movzwl 0x4(%rax),%eax
   1400034a4:	66 83 f8 ff          	cmp    $0xffff,%ax
   1400034a8:	75 36                	jne    1400034e0 <_ZN8RegisterItE16getRegisterValueEPt+0x50>
           *Temp = Reg;
   1400034aa:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400034ae:	0f b7 10             	movzwl (%rax),%edx
   1400034b1:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400034b5:	66 89 10             	mov    %dx,(%rax)
           if(Status == (T)~(0))
   1400034b8:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400034bc:	0f b7 40 02          	movzwl 0x2(%rax),%eax
   1400034c0:	66 83 f8 ff          	cmp    $0xffff,%ax
   1400034c4:	75 0d                	jne    1400034d3 <_ZN8RegisterItE16getRegisterValueEPt+0x43>
               StateError = ReadWrite;
   1400034c6:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400034ca:	c7 40 08 03 00 00 00 	movl   $0x3,0x8(%rax)
   1400034d1:	eb 4e                	jmp    140003521 <_ZN8RegisterItE16getRegisterValueEPt+0x91>
               StateError = ReadOnly;
   1400034d3:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400034d7:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%rax)
   1400034de:	eb 41                	jmp    140003521 <_ZN8RegisterItE16getRegisterValueEPt+0x91>
        else if(RW == (T)~(1))
   1400034e0:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400034e4:	0f b7 40 04          	movzwl 0x4(%rax),%eax
   1400034e8:	66 83 f8 fe          	cmp    $0xfffe,%ax
   1400034ec:	75 28                	jne    140003516 <_ZN8RegisterItE16getRegisterValueEPt+0x86>
           if(RW == (T)~(0))
   1400034ee:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400034f2:	0f b7 40 04          	movzwl 0x4(%rax),%eax
   1400034f6:	66 83 f8 ff          	cmp    $0xffff,%ax
   1400034fa:	75 0d                	jne    140003509 <_ZN8RegisterItE16getRegisterValueEPt+0x79>
               StateError = ReadOnly;
   1400034fc:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003500:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%rax)
   140003507:	eb 18                	jmp    140003521 <_ZN8RegisterItE16getRegisterValueEPt+0x91>
               StateError = Reserved;
   140003509:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000350d:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
   140003514:	eb 0b                	jmp    140003521 <_ZN8RegisterItE16getRegisterValueEPt+0x91>
            StateError = Mutual;
   140003516:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000351a:	c7 40 08 04 00 00 00 	movl   $0x4,0x8(%rax)
        return StateError;
   140003521:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003525:	8b 40 08             	mov    0x8(%rax),%eax
    }
   140003528:	5d                   	pop    %rbp
   140003529:	c3                   	ret    
   14000352a:	90                   	nop
   14000352b:	90                   	nop
   14000352c:	90                   	nop
   14000352d:	90                   	nop
   14000352e:	90                   	nop
    uint8 setRegisterValue(T value)
   14000352f:	90                   	nop

0000000140003530 <_ZN8RegisterItE16setRegisterValueEt>:
   140003530:	55                   	push   %rbp
   140003531:	48 89 e5             	mov    %rsp,%rbp
   140003534:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140003538:	89 d0                	mov    %edx,%eax
   14000353a:	66 89 45 18          	mov    %ax,0x18(%rbp)
        if(Status == (T)~(0))
   14000353e:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003542:	0f b7 40 02          	movzwl 0x2(%rax),%eax
   140003546:	66 83 f8 ff          	cmp    $0xffff,%ax
   14000354a:	75 33                	jne    14000357f <_ZN8RegisterItE16setRegisterValueEt+0x4f>
           Reg = value;
   14000354c:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003550:	0f b7 55 18          	movzwl 0x18(%rbp),%edx
   140003554:	66 89 10             	mov    %dx,(%rax)
           if(RW == (T)~(0))
   140003557:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000355b:	0f b7 40 04          	movzwl 0x4(%rax),%eax
   14000355f:	66 83 f8 ff          	cmp    $0xffff,%ax
   140003563:	75 0d                	jne    140003572 <_ZN8RegisterItE16setRegisterValueEt+0x42>
               StateError = ReadWrite;
   140003565:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003569:	c7 40 08 03 00 00 00 	movl   $0x3,0x8(%rax)
   140003570:	eb 4d                	jmp    1400035bf <_ZN8RegisterItE16setRegisterValueEt+0x8f>
               StateError = WriteOnly;
   140003572:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003576:	c7 40 08 02 00 00 00 	movl   $0x2,0x8(%rax)
   14000357d:	eb 40                	jmp    1400035bf <_ZN8RegisterItE16setRegisterValueEt+0x8f>
        else if(Status == (T)0)
   14000357f:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003583:	0f b7 40 02          	movzwl 0x2(%rax),%eax
   140003587:	66 85 c0             	test   %ax,%ax
   14000358a:	75 28                	jne    1400035b4 <_ZN8RegisterItE16setRegisterValueEt+0x84>
           if(RW == (T)~(0))
   14000358c:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003590:	0f b7 40 04          	movzwl 0x4(%rax),%eax
   140003594:	66 83 f8 ff          	cmp    $0xffff,%ax
   140003598:	75 0d                	jne    1400035a7 <_ZN8RegisterItE16setRegisterValueEt+0x77>
               StateError = ReadOnly;
   14000359a:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000359e:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%rax)
   1400035a5:	eb 18                	jmp    1400035bf <_ZN8RegisterItE16setRegisterValueEt+0x8f>
               StateError = Reserved;
   1400035a7:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400035ab:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
   1400035b2:	eb 0b                	jmp    1400035bf <_ZN8RegisterItE16setRegisterValueEt+0x8f>
            StateError = Mutual;
   1400035b4:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400035b8:	c7 40 08 04 00 00 00 	movl   $0x4,0x8(%rax)
        return StateError;
   1400035bf:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400035c3:	8b 40 08             	mov    0x8(%rax),%eax
    }
   1400035c6:	5d                   	pop    %rbp
   1400035c7:	c3                   	ret    
   1400035c8:	90                   	nop
   1400035c9:	90                   	nop
   1400035ca:	90                   	nop
   1400035cb:	90                   	nop
   1400035cc:	90                   	nop
   1400035cd:	90                   	nop
   1400035ce:	90                   	nop
    uint8 GetBit(T *Temp,uint8 num)
   1400035cf:	90                   	nop

00000001400035d0 <_ZN8RegisterItE6GetBitEPth>:
   1400035d0:	55                   	push   %rbp
   1400035d1:	48 89 e5             	mov    %rsp,%rbp
   1400035d4:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400035d8:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   1400035dc:	44 89 c0             	mov    %r8d,%eax
   1400035df:	88 45 20             	mov    %al,0x20(%rbp)
        if((1 & (RW >> num)) == 1)
   1400035e2:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400035e6:	0f b7 40 04          	movzwl 0x4(%rax),%eax
   1400035ea:	0f b7 d0             	movzwl %ax,%edx
   1400035ed:	0f b6 45 20          	movzbl 0x20(%rbp),%eax
   1400035f1:	89 c1                	mov    %eax,%ecx
   1400035f3:	d3 fa                	sar    %cl,%edx
   1400035f5:	89 d0                	mov    %edx,%eax
   1400035f7:	83 e0 01             	and    $0x1,%eax
   1400035fa:	85 c0                	test   %eax,%eax
   1400035fc:	74 56                	je     140003654 <_ZN8RegisterItE6GetBitEPth+0x84>
            *Temp = (1 & (Reg >> num));
   1400035fe:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003602:	0f b7 00             	movzwl (%rax),%eax
   140003605:	0f b7 d0             	movzwl %ax,%edx
   140003608:	0f b6 45 20          	movzbl 0x20(%rbp),%eax
   14000360c:	89 c1                	mov    %eax,%ecx
   14000360e:	d3 fa                	sar    %cl,%edx
   140003610:	89 d0                	mov    %edx,%eax
   140003612:	83 e0 01             	and    $0x1,%eax
   140003615:	89 c2                	mov    %eax,%edx
   140003617:	48 8b 45 18          	mov    0x18(%rbp),%rax
   14000361b:	66 89 10             	mov    %dx,(%rax)
            if((1 & (Status >> num)) == 0)
   14000361e:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003622:	0f b7 40 02          	movzwl 0x2(%rax),%eax
   140003626:	0f b7 d0             	movzwl %ax,%edx
   140003629:	0f b6 45 20          	movzbl 0x20(%rbp),%eax
   14000362d:	89 c1                	mov    %eax,%ecx
   14000362f:	d3 fa                	sar    %cl,%edx
   140003631:	89 d0                	mov    %edx,%eax
   140003633:	83 e0 01             	and    $0x1,%eax
   140003636:	85 c0                	test   %eax,%eax
   140003638:	75 0d                	jne    140003647 <_ZN8RegisterItE6GetBitEPth+0x77>
                StateError = ReadOnly;
   14000363a:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000363e:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%rax)
   140003645:	eb 41                	jmp    140003688 <_ZN8RegisterItE6GetBitEPth+0xb8>
                StateError = ReadWrite;
   140003647:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000364b:	c7 40 08 03 00 00 00 	movl   $0x3,0x8(%rax)
   140003652:	eb 34                	jmp    140003688 <_ZN8RegisterItE6GetBitEPth+0xb8>
            if((1 & (Status >> num)) == 0)
   140003654:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003658:	0f b7 40 02          	movzwl 0x2(%rax),%eax
   14000365c:	0f b7 d0             	movzwl %ax,%edx
   14000365f:	0f b6 45 20          	movzbl 0x20(%rbp),%eax
   140003663:	89 c1                	mov    %eax,%ecx
   140003665:	d3 fa                	sar    %cl,%edx
   140003667:	89 d0                	mov    %edx,%eax
   140003669:	83 e0 01             	and    $0x1,%eax
   14000366c:	85 c0                	test   %eax,%eax
   14000366e:	75 0d                	jne    14000367d <_ZN8RegisterItE6GetBitEPth+0xad>
                StateError = Reserved;
   140003670:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003674:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
   14000367b:	eb 0b                	jmp    140003688 <_ZN8RegisterItE6GetBitEPth+0xb8>
                StateError = WriteOnly;
   14000367d:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003681:	c7 40 08 02 00 00 00 	movl   $0x2,0x8(%rax)
        return StateError;
   140003688:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000368c:	8b 40 08             	mov    0x8(%rax),%eax
    }
   14000368f:	5d                   	pop    %rbp
   140003690:	c3                   	ret    
   140003691:	90                   	nop
   140003692:	90                   	nop
   140003693:	90                   	nop
   140003694:	90                   	nop
   140003695:	90                   	nop
   140003696:	90                   	nop
   140003697:	90                   	nop
   140003698:	90                   	nop
   140003699:	90                   	nop
   14000369a:	90                   	nop
   14000369b:	90                   	nop
   14000369c:	90                   	nop
   14000369d:	90                   	nop
   14000369e:	90                   	nop
    uint8 SetBit(int num)
   14000369f:	90                   	nop

00000001400036a0 <_ZN8RegisterItE6SetBitEi>:
   1400036a0:	55                   	push   %rbp
   1400036a1:	48 89 e5             	mov    %rsp,%rbp
   1400036a4:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400036a8:	89 55 18             	mov    %edx,0x18(%rbp)
        if((1 & (Status >> num)) == 1)
   1400036ab:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400036af:	0f b7 40 02          	movzwl 0x2(%rax),%eax
   1400036b3:	0f b7 d0             	movzwl %ax,%edx
   1400036b6:	8b 45 18             	mov    0x18(%rbp),%eax
   1400036b9:	89 c1                	mov    %eax,%ecx
   1400036bb:	d3 fa                	sar    %cl,%edx
   1400036bd:	89 d0                	mov    %edx,%eax
   1400036bf:	83 e0 01             	and    $0x1,%eax
   1400036c2:	85 c0                	test   %eax,%eax
   1400036c4:	74 59                	je     14000371f <_ZN8RegisterItE6SetBitEi+0x7f>
            Reg = Reg |  (1 << num);
   1400036c6:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400036ca:	0f b7 00             	movzwl (%rax),%eax
   1400036cd:	41 89 c0             	mov    %eax,%r8d
   1400036d0:	8b 45 18             	mov    0x18(%rbp),%eax
   1400036d3:	ba 01 00 00 00       	mov    $0x1,%edx
   1400036d8:	89 c1                	mov    %eax,%ecx
   1400036da:	d3 e2                	shl    %cl,%edx
   1400036dc:	89 d0                	mov    %edx,%eax
   1400036de:	44 09 c0             	or     %r8d,%eax
   1400036e1:	89 c2                	mov    %eax,%edx
   1400036e3:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400036e7:	66 89 10             	mov    %dx,(%rax)
            if((1 & (RW >> num)) == 0)
   1400036ea:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400036ee:	0f b7 40 04          	movzwl 0x4(%rax),%eax
   1400036f2:	0f b7 d0             	movzwl %ax,%edx
   1400036f5:	8b 45 18             	mov    0x18(%rbp),%eax
   1400036f8:	89 c1                	mov    %eax,%ecx
   1400036fa:	d3 fa                	sar    %cl,%edx
   1400036fc:	89 d0                	mov    %edx,%eax
   1400036fe:	83 e0 01             	and    $0x1,%eax
   140003701:	85 c0                	test   %eax,%eax
   140003703:	75 0d                	jne    140003712 <_ZN8RegisterItE6SetBitEi+0x72>
                StateError = WriteOnly;
   140003705:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003709:	c7 40 08 02 00 00 00 	movl   $0x2,0x8(%rax)
   140003710:	eb 40                	jmp    140003752 <_ZN8RegisterItE6SetBitEi+0xb2>
                StateError = ReadWrite;
   140003712:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003716:	c7 40 08 03 00 00 00 	movl   $0x3,0x8(%rax)
   14000371d:	eb 33                	jmp    140003752 <_ZN8RegisterItE6SetBitEi+0xb2>
            if((1 & (RW >> num)) == 0)
   14000371f:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003723:	0f b7 40 04          	movzwl 0x4(%rax),%eax
   140003727:	0f b7 d0             	movzwl %ax,%edx
   14000372a:	8b 45 18             	mov    0x18(%rbp),%eax
   14000372d:	89 c1                	mov    %eax,%ecx
   14000372f:	d3 fa                	sar    %cl,%edx
   140003731:	89 d0                	mov    %edx,%eax
   140003733:	83 e0 01             	and    $0x1,%eax
   140003736:	85 c0                	test   %eax,%eax
   140003738:	75 0d                	jne    140003747 <_ZN8RegisterItE6SetBitEi+0xa7>
                StateError = Reserved;
   14000373a:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000373e:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
   140003745:	eb 0b                	jmp    140003752 <_ZN8RegisterItE6SetBitEi+0xb2>
                StateError = ReadOnly;
   140003747:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000374b:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%rax)
        return StateError;
   140003752:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003756:	8b 40 08             	mov    0x8(%rax),%eax
    }
   140003759:	5d                   	pop    %rbp
   14000375a:	c3                   	ret    
   14000375b:	90                   	nop
   14000375c:	90                   	nop
   14000375d:	90                   	nop
   14000375e:	90                   	nop
    uint8 ClearBit(int num)
   14000375f:	90                   	nop

0000000140003760 <_ZN8RegisterItE8ClearBitEi>:
   140003760:	55                   	push   %rbp
   140003761:	48 89 e5             	mov    %rsp,%rbp
   140003764:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140003768:	89 55 18             	mov    %edx,0x18(%rbp)
        if((1 & (Status >> num)) == 1)
   14000376b:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000376f:	0f b7 40 02          	movzwl 0x2(%rax),%eax
   140003773:	0f b7 d0             	movzwl %ax,%edx
   140003776:	8b 45 18             	mov    0x18(%rbp),%eax
   140003779:	89 c1                	mov    %eax,%ecx
   14000377b:	d3 fa                	sar    %cl,%edx
   14000377d:	89 d0                	mov    %edx,%eax
   14000377f:	83 e0 01             	and    $0x1,%eax
   140003782:	85 c0                	test   %eax,%eax
   140003784:	74 5b                	je     1400037e1 <_ZN8RegisterItE8ClearBitEi+0x81>
            Reg = Reg & ~(1 << num);
   140003786:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000378a:	0f b7 00             	movzwl (%rax),%eax
   14000378d:	41 89 c0             	mov    %eax,%r8d
   140003790:	8b 45 18             	mov    0x18(%rbp),%eax
   140003793:	ba 01 00 00 00       	mov    $0x1,%edx
   140003798:	89 c1                	mov    %eax,%ecx
   14000379a:	d3 e2                	shl    %cl,%edx
   14000379c:	89 d0                	mov    %edx,%eax
   14000379e:	f7 d0                	not    %eax
   1400037a0:	44 21 c0             	and    %r8d,%eax
   1400037a3:	89 c2                	mov    %eax,%edx
   1400037a5:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400037a9:	66 89 10             	mov    %dx,(%rax)
            if((1 & (RW >> num)) == 0)
   1400037ac:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400037b0:	0f b7 40 04          	movzwl 0x4(%rax),%eax
   1400037b4:	0f b7 d0             	movzwl %ax,%edx
   1400037b7:	8b 45 18             	mov    0x18(%rbp),%eax
   1400037ba:	89 c1                	mov    %eax,%ecx
   1400037bc:	d3 fa                	sar    %cl,%edx
   1400037be:	89 d0                	mov    %edx,%eax
   1400037c0:	83 e0 01             	and    $0x1,%eax
   1400037c3:	85 c0                	test   %eax,%eax
   1400037c5:	75 0d                	jne    1400037d4 <_ZN8RegisterItE8ClearBitEi+0x74>
                StateError = WriteOnly;
   1400037c7:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400037cb:	c7 40 08 02 00 00 00 	movl   $0x2,0x8(%rax)
   1400037d2:	eb 40                	jmp    140003814 <_ZN8RegisterItE8ClearBitEi+0xb4>
                StateError = ReadWrite;
   1400037d4:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400037d8:	c7 40 08 03 00 00 00 	movl   $0x3,0x8(%rax)
   1400037df:	eb 33                	jmp    140003814 <_ZN8RegisterItE8ClearBitEi+0xb4>
            if((1 & (RW >> num)) == 0)
   1400037e1:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400037e5:	0f b7 40 04          	movzwl 0x4(%rax),%eax
   1400037e9:	0f b7 d0             	movzwl %ax,%edx
   1400037ec:	8b 45 18             	mov    0x18(%rbp),%eax
   1400037ef:	89 c1                	mov    %eax,%ecx
   1400037f1:	d3 fa                	sar    %cl,%edx
   1400037f3:	89 d0                	mov    %edx,%eax
   1400037f5:	83 e0 01             	and    $0x1,%eax
   1400037f8:	85 c0                	test   %eax,%eax
   1400037fa:	75 0d                	jne    140003809 <_ZN8RegisterItE8ClearBitEi+0xa9>
                StateError = Reserved;
   1400037fc:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003800:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
   140003807:	eb 0b                	jmp    140003814 <_ZN8RegisterItE8ClearBitEi+0xb4>
                StateError = ReadOnly;
   140003809:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000380d:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%rax)
        return StateError;
   140003814:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003818:	8b 40 08             	mov    0x8(%rax),%eax
    }
   14000381b:	5d                   	pop    %rbp
   14000381c:	c3                   	ret    
   14000381d:	90                   	nop
   14000381e:	90                   	nop
    Register()
   14000381f:	90                   	nop

0000000140003820 <_ZN8RegisterItEC1Ev>:
   140003820:	55                   	push   %rbp
   140003821:	48 89 e5             	mov    %rsp,%rbp
   140003824:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
        Reg = (T)0;
   140003828:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000382c:	66 c7 00 00 00       	movw   $0x0,(%rax)
        Status = (T)0;
   140003831:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003835:	66 c7 40 02 00 00    	movw   $0x0,0x2(%rax)
        RW = (T)0;
   14000383b:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000383f:	66 c7 40 04 00 00    	movw   $0x0,0x4(%rax)
        StateError = Reserved;
   140003845:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003849:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
    }
   140003850:	90                   	nop
   140003851:	5d                   	pop    %rbp
   140003852:	c3                   	ret    
   140003853:	90                   	nop
   140003854:	90                   	nop
   140003855:	90                   	nop
   140003856:	90                   	nop
   140003857:	90                   	nop
   140003858:	90                   	nop
   140003859:	90                   	nop
   14000385a:	90                   	nop
   14000385b:	90                   	nop
   14000385c:	90                   	nop
   14000385d:	90                   	nop
   14000385e:	90                   	nop
   14000385f:	90                   	nop

0000000140003860 <register_frame_ctor>:
   140003860:	e9 ab dc ff ff       	jmp    140001510 <__gcc_register_frame>
   140003865:	90                   	nop
   140003866:	90                   	nop
   140003867:	90                   	nop
   140003868:	90                   	nop
   140003869:	90                   	nop
   14000386a:	90                   	nop
   14000386b:	90                   	nop
   14000386c:	90                   	nop
   14000386d:	90                   	nop
   14000386e:	90                   	nop
   14000386f:	90                   	nop

0000000140003870 <__CTOR_LIST__>:
   140003870:	ff                   	(bad)  
   140003871:	ff                   	(bad)  
   140003872:	ff                   	(bad)  
   140003873:	ff                   	(bad)  
   140003874:	ff                   	(bad)  
   140003875:	ff                   	(bad)  
   140003876:	ff                   	(bad)  
   140003877:	ff                   	.byte 0xff

0000000140003878 <.ctors>:
   140003878:	09 20                	or     %esp,(%rax)
   14000387a:	00 40 01             	add    %al,0x1(%rax)
   14000387d:	00 00                	add    %al,(%rax)
	...

0000000140003880 <.ctors.65535>:
   140003880:	60                   	(bad)  
   140003881:	38 00                	cmp    %al,(%rax)
   140003883:	40 01 00             	rex add %eax,(%rax)
	...

0000000140003890 <__DTOR_LIST__>:
   140003890:	ff                   	(bad)  
   140003891:	ff                   	(bad)  
   140003892:	ff                   	(bad)  
   140003893:	ff                   	(bad)  
   140003894:	ff                   	(bad)  
   140003895:	ff                   	(bad)  
   140003896:	ff                   	(bad)  
   140003897:	ff 00                	incl   (%rax)
   140003899:	00 00                	add    %al,(%rax)
   14000389b:	00 00                	add    %al,(%rax)
   14000389d:	00 00                	add    %al,(%rax)
	...
