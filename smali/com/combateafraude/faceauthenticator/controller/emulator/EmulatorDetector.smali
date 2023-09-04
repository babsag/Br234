.class public final Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;
.super Ljava/lang/Object;
.source "EmulatorDetector.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector$OnEmulatorDetectorListener;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;

.field private static final i:[Ljava/lang/String;

.field private static final j:[Lcom/combateafraude/faceauthenticator/controller/emulator/Property;

.field private static final k:[Lcom/combateafraude/faceauthenticator/controller/emulator/Property;

.field private static l:Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final m:Landroid/content/Context;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "15555215554"

    const-string v1, "15555215556"

    const-string v2, "15555215558"

    const-string v3, "15555215560"

    const-string v4, "15555215562"

    const-string v5, "15555215564"

    const-string v6, "15555215566"

    const-string v7, "15555215568"

    const-string v8, "15555215570"

    const-string v9, "15555215572"

    const-string v10, "15555215574"

    const-string v11, "15555215576"

    const-string v12, "15555215578"

    const-string v13, "15555215580"

    const-string v14, "15555215582"

    const-string v15, "15555215584"

    .line 1
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->a:[Ljava/lang/String;

    const-string v0, "000000000000000"

    const-string v1, "e21833235b6eef10"

    const-string v2, "012345678912345"

    .line 2
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->b:[Ljava/lang/String;

    const-string v0, "310260000000000"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->c:[Ljava/lang/String;

    const-string v0, "/dev/socket/genyd"

    const-string v1, "/dev/socket/baseband_genyd"

    .line 4
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->d:[Ljava/lang/String;

    const-string v0, "goldfish"

    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->e:[Ljava/lang/String;

    const-string v1, "/dev/socket/qemud"

    const-string v2, "/dev/qemu_pipe"

    .line 6
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->f:[Ljava/lang/String;

    const-string v2, "ueventd.android_x86.rc"

    const-string v3, "x86.prop"

    const-string v4, "ueventd.ttVM_x86.rc"

    const-string v5, "init.ttVM_x86.rc"

    const-string v6, "fstab.ttVM_x86"

    const-string v7, "fstab.vbox86"

    const-string v8, "init.vbox86.rc"

    const-string v9, "ueventd.vbox86.rc"

    .line 7
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->g:[Ljava/lang/String;

    const-string v1, "fstab.andy"

    const-string v2, "ueventd.andy.rc"

    .line 8
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->h:[Ljava/lang/String;

    const-string v1, "fstab.nox"

    const-string v2, "init.nox.rc"

    const-string v3, "ueventd.nox.rc"

    .line 9
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->i:[Ljava/lang/String;

    const/16 v1, 0xf

    new-array v1, v1, [Lcom/combateafraude/faceauthenticator/controller/emulator/Property;

    .line 10
    new-instance v2, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;

    const-string v3, "init.svc.qemud"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;

    const-string v5, "init.svc.qemu-props"

    invoke-direct {v2, v5, v4}, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    aput-object v2, v1, v5

    new-instance v2, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;

    const-string v6, "qemu.hw.mainkeys"

    invoke-direct {v2, v6, v4}, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x2

    aput-object v2, v1, v6

    new-instance v2, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;

    const-string v6, "qemu.sf.fake_camera"

    invoke-direct {v2, v6, v4}, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-instance v2, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;

    const-string v6, "qemu.sf.lcd_density"

    invoke-direct {v2, v6, v4}, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x4

    aput-object v2, v1, v6

    new-instance v2, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;

    const-string v6, "ro.bootloader"

    const-string v7, "unknown"

    invoke-direct {v2, v6, v7}, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x5

    aput-object v2, v1, v6

    new-instance v2, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;

    const-string v6, "ro.bootmode"

    invoke-direct {v2, v6, v7}, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x6

    aput-object v2, v1, v6

    new-instance v2, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;

    const-string v6, "ro.hardware"

    invoke-direct {v2, v6, v0}, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x7

    aput-object v2, v1, v0

    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;

    const-string v2, "ro.kernel.android.qemud"

    invoke-direct {v0, v2, v4}, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v0, v1, v2

    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;

    const-string v2, "ro.kernel.qemu.gles"

    invoke-direct {v0, v2, v4}, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x9

    aput-object v0, v1, v2

    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;

    const-string v2, "ro.kernel.qemu"

    const-string v6, "1"

    invoke-direct {v0, v2, v6}, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa

    aput-object v0, v1, v2

    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;

    const-string v2, "ro.product.device"

    const-string v6, "generic"

    invoke-direct {v0, v2, v6}, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb

    aput-object v0, v1, v2

    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;

    const-string v2, "ro.product.model"

    const-string v6, "sdk"

    invoke-direct {v0, v2, v6}, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc

    aput-object v0, v1, v2

    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;

    const-string v2, "ro.product.name"

    invoke-direct {v0, v2, v6}, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xd

    aput-object v0, v1, v2

    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;

    const-string v2, "ro.serialno"

    invoke-direct {v0, v2, v4}, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xe

    aput-object v0, v1, v2

    sput-object v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->j:[Lcom/combateafraude/faceauthenticator/controller/emulator/Property;

    new-array v0, v5, [Lcom/combateafraude/faceauthenticator/controller/emulator/Property;

    .line 11
    new-instance v1, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;

    const-string v2, "ro.product.cpu.abilist"

    const-string v4, "x86"

    invoke-direct {v1, v2, v4}, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v3

    sput-object v0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->k:[Lcom/combateafraude/faceauthenticator/controller/emulator/Property;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->n:Z

    .line 3
    iput-boolean v0, p0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->o:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->p:Z

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->q:Ljava/util/List;

    .line 6
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->m:Landroid/content/Context;

    const-string p1, "com.google.android.launcher.layouts.genymotion"

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->q:Ljava/util/List;

    const-string v0, "com.bluestacks"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->q:Ljava/util/List;

    const-string v0, "com.bignox.app"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v0, "android.os.SystemProperties"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "get"

    const/4 v1, 0x1

    :try_start_1
    new-array v2, v1, [Ljava/lang/Class;

    .line 3
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v4

    .line 4
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static b(Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->n:Z

    if-eqz p0, :cond_0

    .line 2
    const-class p0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->n:Z

    if-eqz v0, :cond_0

    .line 2
    const-class v0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private d()Z
    .locals 8

    .line 1
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "google_sdk"

    const/4 v4, 0x1

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "droid4x"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "Emulator"

    .line 4
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "Android SDK built for x86"

    .line 5
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v5, "Genymotion"

    .line 6
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v5, "goldfish"

    .line 7
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "vbox86"

    .line 8
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v6, "sdk"

    .line 9
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 10
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "sdk_x86"

    .line 11
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "vbox86p"

    .line 12
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 13
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "nox"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    .line 14
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 16
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->HOST:Ljava/lang/String;

    const-string v5, "se.infra"

    .line 18
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return v4

    .line 19
    :cond_2
    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    or-int/2addr v0, v2

    if-eqz v0, :cond_4

    return v4

    .line 20
    :cond_4
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method static synthetic e(Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->h()Z

    move-result p0

    return p0
.end method

.method private f([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Check "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is detected"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->c(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private g()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->m:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    const-string v0, "/system/bin/netcfg"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    :try_start_0
    new-instance v4, Ljava/lang/ProcessBuilder;

    invoke-direct {v4, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/io/File;

    const-string v5, "/system/bin/"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    .line 6
    invoke-virtual {v4, v2}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 7
    invoke-virtual {v4}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 9
    :goto_0
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 10
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 12
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "netcfg data -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->c(Ljava/lang/String;)V

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "\n"

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 16
    array-length v3, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    const-string v6, "wlan0"

    .line 17
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "tunl0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "eth0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    const-string v6, "10.0.2.15"

    .line 18
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 19
    iget-boolean v0, p0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->n:Z

    if-eqz v0, :cond_2

    .line 20
    const-class v0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Check IP is detected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return v1
.end method

.method public static getDeviceInfo()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Build.PRODUCT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nBuild.MANUFACTURER: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nBuild.BRAND: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nBuild.DEVICE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nBuild.MODEL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nBuild.HARDWARE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nBuild.FINGERPRINT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()Z
    .locals 22

    move-object/from16 v1, p0

    const-class v2, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;

    .line 1
    invoke-static {}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->c(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/emulator/analytics/BuildPropInfoEvent;

    iget-object v3, v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->m:Landroid/content/Context;

    const-string v4, "ro.product.model"

    .line 3
    invoke-direct {v1, v3, v4}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->m:Landroid/content/Context;

    const-string v5, "ro.build.host"

    .line 4
    invoke-direct {v1, v3, v5}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v3, v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->m:Landroid/content/Context;

    const-string v6, "ro.product.cpu.abilist"

    .line 5
    invoke-direct {v1, v3, v6}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->m:Landroid/content/Context;

    const-string v7, "ro.build.user"

    .line 6
    invoke-direct {v1, v3, v7}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v3, v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->m:Landroid/content/Context;

    const-string v8, "ro.build.tags"

    .line 7
    invoke-direct {v1, v3, v8}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v3, v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->m:Landroid/content/Context;

    const-string v12, "ro.product.manufacturer"

    .line 8
    invoke-direct {v1, v3, v12}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v3, v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->m:Landroid/content/Context;

    const-string v10, "ro.hardware"

    .line 9
    invoke-direct {v1, v3, v10}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v3, v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->m:Landroid/content/Context;

    const-string v11, "ro.build.fingerprint"

    .line 10
    invoke-direct {v1, v3, v11}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/combateafraude/faceauthenticator/controller/emulator/analytics/BuildPropInfoEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object v3, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->DEVICE_INFO:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    new-instance v4, Lcom/combateafraude/faceauthenticator/controller/emulator/analytics/BuildPropInfoEvent;

    .line 12
    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/controller/emulator/analytics/BuildPropInfoEvent;->getBuildModel()Ljava/lang/String;

    move-result-object v14

    .line 13
    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/controller/emulator/analytics/BuildPropInfoEvent;->getBuildHost()Ljava/lang/String;

    move-result-object v15

    .line 14
    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/controller/emulator/analytics/BuildPropInfoEvent;->getCpuABI()Ljava/lang/String;

    move-result-object v16

    .line 15
    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/controller/emulator/analytics/BuildPropInfoEvent;->getBuildUser()Ljava/lang/String;

    move-result-object v17

    .line 16
    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/controller/emulator/analytics/BuildPropInfoEvent;->getBuildTags()Ljava/lang/String;

    move-result-object v18

    .line 17
    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/controller/emulator/analytics/BuildPropInfoEvent;->getBuildManufacture()Ljava/lang/String;

    move-result-object v19

    .line 18
    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/controller/emulator/analytics/BuildPropInfoEvent;->getBuildHardware()Ljava/lang/String;

    move-result-object v20

    .line 19
    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/controller/emulator/analytics/BuildPropInfoEvent;->getBuildFingerprint()Ljava/lang/String;

    move-result-object v21

    move-object v13, v4

    invoke-direct/range {v13 .. v21}, Lcom/combateafraude/faceauthenticator/controller/emulator/analytics/BuildPropInfoEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {v3, v4}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 21
    invoke-direct/range {p0 .. p0}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->d()Z

    move-result v0

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check basic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->c(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v3, "Check basic"

    goto :goto_0

    :cond_0
    const-string v3, "No emulator. It was not detected in any method"

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_19

    .line 23
    iget-object v0, v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->m:Landroid/content/Context;

    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v6}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->o:Z

    if-eqz v0, :cond_d

    .line 24
    invoke-direct/range {p0 .. p0}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->i()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 25
    iget-object v0, v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->m:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 26
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 27
    sget-object v7, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->a:[Ljava/lang/String;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_3

    aget-object v10, v7, v9

    .line 28
    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_2

    const-string v0, " check phone number is detected"

    .line 29
    :try_start_1
    iget-boolean v7, v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->n:Z

    if-eqz v7, :cond_1

    .line 30
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catch_0
    nop

    .line 31
    iget-boolean v0, v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->n:Z

    if-eqz v0, :cond_3

    .line 32
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "No permission to detect access of Line1Number"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_c

    .line 33
    iget-object v0, v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->m:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 34
    :try_start_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 35
    sget-object v7, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->b:[Ljava/lang/String;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_6

    aget-object v10, v7, v9

    .line 36
    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v10, :cond_5

    const-string v0, "Check device id is detected"

    .line 37
    :try_start_3
    iget-boolean v7, v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->n:Z

    if-eqz v7, :cond_4

    .line 38
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :catch_1
    nop

    .line 39
    iget-boolean v0, v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->n:Z

    if-eqz v0, :cond_6

    .line 40
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "No permission to detect access of DeviceId"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_c

    .line 41
    iget-object v0, v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->m:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 42
    :try_start_4
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 43
    sget-object v7, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->c:[Ljava/lang/String;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v8, :cond_9

    aget-object v10, v7, v9

    .line 44
    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v10, :cond_8

    const-string v0, "Check imsi is detected"

    .line 45
    :try_start_5
    iget-boolean v7, v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->n:Z

    if-eqz v7, :cond_7

    .line 46
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_7
    const/4 v0, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :catch_2
    nop

    .line 47
    iget-boolean v0, v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->n:Z

    if-eqz v0, :cond_9

    .line 48
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "No permission to detect access of SubscriberId"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_c

    .line 49
    iget-object v0, v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->m:Landroid/content/Context;

    .line 50
    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "android"

    .line 51
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 52
    iget-boolean v0, v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->n:Z

    if-eqz v0, :cond_a

    .line 53
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "Check operator name android is detected"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/4 v0, 0x1

    goto :goto_7

    :cond_b
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_d

    :cond_c
    const/4 v0, 0x1

    goto :goto_8

    :cond_d
    const/4 v0, 0x0

    :goto_8
    if-nez v0, :cond_18

    .line 54
    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->d:[Ljava/lang/String;

    const-string v6, "Geny"

    .line 55
    invoke-direct {v1, v0, v6}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->f([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->h:[Ljava/lang/String;

    const-string v6, "Andy"

    .line 56
    invoke-direct {v1, v0, v6}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->f([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->i:[Ljava/lang/String;

    const-string v6, "Nox"

    .line 57
    invoke-direct {v1, v0, v6}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->f([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/io/File;

    .line 58
    new-instance v0, Ljava/io/File;

    const-string v8, "/proc/tty/drivers"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v0, v7, v5

    new-instance v0, Ljava/io/File;

    const-string v8, "/proc/cpuinfo"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v0, v7, v4

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v6, :cond_11

    aget-object v0, v7, v8

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_10

    const/16 v9, 0x400

    new-array v9, v9, [B

    .line 60
    :try_start_6
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 61
    invoke-virtual {v10, v9}, Ljava/io/InputStream;->read([B)I

    .line 62
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_a

    :catch_3
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    :goto_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v9}, Ljava/lang/String;-><init>([B)V

    .line 65
    sget-object v9, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->e:[Ljava/lang/String;

    array-length v10, v9

    const/4 v11, 0x0

    :goto_b
    if-ge v11, v10, :cond_10

    aget-object v13, v9, v11

    .line 66
    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 67
    iget-boolean v0, v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->n:Z

    if-eqz v0, :cond_e

    .line 68
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "Check QEmuDrivers is detected"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v0, 0x1

    goto :goto_c

    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_11
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_18

    .line 69
    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->f:[Ljava/lang/String;

    const-string v6, "Pipes"

    .line 70
    invoke-direct {v1, v0, v6}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->f([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 71
    invoke-direct/range {p0 .. p0}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->g()Z

    move-result v0

    if-nez v0, :cond_18

    .line 72
    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->j:[Lcom/combateafraude/faceauthenticator/controller/emulator/Property;

    array-length v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_d
    if-ge v7, v6, :cond_14

    aget-object v9, v0, v7

    .line 73
    iget-object v10, v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->m:Landroid/content/Context;

    iget-object v11, v9, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;->name:Ljava/lang/String;

    invoke-direct {v1, v10, v11}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 74
    iget-object v9, v9, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;->seek_value:Ljava/lang/String;

    if-nez v9, :cond_12

    if-eqz v10, :cond_12

    add-int/lit8 v8, v8, 0x1

    :cond_12
    if-eqz v9, :cond_13

    .line 75
    invoke-virtual {v10, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_13

    add-int/lit8 v8, v8, 0x1

    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_14
    const/4 v0, 0x5

    if-lt v8, v0, :cond_16

    .line 76
    iget-boolean v0, v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->n:Z

    if-eqz v0, :cond_15

    .line 77
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Check QEmuProps is detected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const/4 v0, 0x1

    goto :goto_e

    :cond_16
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_17

    .line 78
    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->g:[Ljava/lang/String;

    const-string v2, "X86"

    invoke-direct {v1, v0, v2}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->f([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_f

    :cond_17
    const/4 v0, 0x0

    goto :goto_10

    :cond_18
    :goto_f
    const/4 v0, 0x1

    .line 79
    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Check Advanced "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->c(Ljava/lang/String;)V

    if-eqz v0, :cond_19

    const-string v3, "Check Advanced"

    :cond_19
    const-string v2, "Check Package Name "

    if-nez v0, :cond_1d

    .line 80
    iget-boolean v0, v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->p:Z

    if-eqz v0, :cond_1c

    iget-object v0, v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_11

    .line 81
    :cond_1a
    iget-object v0, v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 82
    iget-object v6, v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->q:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 83
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_1b

    const/high16 v8, 0x10000

    .line 84
    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 85
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1b

    const/4 v0, 0x1

    goto :goto_12

    :cond_1c
    :goto_11
    const/4 v0, 0x0

    .line 86
    :goto_12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->c(Ljava/lang/String;)V

    if-eqz v0, :cond_1d

    move-object v3, v2

    :cond_1d
    const-string v2, "Check CPU architecture "

    if-nez v0, :cond_20

    .line 87
    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->k:[Lcom/combateafraude/faceauthenticator/controller/emulator/Property;

    aget-object v0, v0, v5

    .line 88
    iget-object v6, v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->m:Landroid/content/Context;

    iget-object v7, v0, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;->name:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1e

    .line 89
    iget-object v0, v0, Lcom/combateafraude/faceauthenticator/controller/emulator/Property;->seek_value:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_13

    :cond_1e
    const/4 v4, 0x0

    .line 90
    :goto_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->c(Ljava/lang/String;)V

    if-eqz v4, :cond_1f

    move-object v3, v2

    :cond_1f
    move v0, v4

    :cond_20
    const-string v2, "Check Manufacture "

    if-nez v0, :cond_22

    .line 91
    iget-object v4, v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->m:Landroid/content/Context;

    invoke-direct {v1, v4, v12}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Sony"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 92
    sget-object v0, Landroid/os/Build;->HOST:Ljava/lang/String;

    const-string v4, "Build"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 93
    :cond_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->c(Ljava/lang/String;)V

    if-eqz v0, :cond_22

    move-object v3, v2

    .line 94
    :cond_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "method "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->c(Ljava/lang/String;)V

    if-eqz v0, :cond_23

    .line 95
    sget-object v2, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->EMULATOR_DETECTED_ON_METHOD:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    new-instance v4, Lcom/combateafraude/faceauthenticator/controller/emulator/analytics/EmulatorDetectionEvent;

    invoke-direct {v4, v3}, Lcom/combateafraude/faceauthenticator/controller/emulator/analytics/EmulatorDetectionEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    :cond_23
    return v0
.end method

.method private i()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supported TelePhony: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->c(Ljava/lang/String;)V

    return v0
.end method

.method public static with(Landroid/content/Context;)Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->l:Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->l:Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;

    .line 3
    :cond_0
    sget-object p0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->l:Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;

    return-object p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context must not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addPackageName(Ljava/lang/String;)Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPackageName(Ljava/util/List;)Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public detect(Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector$OnEmulatorDetectorListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector$a;

    invoke-direct {v1, p0, p1}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector$a;-><init>(Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector$OnEmulatorDetectorListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getPackageNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->q:Ljava/util/List;

    return-object v0
.end method

.method public isCheckPackage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->p:Z

    return v0
.end method

.method public isCheckTelephony()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->o:Z

    return v0
.end method

.method public isDebug()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->n:Z

    return v0
.end method

.method public setCheckPackage(Z)Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->p:Z

    return-object p0
.end method

.method public setCheckTelephony(Z)Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->o:Z

    return-object p0
.end method

.method public setDebug(Z)Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->n:Z

    return-object p0
.end method
