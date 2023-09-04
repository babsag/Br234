.class public Lbr/com/topaz/m0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/m0/d;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/telephony/TelephonyManager;

.field private c:Landroid/net/wifi/WifiManager;

.field private d:Landroid/net/ConnectivityManager;

.field private e:Lbr/com/topaz/heartbeat/utils/OFDException;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/utils/OFDException;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/m0/e;->a:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lbr/com/topaz/m0/e;->b:Landroid/telephony/TelephonyManager;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lbr/com/topaz/m0/e;->c:Landroid/net/wifi/WifiManager;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lbr/com/topaz/m0/e;->d:Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lbr/com/topaz/m0/e;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    return-void
.end method

.method private a(J)J
    .locals 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    add-long/2addr v1, p1

    return-wide v1
.end method

.method private a(Landroid/telephony/CellInfo;)Lbr/com/topaz/l/e;
    .locals 4

    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    new-instance v2, Lbr/com/topaz/l/e;

    invoke-direct {v2}, Lbr/com/topaz/l/e;-><init>()V

    invoke-virtual {p0, v1}, Lbr/com/topaz/m0/e;->a(Landroid/telephony/CellIdentityCdma;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/l/e;->c(Ljava/lang/Integer;)V

    invoke-virtual {p0, v1}, Lbr/com/topaz/m0/e;->b(Landroid/telephony/CellIdentityCdma;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/l/e;->j(Ljava/lang/Integer;)V

    invoke-virtual {p0, v1}, Lbr/com/topaz/m0/e;->c(Landroid/telephony/CellIdentityCdma;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/l/e;->l(Ljava/lang/Integer;)V

    invoke-virtual {p0, v1}, Lbr/com/topaz/m0/e;->d(Landroid/telephony/CellIdentityCdma;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/l/e;->m(Ljava/lang/Integer;)V

    invoke-virtual {p0, v1}, Lbr/com/topaz/m0/e;->e(Landroid/telephony/CellIdentityCdma;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbr/com/topaz/l/e;->p(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lbr/com/topaz/m0/e;->a(Landroid/telephony/CellSignalStrengthCdma;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbr/com/topaz/l/e;->b(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lbr/com/topaz/m0/e;->b(Landroid/telephony/CellSignalStrengthCdma;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbr/com/topaz/l/e;->g(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lbr/com/topaz/m0/e;->c(Landroid/telephony/CellSignalStrengthCdma;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbr/com/topaz/l/e;->k(Ljava/lang/Integer;)V

    invoke-virtual {p0, p1}, Lbr/com/topaz/m0/e;->f(Landroid/telephony/CellInfo;)Z

    move-result p1

    invoke-virtual {v2, p1}, Lbr/com/topaz/l/e;->a(Z)V

    return-object v2
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lbr/com/topaz/l/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellInfo;

    invoke-virtual {v1}, Landroid/telephony/CellInfo;->getTimeStamp()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lbr/com/topaz/m0/e;->a(J)J

    move-result-wide v2

    instance-of v4, v1, Landroid/telephony/CellInfoCdma;

    if-eqz v4, :cond_1

    new-instance v4, Lbr/com/topaz/l/f;

    invoke-direct {p0, v1}, Lbr/com/topaz/m0/e;->a(Landroid/telephony/CellInfo;)Lbr/com/topaz/l/e;

    move-result-object v1

    const-string v5, "c"

    invoke-direct {v4, v5, v2, v3, v1}, Lbr/com/topaz/l/f;-><init>(Ljava/lang/String;JLbr/com/topaz/l/e;)V

    :goto_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v4, v1, Landroid/telephony/CellInfoGsm;

    if-eqz v4, :cond_2

    new-instance v4, Lbr/com/topaz/l/f;

    invoke-direct {p0, v1}, Lbr/com/topaz/m0/e;->b(Landroid/telephony/CellInfo;)Lbr/com/topaz/l/e;

    move-result-object v1

    const-string v5, "g"

    invoke-direct {v4, v5, v2, v3, v1}, Lbr/com/topaz/l/f;-><init>(Ljava/lang/String;JLbr/com/topaz/l/e;)V

    goto :goto_1

    :cond_2
    instance-of v4, v1, Landroid/telephony/CellInfoLte;

    if-eqz v4, :cond_3

    new-instance v4, Lbr/com/topaz/l/f;

    invoke-direct {p0, v1}, Lbr/com/topaz/m0/e;->c(Landroid/telephony/CellInfo;)Lbr/com/topaz/l/e;

    move-result-object v1

    const-string v5, "l"

    invoke-direct {v4, v5, v2, v3, v1}, Lbr/com/topaz/l/f;-><init>(Ljava/lang/String;JLbr/com/topaz/l/e;)V

    goto :goto_1

    :cond_3
    instance-of v4, v1, Landroid/telephony/CellInfoWcdma;

    if-eqz v4, :cond_0

    new-instance v4, Lbr/com/topaz/l/f;

    invoke-direct {p0, v1}, Lbr/com/topaz/m0/e;->e(Landroid/telephony/CellInfo;)Lbr/com/topaz/l/e;

    move-result-object v1

    const-string v5, "w"

    invoke-direct {v4, v5, v2, v3, v1}, Lbr/com/topaz/l/f;-><init>(Ljava/lang/String;JLbr/com/topaz/l/e;)V

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private b(Landroid/telephony/CellInfo;)Lbr/com/topaz/l/e;
    .locals 4

    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    new-instance v2, Lbr/com/topaz/l/e;

    invoke-direct {v2}, Lbr/com/topaz/l/e;-><init>()V

    invoke-virtual {p0, v1}, Lbr/com/topaz/m0/e;->a(Landroid/telephony/CellIdentityGsm;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/l/e;->a(Ljava/lang/Integer;)V

    invoke-virtual {p0, v1}, Lbr/com/topaz/m0/e;->b(Landroid/telephony/CellIdentityGsm;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/l/e;->d(Ljava/lang/Integer;)V

    invoke-virtual {p0, v1}, Lbr/com/topaz/m0/e;->c(Landroid/telephony/CellIdentityGsm;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/l/e;->f(Ljava/lang/Integer;)V

    invoke-virtual {p0, v1}, Lbr/com/topaz/m0/e;->d(Landroid/telephony/CellIdentityGsm;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/l/e;->i(Ljava/lang/Integer;)V

    invoke-virtual {p0, v1}, Lbr/com/topaz/m0/e;->e(Landroid/telephony/CellIdentityGsm;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/l/e;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lbr/com/topaz/m0/e;->f(Landroid/telephony/CellIdentityGsm;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbr/com/topaz/l/e;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lbr/com/topaz/m0/e;->a(Landroid/telephony/CellSignalStrengthGsm;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbr/com/topaz/l/e;->b(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lbr/com/topaz/m0/e;->b(Landroid/telephony/CellSignalStrengthGsm;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbr/com/topaz/l/e;->g(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lbr/com/topaz/m0/e;->c(Landroid/telephony/CellSignalStrengthGsm;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbr/com/topaz/l/e;->k(Ljava/lang/Integer;)V

    invoke-virtual {p0, p1}, Lbr/com/topaz/m0/e;->f(Landroid/telephony/CellInfo;)Z

    move-result p1

    invoke-virtual {v2, p1}, Lbr/com/topaz/l/e;->a(Z)V

    return-object v2
.end method

.method private c(Landroid/telephony/CellInfo;)Lbr/com/topaz/l/e;
    .locals 4

    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoLte;

    invoke-virtual {v0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    new-instance v2, Lbr/com/topaz/l/e;

    invoke-direct {v2}, Lbr/com/topaz/l/e;-><init>()V

    invoke-virtual {p0, v1}, Lbr/com/topaz/m0/e;->a(Landroid/telephony/CellIdentityLte;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/l/e;->e(Ljava/lang/Integer;)V

    invoke-virtual {p0, v1}, Lbr/com/topaz/m0/e;->b(Landroid/telephony/CellIdentityLte;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/l/e;->h(Ljava/lang/Integer;)V

    invoke-virtual {p0, v1}, Lbr/com/topaz/m0/e;->d(Landroid/telephony/CellIdentityLte;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/l/e;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lbr/com/topaz/m0/e;->c(Landroid/telephony/CellIdentityLte;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/l/e;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lbr/com/topaz/m0/e;->e(Landroid/telephony/CellIdentityLte;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/l/e;->n(Ljava/lang/Integer;)V

    invoke-virtual {p0, v1}, Lbr/com/topaz/m0/e;->f(Landroid/telephony/CellIdentityLte;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbr/com/topaz/l/e;->q(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lbr/com/topaz/m0/e;->a(Landroid/telephony/CellSignalStrengthLte;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbr/com/topaz/l/e;->b(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lbr/com/topaz/m0/e;->b(Landroid/telephony/CellSignalStrengthLte;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbr/com/topaz/l/e;->g(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lbr/com/topaz/m0/e;->c(Landroid/telephony/CellSignalStrengthLte;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbr/com/topaz/l/e;->k(Ljava/lang/Integer;)V

    invoke-virtual {p0, p1}, Lbr/com/topaz/m0/e;->f(Landroid/telephony/CellInfo;)Z

    move-result p1

    invoke-virtual {v2, p1}, Lbr/com/topaz/l/e;->a(Z)V

    return-object v2
.end method

.method private d(Landroid/telephony/CellInfo;)Ljava/lang/String;
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lbr/com/topaz/m0/e;->a:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/m0/e;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    invoke-virtual {v2}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object p1, v2

    :cond_2
    if-nez p1, :cond_3

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CellInfo;

    :cond_3
    invoke-static {p1}, Lbr/com/topaz/m0/b;->a(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private e(Landroid/telephony/CellInfo;)Lbr/com/topaz/l/e;
    .locals 4

    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    new-instance v2, Lbr/com/topaz/l/e;

    invoke-direct {v2}, Lbr/com/topaz/l/e;-><init>()V

    invoke-virtual {p0, v1}, Lbr/com/topaz/m0/e;->a(Landroid/telephony/CellIdentityWcdma;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/l/e;->f(Ljava/lang/Integer;)V

    invoke-virtual {p0, v1}, Lbr/com/topaz/m0/e;->b(Landroid/telephony/CellIdentityWcdma;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/l/e;->i(Ljava/lang/Integer;)V

    invoke-virtual {p0, v1}, Lbr/com/topaz/m0/e;->c(Landroid/telephony/CellIdentityWcdma;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/l/e;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lbr/com/topaz/m0/e;->d(Landroid/telephony/CellIdentityWcdma;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/l/e;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lbr/com/topaz/m0/e;->e(Landroid/telephony/CellIdentityWcdma;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/l/e;->o(Ljava/lang/Integer;)V

    invoke-virtual {p0, v1}, Lbr/com/topaz/m0/e;->f(Landroid/telephony/CellIdentityWcdma;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbr/com/topaz/l/e;->r(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lbr/com/topaz/m0/e;->a(Landroid/telephony/CellSignalStrengthWcdma;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbr/com/topaz/l/e;->b(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lbr/com/topaz/m0/e;->b(Landroid/telephony/CellSignalStrengthWcdma;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbr/com/topaz/l/e;->g(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lbr/com/topaz/m0/e;->c(Landroid/telephony/CellSignalStrengthWcdma;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbr/com/topaz/l/e;->k(Ljava/lang/Integer;)V

    invoke-virtual {p0, p1}, Lbr/com/topaz/m0/e;->f(Landroid/telephony/CellInfo;)Z

    move-result p1

    invoke-virtual {v2, p1}, Lbr/com/topaz/l/e;->a(Z)V

    return-object v2
.end method

.method private r()I
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lbr/com/topaz/m0/e;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(Landroid/telephony/CellIdentityCdma;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/telephony/CellIdentityGsm;)Ljava/lang/Integer;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/CellIdentityGsm;->getArfcn()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/telephony/CellIdentityLte;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/telephony/CellIdentityWcdma;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/telephony/CellSignalStrengthCdma;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthCdma;->getAsuLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/telephony/CellSignalStrengthGsm;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthGsm;->getAsuLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/telephony/CellSignalStrengthLte;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getAsuLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/telephony/CellSignalStrengthWcdma;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lbr/com/topaz/l/a;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbr/com/topaz/l/a;",
            ")",
            "Ljava/util/List<",
            "Lbr/com/topaz/l/b;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-direct {p0}, Lbr/com/topaz/m0/e;->r()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    new-instance v2, Lbr/com/topaz/l/b;

    invoke-direct {v2}, Lbr/com/topaz/l/b;-><init>()V

    invoke-virtual {p0, v1}, Lbr/com/topaz/m0/e;->a(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/l/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lbr/com/topaz/m0/e;->b(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/l/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lbr/com/topaz/m0/e;->c(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/l/b;->a(I)V

    invoke-virtual {p0, v1}, Lbr/com/topaz/m0/e;->d(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/l/b;->c(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lbr/com/topaz/m0/e;->e(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v2, v3}, Lbr/com/topaz/l/b;->b(I)V

    invoke-virtual {p0, v1}, Lbr/com/topaz/m0/e;->f(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbr/com/topaz/l/b;->a(Ljava/util/List;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/m0/e;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "162"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/m0/e;->d:Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    return v0
.end method

.method public b(Landroid/telephony/CellIdentityCdma;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/telephony/CellIdentityGsm;)Ljava/lang/Integer;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/CellIdentityGsm;->getBsic()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Landroid/telephony/CellIdentityLte;)Ljava/lang/Integer;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/CellIdentityLte;->getEarfcn()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Landroid/telephony/CellIdentityWcdma;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/telephony/CellSignalStrengthCdma;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthCdma;->getDbm()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/telephony/CellSignalStrengthGsm;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/telephony/CellSignalStrengthLte;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/telephony/CellSignalStrengthWcdma;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/m0/e;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/m0/e;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "142"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public b(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothClass;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p1

    return p1
.end method

.method public c(Landroid/telephony/CellIdentityCdma;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/telephony/CellIdentityGsm;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/telephony/CellIdentityLte;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/telephony/CellIdentityWcdma;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/telephony/CellSignalStrengthCdma;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthCdma;->getLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/telephony/CellSignalStrengthGsm;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthGsm;->getLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/telephony/CellSignalStrengthLte;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/telephony/CellSignalStrengthWcdma;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthWcdma;->getLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lbr/com/topaz/m0/e;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<unknown ssid>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lbr/com/topaz/m0/e;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v3, "151"

    invoke-virtual {v2, v1, v3}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v0
.end method

.method public d(Landroid/telephony/CellIdentityCdma;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/telephony/CellIdentityGsm;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/telephony/CellIdentityLte;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/telephony/CellIdentityWcdma;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/m0/e;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/m0/e;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "145"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public d(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result p1

    return p1
.end method

.method public e(Landroid/telephony/CellIdentityCdma;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/telephony/CellIdentityGsm;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/telephony/CellIdentityLte;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/telephony/CellIdentityWcdma;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public e()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbr/com/topaz/l/i0;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lbr/com/topaz/m0/e;->a:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/m0/e;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    new-instance v4, Lbr/com/topaz/l/i0;

    invoke-direct {v4}, Lbr/com/topaz/l/i0;-><init>()V

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lbr/com/topaz/l/i0;->c(Ljava/lang/String;)V

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lbr/com/topaz/l/i0;->a(Ljava/lang/String;)V

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lbr/com/topaz/l/i0;->b(Ljava/lang/String;)V

    iget v5, v3, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/com/topaz/l/i0;->e(Ljava/lang/Integer;)V

    iget v5, v3, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/com/topaz/l/i0;->d(Ljava/lang/Integer;)V

    iget-wide v5, v3, Landroid/net/wifi/ScanResult;->timestamp:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/com/topaz/l/i0;->a(Ljava/lang/Long;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v1, :cond_1

    invoke-virtual {v3}, Landroid/net/wifi/ScanResult;->isPasspointNetwork()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/com/topaz/l/i0;->b(Ljava/lang/Boolean;)V

    iget v5, v3, Landroid/net/wifi/ScanResult;->channelWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/com/topaz/l/i0;->c(Ljava/lang/Integer;)V

    iget v5, v3, Landroid/net/wifi/ScanResult;->centerFreq0:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/com/topaz/l/i0;->a(Ljava/lang/Integer;)V

    iget v5, v3, Landroid/net/wifi/ScanResult;->centerFreq1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/com/topaz/l/i0;->b(Ljava/lang/Integer;)V

    invoke-virtual {v3}, Landroid/net/wifi/ScanResult;->is80211mcResponder()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Lbr/com/topaz/l/i0;->a(Ljava/lang/Boolean;)V

    goto :goto_2

    :cond_1
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v3}, Lbr/com/topaz/l/i0;->b(Ljava/lang/Boolean;)V

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lbr/com/topaz/l/i0;->c(Ljava/lang/Integer;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lbr/com/topaz/l/i0;->a(Ljava/lang/Integer;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/com/topaz/l/i0;->b(Ljava/lang/Integer;)V

    goto :goto_1

    :goto_2
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_2
    return-object v2

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/m0/e;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "163"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public f()Ljava/lang/Integer;
    .locals 3

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lbr/com/topaz/m0/e;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/m0/e;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "160"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public f(Landroid/telephony/CellIdentityGsm;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public f(Landroid/telephony/CellIdentityLte;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public f(Landroid/telephony/CellIdentityWcdma;)Ljava/lang/Integer;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/CellIdentityWcdma;->getUarfcn()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "mUuid"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public f(Landroid/telephony/CellInfo;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result p1

    return p1
.end method

.method public g()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lbr/com/topaz/m0/e;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lbr/com/topaz/m0/e;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v3, "155"

    invoke-virtual {v2, v1, v3}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    return-object v0

    :cond_0
    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lbr/com/topaz/m0/e;->a:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lbr/com/topaz/m0/e;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    iget-object v1, p0, Lbr/com/topaz/m0/e;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lbr/com/topaz/m0/e;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v3, "147"

    invoke-virtual {v2, v1, v3}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/m0/e;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/m0/e;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "150"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/m0/e;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/m0/e;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "149"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lbr/com/topaz/m0/e;->a:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbr/com/topaz/m0/e;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lbr/com/topaz/m0/e;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lbr/com/topaz/m0/e;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v3, "148"

    invoke-virtual {v2, v1, v3}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v0
.end method

.method public l()Z
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/m0/e;->d:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/m0/e;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/m0/e;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "144"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/m0/e;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/m0/e;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "146"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 3

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lbr/com/topaz/m0/e;->a:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v2}, Lbr/com/topaz/m0/e;->d(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0, v2}, Lbr/com/topaz/m0/e;->d(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_1
    return-object v2

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/m0/e;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "164"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public p()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbr/com/topaz/l/f;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lbr/com/topaz/m0/e;->a:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbr/com/topaz/m0/e;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lbr/com/topaz/m0/e;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/m0/e;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lbr/com/topaz/m0/e;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/m0/e;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "161"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/m0/e;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/m0/e;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "143"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method
