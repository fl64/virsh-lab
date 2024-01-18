# "soft_margin=30 soft_panic=1" -> kernel panic

[  109.316984] softdog: Initiating panic
[  109.318467] Kernel panic - not syncing: Software Watchdog Timer expired
[  109.320482] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.15.0-82-generic #91-Ubuntu
[  109.322375] Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.15.0-1 04/01/2014
[  109.324695] Call Trace:
[  109.325403]  <IRQ>
[  109.326181]  show_stack+0x52/0x5c
[  109.327408]  dump_stack_lvl+0x4a/0x63
[  109.328559]  dump_stack+0x10/0x16
[  109.329694]  panic+0x15c/0x334
[  109.330755]  ? softdog_ping+0xa0/0xa0 [softdog]
[  109.332051]  softdog_fire.cold+0x21/0xc1 [softdog]
[  109.333354]  ? softdog_ping+0xa0/0xa0 [softdog]
[  109.334542]  __hrtimer_run_queues+0x104/0x230
[  109.335671]  ? kvm_clock_get_cycles+0x11/0x20
[  109.336881]  hrtimer_interrupt+0x101/0x220
[  109.337974]  ? tick_do_update_jiffies64+0x9b/0xf0
[  109.339270]  __sysvec_apic_timer_interrupt+0x5e/0xe0
[  109.341016]  sysvec_apic_timer_interrupt+0x7b/0x90
[  109.342735]  </IRQ>
[  109.343571]  <TASK>
[  109.344410]  asm_sysvec_apic_timer_interrupt+0x1b/0x20
[  109.346157] RIP: 0010:native_safe_halt+0xb/0x10
[  109.347779] Code: 2b ff 5b 41 5c 41 5d 5d c3 cc cc cc cc 4c 89 ee 48 c7 c7 40 47 e5 a7 e8 33 9b 8c ff eb ca cc eb 07 0f 00 2d 49 61 44 00 fb f4 <c3> cc cc cc cc eb 07 0f 00 2d 39 61 44 00 f4 c3 cc cc cc cc cc 0f
[  109.353847] RSP: 0018:ffffffffa7e03e08 EFLAGS: 00000202
[  109.355256] RAX: ffffffffa6dc7c50 RBX: ffffffffa7e1b440 RCX: 7fffffe6a77038ff
[  109.357078] RDX: 0000000000002d07 RSI: 0000000000000000 RDI: 0000000000002d08
[  109.358984] RBP: ffffffffa7e03e10 R08: 000000cd42e4dffb R09: 0000000000000000
[  109.361385] R10: 0000000000000001 R11: fffffffffffffffe R12: 0000000000000000
[  109.363745] R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
[  109.366341]  ? __cpuidle_text_start+0x8/0x8
[  109.367690]  ? default_idle+0xe/0x20
[  109.368940]  arch_cpu_idle+0x12/0x20
[  109.370184]  default_idle_call+0x3e/0xd0
[  109.371540]  cpuidle_idle_call+0x179/0x1e0
[  109.372862]  do_idle+0x83/0xf0
[  109.374046]  cpu_startup_entry+0x20/0x30
[  109.375506]  rest_init+0xd3/0x100
[  109.376639]  ? acpi_enable_subsystem+0x21d/0x229
[  109.378305]  arch_call_rest_init+0xe/0x23
[  109.379738]  start_kernel+0x4a9/0x4ca
[  109.381252]  x86_64_start_reservations+0x24/0x2a
[  109.382989]  x86_64_start_kernel+0xfb/0x106
[  109.384573]  secondary_startup_64_no_verify+0xc2/0xcb
[  109.386400]  </TASK>
[  109.387373] Kernel Offset: 0x25000000 from 0xffffffff81000000 (relocation range: 0xffffffff80000000-0xffffffffbfffffff)
[  109.390791] ---[ end Kernel panic - not syncing: Software Watchdog Timer expired ]---

# "soft_margin=30 soft_noboot=1" -> just message "[  112.199859] softdog: Triggered - Reboot ignored"

# "soft_margin=30 soft_reboot_cmd=poweroff"
# "soft_margin=30 soft_reboot_cmd='shutdown -h now'"

[   97.092962] softdog: Initiating system reboot
[   97.195538] reboot: Restarting system with command 'poweroff'
[    0.000000] Linux version 5.15.0-82-generic (buildd@lcy02-amd64-027) (gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0, GNU ld (GNU Binuti
