.class public Lcaf/io/Q;
.super Ljava/lang/Object;
.source "SecurityProvider.java"


# instance fields
.field private final a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

.field private final b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

.field c:Z

.field private d:I


# direct methods
.method public constructor <init>(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcaf/io/Q;->c:Z

    .line 3
    iput-object p1, p0, Lcaf/io/Q;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    .line 4
    iput-object p2, p0, Lcaf/io/Q;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    return-void
.end method

.method static synthetic a(Lcaf/io/Q;)Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcaf/io/Q;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    return-object p0
.end method

.method private c()Ljava/lang/Thread;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcaf/io/u0;

    invoke-direct {v1, p0}, Lcaf/io/u0;-><init>(Lcaf/io/Q;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private d(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcaf/io/Q;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    new-instance v1, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

    new-instance v2, Lcom/combateafraude/passivefaceliveness/output/failure/SecurityReason;

    const/16 v3, 0x64

    if-eq p1, v3, :cond_5

    const/16 v3, 0xc8

    if-eq p1, v3, :cond_4

    const/16 v3, 0x12c

    if-eq p1, v3, :cond_3

    const/16 v3, 0x190

    if-eq p1, v3, :cond_2

    const/16 v3, 0x1f4

    if-eq p1, v3, :cond_1

    const/16 v3, 0x258

    if-eq p1, v3, :cond_0

    .line 2
    sget v3, Lcom/combateafraude/passivefaceliveness/R$string;->error_000_message:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3
    :cond_0
    sget v3, Lcom/combateafraude/passivefaceliveness/R$string;->error_600_message:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 4
    :cond_1
    sget v3, Lcom/combateafraude/passivefaceliveness/R$string;->error_500_message:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 5
    :cond_2
    sget v3, Lcom/combateafraude/passivefaceliveness/R$string;->error_400_message:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 6
    :cond_3
    sget v3, Lcom/combateafraude/passivefaceliveness/R$string;->error_300_message:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 7
    :cond_4
    sget v3, Lcom/combateafraude/passivefaceliveness/R$string;->error_200_message:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 8
    :cond_5
    sget v3, Lcom/combateafraude/passivefaceliveness/R$string;->error_100_message:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 9
    :goto_0
    invoke-direct {v2, v3, p1}, Lcom/combateafraude/passivefaceliveness/output/failure/SecurityReason;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2}, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;-><init>(Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->a(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method

.method private synthetic e(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcaf/io/Q;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->I()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcaf/io/Q;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    new-instance v0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

    new-instance v1, Lcom/combateafraude/passivefaceliveness/output/failure/SecurityReason;

    sget v2, Lcom/combateafraude/passivefaceliveness/R$string;->error_100_message:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lcom/combateafraude/passivefaceliveness/output/failure/SecurityReason;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;-><init>(Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->a(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 5

    .line 1
    :goto_0
    iget-boolean v0, p0, Lcaf/io/Q;->c:Z

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Lcaf/io/Q;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide v1, -0x8a33da67cb6L

    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcaf/io/Q;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->H()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x12c

    .line 6
    iput v0, p0, Lcaf/io/Q;->d:I

    :goto_2
    const/4 v1, 0x0

    goto :goto_4

    .line 7
    :cond_1
    iget-object v0, p0, Lcaf/io/Q;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide v3, -0x8c03da67cb6L

    invoke-static {v3, v4}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcaf/io/Q;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->E()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x190

    .line 11
    iput v0, p0, Lcaf/io/Q;->d:I

    goto :goto_2

    :cond_3
    :goto_4
    if-nez v1, :cond_4

    .line 12
    iget v0, p0, Lcaf/io/Q;->d:I

    invoke-direct {p0, v0}, Lcaf/io/Q;->d(I)V

    .line 13
    iput-boolean v2, p0, Lcaf/io/Q;->c:Z

    :cond_4
    const-wide/16 v0, 0x3e8

    .line 14
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private synthetic i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcaf/io/Q;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcaf/io/Q$a;

    invoke-direct {v1, p0}, Lcaf/io/Q$a;-><init>(Lcaf/io/Q;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/security/ProviderInstaller;->installIfNeededAsync(Landroid/content/Context;Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;)V

    return-void
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcaf/io/Q;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-static {v0}, Lcaf/io/s;->a(Landroid/content/Context;)Lcaf/io/s;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcaf/io/s;->a(Z)Lcaf/io/s;

    move-result-object v0

    new-instance v1, Lcaf/io/v0;

    invoke-direct {v1, p0}, Lcaf/io/v0;-><init>(Lcaf/io/Q;)V

    invoke-virtual {v0, v1}, Lcaf/io/s;->a(Lcaf/io/s$b;)V

    return-void
.end method

.method public static synthetic k(Lcaf/io/Q;)V
    .locals 0

    invoke-direct {p0}, Lcaf/io/Q;->h()V

    return-void
.end method

.method public static synthetic l(Lcaf/io/Q;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcaf/io/Q;->e(Z)V

    return-void
.end method

.method public static synthetic m(Lcaf/io/Q;)V
    .locals 0

    invoke-direct {p0}, Lcaf/io/Q;->i()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcaf/io/Q;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    new-instance v1, Lcaf/io/w0;

    invoke-direct {v1, p0}, Lcaf/io/w0;-><init>(Lcaf/io/Q;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcaf/io/Q;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcaf/io/Q;->b()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcaf/io/Q;->c()Ljava/lang/Thread;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5
    invoke-direct {p0}, Lcaf/io/Q;->j()V

    .line 6
    new-instance v0, Lcom/scottyab/rootbeer/RootBeer;

    iget-object v1, p0, Lcaf/io/Q;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-direct {v0, v1}, Lcom/scottyab/rootbeer/RootBeer;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {v0}, Lcom/scottyab/rootbeer/RootBeer;->isRooted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcaf/io/Q;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->K()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xc8

    .line 9
    iput v0, p0, Lcaf/io/Q;->d:I

    .line 10
    invoke-direct {p0, v0}, Lcaf/io/Q;->d(I)V

    goto/16 :goto_7

    .line 11
    :cond_1
    iget-object v0, p0, Lcaf/io/Q;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    .line 12
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Lcaf/io/Q;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->G()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x1f4

    .line 14
    iput v0, p0, Lcaf/io/Q;->d:I

    :goto_2
    const/4 v2, 0x0

    goto :goto_6

    .line 15
    :cond_4
    iget-object v0, p0, Lcaf/io/Q;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    iget-object v1, p0, Lcaf/io/Q;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->a()I

    move-result v1

    const/4 v4, 0x0

    .line 16
    :try_start_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_5

    .line 17
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x8000000

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v5}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    nop

    :cond_5
    :goto_3
    if-nez v4, :cond_6

    .line 18
    :try_start_2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x40

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 19
    :cond_6
    array-length v0, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_4
    if-ge v5, v0, :cond_7

    aget-object v7, v4, v5

    .line 20
    invoke-virtual {v7}, Landroid/content/pm/Signature;->hashCode()I

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    mul-int v6, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v6, 0x0

    :cond_7
    if-eq v6, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_9

    .line 22
    iget-object v0, p0, Lcaf/io/Q;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->A()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x258

    .line 23
    iput v0, p0, Lcaf/io/Q;->d:I

    goto :goto_2

    :cond_9
    :goto_6
    if-nez v2, :cond_a

    .line 24
    iget v0, p0, Lcaf/io/Q;->d:I

    invoke-direct {p0, v0}, Lcaf/io/Q;->d(I)V

    :cond_a
    :goto_7
    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcaf/io/Q;->c:Z

    return-void
.end method
