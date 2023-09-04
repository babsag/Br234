.class public final Lcaf/io/b$a;
.super Ljava/lang/Object;
.source "Analytics.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcaf/io/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcaf/io/b$a;-><init>()V

    return-void
.end method

.method private static final b(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V
    .locals 20

    .line 1
    new-instance v0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/ContextOtherInfo;

    invoke-direct {v0}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/ContextOtherInfo;-><init>()V

    .line 2
    invoke-static {}, Lcaf/io/b;->a()Lcaf/io/b;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcaf/io/b;->b(Lcaf/io/b;)Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 3
    :goto_0
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/ContextOtherInfo;->setAppPackageName(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcaf/io/b;->a()Lcaf/io/b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcaf/io/b;->b(Lcaf/io/b;)Landroid/content/Context;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const-string v3, "power"

    .line 6
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 8
    :goto_2
    invoke-virtual {v0, v1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/ContextOtherInfo;->setPowerSaveMode(Ljava/lang/Boolean;)V

    .line 9
    new-instance v1, Lcom/scottyab/rootbeer/RootBeer;

    invoke-static {}, Lcaf/io/b;->a()Lcaf/io/b;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3}, Lcaf/io/b;->b(Lcaf/io/b;)Landroid/content/Context;

    move-result-object v3

    goto :goto_3

    :cond_3
    move-object v3, v2

    :goto_3
    invoke-direct {v1, v3}, Lcom/scottyab/rootbeer/RootBeer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/scottyab/rootbeer/RootBeer;->isRooted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/ContextOtherInfo;->setRooted(Z)V

    .line 10
    invoke-static {}, Lcaf/io/b;->a()Lcaf/io/b;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    invoke-static {v1}, Lcaf/io/b;->d(Lcaf/io/b;)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_1f

    .line 11
    invoke-static {}, Lcaf/io/b;->a()Lcaf/io/b;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v1}, Lcaf/io/b;->b(Lcaf/io/b;)Landroid/content/Context;

    move-result-object v1

    goto :goto_5

    :cond_5
    move-object v1, v2

    .line 12
    :goto_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 14
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v6, v6, 0x81

    if-gtz v6, :cond_6

    .line 15
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    new-array v1, v3, [Ljava/lang/String;

    .line 16
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v4, "getAll(\n                \u2026                        )"

    .line 17
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, v1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/ContextOtherInfo;->setInstalledApps([Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcaf/io/b;->a()Lcaf/io/b;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {v1}, Lcaf/io/b;->b(Lcaf/io/b;)Landroid/content/Context;

    move-result-object v1

    goto :goto_7

    :cond_8
    move-object v1, v2

    :goto_7
    const-string v4, "phone"

    .line 20
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 21
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v5

    .line 22
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x3

    if-nez v6, :cond_9

    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v9, v6

    goto :goto_8

    :cond_9
    move-object v9, v2

    .line 23
    :goto_8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v10, v5

    goto :goto_9

    :cond_a
    move-object v10, v2

    :goto_9
    const/4 v11, 0x0

    .line 24
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v12

    .line 25
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    .line 26
    invoke-static {v1, v6}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v4

    goto :goto_a

    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_a
    if-eqz v4, :cond_1d

    .line 27
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/CellInfo;

    .line 28
    instance-of v7, v6, Landroid/telephony/CellInfoGsm;

    const/16 v8, 0x1c

    if-eqz v7, :cond_12

    .line 29
    check-cast v6, Landroid/telephony/CellInfoGsm;

    .line 30
    invoke-virtual {v6}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v14

    .line 31
    invoke-virtual {v6}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v15

    .line 32
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v8, :cond_e

    .line 33
    invoke-virtual {v6}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/CellIdentityGsm;->getMccString()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_d

    .line 34
    invoke-virtual {v6}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/CellIdentityGsm;->getMccString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_c

    :cond_d
    move-object/from16 v16, v2

    goto :goto_d

    .line 35
    :cond_e
    invoke-virtual {v6}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    :goto_c
    move-object/from16 v16, v13

    :goto_d
    if-lt v7, v8, :cond_10

    .line 36
    invoke-virtual {v6}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/CellIdentityGsm;->getMncString()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 37
    invoke-virtual {v6}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/CellIdentityGsm;->getMncString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_e

    :cond_f
    move-object/from16 v17, v2

    goto :goto_f

    .line 38
    :cond_10
    invoke-virtual {v6}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_e
    move-object/from16 v17, v8

    .line 39
    :goto_f
    invoke-virtual {v6}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v18

    const/16 v8, 0x1a

    if-lt v7, v8, :cond_11

    .line 40
    invoke-virtual {v6}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellSignalStrengthGsm;->getTimingAdvance()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v19, v6

    goto :goto_10

    :cond_11
    move-object/from16 v19, v2

    .line 41
    :goto_10
    new-instance v6, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/location/CellTower;

    move-object v13, v6

    invoke-direct/range {v13 .. v19}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/location/CellTower;-><init>(IILjava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Integer;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 42
    :cond_12
    instance-of v7, v6, Landroid/telephony/CellInfoCdma;

    if-eqz v7, :cond_13

    .line 43
    check-cast v6, Landroid/telephony/CellInfoCdma;

    .line 44
    invoke-virtual {v6}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v14

    .line 45
    invoke-virtual {v6}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v15

    .line 46
    invoke-virtual {v6}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v7

    .line 47
    invoke-virtual {v6}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellSignalStrengthCdma;->getDbm()I

    move-result v18

    .line 48
    new-instance v6, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/location/CellTower;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object v13, v6

    invoke-direct/range {v13 .. v19}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/location/CellTower;-><init>(IILjava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Integer;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 49
    :cond_13
    instance-of v7, v6, Landroid/telephony/CellInfoWcdma;

    if-eqz v7, :cond_18

    .line 50
    check-cast v6, Landroid/telephony/CellInfoWcdma;

    .line 51
    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v14

    .line 52
    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v15

    .line 53
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v8, :cond_15

    .line 54
    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/CellIdentityWcdma;->getMccString()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_14

    .line 55
    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/CellIdentityWcdma;->getMccString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_11

    :cond_14
    move-object/from16 v16, v2

    goto :goto_12

    .line 56
    :cond_15
    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    :goto_11
    move-object/from16 v16, v13

    :goto_12
    if-lt v7, v8, :cond_17

    .line 57
    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getMncString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_16

    .line 58
    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getMncString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_13

    :cond_16
    move-object/from16 v17, v2

    goto :goto_14

    .line 59
    :cond_17
    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_13
    move-object/from16 v17, v7

    .line 60
    :goto_14
    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v18

    .line 61
    new-instance v6, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/location/CellTower;

    const/16 v19, 0x0

    move-object v13, v6

    invoke-direct/range {v13 .. v19}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/location/CellTower;-><init>(IILjava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Integer;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 62
    :cond_18
    instance-of v7, v6, Landroid/telephony/CellInfoLte;

    if-eqz v7, :cond_c

    .line 63
    check-cast v6, Landroid/telephony/CellInfoLte;

    .line 64
    invoke-virtual {v6}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v14

    .line 65
    invoke-virtual {v6}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v15

    .line 66
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v8, :cond_1a

    .line 67
    invoke-virtual {v6}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/CellIdentityLte;->getMccString()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_19

    .line 68
    invoke-virtual {v6}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/CellIdentityLte;->getMccString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_15

    :cond_19
    move-object/from16 v16, v2

    goto :goto_16

    .line 69
    :cond_1a
    invoke-virtual {v6}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    :goto_15
    move-object/from16 v16, v13

    :goto_16
    if-lt v7, v8, :cond_1c

    .line 70
    invoke-virtual {v6}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getMncString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1b

    .line 71
    invoke-virtual {v6}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getMncString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_17

    :cond_1b
    move-object/from16 v17, v2

    goto :goto_18

    .line 72
    :cond_1c
    invoke-virtual {v6}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_17
    move-object/from16 v17, v7

    .line 73
    :goto_18
    invoke-virtual {v6}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v18

    .line 74
    invoke-virtual {v6}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellSignalStrengthLte;->getTimingAdvance()I

    move-result v6

    .line 75
    new-instance v7, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/location/CellTower;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object v13, v7

    invoke-direct/range {v13 .. v19}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/location/CellTower;-><init>(IILjava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Integer;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 76
    :cond_1d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v6, "wifi"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1e

    .line 78
    :try_start_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 79
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    .line 80
    new-instance v7, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/location/WifiAccessPoint;

    iget-object v8, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget v6, v6, Landroid/net/wifi/ScanResult;->level:I

    invoke-direct {v7, v8, v6, v2, v2}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/location/WifiAccessPoint;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_19

    .line 81
    :catch_0
    :cond_1e
    new-instance v1, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/location/LocationInfo;

    new-array v6, v3, [Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/location/CellTower;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, [Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/location/CellTower;

    new-array v5, v3, [Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/location/WifiAccessPoint;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, [Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/location/WifiAccessPoint;

    const-string v13, "true"

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/location/LocationInfo;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/location/CellTower;[Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/location/WifiAccessPoint;)V

    .line 82
    invoke-virtual {v0, v1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/ContextOtherInfo;->setLocationInfo(Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/location/LocationInfo;)V

    .line 83
    :cond_1f
    new-instance v1, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/TrackingIdParam;

    invoke-direct {v1, v0}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/TrackingIdParam;-><init>(Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/ContextOtherInfo;)V

    .line 84
    :try_start_1
    invoke-static {}, Lcaf/io/b;->a()Lcaf/io/b;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-static {v0}, Lcaf/io/b;->a(Lcaf/io/b;)Lcaf/io/c$a;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-interface {v0, v1}, Lcaf/io/c$a;->a(Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/TrackingIdParam;)Lretrofit2/Call;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 85
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    goto :goto_1a

    :cond_20
    move-object v0, v2

    :goto_1a
    const-string v1, "tracking_id"

    if-eqz v0, :cond_21

    .line 86
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/TrackingIdResponse;

    if-eqz v4, :cond_21

    invoke-virtual {v4}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/TrackingIdResponse;->getTrackingId()Ljava/lang/String;

    move-result-object v4

    goto :goto_1b

    :cond_21
    move-object v4, v2

    .line 87
    :goto_1b
    invoke-static {}, Lcaf/io/b;->a()Lcaf/io/b;

    move-result-object v5

    if-eqz v5, :cond_22

    invoke-static {v5}, Lcaf/io/b;->b(Lcaf/io/b;)Landroid/content/Context;

    move-result-object v5

    goto :goto_1c

    :cond_22
    move-object v5, v2

    .line 88
    :goto_1c
    sget v6, Lcaf/io/M;->a:I

    const-wide v6, -0x523da67cb6L

    .line 89
    invoke-static {v6, v7}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 90
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 91
    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 92
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v0, :cond_24

    .line 93
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/TrackingIdResponse;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/TrackingIdResponse;->getTrackingId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 94
    new-instance v1, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/EventParam;

    .line 95
    invoke-static {}, Lcaf/io/b;->a()Lcaf/io/b;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-static {v3}, Lcaf/io/b;->c(Lcaf/io/b;)Ljava/lang/String;

    move-result-object v2

    :cond_23
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 96
    invoke-direct {v1, v2, v3, v4}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/EventParam;-><init>(Ljava/lang/String;Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 97
    invoke-static {}, Lcaf/io/b;->a()Lcaf/io/b;

    move-result-object v2

    if-eqz v2, :cond_24

    invoke-static {v2}, Lcaf/io/b;->a(Lcaf/io/b;)Lcaf/io/c$a;

    move-result-object v2

    if-eqz v2, :cond_24

    invoke-interface {v2, v0, v1}, Lcaf/io/c$a;->a(Ljava/lang/String;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/EventParam;)Lretrofit2/Call;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 98
    new-instance v1, Lcaf/io/a;

    invoke-direct {v1}, Lcaf/io/a;-><init>()V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1d

    :catch_1
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_24
    :goto_1d
    return-void
.end method

.method public static synthetic c(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcaf/io/b$a;->b(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 12
    invoke-static {}, Lcaf/io/b;->a()Lcaf/io/b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    .line 13
    :cond_0
    invoke-static {}, Lcaf/io/b;->a()Lcaf/io/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcaf/io/b;->b(Lcaf/io/b;)Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 14
    :goto_0
    sget v2, Lcaf/io/M;->a:I

    const-wide v2, -0x903da67cb6L

    .line 15
    invoke-static {v2, v3}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "tracking_id"

    .line 16
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public final a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V
    .locals 3
    .param p1    # Lcaf/io/t;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcaf/io/b;->a()Lcaf/io/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcaf/io/b$a;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/Thread;

    .line 4
    new-instance v1, Lcaf/io/b1;

    invoke-direct {v1, p1, p2}, Lcaf/io/b1;-><init>(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 7
    :cond_1
    new-instance v1, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/EventParam;

    .line 8
    invoke-static {}, Lcaf/io/b;->a()Lcaf/io/b;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcaf/io/b;->c(Lcaf/io/b;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 9
    :goto_0
    invoke-direct {v1, v2, p1, p2}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/EventParam;-><init>(Ljava/lang/String;Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 10
    invoke-static {}, Lcaf/io/b;->a()Lcaf/io/b;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1}, Lcaf/io/b;->a(Lcaf/io/b;)Lcaf/io/c$a;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1, v0, v1}, Lcaf/io/c$a;->a(Ljava/lang/String;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/EventParam;)Lretrofit2/Call;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11
    new-instance p2, Lcaf/io/a;

    invoke-direct {p2}, Lcaf/io/a;-><init>()V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_3
    :goto_1
    return-void
.end method
