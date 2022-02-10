
d:/vsc/assignement_1_Strings/out.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret    
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 65 44 00 00 	mov    0x4465(%rip),%rax        # 140005480 <.refptr.__mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 66 44 00 00 	mov    0x4466(%rip),%rax        # 140005490 <.refptr.__mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 69 44 00 00 	mov    0x4469(%rip),%rax        # 1400054a0 <.refptr.__mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 dc 43 00 00 	mov    0x43dc(%rip),%rax        # 140005420 <.refptr.__image_base__>
   140001044:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001049:	75 0f                	jne    14000105a <pre_c_init+0x4a>
   14000104b:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000104f:	48 01 d0             	add    %rdx,%rax
   140001052:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001058:	74 66                	je     1400010c0 <pre_c_init+0xb0>
   14000105a:	48 8b 05 0f 44 00 00 	mov    0x440f(%rip),%rax        # 140005470 <.refptr.__mingw_app_type>
   140001061:	89 0d b9 6f 00 00    	mov    %ecx,0x6fb9(%rip)        # 140008020 <managedapp>
   140001067:	8b 00                	mov    (%rax),%eax
   140001069:	85 c0                	test   %eax,%eax
   14000106b:	74 43                	je     1400010b0 <pre_c_init+0xa0>
   14000106d:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001072:	e8 91 22 00 00       	call   140003308 <__set_app_type>
   140001077:	e8 04 22 00 00       	call   140003280 <__p__fmode>
   14000107c:	48 8b 15 bd 44 00 00 	mov    0x44bd(%rip),%rdx        # 140005540 <.refptr._fmode>
   140001083:	8b 12                	mov    (%rdx),%edx
   140001085:	89 10                	mov    %edx,(%rax)
   140001087:	e8 04 22 00 00       	call   140003290 <__p__commode>
   14000108c:	48 8b 15 8d 44 00 00 	mov    0x448d(%rip),%rdx        # 140005520 <.refptr._commode>
   140001093:	8b 12                	mov    (%rdx),%edx
   140001095:	89 10                	mov    %edx,(%rax)
   140001097:	e8 f4 11 00 00       	call   140002290 <_setargv>
   14000109c:	48 8b 05 0d 43 00 00 	mov    0x430d(%rip),%rax        # 1400053b0 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010a3:	83 38 01             	cmpl   $0x1,(%rax)
   1400010a6:	74 50                	je     1400010f8 <pre_c_init+0xe8>
   1400010a8:	31 c0                	xor    %eax,%eax
   1400010aa:	48 83 c4 28          	add    $0x28,%rsp
   1400010ae:	c3                   	ret    
   1400010af:	90                   	nop
   1400010b0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400010b5:	e8 4e 22 00 00       	call   140003308 <__set_app_type>
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
   1400010f8:	48 8b 0d 61 44 00 00 	mov    0x4461(%rip),%rcx        # 140005560 <.refptr._matherr>
   1400010ff:	e8 ec 18 00 00       	call   1400029f0 <__mingw_setusermatherr>
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
   140001134:	48 8b 05 35 44 00 00 	mov    0x4435(%rip),%rax        # 140005570 <.refptr._newmode>
   14000113b:	4c 8d 05 e6 6e 00 00 	lea    0x6ee6(%rip),%r8        # 140008028 <envp>
   140001142:	48 8d 15 e7 6e 00 00 	lea    0x6ee7(%rip),%rdx        # 140008030 <argv>
   140001149:	48 8d 0d e8 6e 00 00 	lea    0x6ee8(%rip),%rcx        # 140008038 <argc>
   140001150:	8b 00                	mov    (%rax),%eax
   140001152:	89 05 c0 6e 00 00    	mov    %eax,0x6ec0(%rip)        # 140008018 <startinfo>
   140001158:	48 8d 05 b9 6e 00 00 	lea    0x6eb9(%rip),%rax        # 140008018 <startinfo>
   14000115f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140001164:	48 8b 05 c5 43 00 00 	mov    0x43c5(%rip),%rax        # 140005530 <.refptr._dowildcard>
   14000116b:	44 8b 08             	mov    (%rax),%r9d
   14000116e:	e8 85 21 00 00       	call   1400032f8 <__getmainargs>
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
   1400011a1:	48 8b 3d c8 42 00 00 	mov    0x42c8(%rip),%rdi        # 140005470 <.refptr.__mingw_app_type>
   1400011a8:	44 8b 0f             	mov    (%rdi),%r9d
   1400011ab:	45 85 c9             	test   %r9d,%r9d
   1400011ae:	0f 85 9c 02 00 00    	jne    140001450 <__tmainCRTStartup+0x2d0>
   1400011b4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
   1400011bb:	00 00 
   1400011bd:	48 8b 1d fc 42 00 00 	mov    0x42fc(%rip),%rbx        # 1400054c0 <.refptr.__native_startup_lock>
   1400011c4:	48 8b 70 08          	mov    0x8(%rax),%rsi
   1400011c8:	31 ed                	xor    %ebp,%ebp
   1400011ca:	4c 8b 25 a3 80 00 00 	mov    0x80a3(%rip),%r12        # 140009274 <__imp_Sleep>
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
   1400011f6:	48 8b 35 d3 42 00 00 	mov    0x42d3(%rip),%rsi        # 1400054d0 <.refptr.__native_startup_state>
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
   140001231:	48 8b 05 d8 41 00 00 	mov    0x41d8(%rip),%rax        # 140005410 <.refptr.__dyn_tls_init_callback>
   140001238:	48 8b 00             	mov    (%rax),%rax
   14000123b:	48 85 c0             	test   %rax,%rax
   14000123e:	74 0c                	je     14000124c <__tmainCRTStartup+0xcc>
   140001240:	45 31 c0             	xor    %r8d,%r8d
   140001243:	ba 02 00 00 00       	mov    $0x2,%edx
   140001248:	31 c9                	xor    %ecx,%ecx
   14000124a:	ff d0                	call   *%rax
   14000124c:	e8 0f 14 00 00       	call   140002660 <_pei386_runtime_relocator>
   140001251:	48 8b 0d f8 42 00 00 	mov    0x42f8(%rip),%rcx        # 140005550 <.refptr._gnu_exception_handler>
   140001258:	ff 15 0e 80 00 00    	call   *0x800e(%rip)        # 14000926c <__imp_SetUnhandledExceptionFilter>
   14000125e:	48 8b 15 4b 42 00 00 	mov    0x424b(%rip),%rdx        # 1400054b0 <.refptr.__mingw_oldexcpt_handler>
   140001265:	48 8d 0d 94 fd ff ff 	lea    -0x26c(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   14000126c:	48 89 02             	mov    %rax,(%rdx)
   14000126f:	e8 4c 20 00 00       	call   1400032c0 <_set_invalid_parameter_handler>
   140001274:	e8 f7 11 00 00       	call   140002470 <_fpreset>
   140001279:	48 8b 05 a0 41 00 00 	mov    0x41a0(%rip),%rax        # 140005420 <.refptr.__image_base__>
   140001280:	48 89 05 89 6d 00 00 	mov    %rax,0x6d89(%rip)        # 140008010 <__mingw_winmain_hInstance>
   140001287:	e8 14 20 00 00       	call   1400032a0 <__p__acmdln>
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
   140001323:	e8 48 20 00 00       	call   140003370 <malloc>
   140001328:	4c 8b 2d 01 6d 00 00 	mov    0x6d01(%rip),%r13        # 140008030 <argv>
   14000132f:	48 89 c7             	mov    %rax,%rdi
   140001332:	85 ed                	test   %ebp,%ebp
   140001334:	7e 42                	jle    140001378 <__tmainCRTStartup+0x1f8>
   140001336:	31 db                	xor    %ebx,%ebx
   140001338:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000133f:	00 
   140001340:	49 8b 4c dd 00       	mov    0x0(%r13,%rbx,8),%rcx
   140001345:	e8 3e 20 00 00       	call   140003388 <strlen>
   14000134a:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000134e:	48 89 f1             	mov    %rsi,%rcx
   140001351:	e8 1a 20 00 00       	call   140003370 <malloc>
   140001356:	49 89 f0             	mov    %rsi,%r8
   140001359:	48 89 04 df          	mov    %rax,(%rdi,%rbx,8)
   14000135d:	49 8b 54 dd 00       	mov    0x0(%r13,%rbx,8),%rdx
   140001362:	48 89 c1             	mov    %rax,%rcx
   140001365:	48 83 c3 01          	add    $0x1,%rbx
   140001369:	e8 0a 20 00 00       	call   140003378 <memcpy>
   14000136e:	48 39 dd             	cmp    %rbx,%rbp
   140001371:	75 cd                	jne    140001340 <__tmainCRTStartup+0x1c0>
   140001373:	4a 8d 44 27 f8       	lea    -0x8(%rdi,%r12,1),%rax
   140001378:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   14000137f:	48 89 3d aa 6c 00 00 	mov    %rdi,0x6caa(%rip)        # 140008030 <argv>
   140001386:	e8 e5 0e 00 00       	call   140002270 <__main>
   14000138b:	48 8b 05 9e 40 00 00 	mov    0x409e(%rip),%rax        # 140005430 <.refptr.__imp___initenv>
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
   1400013f8:	48 8b 35 d1 40 00 00 	mov    0x40d1(%rip),%rsi        # 1400054d0 <.refptr.__native_startup_state>
   1400013ff:	bd 01 00 00 00       	mov    $0x1,%ebp
   140001404:	8b 06                	mov    (%rsi),%eax
   140001406:	83 f8 01             	cmp    $0x1,%eax
   140001409:	0f 85 fb fd ff ff    	jne    14000120a <__tmainCRTStartup+0x8a>
   14000140f:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   140001414:	e8 ff 1e 00 00       	call   140003318 <_amsg_exit>
   140001419:	8b 06                	mov    (%rsi),%eax
   14000141b:	83 f8 01             	cmp    $0x1,%eax
   14000141e:	0f 85 05 fe ff ff    	jne    140001229 <__tmainCRTStartup+0xa9>
   140001424:	48 8b 15 c5 40 00 00 	mov    0x40c5(%rip),%rdx        # 1400054f0 <.refptr.__xc_z>
   14000142b:	48 8b 0d ae 40 00 00 	mov    0x40ae(%rip),%rcx        # 1400054e0 <.refptr.__xc_a>
   140001432:	e8 f1 1e 00 00       	call   140003328 <_initterm>
   140001437:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   14000143d:	85 ed                	test   %ebp,%ebp
   14000143f:	0f 85 ec fd ff ff    	jne    140001231 <__tmainCRTStartup+0xb1>
   140001445:	31 c0                	xor    %eax,%eax
   140001447:	48 87 03             	xchg   %rax,(%rbx)
   14000144a:	e9 e2 fd ff ff       	jmp    140001231 <__tmainCRTStartup+0xb1>
   14000144f:	90                   	nop
   140001450:	4c 89 c1             	mov    %r8,%rcx
   140001453:	ff 15 fb 7d 00 00    	call   *0x7dfb(%rip)        # 140009254 <__imp_GetStartupInfoA>
   140001459:	e9 56 fd ff ff       	jmp    1400011b4 <__tmainCRTStartup+0x34>
   14000145e:	66 90                	xchg   %ax,%ax
   140001460:	e8 bb 1e 00 00       	call   140003320 <_cexit>
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
   140001480:	48 8b 15 89 40 00 00 	mov    0x4089(%rip),%rdx        # 140005510 <.refptr.__xi_z>
   140001487:	48 8b 0d 72 40 00 00 	mov    0x4072(%rip),%rcx        # 140005500 <.refptr.__xi_a>
   14000148e:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   140001494:	e8 8f 1e 00 00       	call   140003328 <_initterm>
   140001499:	e9 80 fd ff ff       	jmp    14000121e <__tmainCRTStartup+0x9e>
   14000149e:	89 c1                	mov    %eax,%ecx
   1400014a0:	e8 a3 1e 00 00       	call   140003348 <exit>
   1400014a5:	90                   	nop
   1400014a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400014ad:	00 00 00 

00000001400014b0 <WinMainCRTStartup>:
   1400014b0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400014b4 <.l_startw>:
   1400014b4:	48 8b 05 b5 3f 00 00 	mov    0x3fb5(%rip),%rax        # 140005470 <.refptr.__mingw_app_type>
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
   1400014d4:	48 8b 05 95 3f 00 00 	mov    0x3f95(%rip),%rax        # 140005470 <.refptr.__mingw_app_type>
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
   1400014f4:	e8 37 1e 00 00       	call   140003330 <_onexit>
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
using std::endl;
using std::cin;
using std::stringstream;

int main (void)
{
   14000152f:	90                   	nop

0000000140001530 <main>:
   140001530:	55                   	push   %rbp
   140001531:	56                   	push   %rsi
   140001532:	53                   	push   %rbx
   140001533:	48 81 ec 50 03 00 00 	sub    $0x350,%rsp
   14000153a:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
   140001541:	00 
   140001542:	e8 29 0d 00 00       	call   140002270 <__main>
    int no_of_testcase,*cases,**counter;
    string s;
   140001547:	48 8d 85 30 01 00 00 	lea    0x130(%rbp),%rax
   14000154e:	48 89 c1             	mov    %rax,%rcx
   140001551:	e8 2a 0c 00 00       	call   140002180 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>

    cin >> no_of_testcase;
   140001556:	48 8d 85 5c 01 00 00 	lea    0x15c(%rbp),%rax
   14000155d:	48 89 c2             	mov    %rax,%rdx
   140001560:	48 8b 05 59 3e 00 00 	mov    0x3e59(%rip),%rax        # 1400053c0 <__fu1__ZSt3cin>
   140001567:	48 89 c1             	mov    %rax,%rcx
   14000156a:	e8 21 0c 00 00       	call   140002190 <_ZNSirsERi>
     cases = (int*)malloc(sizeof(int)*no_of_testcase);
   14000156f:	8b 85 5c 01 00 00    	mov    0x15c(%rbp),%eax
   140001575:	48 98                	cltq   
   140001577:	48 c1 e0 02          	shl    $0x2,%rax
   14000157b:	48 89 c1             	mov    %rax,%rcx
   14000157e:	e8 ed 1d 00 00       	call   140003370 <malloc>
   140001583:	48 89 85 b8 02 00 00 	mov    %rax,0x2b8(%rbp)
     counter = (int**)malloc(sizeof(int)*no_of_testcase);
   14000158a:	8b 85 5c 01 00 00    	mov    0x15c(%rbp),%eax
   140001590:	48 98                	cltq   
   140001592:	48 c1 e0 02          	shl    $0x2,%rax
   140001596:	48 89 c1             	mov    %rax,%rcx
   140001599:	e8 d2 1d 00 00       	call   140003370 <malloc>
   14000159e:	48 89 85 b0 02 00 00 	mov    %rax,0x2b0(%rbp)

    for(int i = 0;i < no_of_testcase; i++)
   1400015a5:	c7 85 cc 02 00 00 00 	movl   $0x0,0x2cc(%rbp)
   1400015ac:	00 00 00 
   1400015af:	e9 ef 00 00 00       	jmp    1400016a3 <main+0x173>
    {

        cin >> cases[i];
   1400015b4:	8b 85 cc 02 00 00    	mov    0x2cc(%rbp),%eax
   1400015ba:	48 98                	cltq   
   1400015bc:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   1400015c3:	00 
   1400015c4:	48 8b 85 b8 02 00 00 	mov    0x2b8(%rbp),%rax
   1400015cb:	48 01 d0             	add    %rdx,%rax
   1400015ce:	48 89 c2             	mov    %rax,%rdx
   1400015d1:	48 8b 05 e8 3d 00 00 	mov    0x3de8(%rip),%rax        # 1400053c0 <__fu1__ZSt3cin>
   1400015d8:	48 89 c1             	mov    %rax,%rcx
   1400015db:	e8 b0 0b 00 00       	call   140002190 <_ZNSirsERi>
        counter[i] = (int*)malloc(sizeof(int)*4);
   1400015e0:	8b 85 cc 02 00 00    	mov    0x2cc(%rbp),%eax
   1400015e6:	48 98                	cltq   
   1400015e8:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   1400015ef:	00 
   1400015f0:	48 8b 85 b0 02 00 00 	mov    0x2b0(%rbp),%rax
   1400015f7:	48 8d 1c 02          	lea    (%rdx,%rax,1),%rbx
   1400015fb:	b9 10 00 00 00       	mov    $0x10,%ecx
   140001600:	e8 6b 1d 00 00       	call   140003370 <malloc>
   140001605:	48 89 03             	mov    %rax,(%rbx)
        counter[i][0]=counter[i][1]=counter[i][2]=counter[i][3]=0;
   140001608:	8b 85 cc 02 00 00    	mov    0x2cc(%rbp),%eax
   14000160e:	48 98                	cltq   
   140001610:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   140001617:	00 
   140001618:	48 8b 85 b0 02 00 00 	mov    0x2b0(%rbp),%rax
   14000161f:	48 01 d0             	add    %rdx,%rax
   140001622:	48 8b 00             	mov    (%rax),%rax
   140001625:	48 83 c0 0c          	add    $0xc,%rax
   140001629:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   14000162f:	8b 95 cc 02 00 00    	mov    0x2cc(%rbp),%edx
   140001635:	48 63 d2             	movslq %edx,%rdx
   140001638:	48 8d 0c d5 00 00 00 	lea    0x0(,%rdx,8),%rcx
   14000163f:	00 
   140001640:	48 8b 95 b0 02 00 00 	mov    0x2b0(%rbp),%rdx
   140001647:	48 01 ca             	add    %rcx,%rdx
   14000164a:	48 8b 12             	mov    (%rdx),%rdx
   14000164d:	48 83 c2 08          	add    $0x8,%rdx
   140001651:	8b 00                	mov    (%rax),%eax
   140001653:	89 02                	mov    %eax,(%rdx)
   140001655:	8b 85 cc 02 00 00    	mov    0x2cc(%rbp),%eax
   14000165b:	48 98                	cltq   
   14000165d:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
   140001664:	00 
   140001665:	48 8b 85 b0 02 00 00 	mov    0x2b0(%rbp),%rax
   14000166c:	48 01 c8             	add    %rcx,%rax
   14000166f:	48 8b 00             	mov    (%rax),%rax
   140001672:	48 83 c0 04          	add    $0x4,%rax
   140001676:	8b 12                	mov    (%rdx),%edx
   140001678:	89 10                	mov    %edx,(%rax)
   14000167a:	8b 95 cc 02 00 00    	mov    0x2cc(%rbp),%edx
   140001680:	48 63 d2             	movslq %edx,%rdx
   140001683:	48 8d 0c d5 00 00 00 	lea    0x0(,%rdx,8),%rcx
   14000168a:	00 
   14000168b:	48 8b 95 b0 02 00 00 	mov    0x2b0(%rbp),%rdx
   140001692:	48 01 ca             	add    %rcx,%rdx
   140001695:	48 8b 12             	mov    (%rdx),%rdx
   140001698:	8b 00                	mov    (%rax),%eax
   14000169a:	89 02                	mov    %eax,(%rdx)
    for(int i = 0;i < no_of_testcase; i++)
   14000169c:	83 85 cc 02 00 00 01 	addl   $0x1,0x2cc(%rbp)
   1400016a3:	8b 85 5c 01 00 00    	mov    0x15c(%rbp),%eax
   1400016a9:	39 85 cc 02 00 00    	cmp    %eax,0x2cc(%rbp)
   1400016af:	0f 8c ff fe ff ff    	jl     1400015b4 <main+0x84>
    }
    for(int i = 0; i < no_of_testcase; i++)
   1400016b5:	c7 85 c8 02 00 00 00 	movl   $0x0,0x2c8(%rbp)
   1400016bc:	00 00 00 
   1400016bf:	e9 4c 08 00 00       	jmp    140001f10 <main+0x9e0>
    {
        for(int j = 0; j < cases[i]; j++)
   1400016c4:	c7 85 c4 02 00 00 00 	movl   $0x0,0x2c4(%rbp)
   1400016cb:	00 00 00 
   1400016ce:	e9 0e 08 00 00       	jmp    140001ee1 <main+0x9b1>
        {
            fflush(stdin);
   1400016d3:	b9 00 00 00 00       	mov    $0x0,%ecx
   1400016d8:	48 8b 05 c1 29 00 00 	mov    0x29c1(%rip),%rax        # 1400040a0 <__imp___acrt_iob_func>
   1400016df:	ff d0                	call   *%rax
   1400016e1:	48 89 c1             	mov    %rax,%rcx
   1400016e4:	e8 67 1c 00 00       	call   140003350 <fflush>
            std::getline(cin,s,'\n');
   1400016e9:	48 8d 85 30 01 00 00 	lea    0x130(%rbp),%rax
   1400016f0:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
   1400016f6:	48 89 c2             	mov    %rax,%rdx
   1400016f9:	48 8b 05 c0 3c 00 00 	mov    0x3cc0(%rip),%rax        # 1400053c0 <__fu1__ZSt3cin>
   140001700:	48 89 c1             	mov    %rax,%rcx
   140001703:	e8 48 0a 00 00       	call   140002150 <_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_>
            int temp = s.find_last_of(".");
   140001708:	48 8d 85 30 01 00 00 	lea    0x130(%rbp),%rax
   14000170f:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
   140001716:	48 8d 15 e3 38 00 00 	lea    0x38e3(%rip),%rdx        # 140005000 <.rdata>
   14000171d:	48 89 c1             	mov    %rax,%rcx
   140001720:	e8 8b 0a 00 00       	call   1400021b0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcy>
   140001725:	89 85 ac 02 00 00    	mov    %eax,0x2ac(%rbp)
            int var = 0;
   14000172b:	c7 85 2c 01 00 00 00 	movl   $0x0,0x12c(%rbp)
   140001732:	00 00 00 
            stringstream str(s.substr(s.find_last_of(' ')+1,s.find_last_of('b')-s.find_last_of(' ')+1));
   140001735:	ba 08 00 00 00       	mov    $0x8,%edx
   14000173a:	b9 10 00 00 00       	mov    $0x10,%ecx
   14000173f:	e8 ec 1c 00 00       	call   140003430 <_ZStorSt13_Ios_OpenmodeS_>
   140001744:	89 c6                	mov    %eax,%esi
   140001746:	48 8d 85 30 01 00 00 	lea    0x130(%rbp),%rax
   14000174d:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
   140001754:	ba 62 00 00 00       	mov    $0x62,%edx
   140001759:	48 89 c1             	mov    %rax,%rcx
   14000175c:	e8 47 0a 00 00       	call   1400021a8 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEcy>
   140001761:	48 89 c3             	mov    %rax,%rbx
   140001764:	48 8d 85 30 01 00 00 	lea    0x130(%rbp),%rax
   14000176b:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
   140001772:	ba 20 00 00 00       	mov    $0x20,%edx
   140001777:	48 89 c1             	mov    %rax,%rcx
   14000177a:	e8 29 0a 00 00       	call   1400021a8 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEcy>
   14000177f:	48 89 c2             	mov    %rax,%rdx
   140001782:	48 89 d8             	mov    %rbx,%rax
   140001785:	48 29 d0             	sub    %rdx,%rax
   140001788:	48 8d 58 01          	lea    0x1(%rax),%rbx
   14000178c:	48 8d 85 30 01 00 00 	lea    0x130(%rbp),%rax
   140001793:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
   14000179a:	ba 20 00 00 00       	mov    $0x20,%edx
   14000179f:	48 89 c1             	mov    %rax,%rcx
   1400017a2:	e8 01 0a 00 00       	call   1400021a8 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEcy>
   1400017a7:	48 8d 48 01          	lea    0x1(%rax),%rcx
   1400017ab:	48 8d 85 60 01 00 00 	lea    0x160(%rbp),%rax
   1400017b2:	48 8d 95 30 01 00 00 	lea    0x130(%rbp),%rdx
   1400017b9:	49 89 d9             	mov    %rbx,%r9
   1400017bc:	49 89 c8             	mov    %rcx,%r8
   1400017bf:	48 89 c1             	mov    %rax,%rcx
   1400017c2:	e8 d9 09 00 00       	call   1400021a0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
   1400017c7:	48 8d 95 60 01 00 00 	lea    0x160(%rbp),%rdx
   1400017ce:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   1400017d2:	41 89 f0             	mov    %esi,%r8d
   1400017d5:	48 89 c1             	mov    %rax,%rcx
   1400017d8:	e8 93 09 00 00       	call   140002170 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode>
   1400017dd:	48 8d 85 60 01 00 00 	lea    0x160(%rbp),%rax
   1400017e4:	48 89 c1             	mov    %rax,%rcx
   1400017e7:	e8 8c 09 00 00       	call   140002178 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
           // cout << temp<<" extention is " <<s.substr(temp+1,3) << s << endl;
            if(s.substr(temp+1,3) == "mp3")
   1400017ec:	8b 85 ac 02 00 00    	mov    0x2ac(%rbp),%eax
   1400017f2:	83 c0 01             	add    $0x1,%eax
   1400017f5:	48 63 c8             	movslq %eax,%rcx
   1400017f8:	48 8d 85 80 01 00 00 	lea    0x180(%rbp),%rax
   1400017ff:	48 8d 95 30 01 00 00 	lea    0x130(%rbp),%rdx
   140001806:	41 b9 03 00 00 00    	mov    $0x3,%r9d
   14000180c:	49 89 c8             	mov    %rcx,%r8
   14000180f:	48 89 c1             	mov    %rax,%rcx
   140001812:	e8 89 09 00 00       	call   1400021a0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
   140001817:	48 8d 85 80 01 00 00 	lea    0x180(%rbp),%rax
   14000181e:	48 8d 15 dd 37 00 00 	lea    0x37dd(%rip),%rdx        # 140005002 <.rdata+0x2>
   140001825:	48 89 c1             	mov    %rax,%rcx
   140001828:	e8 d3 1b 00 00       	call   140003400 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   14000182d:	89 c3                	mov    %eax,%ebx
   14000182f:	48 8d 85 80 01 00 00 	lea    0x180(%rbp),%rax
   140001836:	48 89 c1             	mov    %rax,%rcx
   140001839:	e8 3a 09 00 00       	call   140002178 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   14000183e:	84 db                	test   %bl,%bl
   140001840:	74 5e                	je     1400018a0 <main+0x370>
            {

                //stringstream str(s.substr(s.find_last_of(' ')+1,s.find_last_of('b')-s.find_last_of(' ')+1));
                //cout << s.substr(s.find_last_of(' ')+1,s.find_last_of('b')-s.find_last_of(' ')+1) << endl;
                str >> var;
   140001842:	48 8d 95 2c 01 00 00 	lea    0x12c(%rbp),%rdx
   140001849:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   14000184d:	48 89 c1             	mov    %rax,%rcx
   140001850:	e8 3b 09 00 00       	call   140002190 <_ZNSirsERi>
                //cout<<"size of mp3 = "<<var<<endl;
                counter[i][0] += var;
   140001855:	8b 85 c8 02 00 00    	mov    0x2c8(%rbp),%eax
   14000185b:	48 98                	cltq   
   14000185d:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   140001864:	00 
   140001865:	48 8b 85 b0 02 00 00 	mov    0x2b0(%rbp),%rax
   14000186c:	48 01 d0             	add    %rdx,%rax
   14000186f:	48 8b 00             	mov    (%rax),%rax
   140001872:	8b 08                	mov    (%rax),%ecx
   140001874:	8b 95 2c 01 00 00    	mov    0x12c(%rbp),%edx
   14000187a:	8b 85 c8 02 00 00    	mov    0x2c8(%rbp),%eax
   140001880:	48 98                	cltq   
   140001882:	4c 8d 04 c5 00 00 00 	lea    0x0(,%rax,8),%r8
   140001889:	00 
   14000188a:	48 8b 85 b0 02 00 00 	mov    0x2b0(%rbp),%rax
   140001891:	4c 01 c0             	add    %r8,%rax
   140001894:	48 8b 00             	mov    (%rax),%rax
   140001897:	01 ca                	add    %ecx,%edx
   140001899:	89 10                	mov    %edx,(%rax)
   14000189b:	e9 2e 06 00 00       	jmp    140001ece <main+0x99e>
            }
            else if(s.substr(temp+1,3) == "mkv")
   1400018a0:	8b 85 ac 02 00 00    	mov    0x2ac(%rbp),%eax
   1400018a6:	83 c0 01             	add    $0x1,%eax
   1400018a9:	48 63 c8             	movslq %eax,%rcx
   1400018ac:	48 8d 85 a0 01 00 00 	lea    0x1a0(%rbp),%rax
   1400018b3:	48 8d 95 30 01 00 00 	lea    0x130(%rbp),%rdx
   1400018ba:	41 b9 03 00 00 00    	mov    $0x3,%r9d
   1400018c0:	49 89 c8             	mov    %rcx,%r8
   1400018c3:	48 89 c1             	mov    %rax,%rcx
   1400018c6:	e8 d5 08 00 00       	call   1400021a0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
   1400018cb:	48 8d 85 a0 01 00 00 	lea    0x1a0(%rbp),%rax
   1400018d2:	48 8d 15 2d 37 00 00 	lea    0x372d(%rip),%rdx        # 140005006 <.rdata+0x6>
   1400018d9:	48 89 c1             	mov    %rax,%rcx
   1400018dc:	e8 1f 1b 00 00       	call   140003400 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   1400018e1:	89 c3                	mov    %eax,%ebx
   1400018e3:	48 8d 85 a0 01 00 00 	lea    0x1a0(%rbp),%rax
   1400018ea:	48 89 c1             	mov    %rax,%rcx
   1400018ed:	e8 86 08 00 00       	call   140002178 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   1400018f2:	84 db                	test   %bl,%bl
   1400018f4:	74 66                	je     14000195c <main+0x42c>
            {
                //stringstream str(s.substr(s.find_last_of(' ')+1,s.find_last_of('b')-s.find_last_of(' ')+1));
                //cout << s.substr(s.find_last_of(' ')+1,s.find_last_of('b')-s.find_last_of(' ')+1) << endl;
                str >> var;
   1400018f6:	48 8d 95 2c 01 00 00 	lea    0x12c(%rbp),%rdx
   1400018fd:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   140001901:	48 89 c1             	mov    %rax,%rcx
   140001904:	e8 87 08 00 00       	call   140002190 <_ZNSirsERi>
                //cout<<"mkv = "<<var;
                counter[i][2] += var;
   140001909:	8b 85 c8 02 00 00    	mov    0x2c8(%rbp),%eax
   14000190f:	48 98                	cltq   
   140001911:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   140001918:	00 
   140001919:	48 8b 85 b0 02 00 00 	mov    0x2b0(%rbp),%rax
   140001920:	48 01 d0             	add    %rdx,%rax
   140001923:	48 8b 00             	mov    (%rax),%rax
   140001926:	48 83 c0 08          	add    $0x8,%rax
   14000192a:	8b 08                	mov    (%rax),%ecx
   14000192c:	8b 95 2c 01 00 00    	mov    0x12c(%rbp),%edx
   140001932:	8b 85 c8 02 00 00    	mov    0x2c8(%rbp),%eax
   140001938:	48 98                	cltq   
   14000193a:	4c 8d 04 c5 00 00 00 	lea    0x0(,%rax,8),%r8
   140001941:	00 
   140001942:	48 8b 85 b0 02 00 00 	mov    0x2b0(%rbp),%rax
   140001949:	4c 01 c0             	add    %r8,%rax
   14000194c:	48 8b 00             	mov    (%rax),%rax
   14000194f:	48 83 c0 08          	add    $0x8,%rax
   140001953:	01 ca                	add    %ecx,%edx
   140001955:	89 10                	mov    %edx,(%rax)
   140001957:	e9 72 05 00 00       	jmp    140001ece <main+0x99e>
            }
            else if(s.substr(temp+1,3) == "acc")
   14000195c:	8b 85 ac 02 00 00    	mov    0x2ac(%rbp),%eax
   140001962:	83 c0 01             	add    $0x1,%eax
   140001965:	48 63 c8             	movslq %eax,%rcx
   140001968:	48 8d 85 c0 01 00 00 	lea    0x1c0(%rbp),%rax
   14000196f:	48 8d 95 30 01 00 00 	lea    0x130(%rbp),%rdx
   140001976:	41 b9 03 00 00 00    	mov    $0x3,%r9d
   14000197c:	49 89 c8             	mov    %rcx,%r8
   14000197f:	48 89 c1             	mov    %rax,%rcx
   140001982:	e8 19 08 00 00       	call   1400021a0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
   140001987:	48 8d 85 c0 01 00 00 	lea    0x1c0(%rbp),%rax
   14000198e:	48 8d 15 75 36 00 00 	lea    0x3675(%rip),%rdx        # 14000500a <.rdata+0xa>
   140001995:	48 89 c1             	mov    %rax,%rcx
   140001998:	e8 63 1a 00 00       	call   140003400 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   14000199d:	89 c3                	mov    %eax,%ebx
   14000199f:	48 8d 85 c0 01 00 00 	lea    0x1c0(%rbp),%rax
   1400019a6:	48 89 c1             	mov    %rax,%rcx
   1400019a9:	e8 ca 07 00 00       	call   140002178 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   1400019ae:	84 db                	test   %bl,%bl
   1400019b0:	74 5e                	je     140001a10 <main+0x4e0>
            {
                //cout<<"IN acc \n";
                //stringstream str(s.substr(s.find_last_of(' ')+1,s.find_last_of('b')-s.find_last_of(' ')+1));
                str >> var;
   1400019b2:	48 8d 95 2c 01 00 00 	lea    0x12c(%rbp),%rdx
   1400019b9:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   1400019bd:	48 89 c1             	mov    %rax,%rcx
   1400019c0:	e8 cb 07 00 00       	call   140002190 <_ZNSirsERi>
                //cout<<"acc = "<<var;
                counter[i][0] += var;
   1400019c5:	8b 85 c8 02 00 00    	mov    0x2c8(%rbp),%eax
   1400019cb:	48 98                	cltq   
   1400019cd:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   1400019d4:	00 
   1400019d5:	48 8b 85 b0 02 00 00 	mov    0x2b0(%rbp),%rax
   1400019dc:	48 01 d0             	add    %rdx,%rax
   1400019df:	48 8b 00             	mov    (%rax),%rax
   1400019e2:	8b 08                	mov    (%rax),%ecx
   1400019e4:	8b 95 2c 01 00 00    	mov    0x12c(%rbp),%edx
   1400019ea:	8b 85 c8 02 00 00    	mov    0x2c8(%rbp),%eax
   1400019f0:	48 98                	cltq   
   1400019f2:	4c 8d 04 c5 00 00 00 	lea    0x0(,%rax,8),%r8
   1400019f9:	00 
   1400019fa:	48 8b 85 b0 02 00 00 	mov    0x2b0(%rbp),%rax
   140001a01:	4c 01 c0             	add    %r8,%rax
   140001a04:	48 8b 00             	mov    (%rax),%rax
   140001a07:	01 ca                	add    %ecx,%edx
   140001a09:	89 10                	mov    %edx,(%rax)
   140001a0b:	e9 be 04 00 00       	jmp    140001ece <main+0x99e>
            }
            else if(s.substr(temp+1,4) == "flac")
   140001a10:	8b 85 ac 02 00 00    	mov    0x2ac(%rbp),%eax
   140001a16:	83 c0 01             	add    $0x1,%eax
   140001a19:	48 63 c8             	movslq %eax,%rcx
   140001a1c:	48 8d 85 e0 01 00 00 	lea    0x1e0(%rbp),%rax
   140001a23:	48 8d 95 30 01 00 00 	lea    0x130(%rbp),%rdx
   140001a2a:	41 b9 04 00 00 00    	mov    $0x4,%r9d
   140001a30:	49 89 c8             	mov    %rcx,%r8
   140001a33:	48 89 c1             	mov    %rax,%rcx
   140001a36:	e8 65 07 00 00       	call   1400021a0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
   140001a3b:	48 8d 85 e0 01 00 00 	lea    0x1e0(%rbp),%rax
   140001a42:	48 8d 15 c5 35 00 00 	lea    0x35c5(%rip),%rdx        # 14000500e <.rdata+0xe>
   140001a49:	48 89 c1             	mov    %rax,%rcx
   140001a4c:	e8 af 19 00 00       	call   140003400 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001a51:	89 c3                	mov    %eax,%ebx
   140001a53:	48 8d 85 e0 01 00 00 	lea    0x1e0(%rbp),%rax
   140001a5a:	48 89 c1             	mov    %rax,%rcx
   140001a5d:	e8 16 07 00 00       	call   140002178 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001a62:	84 db                	test   %bl,%bl
   140001a64:	74 5e                	je     140001ac4 <main+0x594>
            {
                //stringstream str(s.substr(s.find_last_of(' ')+1,s.find_last_of('b')-s.find_last_of(' ')+1));
                str >> var;
   140001a66:	48 8d 95 2c 01 00 00 	lea    0x12c(%rbp),%rdx
   140001a6d:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   140001a71:	48 89 c1             	mov    %rax,%rcx
   140001a74:	e8 17 07 00 00       	call   140002190 <_ZNSirsERi>
                counter[i][0] += var;
   140001a79:	8b 85 c8 02 00 00    	mov    0x2c8(%rbp),%eax
   140001a7f:	48 98                	cltq   
   140001a81:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   140001a88:	00 
   140001a89:	48 8b 85 b0 02 00 00 	mov    0x2b0(%rbp),%rax
   140001a90:	48 01 d0             	add    %rdx,%rax
   140001a93:	48 8b 00             	mov    (%rax),%rax
   140001a96:	8b 08                	mov    (%rax),%ecx
   140001a98:	8b 95 2c 01 00 00    	mov    0x12c(%rbp),%edx
   140001a9e:	8b 85 c8 02 00 00    	mov    0x2c8(%rbp),%eax
   140001aa4:	48 98                	cltq   
   140001aa6:	4c 8d 04 c5 00 00 00 	lea    0x0(,%rax,8),%r8
   140001aad:	00 
   140001aae:	48 8b 85 b0 02 00 00 	mov    0x2b0(%rbp),%rax
   140001ab5:	4c 01 c0             	add    %r8,%rax
   140001ab8:	48 8b 00             	mov    (%rax),%rax
   140001abb:	01 ca                	add    %ecx,%edx
   140001abd:	89 10                	mov    %edx,(%rax)
   140001abf:	e9 0a 04 00 00       	jmp    140001ece <main+0x99e>
            }
            else if(s.substr(temp+1,3) == "jpg")
   140001ac4:	8b 85 ac 02 00 00    	mov    0x2ac(%rbp),%eax
   140001aca:	83 c0 01             	add    $0x1,%eax
   140001acd:	48 63 c8             	movslq %eax,%rcx
   140001ad0:	48 8d 85 00 02 00 00 	lea    0x200(%rbp),%rax
   140001ad7:	48 8d 95 30 01 00 00 	lea    0x130(%rbp),%rdx
   140001ade:	41 b9 03 00 00 00    	mov    $0x3,%r9d
   140001ae4:	49 89 c8             	mov    %rcx,%r8
   140001ae7:	48 89 c1             	mov    %rax,%rcx
   140001aea:	e8 b1 06 00 00       	call   1400021a0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
   140001aef:	48 8d 85 00 02 00 00 	lea    0x200(%rbp),%rax
   140001af6:	48 8d 15 16 35 00 00 	lea    0x3516(%rip),%rdx        # 140005013 <.rdata+0x13>
   140001afd:	48 89 c1             	mov    %rax,%rcx
   140001b00:	e8 fb 18 00 00       	call   140003400 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001b05:	89 c3                	mov    %eax,%ebx
   140001b07:	48 8d 85 00 02 00 00 	lea    0x200(%rbp),%rax
   140001b0e:	48 89 c1             	mov    %rax,%rcx
   140001b11:	e8 62 06 00 00       	call   140002178 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001b16:	84 db                	test   %bl,%bl
   140001b18:	74 66                	je     140001b80 <main+0x650>
            {
                //stringstream str(s.substr(s.find_last_of(' ')+1,s.find_last_of('b')-s.find_last_of(' ')+1));
                str >> var;
   140001b1a:	48 8d 95 2c 01 00 00 	lea    0x12c(%rbp),%rdx
   140001b21:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   140001b25:	48 89 c1             	mov    %rax,%rcx
   140001b28:	e8 63 06 00 00       	call   140002190 <_ZNSirsERi>
                counter[i][1] += var;
   140001b2d:	8b 85 c8 02 00 00    	mov    0x2c8(%rbp),%eax
   140001b33:	48 98                	cltq   
   140001b35:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   140001b3c:	00 
   140001b3d:	48 8b 85 b0 02 00 00 	mov    0x2b0(%rbp),%rax
   140001b44:	48 01 d0             	add    %rdx,%rax
   140001b47:	48 8b 00             	mov    (%rax),%rax
   140001b4a:	48 83 c0 04          	add    $0x4,%rax
   140001b4e:	8b 08                	mov    (%rax),%ecx
   140001b50:	8b 95 2c 01 00 00    	mov    0x12c(%rbp),%edx
   140001b56:	8b 85 c8 02 00 00    	mov    0x2c8(%rbp),%eax
   140001b5c:	48 98                	cltq   
   140001b5e:	4c 8d 04 c5 00 00 00 	lea    0x0(,%rax,8),%r8
   140001b65:	00 
   140001b66:	48 8b 85 b0 02 00 00 	mov    0x2b0(%rbp),%rax
   140001b6d:	4c 01 c0             	add    %r8,%rax
   140001b70:	48 8b 00             	mov    (%rax),%rax
   140001b73:	48 83 c0 04          	add    $0x4,%rax
   140001b77:	01 ca                	add    %ecx,%edx
   140001b79:	89 10                	mov    %edx,(%rax)
   140001b7b:	e9 4e 03 00 00       	jmp    140001ece <main+0x99e>
            }
            else if(s.substr(temp+1,3) == "avi")
   140001b80:	8b 85 ac 02 00 00    	mov    0x2ac(%rbp),%eax
   140001b86:	83 c0 01             	add    $0x1,%eax
   140001b89:	48 63 c8             	movslq %eax,%rcx
   140001b8c:	48 8d 85 20 02 00 00 	lea    0x220(%rbp),%rax
   140001b93:	48 8d 95 30 01 00 00 	lea    0x130(%rbp),%rdx
   140001b9a:	41 b9 03 00 00 00    	mov    $0x3,%r9d
   140001ba0:	49 89 c8             	mov    %rcx,%r8
   140001ba3:	48 89 c1             	mov    %rax,%rcx
   140001ba6:	e8 f5 05 00 00       	call   1400021a0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
   140001bab:	48 8d 85 20 02 00 00 	lea    0x220(%rbp),%rax
   140001bb2:	48 8d 15 5e 34 00 00 	lea    0x345e(%rip),%rdx        # 140005017 <.rdata+0x17>
   140001bb9:	48 89 c1             	mov    %rax,%rcx
   140001bbc:	e8 3f 18 00 00       	call   140003400 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001bc1:	89 c3                	mov    %eax,%ebx
   140001bc3:	48 8d 85 20 02 00 00 	lea    0x220(%rbp),%rax
   140001bca:	48 89 c1             	mov    %rax,%rcx
   140001bcd:	e8 a6 05 00 00       	call   140002178 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001bd2:	84 db                	test   %bl,%bl
   140001bd4:	74 66                	je     140001c3c <main+0x70c>
            {
                //stringstream str(s.substr(s.find_last_of(' ')+1,s.find_last_of('b')-s.find_last_of(' ')+1));
                str >> var;
   140001bd6:	48 8d 95 2c 01 00 00 	lea    0x12c(%rbp),%rdx
   140001bdd:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   140001be1:	48 89 c1             	mov    %rax,%rcx
   140001be4:	e8 a7 05 00 00       	call   140002190 <_ZNSirsERi>
                counter[i][2] += var;
   140001be9:	8b 85 c8 02 00 00    	mov    0x2c8(%rbp),%eax
   140001bef:	48 98                	cltq   
   140001bf1:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   140001bf8:	00 
   140001bf9:	48 8b 85 b0 02 00 00 	mov    0x2b0(%rbp),%rax
   140001c00:	48 01 d0             	add    %rdx,%rax
   140001c03:	48 8b 00             	mov    (%rax),%rax
   140001c06:	48 83 c0 08          	add    $0x8,%rax
   140001c0a:	8b 08                	mov    (%rax),%ecx
   140001c0c:	8b 95 2c 01 00 00    	mov    0x12c(%rbp),%edx
   140001c12:	8b 85 c8 02 00 00    	mov    0x2c8(%rbp),%eax
   140001c18:	48 98                	cltq   
   140001c1a:	4c 8d 04 c5 00 00 00 	lea    0x0(,%rax,8),%r8
   140001c21:	00 
   140001c22:	48 8b 85 b0 02 00 00 	mov    0x2b0(%rbp),%rax
   140001c29:	4c 01 c0             	add    %r8,%rax
   140001c2c:	48 8b 00             	mov    (%rax),%rax
   140001c2f:	48 83 c0 08          	add    $0x8,%rax
   140001c33:	01 ca                	add    %ecx,%edx
   140001c35:	89 10                	mov    %edx,(%rax)
   140001c37:	e9 92 02 00 00       	jmp    140001ece <main+0x99e>
            }
            else if(s.substr(temp+1,3) == "bmp")
   140001c3c:	8b 85 ac 02 00 00    	mov    0x2ac(%rbp),%eax
   140001c42:	83 c0 01             	add    $0x1,%eax
   140001c45:	48 63 c8             	movslq %eax,%rcx
   140001c48:	48 8d 85 40 02 00 00 	lea    0x240(%rbp),%rax
   140001c4f:	48 8d 95 30 01 00 00 	lea    0x130(%rbp),%rdx
   140001c56:	41 b9 03 00 00 00    	mov    $0x3,%r9d
   140001c5c:	49 89 c8             	mov    %rcx,%r8
   140001c5f:	48 89 c1             	mov    %rax,%rcx
   140001c62:	e8 39 05 00 00       	call   1400021a0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
   140001c67:	48 8d 85 40 02 00 00 	lea    0x240(%rbp),%rax
   140001c6e:	48 8d 15 a6 33 00 00 	lea    0x33a6(%rip),%rdx        # 14000501b <.rdata+0x1b>
   140001c75:	48 89 c1             	mov    %rax,%rcx
   140001c78:	e8 83 17 00 00       	call   140003400 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001c7d:	89 c3                	mov    %eax,%ebx
   140001c7f:	48 8d 85 40 02 00 00 	lea    0x240(%rbp),%rax
   140001c86:	48 89 c1             	mov    %rax,%rcx
   140001c89:	e8 ea 04 00 00       	call   140002178 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001c8e:	84 db                	test   %bl,%bl
   140001c90:	74 66                	je     140001cf8 <main+0x7c8>
            {
                //stringstream str(s.substr(s.find_last_of(' ')+1,s.find_last_of('b')-s.find_last_of(' ')+1));
                str >> var;
   140001c92:	48 8d 95 2c 01 00 00 	lea    0x12c(%rbp),%rdx
   140001c99:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   140001c9d:	48 89 c1             	mov    %rax,%rcx
   140001ca0:	e8 eb 04 00 00       	call   140002190 <_ZNSirsERi>
                counter[i][1] += var;
   140001ca5:	8b 85 c8 02 00 00    	mov    0x2c8(%rbp),%eax
   140001cab:	48 98                	cltq   
   140001cad:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   140001cb4:	00 
   140001cb5:	48 8b 85 b0 02 00 00 	mov    0x2b0(%rbp),%rax
   140001cbc:	48 01 d0             	add    %rdx,%rax
   140001cbf:	48 8b 00             	mov    (%rax),%rax
   140001cc2:	48 83 c0 04          	add    $0x4,%rax
   140001cc6:	8b 08                	mov    (%rax),%ecx
   140001cc8:	8b 95 2c 01 00 00    	mov    0x12c(%rbp),%edx
   140001cce:	8b 85 c8 02 00 00    	mov    0x2c8(%rbp),%eax
   140001cd4:	48 98                	cltq   
   140001cd6:	4c 8d 04 c5 00 00 00 	lea    0x0(,%rax,8),%r8
   140001cdd:	00 
   140001cde:	48 8b 85 b0 02 00 00 	mov    0x2b0(%rbp),%rax
   140001ce5:	4c 01 c0             	add    %r8,%rax
   140001ce8:	48 8b 00             	mov    (%rax),%rax
   140001ceb:	48 83 c0 04          	add    $0x4,%rax
   140001cef:	01 ca                	add    %ecx,%edx
   140001cf1:	89 10                	mov    %edx,(%rax)
   140001cf3:	e9 d6 01 00 00       	jmp    140001ece <main+0x99e>
            }
            else if(s.substr(temp+1,3) == "gif")
   140001cf8:	8b 85 ac 02 00 00    	mov    0x2ac(%rbp),%eax
   140001cfe:	83 c0 01             	add    $0x1,%eax
   140001d01:	48 63 c8             	movslq %eax,%rcx
   140001d04:	48 8d 85 60 02 00 00 	lea    0x260(%rbp),%rax
   140001d0b:	48 8d 95 30 01 00 00 	lea    0x130(%rbp),%rdx
   140001d12:	41 b9 03 00 00 00    	mov    $0x3,%r9d
   140001d18:	49 89 c8             	mov    %rcx,%r8
   140001d1b:	48 89 c1             	mov    %rax,%rcx
   140001d1e:	e8 7d 04 00 00       	call   1400021a0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
   140001d23:	48 8d 85 60 02 00 00 	lea    0x260(%rbp),%rax
   140001d2a:	48 8d 15 ee 32 00 00 	lea    0x32ee(%rip),%rdx        # 14000501f <.rdata+0x1f>
   140001d31:	48 89 c1             	mov    %rax,%rcx
   140001d34:	e8 c7 16 00 00       	call   140003400 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001d39:	89 c3                	mov    %eax,%ebx
   140001d3b:	48 8d 85 60 02 00 00 	lea    0x260(%rbp),%rax
   140001d42:	48 89 c1             	mov    %rax,%rcx
   140001d45:	e8 2e 04 00 00       	call   140002178 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001d4a:	84 db                	test   %bl,%bl
   140001d4c:	74 66                	je     140001db4 <main+0x884>
            {
                //stringstream str(s.substr(s.find_last_of(' ')+1,s.find_last_of('b')-s.find_last_of(' ')+1));
                str >> var;
   140001d4e:	48 8d 95 2c 01 00 00 	lea    0x12c(%rbp),%rdx
   140001d55:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   140001d59:	48 89 c1             	mov    %rax,%rcx
   140001d5c:	e8 2f 04 00 00       	call   140002190 <_ZNSirsERi>
                counter[i][1] += var;
   140001d61:	8b 85 c8 02 00 00    	mov    0x2c8(%rbp),%eax
   140001d67:	48 98                	cltq   
   140001d69:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   140001d70:	00 
   140001d71:	48 8b 85 b0 02 00 00 	mov    0x2b0(%rbp),%rax
   140001d78:	48 01 d0             	add    %rdx,%rax
   140001d7b:	48 8b 00             	mov    (%rax),%rax
   140001d7e:	48 83 c0 04          	add    $0x4,%rax
   140001d82:	8b 08                	mov    (%rax),%ecx
   140001d84:	8b 95 2c 01 00 00    	mov    0x12c(%rbp),%edx
   140001d8a:	8b 85 c8 02 00 00    	mov    0x2c8(%rbp),%eax
   140001d90:	48 98                	cltq   
   140001d92:	4c 8d 04 c5 00 00 00 	lea    0x0(,%rax,8),%r8
   140001d99:	00 
   140001d9a:	48 8b 85 b0 02 00 00 	mov    0x2b0(%rbp),%rax
   140001da1:	4c 01 c0             	add    %r8,%rax
   140001da4:	48 8b 00             	mov    (%rax),%rax
   140001da7:	48 83 c0 04          	add    $0x4,%rax
   140001dab:	01 ca                	add    %ecx,%edx
   140001dad:	89 10                	mov    %edx,(%rax)
   140001daf:	e9 1a 01 00 00       	jmp    140001ece <main+0x99e>
            }
            else if(s.substr(temp+1,3) == "mp4")
   140001db4:	8b 85 ac 02 00 00    	mov    0x2ac(%rbp),%eax
   140001dba:	83 c0 01             	add    $0x1,%eax
   140001dbd:	48 63 c8             	movslq %eax,%rcx
   140001dc0:	48 8d 85 80 02 00 00 	lea    0x280(%rbp),%rax
   140001dc7:	48 8d 95 30 01 00 00 	lea    0x130(%rbp),%rdx
   140001dce:	41 b9 03 00 00 00    	mov    $0x3,%r9d
   140001dd4:	49 89 c8             	mov    %rcx,%r8
   140001dd7:	48 89 c1             	mov    %rax,%rcx
   140001dda:	e8 c1 03 00 00       	call   1400021a0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
   140001ddf:	48 8d 85 80 02 00 00 	lea    0x280(%rbp),%rax
   140001de6:	48 8d 15 36 32 00 00 	lea    0x3236(%rip),%rdx        # 140005023 <.rdata+0x23>
   140001ded:	48 89 c1             	mov    %rax,%rcx
   140001df0:	e8 0b 16 00 00       	call   140003400 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001df5:	89 c3                	mov    %eax,%ebx
   140001df7:	48 8d 85 80 02 00 00 	lea    0x280(%rbp),%rax
   140001dfe:	48 89 c1             	mov    %rax,%rcx
   140001e01:	e8 72 03 00 00       	call   140002178 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001e06:	84 db                	test   %bl,%bl
   140001e08:	74 63                	je     140001e6d <main+0x93d>
            {
               // stringstream str(s.substr(s.find_last_of(' ')+1,s.find_last_of('b')-s.find_last_of(' ')+1));
                str >> var;
   140001e0a:	48 8d 95 2c 01 00 00 	lea    0x12c(%rbp),%rdx
   140001e11:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   140001e15:	48 89 c1             	mov    %rax,%rcx
   140001e18:	e8 73 03 00 00       	call   140002190 <_ZNSirsERi>
                counter[i][2] += var;
   140001e1d:	8b 85 c8 02 00 00    	mov    0x2c8(%rbp),%eax
   140001e23:	48 98                	cltq   
   140001e25:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   140001e2c:	00 
   140001e2d:	48 8b 85 b0 02 00 00 	mov    0x2b0(%rbp),%rax
   140001e34:	48 01 d0             	add    %rdx,%rax
   140001e37:	48 8b 00             	mov    (%rax),%rax
   140001e3a:	48 83 c0 08          	add    $0x8,%rax
   140001e3e:	8b 08                	mov    (%rax),%ecx
   140001e40:	8b 95 2c 01 00 00    	mov    0x12c(%rbp),%edx
   140001e46:	8b 85 c8 02 00 00    	mov    0x2c8(%rbp),%eax
   140001e4c:	48 98                	cltq   
   140001e4e:	4c 8d 04 c5 00 00 00 	lea    0x0(,%rax,8),%r8
   140001e55:	00 
   140001e56:	48 8b 85 b0 02 00 00 	mov    0x2b0(%rbp),%rax
   140001e5d:	4c 01 c0             	add    %r8,%rax
   140001e60:	48 8b 00             	mov    (%rax),%rax
   140001e63:	48 83 c0 08          	add    $0x8,%rax
   140001e67:	01 ca                	add    %ecx,%edx
   140001e69:	89 10                	mov    %edx,(%rax)
   140001e6b:	eb 61                	jmp    140001ece <main+0x99e>
            }
            else
            {
                //stringstream str(s.substr(s.find_first_of(' ')+1,s.find_last_of('b')-s.find_last_of(' ')+1));
                str >> var;
   140001e6d:	48 8d 95 2c 01 00 00 	lea    0x12c(%rbp),%rdx
   140001e74:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   140001e78:	48 89 c1             	mov    %rax,%rcx
   140001e7b:	e8 10 03 00 00       	call   140002190 <_ZNSirsERi>
                counter[i][3] += var;
   140001e80:	8b 85 c8 02 00 00    	mov    0x2c8(%rbp),%eax
   140001e86:	48 98                	cltq   
   140001e88:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   140001e8f:	00 
   140001e90:	48 8b 85 b0 02 00 00 	mov    0x2b0(%rbp),%rax
   140001e97:	48 01 d0             	add    %rdx,%rax
   140001e9a:	48 8b 00             	mov    (%rax),%rax
   140001e9d:	48 83 c0 0c          	add    $0xc,%rax
   140001ea1:	8b 08                	mov    (%rax),%ecx
   140001ea3:	8b 95 2c 01 00 00    	mov    0x12c(%rbp),%edx
   140001ea9:	8b 85 c8 02 00 00    	mov    0x2c8(%rbp),%eax
   140001eaf:	48 98                	cltq   
   140001eb1:	4c 8d 04 c5 00 00 00 	lea    0x0(,%rax,8),%r8
   140001eb8:	00 
   140001eb9:	48 8b 85 b0 02 00 00 	mov    0x2b0(%rbp),%rax
   140001ec0:	4c 01 c0             	add    %r8,%rax
   140001ec3:	48 8b 00             	mov    (%rax),%rax
   140001ec6:	48 83 c0 0c          	add    $0xc,%rax
   140001eca:	01 ca                	add    %ecx,%edx
   140001ecc:	89 10                	mov    %edx,(%rax)
            }
        }
   140001ece:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   140001ed2:	48 89 c1             	mov    %rax,%rcx
   140001ed5:	e8 8e 02 00 00       	call   140002168 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
        for(int j = 0; j < cases[i]; j++)
   140001eda:	83 85 c4 02 00 00 01 	addl   $0x1,0x2c4(%rbp)
   140001ee1:	8b 85 c8 02 00 00    	mov    0x2c8(%rbp),%eax
   140001ee7:	48 98                	cltq   
   140001ee9:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   140001ef0:	00 
   140001ef1:	48 8b 85 b8 02 00 00 	mov    0x2b8(%rbp),%rax
   140001ef8:	48 01 d0             	add    %rdx,%rax
   140001efb:	8b 00                	mov    (%rax),%eax
   140001efd:	39 85 c4 02 00 00    	cmp    %eax,0x2c4(%rbp)
   140001f03:	0f 8c ca f7 ff ff    	jl     1400016d3 <main+0x1a3>
    for(int i = 0; i < no_of_testcase; i++)
   140001f09:	83 85 c8 02 00 00 01 	addl   $0x1,0x2c8(%rbp)
   140001f10:	8b 85 5c 01 00 00    	mov    0x15c(%rbp),%eax
   140001f16:	39 85 c8 02 00 00    	cmp    %eax,0x2c8(%rbp)
   140001f1c:	0f 8c a2 f7 ff ff    	jl     1400016c4 <main+0x194>

    }
    for(int i = 0;i < no_of_testcase; i++)
   140001f22:	c7 85 c0 02 00 00 00 	movl   $0x0,0x2c0(%rbp)
   140001f29:	00 00 00 
   140001f2c:	e9 18 01 00 00       	jmp    140002049 <main+0xb19>
    {
        cout << "\nmusic " << counter[i][0] << "b images " << counter[i][1] << "b movies " << counter[i][2] << "b other " << counter[i][3] << "b";
   140001f31:	48 8d 05 ef 30 00 00 	lea    0x30ef(%rip),%rax        # 140005027 <.rdata+0x27>
   140001f38:	48 89 c2             	mov    %rax,%rdx
   140001f3b:	48 8b 05 8e 34 00 00 	mov    0x348e(%rip),%rax        # 1400053d0 <__fu0__ZSt4cout>
   140001f42:	48 89 c1             	mov    %rax,%rcx
   140001f45:	e8 fe 01 00 00       	call   140002148 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001f4a:	48 89 c1             	mov    %rax,%rcx
   140001f4d:	8b 85 c0 02 00 00    	mov    0x2c0(%rbp),%eax
   140001f53:	48 98                	cltq   
   140001f55:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   140001f5c:	00 
   140001f5d:	48 8b 85 b0 02 00 00 	mov    0x2b0(%rbp),%rax
   140001f64:	48 01 d0             	add    %rdx,%rax
   140001f67:	48 8b 00             	mov    (%rax),%rax
   140001f6a:	8b 00                	mov    (%rax),%eax
   140001f6c:	89 c2                	mov    %eax,%edx
   140001f6e:	e8 15 02 00 00       	call   140002188 <_ZNSolsEi>
   140001f73:	48 89 c1             	mov    %rax,%rcx
   140001f76:	48 8d 05 b2 30 00 00 	lea    0x30b2(%rip),%rax        # 14000502f <.rdata+0x2f>
   140001f7d:	48 89 c2             	mov    %rax,%rdx
   140001f80:	e8 c3 01 00 00       	call   140002148 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001f85:	48 89 c1             	mov    %rax,%rcx
   140001f88:	8b 85 c0 02 00 00    	mov    0x2c0(%rbp),%eax
   140001f8e:	48 98                	cltq   
   140001f90:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   140001f97:	00 
   140001f98:	48 8b 85 b0 02 00 00 	mov    0x2b0(%rbp),%rax
   140001f9f:	48 01 d0             	add    %rdx,%rax
   140001fa2:	48 8b 00             	mov    (%rax),%rax
   140001fa5:	48 83 c0 04          	add    $0x4,%rax
   140001fa9:	8b 00                	mov    (%rax),%eax
   140001fab:	89 c2                	mov    %eax,%edx
   140001fad:	e8 d6 01 00 00       	call   140002188 <_ZNSolsEi>
   140001fb2:	48 89 c1             	mov    %rax,%rcx
   140001fb5:	48 8d 05 7d 30 00 00 	lea    0x307d(%rip),%rax        # 140005039 <.rdata+0x39>
   140001fbc:	48 89 c2             	mov    %rax,%rdx
   140001fbf:	e8 84 01 00 00       	call   140002148 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001fc4:	48 89 c1             	mov    %rax,%rcx
   140001fc7:	8b 85 c0 02 00 00    	mov    0x2c0(%rbp),%eax
   140001fcd:	48 98                	cltq   
   140001fcf:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   140001fd6:	00 
   140001fd7:	48 8b 85 b0 02 00 00 	mov    0x2b0(%rbp),%rax
   140001fde:	48 01 d0             	add    %rdx,%rax
   140001fe1:	48 8b 00             	mov    (%rax),%rax
   140001fe4:	48 83 c0 08          	add    $0x8,%rax
   140001fe8:	8b 00                	mov    (%rax),%eax
   140001fea:	89 c2                	mov    %eax,%edx
   140001fec:	e8 97 01 00 00       	call   140002188 <_ZNSolsEi>
   140001ff1:	48 89 c1             	mov    %rax,%rcx
   140001ff4:	48 8d 05 48 30 00 00 	lea    0x3048(%rip),%rax        # 140005043 <.rdata+0x43>
   140001ffb:	48 89 c2             	mov    %rax,%rdx
   140001ffe:	e8 45 01 00 00       	call   140002148 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140002003:	48 89 c1             	mov    %rax,%rcx
   140002006:	8b 85 c0 02 00 00    	mov    0x2c0(%rbp),%eax
   14000200c:	48 98                	cltq   
   14000200e:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   140002015:	00 
   140002016:	48 8b 85 b0 02 00 00 	mov    0x2b0(%rbp),%rax
   14000201d:	48 01 d0             	add    %rdx,%rax
   140002020:	48 8b 00             	mov    (%rax),%rax
   140002023:	48 83 c0 0c          	add    $0xc,%rax
   140002027:	8b 00                	mov    (%rax),%eax
   140002029:	89 c2                	mov    %eax,%edx
   14000202b:	e8 58 01 00 00       	call   140002188 <_ZNSolsEi>
   140002030:	48 89 c1             	mov    %rax,%rcx
   140002033:	48 8d 05 12 30 00 00 	lea    0x3012(%rip),%rax        # 14000504c <.rdata+0x4c>
   14000203a:	48 89 c2             	mov    %rax,%rdx
   14000203d:	e8 06 01 00 00       	call   140002148 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
    for(int i = 0;i < no_of_testcase; i++)
   140002042:	83 85 c0 02 00 00 01 	addl   $0x1,0x2c0(%rbp)
   140002049:	8b 85 5c 01 00 00    	mov    0x15c(%rbp),%eax
   14000204f:	39 85 c0 02 00 00    	cmp    %eax,0x2c0(%rbp)
   140002055:	0f 8c d6 fe ff ff    	jl     140001f31 <main+0xa01>
    }
    return 0;
   14000205b:	bb 00 00 00 00       	mov    $0x0,%ebx
}
   140002060:	48 8d 85 30 01 00 00 	lea    0x130(%rbp),%rax
   140002067:	48 89 c1             	mov    %rax,%rcx
   14000206a:	e8 09 01 00 00       	call   140002178 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   14000206f:	89 d8                	mov    %ebx,%eax
   140002071:	eb 42                	jmp    1400020b5 <main+0xb85>
   140002073:	48 89 c3             	mov    %rax,%rbx
   140002076:	48 8d 85 60 01 00 00 	lea    0x160(%rbp),%rax
   14000207d:	48 89 c1             	mov    %rax,%rcx
   140002080:	e8 f3 00 00 00       	call   140002178 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140002085:	eb 14                	jmp    14000209b <main+0xb6b>
        }
   140002087:	48 89 c3             	mov    %rax,%rbx
   14000208a:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   14000208e:	48 89 c1             	mov    %rax,%rcx
   140002091:	e8 d2 00 00 00       	call   140002168 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   140002096:	eb 03                	jmp    14000209b <main+0xb6b>
}
   140002098:	48 89 c3             	mov    %rax,%rbx
   14000209b:	48 8d 85 30 01 00 00 	lea    0x130(%rbp),%rax
   1400020a2:	48 89 c1             	mov    %rax,%rcx
   1400020a5:	e8 ce 00 00 00       	call   140002178 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   1400020aa:	48 89 d8             	mov    %rbx,%rax
   1400020ad:	48 89 c1             	mov    %rax,%rcx
   1400020b0:	e8 7b 11 00 00       	call   140003230 <_Unwind_Resume>
   1400020b5:	48 81 c4 50 03 00 00 	add    $0x350,%rsp
   1400020bc:	5b                   	pop    %rbx
   1400020bd:	5e                   	pop    %rsi
   1400020be:	5d                   	pop    %rbp
   1400020bf:	c3                   	ret    

00000001400020c0 <__tcf_0>:
  extern wostream wclog;	/// Linked to standard error (buffered)
#endif
  ///@}

  // For construction of filebuffers for cout, cin, cerr, clog et. al.
  static ios_base::Init __ioinit;
   1400020c0:	55                   	push   %rbp
   1400020c1:	48 89 e5             	mov    %rsp,%rbp
   1400020c4:	48 83 ec 20          	sub    $0x20,%rsp
   1400020c8:	48 8d 05 71 5f 00 00 	lea    0x5f71(%rip),%rax        # 140008040 <_ZStL8__ioinit>
   1400020cf:	48 89 c1             	mov    %rax,%rcx
   1400020d2:	e8 81 00 00 00       	call   140002158 <_ZNSt8ios_base4InitD1Ev>
   1400020d7:	90                   	nop
   1400020d8:	48 83 c4 20          	add    $0x20,%rsp
   1400020dc:	5d                   	pop    %rbp
   1400020dd:	c3                   	ret    

00000001400020de <_Z41__static_initialization_and_destruction_0ii>:
   1400020de:	55                   	push   %rbp
   1400020df:	48 89 e5             	mov    %rsp,%rbp
   1400020e2:	48 83 ec 20          	sub    $0x20,%rsp
   1400020e6:	89 4d 10             	mov    %ecx,0x10(%rbp)
   1400020e9:	89 55 18             	mov    %edx,0x18(%rbp)
   1400020ec:	83 7d 10 01          	cmpl   $0x1,0x10(%rbp)
   1400020f0:	75 27                	jne    140002119 <_Z41__static_initialization_and_destruction_0ii+0x3b>
   1400020f2:	81 7d 18 ff ff 00 00 	cmpl   $0xffff,0x18(%rbp)
   1400020f9:	75 1e                	jne    140002119 <_Z41__static_initialization_and_destruction_0ii+0x3b>
   1400020fb:	48 8d 05 3e 5f 00 00 	lea    0x5f3e(%rip),%rax        # 140008040 <_ZStL8__ioinit>
   140002102:	48 89 c1             	mov    %rax,%rcx
   140002105:	e8 56 00 00 00       	call   140002160 <_ZNSt8ios_base4InitC1Ev>
   14000210a:	48 8d 05 af ff ff ff 	lea    -0x51(%rip),%rax        # 1400020c0 <__tcf_0>
   140002111:	48 89 c1             	mov    %rax,%rcx
   140002114:	e8 d7 f3 ff ff       	call   1400014f0 <atexit>
   140002119:	90                   	nop
   14000211a:	48 83 c4 20          	add    $0x20,%rsp
   14000211e:	5d                   	pop    %rbp
   14000211f:	c3                   	ret    

0000000140002120 <_GLOBAL__sub_I_main>:
   140002120:	55                   	push   %rbp
   140002121:	48 89 e5             	mov    %rsp,%rbp
   140002124:	48 83 ec 20          	sub    $0x20,%rsp
   140002128:	ba ff ff 00 00       	mov    $0xffff,%edx
   14000212d:	b9 01 00 00 00       	mov    $0x1,%ecx
   140002132:	e8 a7 ff ff ff       	call   1400020de <_Z41__static_initialization_and_destruction_0ii>
   140002137:	90                   	nop
   140002138:	48 83 c4 20          	add    $0x20,%rsp
   14000213c:	5d                   	pop    %rbp
   14000213d:	c3                   	ret    
   14000213e:	90                   	nop
   14000213f:	90                   	nop

0000000140002140 <__gxx_personality_seh0>:
   140002140:	ff 25 be 72 00 00    	jmp    *0x72be(%rip)        # 140009404 <__imp___gxx_personality_seh0>
   140002146:	90                   	nop
   140002147:	90                   	nop

0000000140002148 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>:
   140002148:	ff 25 ae 72 00 00    	jmp    *0x72ae(%rip)        # 1400093fc <__imp__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   14000214e:	90                   	nop
   14000214f:	90                   	nop

0000000140002150 <_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_>:
   140002150:	ff 25 9e 72 00 00    	jmp    *0x729e(%rip)        # 1400093f4 <__imp__ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_>
   140002156:	90                   	nop
   140002157:	90                   	nop

0000000140002158 <_ZNSt8ios_base4InitD1Ev>:
   140002158:	ff 25 7e 72 00 00    	jmp    *0x727e(%rip)        # 1400093dc <__imp__ZNSt8ios_base4InitD1Ev>
   14000215e:	90                   	nop
   14000215f:	90                   	nop

0000000140002160 <_ZNSt8ios_base4InitC1Ev>:
   140002160:	ff 25 6e 72 00 00    	jmp    *0x726e(%rip)        # 1400093d4 <__imp__ZNSt8ios_base4InitC1Ev>
   140002166:	90                   	nop
   140002167:	90                   	nop

0000000140002168 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>:
   140002168:	ff 25 5e 72 00 00    	jmp    *0x725e(%rip)        # 1400093cc <__imp__ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   14000216e:	90                   	nop
   14000216f:	90                   	nop

0000000140002170 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode>:
   140002170:	ff 25 4e 72 00 00    	jmp    *0x724e(%rip)        # 1400093c4 <__imp__ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode>
   140002176:	90                   	nop
   140002177:	90                   	nop

0000000140002178 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>:
   140002178:	ff 25 3e 72 00 00    	jmp    *0x723e(%rip)        # 1400093bc <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   14000217e:	90                   	nop
   14000217f:	90                   	nop

0000000140002180 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>:
   140002180:	ff 25 2e 72 00 00    	jmp    *0x722e(%rip)        # 1400093b4 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>
   140002186:	90                   	nop
   140002187:	90                   	nop

0000000140002188 <_ZNSolsEi>:
   140002188:	ff 25 1e 72 00 00    	jmp    *0x721e(%rip)        # 1400093ac <__imp__ZNSolsEi>
   14000218e:	90                   	nop
   14000218f:	90                   	nop

0000000140002190 <_ZNSirsERi>:
   140002190:	ff 25 0e 72 00 00    	jmp    *0x720e(%rip)        # 1400093a4 <__imp__ZNSirsERi>
   140002196:	90                   	nop
   140002197:	90                   	nop

0000000140002198 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc>:
   140002198:	ff 25 fe 71 00 00    	jmp    *0x71fe(%rip)        # 14000939c <__imp__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc>
   14000219e:	90                   	nop
   14000219f:	90                   	nop

00000001400021a0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>:
   1400021a0:	ff 25 ee 71 00 00    	jmp    *0x71ee(%rip)        # 140009394 <__imp__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
   1400021a6:	90                   	nop
   1400021a7:	90                   	nop

00000001400021a8 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEcy>:
   1400021a8:	ff 25 de 71 00 00    	jmp    *0x71de(%rip)        # 14000938c <__imp__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEcy>
   1400021ae:	90                   	nop
   1400021af:	90                   	nop

00000001400021b0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcy>:
   1400021b0:	ff 25 ce 71 00 00    	jmp    *0x71ce(%rip)        # 140009384 <__imp__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcy>
   1400021b6:	90                   	nop
   1400021b7:	90                   	nop
   1400021b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400021bf:	00 

00000001400021c0 <__do_global_dtors>:
   1400021c0:	48 83 ec 28          	sub    $0x28,%rsp
   1400021c4:	48 8b 05 45 1e 00 00 	mov    0x1e45(%rip),%rax        # 140004010 <p.0>
   1400021cb:	48 8b 00             	mov    (%rax),%rax
   1400021ce:	48 85 c0             	test   %rax,%rax
   1400021d1:	74 22                	je     1400021f5 <__do_global_dtors+0x35>
   1400021d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400021d8:	ff d0                	call   *%rax
   1400021da:	48 8b 05 2f 1e 00 00 	mov    0x1e2f(%rip),%rax        # 140004010 <p.0>
   1400021e1:	48 8d 50 08          	lea    0x8(%rax),%rdx
   1400021e5:	48 8b 40 08          	mov    0x8(%rax),%rax
   1400021e9:	48 89 15 20 1e 00 00 	mov    %rdx,0x1e20(%rip)        # 140004010 <p.0>
   1400021f0:	48 85 c0             	test   %rax,%rax
   1400021f3:	75 e3                	jne    1400021d8 <__do_global_dtors+0x18>
   1400021f5:	48 83 c4 28          	add    $0x28,%rsp
   1400021f9:	c3                   	ret    
   1400021fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140002200 <__do_global_ctors>:
   140002200:	56                   	push   %rsi
   140002201:	53                   	push   %rbx
   140002202:	48 83 ec 28          	sub    $0x28,%rsp
   140002206:	48 8b 15 d3 31 00 00 	mov    0x31d3(%rip),%rdx        # 1400053e0 <.refptr.__CTOR_LIST__>
   14000220d:	48 8b 02             	mov    (%rdx),%rax
   140002210:	89 c1                	mov    %eax,%ecx
   140002212:	83 f8 ff             	cmp    $0xffffffff,%eax
   140002215:	74 39                	je     140002250 <__do_global_ctors+0x50>
   140002217:	85 c9                	test   %ecx,%ecx
   140002219:	74 20                	je     14000223b <__do_global_ctors+0x3b>
   14000221b:	89 c8                	mov    %ecx,%eax
   14000221d:	83 e9 01             	sub    $0x1,%ecx
   140002220:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   140002224:	48 29 c8             	sub    %rcx,%rax
   140002227:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   14000222c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002230:	ff 13                	call   *(%rbx)
   140002232:	48 83 eb 08          	sub    $0x8,%rbx
   140002236:	48 39 f3             	cmp    %rsi,%rbx
   140002239:	75 f5                	jne    140002230 <__do_global_ctors+0x30>
   14000223b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 1400021c0 <__do_global_dtors>
   140002242:	48 83 c4 28          	add    $0x28,%rsp
   140002246:	5b                   	pop    %rbx
   140002247:	5e                   	pop    %rsi
   140002248:	e9 a3 f2 ff ff       	jmp    1400014f0 <atexit>
   14000224d:	0f 1f 00             	nopl   (%rax)
   140002250:	31 c0                	xor    %eax,%eax
   140002252:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002258:	44 8d 40 01          	lea    0x1(%rax),%r8d
   14000225c:	89 c1                	mov    %eax,%ecx
   14000225e:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   140002263:	4c 89 c0             	mov    %r8,%rax
   140002266:	75 f0                	jne    140002258 <__do_global_ctors+0x58>
   140002268:	eb ad                	jmp    140002217 <__do_global_ctors+0x17>
   14000226a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140002270 <__main>:
   140002270:	8b 05 da 5d 00 00    	mov    0x5dda(%rip),%eax        # 140008050 <initialized>
   140002276:	85 c0                	test   %eax,%eax
   140002278:	74 06                	je     140002280 <__main+0x10>
   14000227a:	c3                   	ret    
   14000227b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002280:	c7 05 c6 5d 00 00 01 	movl   $0x1,0x5dc6(%rip)        # 140008050 <initialized>
   140002287:	00 00 00 
   14000228a:	e9 71 ff ff ff       	jmp    140002200 <__do_global_ctors>
   14000228f:	90                   	nop

0000000140002290 <_setargv>:
   140002290:	31 c0                	xor    %eax,%eax
   140002292:	c3                   	ret    
   140002293:	90                   	nop
   140002294:	90                   	nop
   140002295:	90                   	nop
   140002296:	90                   	nop
   140002297:	90                   	nop
   140002298:	90                   	nop
   140002299:	90                   	nop
   14000229a:	90                   	nop
   14000229b:	90                   	nop
   14000229c:	90                   	nop
   14000229d:	90                   	nop
   14000229e:	90                   	nop
   14000229f:	90                   	nop

00000001400022a0 <__dyn_tls_dtor>:
   1400022a0:	48 83 ec 28          	sub    $0x28,%rsp
   1400022a4:	83 fa 03             	cmp    $0x3,%edx
   1400022a7:	74 17                	je     1400022c0 <__dyn_tls_dtor+0x20>
   1400022a9:	85 d2                	test   %edx,%edx
   1400022ab:	74 13                	je     1400022c0 <__dyn_tls_dtor+0x20>
   1400022ad:	b8 01 00 00 00       	mov    $0x1,%eax
   1400022b2:	48 83 c4 28          	add    $0x28,%rsp
   1400022b6:	c3                   	ret    
   1400022b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400022be:	00 00 
   1400022c0:	e8 9b 0a 00 00       	call   140002d60 <__mingw_TLScallback>
   1400022c5:	b8 01 00 00 00       	mov    $0x1,%eax
   1400022ca:	48 83 c4 28          	add    $0x28,%rsp
   1400022ce:	c3                   	ret    
   1400022cf:	90                   	nop

00000001400022d0 <__dyn_tls_init>:
   1400022d0:	56                   	push   %rsi
   1400022d1:	53                   	push   %rbx
   1400022d2:	48 83 ec 28          	sub    $0x28,%rsp
   1400022d6:	48 8b 05 c3 30 00 00 	mov    0x30c3(%rip),%rax        # 1400053a0 <.refptr._CRT_MT>
   1400022dd:	83 38 02             	cmpl   $0x2,(%rax)
   1400022e0:	74 06                	je     1400022e8 <__dyn_tls_init+0x18>
   1400022e2:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   1400022e8:	83 fa 02             	cmp    $0x2,%edx
   1400022eb:	74 13                	je     140002300 <__dyn_tls_init+0x30>
   1400022ed:	83 fa 01             	cmp    $0x1,%edx
   1400022f0:	74 4e                	je     140002340 <__dyn_tls_init+0x70>
   1400022f2:	b8 01 00 00 00       	mov    $0x1,%eax
   1400022f7:	48 83 c4 28          	add    $0x28,%rsp
   1400022fb:	5b                   	pop    %rbx
   1400022fc:	5e                   	pop    %rsi
   1400022fd:	c3                   	ret    
   1400022fe:	66 90                	xchg   %ax,%ax
   140002300:	48 8d 1d 51 7d 00 00 	lea    0x7d51(%rip),%rbx        # 14000a058 <__xd_z>
   140002307:	48 8d 35 4a 7d 00 00 	lea    0x7d4a(%rip),%rsi        # 14000a058 <__xd_z>
   14000230e:	48 39 de             	cmp    %rbx,%rsi
   140002311:	74 df                	je     1400022f2 <__dyn_tls_init+0x22>
   140002313:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002318:	48 8b 03             	mov    (%rbx),%rax
   14000231b:	48 85 c0             	test   %rax,%rax
   14000231e:	74 02                	je     140002322 <__dyn_tls_init+0x52>
   140002320:	ff d0                	call   *%rax
   140002322:	48 83 c3 08          	add    $0x8,%rbx
   140002326:	48 39 de             	cmp    %rbx,%rsi
   140002329:	75 ed                	jne    140002318 <__dyn_tls_init+0x48>
   14000232b:	b8 01 00 00 00       	mov    $0x1,%eax
   140002330:	48 83 c4 28          	add    $0x28,%rsp
   140002334:	5b                   	pop    %rbx
   140002335:	5e                   	pop    %rsi
   140002336:	c3                   	ret    
   140002337:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000233e:	00 00 
   140002340:	e8 1b 0a 00 00       	call   140002d60 <__mingw_TLScallback>
   140002345:	b8 01 00 00 00       	mov    $0x1,%eax
   14000234a:	48 83 c4 28          	add    $0x28,%rsp
   14000234e:	5b                   	pop    %rbx
   14000234f:	5e                   	pop    %rsi
   140002350:	c3                   	ret    
   140002351:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002358:	00 00 00 00 
   14000235c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002360 <__tlregdtor>:
   140002360:	31 c0                	xor    %eax,%eax
   140002362:	c3                   	ret    
   140002363:	90                   	nop
   140002364:	90                   	nop
   140002365:	90                   	nop
   140002366:	90                   	nop
   140002367:	90                   	nop
   140002368:	90                   	nop
   140002369:	90                   	nop
   14000236a:	90                   	nop
   14000236b:	90                   	nop
   14000236c:	90                   	nop
   14000236d:	90                   	nop
   14000236e:	90                   	nop
   14000236f:	90                   	nop

0000000140002370 <_matherr>:
   140002370:	56                   	push   %rsi
   140002371:	53                   	push   %rbx
   140002372:	48 83 ec 78          	sub    $0x78,%rsp
   140002376:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
   14000237b:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
   140002380:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
   140002386:	83 39 06             	cmpl   $0x6,(%rcx)
   140002389:	0f 87 cd 00 00 00    	ja     14000245c <_matherr+0xec>
   14000238f:	8b 01                	mov    (%rcx),%eax
   140002391:	48 8d 15 4c 2e 00 00 	lea    0x2e4c(%rip),%rdx        # 1400051e4 <.rdata+0x124>
   140002398:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   14000239c:	48 01 d0             	add    %rdx,%rax
   14000239f:	ff e0                	jmp    *%rax
   1400023a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400023a8:	48 8d 1d 30 2d 00 00 	lea    0x2d30(%rip),%rbx        # 1400050df <.rdata+0x1f>
   1400023af:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   1400023b5:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   1400023ba:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   1400023bf:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   1400023c3:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400023c8:	e8 03 0f 00 00       	call   1400032d0 <__acrt_iob_func>
   1400023cd:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   1400023d4:	49 89 d8             	mov    %rbx,%r8
   1400023d7:	48 8d 15 da 2d 00 00 	lea    0x2dda(%rip),%rdx        # 1400051b8 <.rdata+0xf8>
   1400023de:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   1400023e4:	48 89 c1             	mov    %rax,%rcx
   1400023e7:	49 89 f1             	mov    %rsi,%r9
   1400023ea:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   1400023f0:	e8 63 0f 00 00       	call   140003358 <fprintf>
   1400023f5:	90                   	nop
   1400023f6:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
   1400023fb:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
   140002400:	31 c0                	xor    %eax,%eax
   140002402:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
   140002408:	48 83 c4 78          	add    $0x78,%rsp
   14000240c:	5b                   	pop    %rbx
   14000240d:	5e                   	pop    %rsi
   14000240e:	c3                   	ret    
   14000240f:	90                   	nop
   140002410:	48 8d 1d a9 2c 00 00 	lea    0x2ca9(%rip),%rbx        # 1400050c0 <.rdata>
   140002417:	eb 96                	jmp    1400023af <_matherr+0x3f>
   140002419:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002420:	48 8d 1d f9 2c 00 00 	lea    0x2cf9(%rip),%rbx        # 140005120 <.rdata+0x60>
   140002427:	eb 86                	jmp    1400023af <_matherr+0x3f>
   140002429:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002430:	48 8d 1d c9 2c 00 00 	lea    0x2cc9(%rip),%rbx        # 140005100 <.rdata+0x40>
   140002437:	e9 73 ff ff ff       	jmp    1400023af <_matherr+0x3f>
   14000243c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002440:	48 8d 1d 29 2d 00 00 	lea    0x2d29(%rip),%rbx        # 140005170 <.rdata+0xb0>
   140002447:	e9 63 ff ff ff       	jmp    1400023af <_matherr+0x3f>
   14000244c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002450:	48 8d 1d f1 2c 00 00 	lea    0x2cf1(%rip),%rbx        # 140005148 <.rdata+0x88>
   140002457:	e9 53 ff ff ff       	jmp    1400023af <_matherr+0x3f>
   14000245c:	48 8d 1d 43 2d 00 00 	lea    0x2d43(%rip),%rbx        # 1400051a6 <.rdata+0xe6>
   140002463:	e9 47 ff ff ff       	jmp    1400023af <_matherr+0x3f>
   140002468:	90                   	nop
   140002469:	90                   	nop
   14000246a:	90                   	nop
   14000246b:	90                   	nop
   14000246c:	90                   	nop
   14000246d:	90                   	nop
   14000246e:	90                   	nop
   14000246f:	90                   	nop

0000000140002470 <_fpreset>:
   140002470:	db e3                	fninit 
   140002472:	c3                   	ret    
   140002473:	90                   	nop
   140002474:	90                   	nop
   140002475:	90                   	nop
   140002476:	90                   	nop
   140002477:	90                   	nop
   140002478:	90                   	nop
   140002479:	90                   	nop
   14000247a:	90                   	nop
   14000247b:	90                   	nop
   14000247c:	90                   	nop
   14000247d:	90                   	nop
   14000247e:	90                   	nop
   14000247f:	90                   	nop

0000000140002480 <__report_error>:
   140002480:	41 54                	push   %r12
   140002482:	53                   	push   %rbx
   140002483:	48 83 ec 38          	sub    $0x38,%rsp
   140002487:	49 89 cc             	mov    %rcx,%r12
   14000248a:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   14000248f:	b9 02 00 00 00       	mov    $0x2,%ecx
   140002494:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140002499:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000249e:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   1400024a3:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   1400024a8:	e8 23 0e 00 00       	call   1400032d0 <__acrt_iob_func>
   1400024ad:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   1400024b3:	ba 01 00 00 00       	mov    $0x1,%edx
   1400024b8:	48 8d 0d 41 2d 00 00 	lea    0x2d41(%rip),%rcx        # 140005200 <.rdata>
   1400024bf:	49 89 c1             	mov    %rax,%r9
   1400024c2:	e8 a1 0e 00 00       	call   140003368 <fwrite>
   1400024c7:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
   1400024cc:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400024d1:	e8 fa 0d 00 00       	call   1400032d0 <__acrt_iob_func>
   1400024d6:	4c 89 e2             	mov    %r12,%rdx
   1400024d9:	48 89 c1             	mov    %rax,%rcx
   1400024dc:	49 89 d8             	mov    %rbx,%r8
   1400024df:	e8 b4 0e 00 00       	call   140003398 <vfprintf>
   1400024e4:	e8 4f 0e 00 00       	call   140003338 <abort>
   1400024e9:	90                   	nop
   1400024ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400024f0 <mark_section_writable>:
   1400024f0:	41 54                	push   %r12
   1400024f2:	56                   	push   %rsi
   1400024f3:	53                   	push   %rbx
   1400024f4:	48 83 ec 50          	sub    $0x50,%rsp
   1400024f8:	48 63 1d b5 5b 00 00 	movslq 0x5bb5(%rip),%rbx        # 1400080b4 <maxSections>
   1400024ff:	49 89 cc             	mov    %rcx,%r12
   140002502:	85 db                	test   %ebx,%ebx
   140002504:	0f 8e 16 01 00 00    	jle    140002620 <mark_section_writable+0x130>
   14000250a:	48 8b 05 a7 5b 00 00 	mov    0x5ba7(%rip),%rax        # 1400080b8 <the_secs>
   140002511:	45 31 c9             	xor    %r9d,%r9d
   140002514:	48 83 c0 18          	add    $0x18,%rax
   140002518:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000251f:	00 
   140002520:	4c 8b 00             	mov    (%rax),%r8
   140002523:	4d 39 e0             	cmp    %r12,%r8
   140002526:	77 13                	ja     14000253b <mark_section_writable+0x4b>
   140002528:	48 8b 50 08          	mov    0x8(%rax),%rdx
   14000252c:	8b 52 08             	mov    0x8(%rdx),%edx
   14000252f:	49 01 d0             	add    %rdx,%r8
   140002532:	4d 39 c4             	cmp    %r8,%r12
   140002535:	0f 82 8a 00 00 00    	jb     1400025c5 <mark_section_writable+0xd5>
   14000253b:	41 83 c1 01          	add    $0x1,%r9d
   14000253f:	48 83 c0 28          	add    $0x28,%rax
   140002543:	41 39 d9             	cmp    %ebx,%r9d
   140002546:	75 d8                	jne    140002520 <mark_section_writable+0x30>
   140002548:	4c 89 e1             	mov    %r12,%rcx
   14000254b:	e8 20 0a 00 00       	call   140002f70 <__mingw_GetSectionForAddress>
   140002550:	48 89 c6             	mov    %rax,%rsi
   140002553:	48 85 c0             	test   %rax,%rax
   140002556:	0f 84 e6 00 00 00    	je     140002642 <mark_section_writable+0x152>
   14000255c:	48 8b 05 55 5b 00 00 	mov    0x5b55(%rip),%rax        # 1400080b8 <the_secs>
   140002563:	48 8d 1c 9b          	lea    (%rbx,%rbx,4),%rbx
   140002567:	48 c1 e3 03          	shl    $0x3,%rbx
   14000256b:	48 01 d8             	add    %rbx,%rax
   14000256e:	48 89 70 20          	mov    %rsi,0x20(%rax)
   140002572:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140002578:	e8 23 0b 00 00       	call   1400030a0 <_GetPEImageBase>
   14000257d:	8b 56 0c             	mov    0xc(%rsi),%edx
   140002580:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   140002586:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   14000258a:	48 8b 05 27 5b 00 00 	mov    0x5b27(%rip),%rax        # 1400080b8 <the_secs>
   140002591:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140002596:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   14000259b:	ff 15 eb 6c 00 00    	call   *0x6ceb(%rip)        # 14000928c <__imp_VirtualQuery>
   1400025a1:	48 85 c0             	test   %rax,%rax
   1400025a4:	0f 84 7d 00 00 00    	je     140002627 <mark_section_writable+0x137>
   1400025aa:	8b 44 24 44          	mov    0x44(%rsp),%eax
   1400025ae:	8d 50 c0             	lea    -0x40(%rax),%edx
   1400025b1:	83 e2 bf             	and    $0xffffffbf,%edx
   1400025b4:	74 08                	je     1400025be <mark_section_writable+0xce>
   1400025b6:	8d 50 fc             	lea    -0x4(%rax),%edx
   1400025b9:	83 e2 fb             	and    $0xfffffffb,%edx
   1400025bc:	75 12                	jne    1400025d0 <mark_section_writable+0xe0>
   1400025be:	83 05 ef 5a 00 00 01 	addl   $0x1,0x5aef(%rip)        # 1400080b4 <maxSections>
   1400025c5:	48 83 c4 50          	add    $0x50,%rsp
   1400025c9:	5b                   	pop    %rbx
   1400025ca:	5e                   	pop    %rsi
   1400025cb:	41 5c                	pop    %r12
   1400025cd:	c3                   	ret    
   1400025ce:	66 90                	xchg   %ax,%ax
   1400025d0:	83 f8 02             	cmp    $0x2,%eax
   1400025d3:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400025d8:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   1400025dd:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   1400025e3:	b8 40 00 00 00       	mov    $0x40,%eax
   1400025e8:	44 0f 45 c0          	cmovne %eax,%r8d
   1400025ec:	48 03 1d c5 5a 00 00 	add    0x5ac5(%rip),%rbx        # 1400080b8 <the_secs>
   1400025f3:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   1400025f7:	49 89 d9             	mov    %rbx,%r9
   1400025fa:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   1400025fe:	ff 15 80 6c 00 00    	call   *0x6c80(%rip)        # 140009284 <__imp_VirtualProtect>
   140002604:	85 c0                	test   %eax,%eax
   140002606:	75 b6                	jne    1400025be <mark_section_writable+0xce>
   140002608:	ff 15 3e 6c 00 00    	call   *0x6c3e(%rip)        # 14000924c <__imp_GetLastError>
   14000260e:	48 8d 0d 63 2c 00 00 	lea    0x2c63(%rip),%rcx        # 140005278 <.rdata+0x78>
   140002615:	89 c2                	mov    %eax,%edx
   140002617:	e8 64 fe ff ff       	call   140002480 <__report_error>
   14000261c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002620:	31 db                	xor    %ebx,%ebx
   140002622:	e9 21 ff ff ff       	jmp    140002548 <mark_section_writable+0x58>
   140002627:	48 8b 05 8a 5a 00 00 	mov    0x5a8a(%rip),%rax        # 1400080b8 <the_secs>
   14000262e:	8b 56 08             	mov    0x8(%rsi),%edx
   140002631:	48 8d 0d 08 2c 00 00 	lea    0x2c08(%rip),%rcx        # 140005240 <.rdata+0x40>
   140002638:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   14000263d:	e8 3e fe ff ff       	call   140002480 <__report_error>
   140002642:	4c 89 e2             	mov    %r12,%rdx
   140002645:	48 8d 0d d4 2b 00 00 	lea    0x2bd4(%rip),%rcx        # 140005220 <.rdata+0x20>
   14000264c:	e8 2f fe ff ff       	call   140002480 <__report_error>
   140002651:	90                   	nop
   140002652:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002659:	00 00 00 00 
   14000265d:	0f 1f 00             	nopl   (%rax)

0000000140002660 <_pei386_runtime_relocator>:
   140002660:	55                   	push   %rbp
   140002661:	41 57                	push   %r15
   140002663:	41 56                	push   %r14
   140002665:	41 55                	push   %r13
   140002667:	41 54                	push   %r12
   140002669:	57                   	push   %rdi
   14000266a:	56                   	push   %rsi
   14000266b:	53                   	push   %rbx
   14000266c:	48 83 ec 48          	sub    $0x48,%rsp
   140002670:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   140002675:	8b 35 35 5a 00 00    	mov    0x5a35(%rip),%esi        # 1400080b0 <was_init.0>
   14000267b:	85 f6                	test   %esi,%esi
   14000267d:	74 11                	je     140002690 <_pei386_runtime_relocator+0x30>
   14000267f:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140002683:	5b                   	pop    %rbx
   140002684:	5e                   	pop    %rsi
   140002685:	5f                   	pop    %rdi
   140002686:	41 5c                	pop    %r12
   140002688:	41 5d                	pop    %r13
   14000268a:	41 5e                	pop    %r14
   14000268c:	41 5f                	pop    %r15
   14000268e:	5d                   	pop    %rbp
   14000268f:	c3                   	ret    
   140002690:	c7 05 16 5a 00 00 01 	movl   $0x1,0x5a16(%rip)        # 1400080b0 <was_init.0>
   140002697:	00 00 00 
   14000269a:	e8 51 09 00 00       	call   140002ff0 <__mingw_GetSectionCount>
   14000269f:	48 98                	cltq   
   1400026a1:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   1400026a5:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   1400026ac:	00 
   1400026ad:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   1400026b1:	e8 8a 0b 00 00       	call   140003240 <___chkstk_ms>
   1400026b6:	48 8b 3d 33 2d 00 00 	mov    0x2d33(%rip),%rdi        # 1400053f0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   1400026bd:	48 8b 1d 3c 2d 00 00 	mov    0x2d3c(%rip),%rbx        # 140005400 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   1400026c4:	c7 05 e6 59 00 00 00 	movl   $0x0,0x59e6(%rip)        # 1400080b4 <maxSections>
   1400026cb:	00 00 00 
   1400026ce:	48 29 c4             	sub    %rax,%rsp
   1400026d1:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   1400026d6:	48 89 05 db 59 00 00 	mov    %rax,0x59db(%rip)        # 1400080b8 <the_secs>
   1400026dd:	48 89 f8             	mov    %rdi,%rax
   1400026e0:	48 29 d8             	sub    %rbx,%rax
   1400026e3:	48 83 f8 07          	cmp    $0x7,%rax
   1400026e7:	7e 96                	jle    14000267f <_pei386_runtime_relocator+0x1f>
   1400026e9:	8b 13                	mov    (%rbx),%edx
   1400026eb:	48 83 f8 0b          	cmp    $0xb,%rax
   1400026ef:	0f 8f 83 01 00 00    	jg     140002878 <_pei386_runtime_relocator+0x218>
   1400026f5:	8b 03                	mov    (%rbx),%eax
   1400026f7:	85 c0                	test   %eax,%eax
   1400026f9:	0f 85 29 02 00 00    	jne    140002928 <_pei386_runtime_relocator+0x2c8>
   1400026ff:	8b 43 04             	mov    0x4(%rbx),%eax
   140002702:	85 c0                	test   %eax,%eax
   140002704:	0f 85 1e 02 00 00    	jne    140002928 <_pei386_runtime_relocator+0x2c8>
   14000270a:	8b 53 08             	mov    0x8(%rbx),%edx
   14000270d:	83 fa 01             	cmp    $0x1,%edx
   140002710:	0f 85 72 02 00 00    	jne    140002988 <_pei386_runtime_relocator+0x328>
   140002716:	48 83 c3 0c          	add    $0xc,%rbx
   14000271a:	48 39 fb             	cmp    %rdi,%rbx
   14000271d:	0f 83 5c ff ff ff    	jae    14000267f <_pei386_runtime_relocator+0x1f>
   140002723:	4c 8b 3d f6 2c 00 00 	mov    0x2cf6(%rip),%r15        # 140005420 <.refptr.__image_base__>
   14000272a:	49 bc 00 00 00 00 ff 	movabs $0xffffffff00000000,%r12
   140002731:	ff ff ff 
   140002734:	eb 5d                	jmp    140002793 <_pei386_runtime_relocator+0x133>
   140002736:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000273d:	00 00 00 
   140002740:	41 0f b6 06          	movzbl (%r14),%eax
   140002744:	49 89 c3             	mov    %rax,%r11
   140002747:	49 81 cb 00 ff ff ff 	or     $0xffffffffffffff00,%r11
   14000274e:	84 c0                	test   %al,%al
   140002750:	49 0f 48 c3          	cmovs  %r11,%rax
   140002754:	48 29 c8             	sub    %rcx,%rax
   140002757:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   14000275e:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   140002762:	75 17                	jne    14000277b <_pei386_runtime_relocator+0x11b>
   140002764:	49 83 fd 80          	cmp    $0xffffffffffffff80,%r13
   140002768:	0f 8c 06 02 00 00    	jl     140002974 <_pei386_runtime_relocator+0x314>
   14000276e:	49 81 fd ff 00 00 00 	cmp    $0xff,%r13
   140002775:	0f 8f f9 01 00 00    	jg     140002974 <_pei386_runtime_relocator+0x314>
   14000277b:	4c 89 f1             	mov    %r14,%rcx
   14000277e:	e8 6d fd ff ff       	call   1400024f0 <mark_section_writable>
   140002783:	45 88 2e             	mov    %r13b,(%r14)
   140002786:	48 83 c3 0c          	add    $0xc,%rbx
   14000278a:	48 39 fb             	cmp    %rdi,%rbx
   14000278d:	0f 83 8d 00 00 00    	jae    140002820 <_pei386_runtime_relocator+0x1c0>
   140002793:	8b 0b                	mov    (%rbx),%ecx
   140002795:	44 8b 43 08          	mov    0x8(%rbx),%r8d
   140002799:	44 8b 73 04          	mov    0x4(%rbx),%r14d
   14000279d:	4c 01 f9             	add    %r15,%rcx
   1400027a0:	41 0f b6 d0          	movzbl %r8b,%edx
   1400027a4:	4c 8b 09             	mov    (%rcx),%r9
   1400027a7:	4d 01 fe             	add    %r15,%r14
   1400027aa:	83 fa 20             	cmp    $0x20,%edx
   1400027ad:	0f 84 25 01 00 00    	je     1400028d8 <_pei386_runtime_relocator+0x278>
   1400027b3:	0f 87 e7 00 00 00    	ja     1400028a0 <_pei386_runtime_relocator+0x240>
   1400027b9:	83 fa 08             	cmp    $0x8,%edx
   1400027bc:	74 82                	je     140002740 <_pei386_runtime_relocator+0xe0>
   1400027be:	83 fa 10             	cmp    $0x10,%edx
   1400027c1:	0f 85 a1 01 00 00    	jne    140002968 <_pei386_runtime_relocator+0x308>
   1400027c7:	41 0f b7 06          	movzwl (%r14),%eax
   1400027cb:	49 89 c3             	mov    %rax,%r11
   1400027ce:	49 81 cb 00 00 ff ff 	or     $0xffffffffffff0000,%r11
   1400027d5:	66 85 c0             	test   %ax,%ax
   1400027d8:	49 0f 48 c3          	cmovs  %r11,%rax
   1400027dc:	48 29 c8             	sub    %rcx,%rax
   1400027df:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   1400027e6:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   1400027ea:	75 1a                	jne    140002806 <_pei386_runtime_relocator+0x1a6>
   1400027ec:	49 81 fd 00 80 ff ff 	cmp    $0xffffffffffff8000,%r13
   1400027f3:	0f 8c 7b 01 00 00    	jl     140002974 <_pei386_runtime_relocator+0x314>
   1400027f9:	49 81 fd ff ff 00 00 	cmp    $0xffff,%r13
   140002800:	0f 8f 6e 01 00 00    	jg     140002974 <_pei386_runtime_relocator+0x314>
   140002806:	4c 89 f1             	mov    %r14,%rcx
   140002809:	48 83 c3 0c          	add    $0xc,%rbx
   14000280d:	e8 de fc ff ff       	call   1400024f0 <mark_section_writable>
   140002812:	66 45 89 2e          	mov    %r13w,(%r14)
   140002816:	48 39 fb             	cmp    %rdi,%rbx
   140002819:	0f 82 74 ff ff ff    	jb     140002793 <_pei386_runtime_relocator+0x133>
   14000281f:	90                   	nop
   140002820:	8b 15 8e 58 00 00    	mov    0x588e(%rip),%edx        # 1400080b4 <maxSections>
   140002826:	85 d2                	test   %edx,%edx
   140002828:	0f 8e 51 fe ff ff    	jle    14000267f <_pei386_runtime_relocator+0x1f>
   14000282e:	48 8b 3d 4f 6a 00 00 	mov    0x6a4f(%rip),%rdi        # 140009284 <__imp_VirtualProtect>
   140002835:	31 db                	xor    %ebx,%ebx
   140002837:	4c 8d 65 fc          	lea    -0x4(%rbp),%r12
   14000283b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002840:	48 8b 05 71 58 00 00 	mov    0x5871(%rip),%rax        # 1400080b8 <the_secs>
   140002847:	48 01 d8             	add    %rbx,%rax
   14000284a:	44 8b 00             	mov    (%rax),%r8d
   14000284d:	45 85 c0             	test   %r8d,%r8d
   140002850:	74 0d                	je     14000285f <_pei386_runtime_relocator+0x1ff>
   140002852:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140002856:	48 8b 48 08          	mov    0x8(%rax),%rcx
   14000285a:	4d 89 e1             	mov    %r12,%r9
   14000285d:	ff d7                	call   *%rdi
   14000285f:	83 c6 01             	add    $0x1,%esi
   140002862:	48 83 c3 28          	add    $0x28,%rbx
   140002866:	3b 35 48 58 00 00    	cmp    0x5848(%rip),%esi        # 1400080b4 <maxSections>
   14000286c:	7c d2                	jl     140002840 <_pei386_runtime_relocator+0x1e0>
   14000286e:	e9 0c fe ff ff       	jmp    14000267f <_pei386_runtime_relocator+0x1f>
   140002873:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002878:	85 d2                	test   %edx,%edx
   14000287a:	0f 85 a8 00 00 00    	jne    140002928 <_pei386_runtime_relocator+0x2c8>
   140002880:	8b 43 04             	mov    0x4(%rbx),%eax
   140002883:	89 c2                	mov    %eax,%edx
   140002885:	0b 53 08             	or     0x8(%rbx),%edx
   140002888:	0f 85 74 fe ff ff    	jne    140002702 <_pei386_runtime_relocator+0xa2>
   14000288e:	48 83 c3 0c          	add    $0xc,%rbx
   140002892:	e9 5e fe ff ff       	jmp    1400026f5 <_pei386_runtime_relocator+0x95>
   140002897:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000289e:	00 00 
   1400028a0:	83 fa 40             	cmp    $0x40,%edx
   1400028a3:	0f 85 bf 00 00 00    	jne    140002968 <_pei386_runtime_relocator+0x308>
   1400028a9:	49 8b 06             	mov    (%r14),%rax
   1400028ac:	48 29 c8             	sub    %rcx,%rax
   1400028af:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   1400028b6:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   1400028ba:	75 09                	jne    1400028c5 <_pei386_runtime_relocator+0x265>
   1400028bc:	4d 85 ed             	test   %r13,%r13
   1400028bf:	0f 89 af 00 00 00    	jns    140002974 <_pei386_runtime_relocator+0x314>
   1400028c5:	4c 89 f1             	mov    %r14,%rcx
   1400028c8:	e8 23 fc ff ff       	call   1400024f0 <mark_section_writable>
   1400028cd:	4d 89 2e             	mov    %r13,(%r14)
   1400028d0:	e9 b1 fe ff ff       	jmp    140002786 <_pei386_runtime_relocator+0x126>
   1400028d5:	0f 1f 00             	nopl   (%rax)
   1400028d8:	41 8b 06             	mov    (%r14),%eax
   1400028db:	49 89 c2             	mov    %rax,%r10
   1400028de:	4c 09 e0             	or     %r12,%rax
   1400028e1:	45 85 d2             	test   %r10d,%r10d
   1400028e4:	49 0f 49 c2          	cmovns %r10,%rax
   1400028e8:	48 29 c8             	sub    %rcx,%rax
   1400028eb:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   1400028f2:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   1400028f6:	75 19                	jne    140002911 <_pei386_runtime_relocator+0x2b1>
   1400028f8:	48 b8 ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%rax
   1400028ff:	ff ff ff 
   140002902:	49 39 c5             	cmp    %rax,%r13
   140002905:	7e 6d                	jle    140002974 <_pei386_runtime_relocator+0x314>
   140002907:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   14000290c:	49 39 c5             	cmp    %rax,%r13
   14000290f:	7f 63                	jg     140002974 <_pei386_runtime_relocator+0x314>
   140002911:	4c 89 f1             	mov    %r14,%rcx
   140002914:	e8 d7 fb ff ff       	call   1400024f0 <mark_section_writable>
   140002919:	45 89 2e             	mov    %r13d,(%r14)
   14000291c:	e9 65 fe ff ff       	jmp    140002786 <_pei386_runtime_relocator+0x126>
   140002921:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002928:	48 39 fb             	cmp    %rdi,%rbx
   14000292b:	0f 83 4e fd ff ff    	jae    14000267f <_pei386_runtime_relocator+0x1f>
   140002931:	4c 8b 35 e8 2a 00 00 	mov    0x2ae8(%rip),%r14        # 140005420 <.refptr.__image_base__>
   140002938:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000293f:	00 
   140002940:	44 8b 63 04          	mov    0x4(%rbx),%r12d
   140002944:	44 8b 2b             	mov    (%rbx),%r13d
   140002947:	48 83 c3 08          	add    $0x8,%rbx
   14000294b:	4d 01 f4             	add    %r14,%r12
   14000294e:	45 03 2c 24          	add    (%r12),%r13d
   140002952:	4c 89 e1             	mov    %r12,%rcx
   140002955:	e8 96 fb ff ff       	call   1400024f0 <mark_section_writable>
   14000295a:	45 89 2c 24          	mov    %r13d,(%r12)
   14000295e:	48 39 fb             	cmp    %rdi,%rbx
   140002961:	72 dd                	jb     140002940 <_pei386_runtime_relocator+0x2e0>
   140002963:	e9 b8 fe ff ff       	jmp    140002820 <_pei386_runtime_relocator+0x1c0>
   140002968:	48 8d 0d 69 29 00 00 	lea    0x2969(%rip),%rcx        # 1400052d8 <.rdata+0xd8>
   14000296f:	e8 0c fb ff ff       	call   140002480 <__report_error>
   140002974:	4c 89 6c 24 20       	mov    %r13,0x20(%rsp)
   140002979:	4d 89 f0             	mov    %r14,%r8
   14000297c:	48 8d 0d 85 29 00 00 	lea    0x2985(%rip),%rcx        # 140005308 <.rdata+0x108>
   140002983:	e8 f8 fa ff ff       	call   140002480 <__report_error>
   140002988:	48 8d 0d 11 29 00 00 	lea    0x2911(%rip),%rcx        # 1400052a0 <.rdata+0xa0>
   14000298f:	e8 ec fa ff ff       	call   140002480 <__report_error>
   140002994:	90                   	nop
   140002995:	90                   	nop
   140002996:	90                   	nop
   140002997:	90                   	nop
   140002998:	90                   	nop
   140002999:	90                   	nop
   14000299a:	90                   	nop
   14000299b:	90                   	nop
   14000299c:	90                   	nop
   14000299d:	90                   	nop
   14000299e:	90                   	nop
   14000299f:	90                   	nop

00000001400029a0 <__mingw_raise_matherr>:
   1400029a0:	48 83 ec 58          	sub    $0x58,%rsp
   1400029a4:	48 8b 05 15 57 00 00 	mov    0x5715(%rip),%rax        # 1400080c0 <stUserMathErr>
   1400029ab:	48 85 c0             	test   %rax,%rax
   1400029ae:	74 2c                	je     1400029dc <__mingw_raise_matherr+0x3c>
   1400029b0:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   1400029b7:	00 00 
   1400029b9:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   1400029bd:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   1400029c2:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   1400029c7:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
   1400029cd:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
   1400029d3:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   1400029d9:	ff d0                	call   *%rax
   1400029db:	90                   	nop
   1400029dc:	48 83 c4 58          	add    $0x58,%rsp
   1400029e0:	c3                   	ret    
   1400029e1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400029e8:	00 00 00 00 
   1400029ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400029f0 <__mingw_setusermatherr>:
   1400029f0:	48 89 0d c9 56 00 00 	mov    %rcx,0x56c9(%rip)        # 1400080c0 <stUserMathErr>
   1400029f7:	e9 14 09 00 00       	jmp    140003310 <__setusermatherr>
   1400029fc:	90                   	nop
   1400029fd:	90                   	nop
   1400029fe:	90                   	nop
   1400029ff:	90                   	nop

0000000140002a00 <_gnu_exception_handler>:
   140002a00:	41 54                	push   %r12
   140002a02:	48 83 ec 20          	sub    $0x20,%rsp
   140002a06:	48 8b 11             	mov    (%rcx),%rdx
   140002a09:	8b 02                	mov    (%rdx),%eax
   140002a0b:	49 89 cc             	mov    %rcx,%r12
   140002a0e:	89 c1                	mov    %eax,%ecx
   140002a10:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   140002a16:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   140002a1c:	0f 84 be 00 00 00    	je     140002ae0 <_gnu_exception_handler+0xe0>
   140002a22:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   140002a27:	0f 87 9a 00 00 00    	ja     140002ac7 <_gnu_exception_handler+0xc7>
   140002a2d:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   140002a32:	76 44                	jbe    140002a78 <_gnu_exception_handler+0x78>
   140002a34:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   140002a39:	83 f8 09             	cmp    $0x9,%eax
   140002a3c:	77 2a                	ja     140002a68 <_gnu_exception_handler+0x68>
   140002a3e:	48 8d 15 1b 29 00 00 	lea    0x291b(%rip),%rdx        # 140005360 <.rdata>
   140002a45:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140002a49:	48 01 d0             	add    %rdx,%rax
   140002a4c:	ff e0                	jmp    *%rax
   140002a4e:	66 90                	xchg   %ax,%ax
   140002a50:	ba 01 00 00 00       	mov    $0x1,%edx
   140002a55:	b9 08 00 00 00       	mov    $0x8,%ecx
   140002a5a:	e8 21 09 00 00       	call   140003380 <signal>
   140002a5f:	e8 0c fa ff ff       	call   140002470 <_fpreset>
   140002a64:	0f 1f 40 00          	nopl   0x0(%rax)
   140002a68:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002a6d:	48 83 c4 20          	add    $0x20,%rsp
   140002a71:	41 5c                	pop    %r12
   140002a73:	c3                   	ret    
   140002a74:	0f 1f 40 00          	nopl   0x0(%rax)
   140002a78:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   140002a7d:	0f 84 dd 00 00 00    	je     140002b60 <_gnu_exception_handler+0x160>
   140002a83:	76 3b                	jbe    140002ac0 <_gnu_exception_handler+0xc0>
   140002a85:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   140002a8a:	74 dc                	je     140002a68 <_gnu_exception_handler+0x68>
   140002a8c:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140002a91:	75 34                	jne    140002ac7 <_gnu_exception_handler+0xc7>
   140002a93:	31 d2                	xor    %edx,%edx
   140002a95:	b9 04 00 00 00       	mov    $0x4,%ecx
   140002a9a:	e8 e1 08 00 00       	call   140003380 <signal>
   140002a9f:	48 83 f8 01          	cmp    $0x1,%rax
   140002aa3:	0f 84 e3 00 00 00    	je     140002b8c <_gnu_exception_handler+0x18c>
   140002aa9:	48 85 c0             	test   %rax,%rax
   140002aac:	74 19                	je     140002ac7 <_gnu_exception_handler+0xc7>
   140002aae:	b9 04 00 00 00       	mov    $0x4,%ecx
   140002ab3:	ff d0                	call   *%rax
   140002ab5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002aba:	eb b1                	jmp    140002a6d <_gnu_exception_handler+0x6d>
   140002abc:	0f 1f 40 00          	nopl   0x0(%rax)
   140002ac0:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   140002ac5:	74 a1                	je     140002a68 <_gnu_exception_handler+0x68>
   140002ac7:	48 8b 05 12 56 00 00 	mov    0x5612(%rip),%rax        # 1400080e0 <__mingw_oldexcpt_handler>
   140002ace:	48 85 c0             	test   %rax,%rax
   140002ad1:	74 1d                	je     140002af0 <_gnu_exception_handler+0xf0>
   140002ad3:	4c 89 e1             	mov    %r12,%rcx
   140002ad6:	48 83 c4 20          	add    $0x20,%rsp
   140002ada:	41 5c                	pop    %r12
   140002adc:	48 ff e0             	rex.W jmp *%rax
   140002adf:	90                   	nop
   140002ae0:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140002ae4:	0f 85 38 ff ff ff    	jne    140002a22 <_gnu_exception_handler+0x22>
   140002aea:	e9 79 ff ff ff       	jmp    140002a68 <_gnu_exception_handler+0x68>
   140002aef:	90                   	nop
   140002af0:	31 c0                	xor    %eax,%eax
   140002af2:	48 83 c4 20          	add    $0x20,%rsp
   140002af6:	41 5c                	pop    %r12
   140002af8:	c3                   	ret    
   140002af9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002b00:	31 d2                	xor    %edx,%edx
   140002b02:	b9 08 00 00 00       	mov    $0x8,%ecx
   140002b07:	e8 74 08 00 00       	call   140003380 <signal>
   140002b0c:	48 83 f8 01          	cmp    $0x1,%rax
   140002b10:	0f 84 3a ff ff ff    	je     140002a50 <_gnu_exception_handler+0x50>
   140002b16:	48 85 c0             	test   %rax,%rax
   140002b19:	74 ac                	je     140002ac7 <_gnu_exception_handler+0xc7>
   140002b1b:	b9 08 00 00 00       	mov    $0x8,%ecx
   140002b20:	ff d0                	call   *%rax
   140002b22:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002b27:	e9 41 ff ff ff       	jmp    140002a6d <_gnu_exception_handler+0x6d>
   140002b2c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002b30:	31 d2                	xor    %edx,%edx
   140002b32:	b9 08 00 00 00       	mov    $0x8,%ecx
   140002b37:	e8 44 08 00 00       	call   140003380 <signal>
   140002b3c:	48 83 f8 01          	cmp    $0x1,%rax
   140002b40:	75 d4                	jne    140002b16 <_gnu_exception_handler+0x116>
   140002b42:	ba 01 00 00 00       	mov    $0x1,%edx
   140002b47:	b9 08 00 00 00       	mov    $0x8,%ecx
   140002b4c:	e8 2f 08 00 00       	call   140003380 <signal>
   140002b51:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002b56:	e9 12 ff ff ff       	jmp    140002a6d <_gnu_exception_handler+0x6d>
   140002b5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002b60:	31 d2                	xor    %edx,%edx
   140002b62:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140002b67:	e8 14 08 00 00       	call   140003380 <signal>
   140002b6c:	48 83 f8 01          	cmp    $0x1,%rax
   140002b70:	74 31                	je     140002ba3 <_gnu_exception_handler+0x1a3>
   140002b72:	48 85 c0             	test   %rax,%rax
   140002b75:	0f 84 4c ff ff ff    	je     140002ac7 <_gnu_exception_handler+0xc7>
   140002b7b:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140002b80:	ff d0                	call   *%rax
   140002b82:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002b87:	e9 e1 fe ff ff       	jmp    140002a6d <_gnu_exception_handler+0x6d>
   140002b8c:	ba 01 00 00 00       	mov    $0x1,%edx
   140002b91:	b9 04 00 00 00       	mov    $0x4,%ecx
   140002b96:	e8 e5 07 00 00       	call   140003380 <signal>
   140002b9b:	83 c8 ff             	or     $0xffffffff,%eax
   140002b9e:	e9 ca fe ff ff       	jmp    140002a6d <_gnu_exception_handler+0x6d>
   140002ba3:	ba 01 00 00 00       	mov    $0x1,%edx
   140002ba8:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140002bad:	e8 ce 07 00 00       	call   140003380 <signal>
   140002bb2:	83 c8 ff             	or     $0xffffffff,%eax
   140002bb5:	e9 b3 fe ff ff       	jmp    140002a6d <_gnu_exception_handler+0x6d>
   140002bba:	90                   	nop
   140002bbb:	90                   	nop
   140002bbc:	90                   	nop
   140002bbd:	90                   	nop
   140002bbe:	90                   	nop
   140002bbf:	90                   	nop

0000000140002bc0 <__mingwthr_run_key_dtors.part.0>:
   140002bc0:	41 55                	push   %r13
   140002bc2:	41 54                	push   %r12
   140002bc4:	57                   	push   %rdi
   140002bc5:	56                   	push   %rsi
   140002bc6:	53                   	push   %rbx
   140002bc7:	48 83 ec 20          	sub    $0x20,%rsp
   140002bcb:	4c 8d 2d 4e 55 00 00 	lea    0x554e(%rip),%r13        # 140008120 <__mingwthr_cs>
   140002bd2:	4c 89 e9             	mov    %r13,%rcx
   140002bd5:	ff 15 69 66 00 00    	call   *0x6669(%rip)        # 140009244 <__imp_EnterCriticalSection>
   140002bdb:	48 8b 1d 1e 55 00 00 	mov    0x551e(%rip),%rbx        # 140008100 <key_dtor_list>
   140002be2:	48 85 db             	test   %rbx,%rbx
   140002be5:	74 35                	je     140002c1c <__mingwthr_run_key_dtors.part.0+0x5c>
   140002be7:	48 8b 3d 8e 66 00 00 	mov    0x668e(%rip),%rdi        # 14000927c <__imp_TlsGetValue>
   140002bee:	48 8b 35 57 66 00 00 	mov    0x6657(%rip),%rsi        # 14000924c <__imp_GetLastError>
   140002bf5:	0f 1f 00             	nopl   (%rax)
   140002bf8:	8b 0b                	mov    (%rbx),%ecx
   140002bfa:	ff d7                	call   *%rdi
   140002bfc:	49 89 c4             	mov    %rax,%r12
   140002bff:	ff d6                	call   *%rsi
   140002c01:	85 c0                	test   %eax,%eax
   140002c03:	75 0e                	jne    140002c13 <__mingwthr_run_key_dtors.part.0+0x53>
   140002c05:	4d 85 e4             	test   %r12,%r12
   140002c08:	74 09                	je     140002c13 <__mingwthr_run_key_dtors.part.0+0x53>
   140002c0a:	48 8b 43 08          	mov    0x8(%rbx),%rax
   140002c0e:	4c 89 e1             	mov    %r12,%rcx
   140002c11:	ff d0                	call   *%rax
   140002c13:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140002c17:	48 85 db             	test   %rbx,%rbx
   140002c1a:	75 dc                	jne    140002bf8 <__mingwthr_run_key_dtors.part.0+0x38>
   140002c1c:	4c 89 e9             	mov    %r13,%rcx
   140002c1f:	48 83 c4 20          	add    $0x20,%rsp
   140002c23:	5b                   	pop    %rbx
   140002c24:	5e                   	pop    %rsi
   140002c25:	5f                   	pop    %rdi
   140002c26:	41 5c                	pop    %r12
   140002c28:	41 5d                	pop    %r13
   140002c2a:	48 ff 25 33 66 00 00 	rex.W jmp *0x6633(%rip)        # 140009264 <__imp_LeaveCriticalSection>
   140002c31:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002c38:	00 00 00 00 
   140002c3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002c40 <___w64_mingwthr_add_key_dtor>:
   140002c40:	41 54                	push   %r12
   140002c42:	57                   	push   %rdi
   140002c43:	56                   	push   %rsi
   140002c44:	53                   	push   %rbx
   140002c45:	48 83 ec 28          	sub    $0x28,%rsp
   140002c49:	8b 05 b9 54 00 00    	mov    0x54b9(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002c4f:	89 cf                	mov    %ecx,%edi
   140002c51:	48 89 d6             	mov    %rdx,%rsi
   140002c54:	85 c0                	test   %eax,%eax
   140002c56:	75 10                	jne    140002c68 <___w64_mingwthr_add_key_dtor+0x28>
   140002c58:	48 83 c4 28          	add    $0x28,%rsp
   140002c5c:	5b                   	pop    %rbx
   140002c5d:	5e                   	pop    %rsi
   140002c5e:	5f                   	pop    %rdi
   140002c5f:	41 5c                	pop    %r12
   140002c61:	c3                   	ret    
   140002c62:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002c68:	ba 18 00 00 00       	mov    $0x18,%edx
   140002c6d:	b9 01 00 00 00       	mov    $0x1,%ecx
   140002c72:	e8 c9 06 00 00       	call   140003340 <calloc>
   140002c77:	48 89 c3             	mov    %rax,%rbx
   140002c7a:	48 85 c0             	test   %rax,%rax
   140002c7d:	74 3d                	je     140002cbc <___w64_mingwthr_add_key_dtor+0x7c>
   140002c7f:	4c 8d 25 9a 54 00 00 	lea    0x549a(%rip),%r12        # 140008120 <__mingwthr_cs>
   140002c86:	89 38                	mov    %edi,(%rax)
   140002c88:	48 89 70 08          	mov    %rsi,0x8(%rax)
   140002c8c:	4c 89 e1             	mov    %r12,%rcx
   140002c8f:	ff 15 af 65 00 00    	call   *0x65af(%rip)        # 140009244 <__imp_EnterCriticalSection>
   140002c95:	48 8b 05 64 54 00 00 	mov    0x5464(%rip),%rax        # 140008100 <key_dtor_list>
   140002c9c:	4c 89 e1             	mov    %r12,%rcx
   140002c9f:	48 89 1d 5a 54 00 00 	mov    %rbx,0x545a(%rip)        # 140008100 <key_dtor_list>
   140002ca6:	48 89 43 10          	mov    %rax,0x10(%rbx)
   140002caa:	ff 15 b4 65 00 00    	call   *0x65b4(%rip)        # 140009264 <__imp_LeaveCriticalSection>
   140002cb0:	31 c0                	xor    %eax,%eax
   140002cb2:	48 83 c4 28          	add    $0x28,%rsp
   140002cb6:	5b                   	pop    %rbx
   140002cb7:	5e                   	pop    %rsi
   140002cb8:	5f                   	pop    %rdi
   140002cb9:	41 5c                	pop    %r12
   140002cbb:	c3                   	ret    
   140002cbc:	83 c8 ff             	or     $0xffffffff,%eax
   140002cbf:	eb 97                	jmp    140002c58 <___w64_mingwthr_add_key_dtor+0x18>
   140002cc1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002cc8:	00 00 00 00 
   140002ccc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002cd0 <___w64_mingwthr_remove_key_dtor>:
   140002cd0:	41 54                	push   %r12
   140002cd2:	53                   	push   %rbx
   140002cd3:	48 83 ec 28          	sub    $0x28,%rsp
   140002cd7:	8b 05 2b 54 00 00    	mov    0x542b(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002cdd:	89 cb                	mov    %ecx,%ebx
   140002cdf:	85 c0                	test   %eax,%eax
   140002ce1:	75 0d                	jne    140002cf0 <___w64_mingwthr_remove_key_dtor+0x20>
   140002ce3:	31 c0                	xor    %eax,%eax
   140002ce5:	48 83 c4 28          	add    $0x28,%rsp
   140002ce9:	5b                   	pop    %rbx
   140002cea:	41 5c                	pop    %r12
   140002cec:	c3                   	ret    
   140002ced:	0f 1f 00             	nopl   (%rax)
   140002cf0:	4c 8d 25 29 54 00 00 	lea    0x5429(%rip),%r12        # 140008120 <__mingwthr_cs>
   140002cf7:	4c 89 e1             	mov    %r12,%rcx
   140002cfa:	ff 15 44 65 00 00    	call   *0x6544(%rip)        # 140009244 <__imp_EnterCriticalSection>
   140002d00:	48 8b 0d f9 53 00 00 	mov    0x53f9(%rip),%rcx        # 140008100 <key_dtor_list>
   140002d07:	48 85 c9             	test   %rcx,%rcx
   140002d0a:	74 27                	je     140002d33 <___w64_mingwthr_remove_key_dtor+0x63>
   140002d0c:	31 d2                	xor    %edx,%edx
   140002d0e:	eb 0b                	jmp    140002d1b <___w64_mingwthr_remove_key_dtor+0x4b>
   140002d10:	48 89 ca             	mov    %rcx,%rdx
   140002d13:	48 85 c0             	test   %rax,%rax
   140002d16:	74 1b                	je     140002d33 <___w64_mingwthr_remove_key_dtor+0x63>
   140002d18:	48 89 c1             	mov    %rax,%rcx
   140002d1b:	8b 01                	mov    (%rcx),%eax
   140002d1d:	39 d8                	cmp    %ebx,%eax
   140002d1f:	48 8b 41 10          	mov    0x10(%rcx),%rax
   140002d23:	75 eb                	jne    140002d10 <___w64_mingwthr_remove_key_dtor+0x40>
   140002d25:	48 85 d2             	test   %rdx,%rdx
   140002d28:	74 26                	je     140002d50 <___w64_mingwthr_remove_key_dtor+0x80>
   140002d2a:	48 89 42 10          	mov    %rax,0x10(%rdx)
   140002d2e:	e8 2d 06 00 00       	call   140003360 <free>
   140002d33:	4c 89 e1             	mov    %r12,%rcx
   140002d36:	ff 15 28 65 00 00    	call   *0x6528(%rip)        # 140009264 <__imp_LeaveCriticalSection>
   140002d3c:	31 c0                	xor    %eax,%eax
   140002d3e:	48 83 c4 28          	add    $0x28,%rsp
   140002d42:	5b                   	pop    %rbx
   140002d43:	41 5c                	pop    %r12
   140002d45:	c3                   	ret    
   140002d46:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002d4d:	00 00 00 
   140002d50:	48 89 05 a9 53 00 00 	mov    %rax,0x53a9(%rip)        # 140008100 <key_dtor_list>
   140002d57:	eb d5                	jmp    140002d2e <___w64_mingwthr_remove_key_dtor+0x5e>
   140002d59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002d60 <__mingw_TLScallback>:
   140002d60:	53                   	push   %rbx
   140002d61:	48 83 ec 20          	sub    $0x20,%rsp
   140002d65:	83 fa 02             	cmp    $0x2,%edx
   140002d68:	74 46                	je     140002db0 <__mingw_TLScallback+0x50>
   140002d6a:	77 2c                	ja     140002d98 <__mingw_TLScallback+0x38>
   140002d6c:	85 d2                	test   %edx,%edx
   140002d6e:	74 50                	je     140002dc0 <__mingw_TLScallback+0x60>
   140002d70:	8b 05 92 53 00 00    	mov    0x5392(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002d76:	85 c0                	test   %eax,%eax
   140002d78:	0f 84 b2 00 00 00    	je     140002e30 <__mingw_TLScallback+0xd0>
   140002d7e:	c7 05 80 53 00 00 01 	movl   $0x1,0x5380(%rip)        # 140008108 <__mingwthr_cs_init>
   140002d85:	00 00 00 
   140002d88:	b8 01 00 00 00       	mov    $0x1,%eax
   140002d8d:	48 83 c4 20          	add    $0x20,%rsp
   140002d91:	5b                   	pop    %rbx
   140002d92:	c3                   	ret    
   140002d93:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002d98:	83 fa 03             	cmp    $0x3,%edx
   140002d9b:	75 eb                	jne    140002d88 <__mingw_TLScallback+0x28>
   140002d9d:	8b 05 65 53 00 00    	mov    0x5365(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002da3:	85 c0                	test   %eax,%eax
   140002da5:	74 e1                	je     140002d88 <__mingw_TLScallback+0x28>
   140002da7:	e8 14 fe ff ff       	call   140002bc0 <__mingwthr_run_key_dtors.part.0>
   140002dac:	eb da                	jmp    140002d88 <__mingw_TLScallback+0x28>
   140002dae:	66 90                	xchg   %ax,%ax
   140002db0:	e8 bb f6 ff ff       	call   140002470 <_fpreset>
   140002db5:	b8 01 00 00 00       	mov    $0x1,%eax
   140002dba:	48 83 c4 20          	add    $0x20,%rsp
   140002dbe:	5b                   	pop    %rbx
   140002dbf:	c3                   	ret    
   140002dc0:	8b 05 42 53 00 00    	mov    0x5342(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002dc6:	85 c0                	test   %eax,%eax
   140002dc8:	75 56                	jne    140002e20 <__mingw_TLScallback+0xc0>
   140002dca:	8b 05 38 53 00 00    	mov    0x5338(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002dd0:	83 f8 01             	cmp    $0x1,%eax
   140002dd3:	75 b3                	jne    140002d88 <__mingw_TLScallback+0x28>
   140002dd5:	48 8b 1d 24 53 00 00 	mov    0x5324(%rip),%rbx        # 140008100 <key_dtor_list>
   140002ddc:	48 85 db             	test   %rbx,%rbx
   140002ddf:	74 18                	je     140002df9 <__mingw_TLScallback+0x99>
   140002de1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002de8:	48 89 d9             	mov    %rbx,%rcx
   140002deb:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140002def:	e8 6c 05 00 00       	call   140003360 <free>
   140002df4:	48 85 db             	test   %rbx,%rbx
   140002df7:	75 ef                	jne    140002de8 <__mingw_TLScallback+0x88>
   140002df9:	48 8d 0d 20 53 00 00 	lea    0x5320(%rip),%rcx        # 140008120 <__mingwthr_cs>
   140002e00:	48 c7 05 f5 52 00 00 	movq   $0x0,0x52f5(%rip)        # 140008100 <key_dtor_list>
   140002e07:	00 00 00 00 
   140002e0b:	c7 05 f3 52 00 00 00 	movl   $0x0,0x52f3(%rip)        # 140008108 <__mingwthr_cs_init>
   140002e12:	00 00 00 
   140002e15:	ff 15 21 64 00 00    	call   *0x6421(%rip)        # 14000923c <__IAT_start__>
   140002e1b:	e9 68 ff ff ff       	jmp    140002d88 <__mingw_TLScallback+0x28>
   140002e20:	e8 9b fd ff ff       	call   140002bc0 <__mingwthr_run_key_dtors.part.0>
   140002e25:	eb a3                	jmp    140002dca <__mingw_TLScallback+0x6a>
   140002e27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140002e2e:	00 00 
   140002e30:	48 8d 0d e9 52 00 00 	lea    0x52e9(%rip),%rcx        # 140008120 <__mingwthr_cs>
   140002e37:	ff 15 1f 64 00 00    	call   *0x641f(%rip)        # 14000925c <__imp_InitializeCriticalSection>
   140002e3d:	e9 3c ff ff ff       	jmp    140002d7e <__mingw_TLScallback+0x1e>
   140002e42:	90                   	nop
   140002e43:	90                   	nop
   140002e44:	90                   	nop
   140002e45:	90                   	nop
   140002e46:	90                   	nop
   140002e47:	90                   	nop
   140002e48:	90                   	nop
   140002e49:	90                   	nop
   140002e4a:	90                   	nop
   140002e4b:	90                   	nop
   140002e4c:	90                   	nop
   140002e4d:	90                   	nop
   140002e4e:	90                   	nop
   140002e4f:	90                   	nop

0000000140002e50 <_ValidateImageBase>:
   140002e50:	31 c0                	xor    %eax,%eax
   140002e52:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002e57:	75 0f                	jne    140002e68 <_ValidateImageBase+0x18>
   140002e59:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   140002e5d:	48 01 d1             	add    %rdx,%rcx
   140002e60:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   140002e66:	74 08                	je     140002e70 <_ValidateImageBase+0x20>
   140002e68:	c3                   	ret    
   140002e69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002e70:	31 c0                	xor    %eax,%eax
   140002e72:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   140002e78:	0f 94 c0             	sete   %al
   140002e7b:	c3                   	ret    
   140002e7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002e80 <_FindPESection>:
   140002e80:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002e84:	48 01 c1             	add    %rax,%rcx
   140002e87:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   140002e8b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   140002e90:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
   140002e94:	85 c9                	test   %ecx,%ecx
   140002e96:	74 2d                	je     140002ec5 <_FindPESection+0x45>
   140002e98:	83 e9 01             	sub    $0x1,%ecx
   140002e9b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   140002e9f:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   140002ea4:	0f 1f 40 00          	nopl   0x0(%rax)
   140002ea8:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140002eac:	4c 89 c1             	mov    %r8,%rcx
   140002eaf:	49 39 d0             	cmp    %rdx,%r8
   140002eb2:	77 08                	ja     140002ebc <_FindPESection+0x3c>
   140002eb4:	03 48 08             	add    0x8(%rax),%ecx
   140002eb7:	48 39 d1             	cmp    %rdx,%rcx
   140002eba:	77 0b                	ja     140002ec7 <_FindPESection+0x47>
   140002ebc:	48 83 c0 28          	add    $0x28,%rax
   140002ec0:	4c 39 c8             	cmp    %r9,%rax
   140002ec3:	75 e3                	jne    140002ea8 <_FindPESection+0x28>
   140002ec5:	31 c0                	xor    %eax,%eax
   140002ec7:	c3                   	ret    
   140002ec8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002ecf:	00 

0000000140002ed0 <_FindPESectionByName>:
   140002ed0:	41 54                	push   %r12
   140002ed2:	56                   	push   %rsi
   140002ed3:	53                   	push   %rbx
   140002ed4:	48 83 ec 20          	sub    $0x20,%rsp
   140002ed8:	48 89 cb             	mov    %rcx,%rbx
   140002edb:	e8 a8 04 00 00       	call   140003388 <strlen>
   140002ee0:	48 83 f8 08          	cmp    $0x8,%rax
   140002ee4:	77 7a                	ja     140002f60 <_FindPESectionByName+0x90>
   140002ee6:	48 8b 15 33 25 00 00 	mov    0x2533(%rip),%rdx        # 140005420 <.refptr.__image_base__>
   140002eed:	45 31 e4             	xor    %r12d,%r12d
   140002ef0:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140002ef5:	75 57                	jne    140002f4e <_FindPESectionByName+0x7e>
   140002ef7:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
   140002efb:	48 01 d0             	add    %rdx,%rax
   140002efe:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140002f04:	75 48                	jne    140002f4e <_FindPESectionByName+0x7e>
   140002f06:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   140002f0c:	75 40                	jne    140002f4e <_FindPESectionByName+0x7e>
   140002f0e:	0f b7 50 14          	movzwl 0x14(%rax),%edx
   140002f12:	4c 8d 64 10 18       	lea    0x18(%rax,%rdx,1),%r12
   140002f17:	0f b7 40 06          	movzwl 0x6(%rax),%eax
   140002f1b:	85 c0                	test   %eax,%eax
   140002f1d:	74 41                	je     140002f60 <_FindPESectionByName+0x90>
   140002f1f:	83 e8 01             	sub    $0x1,%eax
   140002f22:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002f26:	49 8d 74 c4 28       	lea    0x28(%r12,%rax,8),%rsi
   140002f2b:	eb 0c                	jmp    140002f39 <_FindPESectionByName+0x69>
   140002f2d:	0f 1f 00             	nopl   (%rax)
   140002f30:	49 83 c4 28          	add    $0x28,%r12
   140002f34:	49 39 f4             	cmp    %rsi,%r12
   140002f37:	74 27                	je     140002f60 <_FindPESectionByName+0x90>
   140002f39:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   140002f3f:	48 89 da             	mov    %rbx,%rdx
   140002f42:	4c 89 e1             	mov    %r12,%rcx
   140002f45:	e8 46 04 00 00       	call   140003390 <strncmp>
   140002f4a:	85 c0                	test   %eax,%eax
   140002f4c:	75 e2                	jne    140002f30 <_FindPESectionByName+0x60>
   140002f4e:	4c 89 e0             	mov    %r12,%rax
   140002f51:	48 83 c4 20          	add    $0x20,%rsp
   140002f55:	5b                   	pop    %rbx
   140002f56:	5e                   	pop    %rsi
   140002f57:	41 5c                	pop    %r12
   140002f59:	c3                   	ret    
   140002f5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002f60:	45 31 e4             	xor    %r12d,%r12d
   140002f63:	4c 89 e0             	mov    %r12,%rax
   140002f66:	48 83 c4 20          	add    $0x20,%rsp
   140002f6a:	5b                   	pop    %rbx
   140002f6b:	5e                   	pop    %rsi
   140002f6c:	41 5c                	pop    %r12
   140002f6e:	c3                   	ret    
   140002f6f:	90                   	nop

0000000140002f70 <__mingw_GetSectionForAddress>:
   140002f70:	48 8b 15 a9 24 00 00 	mov    0x24a9(%rip),%rdx        # 140005420 <.refptr.__image_base__>
   140002f77:	31 c0                	xor    %eax,%eax
   140002f79:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140002f7e:	75 10                	jne    140002f90 <__mingw_GetSectionForAddress+0x20>
   140002f80:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002f84:	49 01 d0             	add    %rdx,%r8
   140002f87:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140002f8e:	74 08                	je     140002f98 <__mingw_GetSectionForAddress+0x28>
   140002f90:	c3                   	ret    
   140002f91:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002f98:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140002f9f:	75 ef                	jne    140002f90 <__mingw_GetSectionForAddress+0x20>
   140002fa1:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   140002fa6:	48 29 d1             	sub    %rdx,%rcx
   140002fa9:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
   140002fae:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   140002fb3:	85 d2                	test   %edx,%edx
   140002fb5:	74 2e                	je     140002fe5 <__mingw_GetSectionForAddress+0x75>
   140002fb7:	83 ea 01             	sub    $0x1,%edx
   140002fba:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   140002fbe:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   140002fc3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002fc8:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140002fcc:	4c 89 c2             	mov    %r8,%rdx
   140002fcf:	4c 39 c1             	cmp    %r8,%rcx
   140002fd2:	72 08                	jb     140002fdc <__mingw_GetSectionForAddress+0x6c>
   140002fd4:	03 50 08             	add    0x8(%rax),%edx
   140002fd7:	48 39 d1             	cmp    %rdx,%rcx
   140002fda:	72 b4                	jb     140002f90 <__mingw_GetSectionForAddress+0x20>
   140002fdc:	48 83 c0 28          	add    $0x28,%rax
   140002fe0:	4c 39 c8             	cmp    %r9,%rax
   140002fe3:	75 e3                	jne    140002fc8 <__mingw_GetSectionForAddress+0x58>
   140002fe5:	31 c0                	xor    %eax,%eax
   140002fe7:	c3                   	ret    
   140002fe8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002fef:	00 

0000000140002ff0 <__mingw_GetSectionCount>:
   140002ff0:	48 8b 05 29 24 00 00 	mov    0x2429(%rip),%rax        # 140005420 <.refptr.__image_base__>
   140002ff7:	45 31 c0             	xor    %r8d,%r8d
   140002ffa:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140002fff:	75 0f                	jne    140003010 <__mingw_GetSectionCount+0x20>
   140003001:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140003005:	48 01 d0             	add    %rdx,%rax
   140003008:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   14000300e:	74 08                	je     140003018 <__mingw_GetSectionCount+0x28>
   140003010:	44 89 c0             	mov    %r8d,%eax
   140003013:	c3                   	ret    
   140003014:	0f 1f 40 00          	nopl   0x0(%rax)
   140003018:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   14000301e:	75 f0                	jne    140003010 <__mingw_GetSectionCount+0x20>
   140003020:	44 0f b7 40 06       	movzwl 0x6(%rax),%r8d
   140003025:	44 89 c0             	mov    %r8d,%eax
   140003028:	c3                   	ret    
   140003029:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140003030 <_FindPESectionExec>:
   140003030:	4c 8b 05 e9 23 00 00 	mov    0x23e9(%rip),%r8        # 140005420 <.refptr.__image_base__>
   140003037:	31 c0                	xor    %eax,%eax
   140003039:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   14000303f:	75 0f                	jne    140003050 <_FindPESectionExec+0x20>
   140003041:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   140003045:	4c 01 c2             	add    %r8,%rdx
   140003048:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   14000304e:	74 08                	je     140003058 <_FindPESectionExec+0x28>
   140003050:	c3                   	ret    
   140003051:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003058:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   14000305e:	75 f0                	jne    140003050 <_FindPESectionExec+0x20>
   140003060:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   140003064:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   140003069:	0f b7 52 06          	movzwl 0x6(%rdx),%edx
   14000306d:	85 d2                	test   %edx,%edx
   14000306f:	74 27                	je     140003098 <_FindPESectionExec+0x68>
   140003071:	83 ea 01             	sub    $0x1,%edx
   140003074:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   140003078:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   14000307d:	0f 1f 00             	nopl   (%rax)
   140003080:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   140003084:	74 09                	je     14000308f <_FindPESectionExec+0x5f>
   140003086:	48 85 c9             	test   %rcx,%rcx
   140003089:	74 c5                	je     140003050 <_FindPESectionExec+0x20>
   14000308b:	48 83 e9 01          	sub    $0x1,%rcx
   14000308f:	48 83 c0 28          	add    $0x28,%rax
   140003093:	48 39 d0             	cmp    %rdx,%rax
   140003096:	75 e8                	jne    140003080 <_FindPESectionExec+0x50>
   140003098:	31 c0                	xor    %eax,%eax
   14000309a:	c3                   	ret    
   14000309b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000001400030a0 <_GetPEImageBase>:
   1400030a0:	48 8b 05 79 23 00 00 	mov    0x2379(%rip),%rax        # 140005420 <.refptr.__image_base__>
   1400030a7:	45 31 c0             	xor    %r8d,%r8d
   1400030aa:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   1400030af:	75 0f                	jne    1400030c0 <_GetPEImageBase+0x20>
   1400030b1:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   1400030b5:	48 01 c2             	add    %rax,%rdx
   1400030b8:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   1400030be:	74 08                	je     1400030c8 <_GetPEImageBase+0x28>
   1400030c0:	4c 89 c0             	mov    %r8,%rax
   1400030c3:	c3                   	ret    
   1400030c4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400030c8:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   1400030ce:	4c 0f 44 c0          	cmove  %rax,%r8
   1400030d2:	4c 89 c0             	mov    %r8,%rax
   1400030d5:	c3                   	ret    
   1400030d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400030dd:	00 00 00 

00000001400030e0 <_IsNonwritableInCurrentImage>:
   1400030e0:	48 8b 15 39 23 00 00 	mov    0x2339(%rip),%rdx        # 140005420 <.refptr.__image_base__>
   1400030e7:	31 c0                	xor    %eax,%eax
   1400030e9:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   1400030ee:	75 10                	jne    140003100 <_IsNonwritableInCurrentImage+0x20>
   1400030f0:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   1400030f4:	49 01 d0             	add    %rdx,%r8
   1400030f7:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   1400030fe:	74 08                	je     140003108 <_IsNonwritableInCurrentImage+0x28>
   140003100:	c3                   	ret    
   140003101:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003108:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   14000310f:	75 ef                	jne    140003100 <_IsNonwritableInCurrentImage+0x20>
   140003111:	48 29 d1             	sub    %rdx,%rcx
   140003114:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   140003119:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   14000311e:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   140003123:	45 85 c0             	test   %r8d,%r8d
   140003126:	74 d8                	je     140003100 <_IsNonwritableInCurrentImage+0x20>
   140003128:	41 8d 40 ff          	lea    -0x1(%r8),%eax
   14000312c:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140003130:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
   140003135:	0f 1f 00             	nopl   (%rax)
   140003138:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
   14000313c:	4c 89 c0             	mov    %r8,%rax
   14000313f:	4c 39 c1             	cmp    %r8,%rcx
   140003142:	72 08                	jb     14000314c <_IsNonwritableInCurrentImage+0x6c>
   140003144:	03 42 08             	add    0x8(%rdx),%eax
   140003147:	48 39 c1             	cmp    %rax,%rcx
   14000314a:	72 14                	jb     140003160 <_IsNonwritableInCurrentImage+0x80>
   14000314c:	48 83 c2 28          	add    $0x28,%rdx
   140003150:	4c 39 ca             	cmp    %r9,%rdx
   140003153:	75 e3                	jne    140003138 <_IsNonwritableInCurrentImage+0x58>
   140003155:	31 c0                	xor    %eax,%eax
   140003157:	c3                   	ret    
   140003158:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000315f:	00 
   140003160:	8b 42 24             	mov    0x24(%rdx),%eax
   140003163:	f7 d0                	not    %eax
   140003165:	c1 e8 1f             	shr    $0x1f,%eax
   140003168:	c3                   	ret    
   140003169:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140003170 <__mingw_enum_import_library_names>:
   140003170:	4c 8b 1d a9 22 00 00 	mov    0x22a9(%rip),%r11        # 140005420 <.refptr.__image_base__>
   140003177:	45 31 c9             	xor    %r9d,%r9d
   14000317a:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   140003180:	75 10                	jne    140003192 <__mingw_enum_import_library_names+0x22>
   140003182:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
   140003186:	4d 01 d8             	add    %r11,%r8
   140003189:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140003190:	74 0e                	je     1400031a0 <__mingw_enum_import_library_names+0x30>
   140003192:	4c 89 c8             	mov    %r9,%rax
   140003195:	c3                   	ret    
   140003196:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000319d:	00 00 00 
   1400031a0:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   1400031a7:	75 e9                	jne    140003192 <__mingw_enum_import_library_names+0x22>
   1400031a9:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
   1400031b0:	85 c0                	test   %eax,%eax
   1400031b2:	74 de                	je     140003192 <__mingw_enum_import_library_names+0x22>
   1400031b4:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   1400031b9:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   1400031be:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   1400031c3:	45 85 c0             	test   %r8d,%r8d
   1400031c6:	74 ca                	je     140003192 <__mingw_enum_import_library_names+0x22>
   1400031c8:	41 83 e8 01          	sub    $0x1,%r8d
   1400031cc:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   1400031d0:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   1400031d5:	0f 1f 00             	nopl   (%rax)
   1400031d8:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   1400031dc:	4d 89 c8             	mov    %r9,%r8
   1400031df:	4c 39 c8             	cmp    %r9,%rax
   1400031e2:	72 09                	jb     1400031ed <__mingw_enum_import_library_names+0x7d>
   1400031e4:	44 03 42 08          	add    0x8(%rdx),%r8d
   1400031e8:	4c 39 c0             	cmp    %r8,%rax
   1400031eb:	72 13                	jb     140003200 <__mingw_enum_import_library_names+0x90>
   1400031ed:	48 83 c2 28          	add    $0x28,%rdx
   1400031f1:	49 39 d2             	cmp    %rdx,%r10
   1400031f4:	75 e2                	jne    1400031d8 <__mingw_enum_import_library_names+0x68>
   1400031f6:	45 31 c9             	xor    %r9d,%r9d
   1400031f9:	4c 89 c8             	mov    %r9,%rax
   1400031fc:	c3                   	ret    
   1400031fd:	0f 1f 00             	nopl   (%rax)
   140003200:	4c 01 d8             	add    %r11,%rax
   140003203:	eb 0a                	jmp    14000320f <__mingw_enum_import_library_names+0x9f>
   140003205:	0f 1f 00             	nopl   (%rax)
   140003208:	83 e9 01             	sub    $0x1,%ecx
   14000320b:	48 83 c0 14          	add    $0x14,%rax
   14000320f:	44 8b 40 04          	mov    0x4(%rax),%r8d
   140003213:	45 85 c0             	test   %r8d,%r8d
   140003216:	75 07                	jne    14000321f <__mingw_enum_import_library_names+0xaf>
   140003218:	8b 50 0c             	mov    0xc(%rax),%edx
   14000321b:	85 d2                	test   %edx,%edx
   14000321d:	74 d7                	je     1400031f6 <__mingw_enum_import_library_names+0x86>
   14000321f:	85 c9                	test   %ecx,%ecx
   140003221:	7f e5                	jg     140003208 <__mingw_enum_import_library_names+0x98>
   140003223:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   140003227:	4d 01 d9             	add    %r11,%r9
   14000322a:	4c 89 c8             	mov    %r9,%rax
   14000322d:	c3                   	ret    
   14000322e:	90                   	nop
   14000322f:	90                   	nop

0000000140003230 <_Unwind_Resume>:
   140003230:	ff 25 3e 61 00 00    	jmp    *0x613e(%rip)        # 140009374 <__imp__Unwind_Resume>
   140003236:	90                   	nop
   140003237:	90                   	nop
   140003238:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000323f:	00 

0000000140003240 <___chkstk_ms>:
   140003240:	51                   	push   %rcx
   140003241:	50                   	push   %rax
   140003242:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140003248:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   14000324d:	72 19                	jb     140003268 <___chkstk_ms+0x28>
   14000324f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   140003256:	48 83 09 00          	orq    $0x0,(%rcx)
   14000325a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   140003260:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140003266:	77 e7                	ja     14000324f <___chkstk_ms+0xf>
   140003268:	48 29 c1             	sub    %rax,%rcx
   14000326b:	48 83 09 00          	orq    $0x0,(%rcx)
   14000326f:	58                   	pop    %rax
   140003270:	59                   	pop    %rcx
   140003271:	c3                   	ret    
   140003272:	90                   	nop
   140003273:	90                   	nop
   140003274:	90                   	nop
   140003275:	90                   	nop
   140003276:	90                   	nop
   140003277:	90                   	nop
   140003278:	90                   	nop
   140003279:	90                   	nop
   14000327a:	90                   	nop
   14000327b:	90                   	nop
   14000327c:	90                   	nop
   14000327d:	90                   	nop
   14000327e:	90                   	nop
   14000327f:	90                   	nop

0000000140003280 <__p__fmode>:
   140003280:	48 8b 05 d9 21 00 00 	mov    0x21d9(%rip),%rax        # 140005460 <.refptr.__imp__fmode>
   140003287:	48 8b 00             	mov    (%rax),%rax
   14000328a:	c3                   	ret    
   14000328b:	90                   	nop
   14000328c:	90                   	nop
   14000328d:	90                   	nop
   14000328e:	90                   	nop
   14000328f:	90                   	nop

0000000140003290 <__p__commode>:
   140003290:	48 8b 05 b9 21 00 00 	mov    0x21b9(%rip),%rax        # 140005450 <.refptr.__imp__commode>
   140003297:	48 8b 00             	mov    (%rax),%rax
   14000329a:	c3                   	ret    
   14000329b:	90                   	nop
   14000329c:	90                   	nop
   14000329d:	90                   	nop
   14000329e:	90                   	nop
   14000329f:	90                   	nop

00000001400032a0 <__p__acmdln>:
   1400032a0:	48 8b 05 99 21 00 00 	mov    0x2199(%rip),%rax        # 140005440 <.refptr.__imp__acmdln>
   1400032a7:	48 8b 00             	mov    (%rax),%rax
   1400032aa:	c3                   	ret    
   1400032ab:	90                   	nop
   1400032ac:	90                   	nop
   1400032ad:	90                   	nop
   1400032ae:	90                   	nop
   1400032af:	90                   	nop

00000001400032b0 <_get_invalid_parameter_handler>:
   1400032b0:	48 8b 05 d9 4e 00 00 	mov    0x4ed9(%rip),%rax        # 140008190 <handler>
   1400032b7:	c3                   	ret    
   1400032b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400032bf:	00 

00000001400032c0 <_set_invalid_parameter_handler>:
   1400032c0:	48 89 c8             	mov    %rcx,%rax
   1400032c3:	48 87 05 c6 4e 00 00 	xchg   %rax,0x4ec6(%rip)        # 140008190 <handler>
   1400032ca:	c3                   	ret    
   1400032cb:	90                   	nop
   1400032cc:	90                   	nop
   1400032cd:	90                   	nop
   1400032ce:	90                   	nop
   1400032cf:	90                   	nop

00000001400032d0 <__acrt_iob_func>:
   1400032d0:	53                   	push   %rbx
   1400032d1:	48 83 ec 20          	sub    $0x20,%rsp
   1400032d5:	89 cb                	mov    %ecx,%ebx
   1400032d7:	e8 24 00 00 00       	call   140003300 <__iob_func>
   1400032dc:	89 d9                	mov    %ebx,%ecx
   1400032de:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
   1400032e2:	48 c1 e2 04          	shl    $0x4,%rdx
   1400032e6:	48 01 d0             	add    %rdx,%rax
   1400032e9:	48 83 c4 20          	add    $0x20,%rsp
   1400032ed:	5b                   	pop    %rbx
   1400032ee:	c3                   	ret    
   1400032ef:	90                   	nop

00000001400032f0 <__C_specific_handler>:
   1400032f0:	ff 25 a6 5f 00 00    	jmp    *0x5fa6(%rip)        # 14000929c <__imp___C_specific_handler>
   1400032f6:	90                   	nop
   1400032f7:	90                   	nop

00000001400032f8 <__getmainargs>:
   1400032f8:	ff 25 a6 5f 00 00    	jmp    *0x5fa6(%rip)        # 1400092a4 <__imp___getmainargs>
   1400032fe:	90                   	nop
   1400032ff:	90                   	nop

0000000140003300 <__iob_func>:
   140003300:	ff 25 ae 5f 00 00    	jmp    *0x5fae(%rip)        # 1400092b4 <__imp___iob_func>
   140003306:	90                   	nop
   140003307:	90                   	nop

0000000140003308 <__set_app_type>:
   140003308:	ff 25 ae 5f 00 00    	jmp    *0x5fae(%rip)        # 1400092bc <__imp___set_app_type>
   14000330e:	90                   	nop
   14000330f:	90                   	nop

0000000140003310 <__setusermatherr>:
   140003310:	ff 25 ae 5f 00 00    	jmp    *0x5fae(%rip)        # 1400092c4 <__imp___setusermatherr>
   140003316:	90                   	nop
   140003317:	90                   	nop

0000000140003318 <_amsg_exit>:
   140003318:	ff 25 b6 5f 00 00    	jmp    *0x5fb6(%rip)        # 1400092d4 <__imp__amsg_exit>
   14000331e:	90                   	nop
   14000331f:	90                   	nop

0000000140003320 <_cexit>:
   140003320:	ff 25 b6 5f 00 00    	jmp    *0x5fb6(%rip)        # 1400092dc <__imp__cexit>
   140003326:	90                   	nop
   140003327:	90                   	nop

0000000140003328 <_initterm>:
   140003328:	ff 25 c6 5f 00 00    	jmp    *0x5fc6(%rip)        # 1400092f4 <__imp__initterm>
   14000332e:	90                   	nop
   14000332f:	90                   	nop

0000000140003330 <_onexit>:
   140003330:	ff 25 c6 5f 00 00    	jmp    *0x5fc6(%rip)        # 1400092fc <__imp__onexit>
   140003336:	90                   	nop
   140003337:	90                   	nop

0000000140003338 <abort>:
   140003338:	ff 25 c6 5f 00 00    	jmp    *0x5fc6(%rip)        # 140009304 <__imp_abort>
   14000333e:	90                   	nop
   14000333f:	90                   	nop

0000000140003340 <calloc>:
   140003340:	ff 25 c6 5f 00 00    	jmp    *0x5fc6(%rip)        # 14000930c <__imp_calloc>
   140003346:	90                   	nop
   140003347:	90                   	nop

0000000140003348 <exit>:
   140003348:	ff 25 c6 5f 00 00    	jmp    *0x5fc6(%rip)        # 140009314 <__imp_exit>
   14000334e:	90                   	nop
   14000334f:	90                   	nop

0000000140003350 <fflush>:
   140003350:	ff 25 c6 5f 00 00    	jmp    *0x5fc6(%rip)        # 14000931c <__imp_fflush>
   140003356:	90                   	nop
   140003357:	90                   	nop

0000000140003358 <fprintf>:
   140003358:	ff 25 c6 5f 00 00    	jmp    *0x5fc6(%rip)        # 140009324 <__imp_fprintf>
   14000335e:	90                   	nop
   14000335f:	90                   	nop

0000000140003360 <free>:
   140003360:	ff 25 c6 5f 00 00    	jmp    *0x5fc6(%rip)        # 14000932c <__imp_free>
   140003366:	90                   	nop
   140003367:	90                   	nop

0000000140003368 <fwrite>:
   140003368:	ff 25 c6 5f 00 00    	jmp    *0x5fc6(%rip)        # 140009334 <__imp_fwrite>
   14000336e:	90                   	nop
   14000336f:	90                   	nop

0000000140003370 <malloc>:
   140003370:	ff 25 c6 5f 00 00    	jmp    *0x5fc6(%rip)        # 14000933c <__imp_malloc>
   140003376:	90                   	nop
   140003377:	90                   	nop

0000000140003378 <memcpy>:
   140003378:	ff 25 c6 5f 00 00    	jmp    *0x5fc6(%rip)        # 140009344 <__imp_memcpy>
   14000337e:	90                   	nop
   14000337f:	90                   	nop

0000000140003380 <signal>:
   140003380:	ff 25 c6 5f 00 00    	jmp    *0x5fc6(%rip)        # 14000934c <__imp_signal>
   140003386:	90                   	nop
   140003387:	90                   	nop

0000000140003388 <strlen>:
   140003388:	ff 25 c6 5f 00 00    	jmp    *0x5fc6(%rip)        # 140009354 <__imp_strlen>
   14000338e:	90                   	nop
   14000338f:	90                   	nop

0000000140003390 <strncmp>:
   140003390:	ff 25 c6 5f 00 00    	jmp    *0x5fc6(%rip)        # 14000935c <__imp_strncmp>
   140003396:	90                   	nop
   140003397:	90                   	nop

0000000140003398 <vfprintf>:
   140003398:	ff 25 c6 5f 00 00    	jmp    *0x5fc6(%rip)        # 140009364 <__imp_vfprintf>
   14000339e:	90                   	nop
   14000339f:	90                   	nop

00000001400033a0 <VirtualQuery>:
   1400033a0:	ff 25 e6 5e 00 00    	jmp    *0x5ee6(%rip)        # 14000928c <__imp_VirtualQuery>
   1400033a6:	90                   	nop
   1400033a7:	90                   	nop

00000001400033a8 <VirtualProtect>:
   1400033a8:	ff 25 d6 5e 00 00    	jmp    *0x5ed6(%rip)        # 140009284 <__imp_VirtualProtect>
   1400033ae:	90                   	nop
   1400033af:	90                   	nop

00000001400033b0 <TlsGetValue>:
   1400033b0:	ff 25 c6 5e 00 00    	jmp    *0x5ec6(%rip)        # 14000927c <__imp_TlsGetValue>
   1400033b6:	90                   	nop
   1400033b7:	90                   	nop

00000001400033b8 <Sleep>:
   1400033b8:	ff 25 b6 5e 00 00    	jmp    *0x5eb6(%rip)        # 140009274 <__imp_Sleep>
   1400033be:	90                   	nop
   1400033bf:	90                   	nop

00000001400033c0 <SetUnhandledExceptionFilter>:
   1400033c0:	ff 25 a6 5e 00 00    	jmp    *0x5ea6(%rip)        # 14000926c <__imp_SetUnhandledExceptionFilter>
   1400033c6:	90                   	nop
   1400033c7:	90                   	nop

00000001400033c8 <LeaveCriticalSection>:
   1400033c8:	ff 25 96 5e 00 00    	jmp    *0x5e96(%rip)        # 140009264 <__imp_LeaveCriticalSection>
   1400033ce:	90                   	nop
   1400033cf:	90                   	nop

00000001400033d0 <InitializeCriticalSection>:
   1400033d0:	ff 25 86 5e 00 00    	jmp    *0x5e86(%rip)        # 14000925c <__imp_InitializeCriticalSection>
   1400033d6:	90                   	nop
   1400033d7:	90                   	nop

00000001400033d8 <GetStartupInfoA>:
   1400033d8:	ff 25 76 5e 00 00    	jmp    *0x5e76(%rip)        # 140009254 <__imp_GetStartupInfoA>
   1400033de:	90                   	nop
   1400033df:	90                   	nop

00000001400033e0 <GetLastError>:
   1400033e0:	ff 25 66 5e 00 00    	jmp    *0x5e66(%rip)        # 14000924c <__imp_GetLastError>
   1400033e6:	90                   	nop
   1400033e7:	90                   	nop

00000001400033e8 <EnterCriticalSection>:
   1400033e8:	ff 25 56 5e 00 00    	jmp    *0x5e56(%rip)        # 140009244 <__imp_EnterCriticalSection>
   1400033ee:	90                   	nop
   1400033ef:	90                   	nop

00000001400033f0 <DeleteCriticalSection>:
   1400033f0:	ff 25 46 5e 00 00    	jmp    *0x5e46(%rip)        # 14000923c <__IAT_start__>
   1400033f6:	90                   	nop
   1400033f7:	90                   	nop
   1400033f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400033ff:	00 

0000000140003400 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>:
   *  @param __rhs  C string.
   *  @return  True if @a __lhs.compare(@a __rhs) == 0.  False otherwise.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator==(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
   140003400:	55                   	push   %rbp
   140003401:	48 89 e5             	mov    %rsp,%rbp
   140003404:	48 83 ec 20          	sub    $0x20,%rsp
   140003408:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000340c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
	       const _CharT* __rhs)
    { return __lhs.compare(__rhs) == 0; }
   140003410:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140003414:	48 89 c2             	mov    %rax,%rdx
   140003417:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   14000341b:	e8 78 ed ff ff       	call   140002198 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc>
   140003420:	85 c0                	test   %eax,%eax
   140003422:	0f 94 c0             	sete   %al
   140003425:	48 83 c4 20          	add    $0x20,%rsp
   140003429:	5d                   	pop    %rbp
   14000342a:	c3                   	ret    
   14000342b:	90                   	nop
   14000342c:	90                   	nop
   14000342d:	90                   	nop
   14000342e:	90                   	nop
  operator&(_Ios_Openmode __a, _Ios_Openmode __b)
  { return _Ios_Openmode(static_cast<int>(__a) & static_cast<int>(__b)); }

  inline _GLIBCXX_CONSTEXPR _Ios_Openmode
  operator|(_Ios_Openmode __a, _Ios_Openmode __b)
  { return _Ios_Openmode(static_cast<int>(__a) | static_cast<int>(__b)); }
   14000342f:	90                   	nop

0000000140003430 <_ZStorSt13_Ios_OpenmodeS_>:
   140003430:	55                   	push   %rbp
   140003431:	48 89 e5             	mov    %rsp,%rbp
   140003434:	89 4d 10             	mov    %ecx,0x10(%rbp)
   140003437:	89 55 18             	mov    %edx,0x18(%rbp)
   14000343a:	8b 45 10             	mov    0x10(%rbp),%eax
   14000343d:	0b 45 18             	or     0x18(%rbp),%eax
   140003440:	5d                   	pop    %rbp
   140003441:	c3                   	ret    
   140003442:	90                   	nop
   140003443:	90                   	nop
   140003444:	90                   	nop
   140003445:	90                   	nop
   140003446:	90                   	nop
   140003447:	90                   	nop
   140003448:	90                   	nop
   140003449:	90                   	nop
   14000344a:	90                   	nop
   14000344b:	90                   	nop
   14000344c:	90                   	nop
   14000344d:	90                   	nop
   14000344e:	90                   	nop
   14000344f:	90                   	nop

0000000140003450 <register_frame_ctor>:
   140003450:	e9 bb e0 ff ff       	jmp    140001510 <__gcc_register_frame>
   140003455:	90                   	nop
   140003456:	90                   	nop
   140003457:	90                   	nop
   140003458:	90                   	nop
   140003459:	90                   	nop
   14000345a:	90                   	nop
   14000345b:	90                   	nop
   14000345c:	90                   	nop
   14000345d:	90                   	nop
   14000345e:	90                   	nop
   14000345f:	90                   	nop

0000000140003460 <__CTOR_LIST__>:
   140003460:	ff                   	(bad)  
   140003461:	ff                   	(bad)  
   140003462:	ff                   	(bad)  
   140003463:	ff                   	(bad)  
   140003464:	ff                   	(bad)  
   140003465:	ff                   	(bad)  
   140003466:	ff                   	(bad)  
   140003467:	ff                   	.byte 0xff

0000000140003468 <.ctors>:
   140003468:	20 21                	and    %ah,(%rcx)
   14000346a:	00 40 01             	add    %al,0x1(%rax)
   14000346d:	00 00                	add    %al,(%rax)
	...

0000000140003470 <.ctors.65535>:
   140003470:	50                   	push   %rax
   140003471:	34 00                	xor    $0x0,%al
   140003473:	40 01 00             	rex add %eax,(%rax)
	...

0000000140003480 <__DTOR_LIST__>:
   140003480:	ff                   	(bad)  
   140003481:	ff                   	(bad)  
   140003482:	ff                   	(bad)  
   140003483:	ff                   	(bad)  
   140003484:	ff                   	(bad)  
   140003485:	ff                   	(bad)  
   140003486:	ff                   	(bad)  
   140003487:	ff 00                	incl   (%rax)
   140003489:	00 00                	add    %al,(%rax)
   14000348b:	00 00                	add    %al,(%rax)
   14000348d:	00 00                	add    %al,(%rax)
	...
