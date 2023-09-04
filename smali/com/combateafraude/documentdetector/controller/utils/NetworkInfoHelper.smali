.class public Lcom/combateafraude/documentdetector/controller/utils/NetworkInfoHelper;
.super Ljava/lang/Object;
.source "NetworkInfoHelper.java"


# static fields
.field public static final UNAVAILABLE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCapabilities(Landroid/net/NetworkCapabilities;)Lcom/combateafraude/documentdetector/controller/utils/Capabilities;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    new-instance v15, Lcom/combateafraude/documentdetector/controller/utils/Capabilities;

    const/16 v1, 0x14

    .line 2
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    const/16 v2, 0xb

    .line 3
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    const/16 v3, 0x12

    .line 4
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    const/16 v4, 0xf

    .line 5
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    const/16 v5, 0x8

    .line 6
    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    const/4 v6, 0x1

    .line 7
    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    const/16 v7, 0x19

    .line 8
    invoke-virtual {v0, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v7

    const/4 v8, 0x6

    .line 9
    invoke-virtual {v0, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v8

    const/16 v9, 0x9

    .line 10
    invoke-virtual {v0, v9}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v9

    const/high16 v10, -0x80000000

    .line 11
    invoke-virtual {v0, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v10

    const/16 v11, 0x13

    .line 12
    invoke-virtual {v0, v11}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v11

    const/4 v12, 0x3

    .line 13
    invoke-virtual {v0, v12}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v12

    const/4 v13, 0x7

    .line 14
    invoke-virtual {v0, v13}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v13

    const/4 v14, 0x4

    .line 15
    invoke-virtual {v0, v14}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v14

    move-object v0, v15

    invoke-direct/range {v0 .. v14}, Lcom/combateafraude/documentdetector/controller/utils/Capabilities;-><init>(ZZZZZZZZZZZZZZ)V

    return-object v15
.end method

.method public static getConnectionType(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/net/NetworkInfo;)I
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/net/ConnectivityManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/net/NetworkInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
        to = 0x6L
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "connectivity"

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 2
    :cond_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-lt p0, v0, :cond_6

    if-eqz p1, :cond_c

    .line 3
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 4
    invoke-virtual {p0, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    const/4 v1, 0x2

    goto :goto_5

    .line 5
    :cond_1
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_1
    const/4 v1, 0x1

    goto :goto_5

    .line 6
    :cond_2
    invoke-virtual {p0, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_2
    const/4 v1, 0x3

    goto :goto_5

    .line 7
    :cond_3
    invoke-virtual {p0, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_3
    const/4 v1, 0x4

    goto :goto_5

    .line 8
    :cond_4
    invoke-virtual {p0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_4
    const/4 v1, 0x5

    goto :goto_5

    .line 9
    :cond_5
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 v1, 0x6

    goto :goto_5

    :cond_6
    if-eqz p1, :cond_c

    if-nez p2, :cond_7

    .line 10
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2

    :cond_7
    if-eqz p2, :cond_c

    .line 11
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, v6, :cond_8

    goto :goto_0

    .line 12
    :cond_8
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_1

    .line 13
    :cond_9
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/16 p1, 0x11

    if-ne p0, p1, :cond_a

    goto :goto_2

    .line 14
    :cond_a
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 p1, 0x7

    if-ne p0, p1, :cond_b

    goto :goto_3

    .line 15
    :cond_b
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/16 p1, 0x9

    if-ne p0, p1, :cond_c

    goto :goto_4

    :cond_c
    :goto_5
    return v1
.end method

.method public static getConnectionTypeNameByCode(I)Ljava/lang/String;
    .locals 0
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x6L
        .end annotation
    .end param

    packed-switch p0, :pswitch_data_0

    const-string p0, "undefined"

    return-object p0

    :pswitch_0
    const-string p0, "wifi_aware"

    return-object p0

    :pswitch_1
    const-string p0, "ethernet"

    return-object p0

    :pswitch_2
    const-string p0, "bluetooth"

    return-object p0

    :pswitch_3
    const-string p0, "vpn"

    return-object p0

    :pswitch_4
    const-string p0, "wifi"

    return-object p0

    :pswitch_5
    const-string p0, "cellular"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getNetworkInfo(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;I)Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/NetworkInfoEvent;
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "connectivity"

    .line 1
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const-string v2, ""

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_1

    .line 3
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 4
    invoke-virtual {v6}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    .line 5
    invoke-virtual {v6}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v7

    div-int/lit16 v7, v7, 0x3e8

    const/16 v8, 0x1d

    if-lt v5, v8, :cond_0

    .line 6
    invoke-virtual {v6}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v3

    .line 7
    :cond_0
    invoke-static {v6}, Lcom/combateafraude/documentdetector/controller/utils/NetworkInfoHelper;->getCapabilities(Landroid/net/NetworkCapabilities;)Lcom/combateafraude/documentdetector/controller/utils/Capabilities;

    move-result-object v5

    move/from16 v17, v4

    move v4, v3

    move/from16 v3, v17

    goto :goto_0

    :cond_1
    move-object v5, v4

    const/4 v4, -0x1

    const/4 v7, -0x1

    .line 8
    :goto_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 9
    invoke-static {v0, v1, v6}, Lcom/combateafraude/documentdetector/controller/utils/NetworkInfoHelper;->getConnectionType(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/net/NetworkInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/combateafraude/documentdetector/controller/utils/NetworkInfoHelper;->getConnectionTypeNameByCode(I)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    move-object v13, v0

    move-object v12, v1

    move-object v11, v2

    goto :goto_1

    :cond_2
    move-object v11, v2

    move-object v12, v11

    move-object v13, v12

    :goto_1
    move v9, v3

    move v14, v4

    move-object/from16 v16, v5

    move v10, v7

    goto :goto_2

    :cond_3
    move-object v11, v2

    move-object v12, v11

    move-object v13, v12

    move-object/from16 v16, v4

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v14, -0x1

    .line 12
    :goto_2
    new-instance v0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/NetworkInfoEvent;

    move-object v8, v0

    move/from16 v15, p1

    invoke-direct/range {v8 .. v16}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/NetworkInfoEvent;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/combateafraude/documentdetector/controller/utils/Capabilities;)V

    return-object v0
.end method
