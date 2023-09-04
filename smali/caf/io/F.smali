.class public Lcaf/io/F;
.super Ljava/lang/Object;
.source "NetworkInfoHelper.java"


# direct methods
.method public static a(Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;I)Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/NetworkInfoEvent;
    .locals 33

    const-wide v0, -0x21e13da67cb6L

    .line 1
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x21e23da67cb6L

    .line 2
    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    const-wide v2, -0x21e33da67cb6L

    .line 3
    invoke-static {v2, v3}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v2

    const-wide v3, -0x21e43da67cb6L

    .line 4
    invoke-static {v3, v4}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p0

    invoke-virtual {v4, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    const/4 v5, 0x0

    if-eqz v3, :cond_e

    .line 5
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v7, 0x7

    const/16 v8, 0x9

    const/4 v9, 0x6

    const/16 v10, 0x17

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x1

    if-lt v6, v10, :cond_1

    .line 6
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 7
    invoke-virtual {v14}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    .line 8
    invoke-virtual {v14}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v15

    div-int/lit16 v15, v15, 0x3e8

    const/16 v4, 0x1d

    if-lt v6, v4, :cond_0

    .line 9
    invoke-virtual {v14}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    .line 10
    :goto_0
    new-instance v31, Lcom/combateafraude/passivefaceliveness/controller/utils/a;

    const/16 v10, 0x14

    .line 11
    invoke-virtual {v14, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v17

    const/16 v10, 0xb

    .line 12
    invoke-virtual {v14, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v18

    const/16 v10, 0x12

    .line 13
    invoke-virtual {v14, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v19

    const/16 v10, 0xf

    .line 14
    invoke-virtual {v14, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v20

    const/16 v10, 0x8

    .line 15
    invoke-virtual {v14, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v21

    .line 16
    invoke-virtual {v14, v13}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v22

    const/16 v10, 0x19

    .line 17
    invoke-virtual {v14, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v23

    .line 18
    invoke-virtual {v14, v9}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v24

    .line 19
    invoke-virtual {v14, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v25

    const/high16 v10, -0x80000000

    .line 20
    invoke-virtual {v14, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v26

    const/16 v10, 0x13

    .line 21
    invoke-virtual {v14, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v27

    .line 22
    invoke-virtual {v14, v12}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v28

    .line 23
    invoke-virtual {v14, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v29

    .line 24
    invoke-virtual {v14, v11}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v30

    move-object/from16 v16, v31

    invoke-direct/range {v16 .. v30}, Lcom/combateafraude/passivefaceliveness/controller/utils/a;-><init>(ZZZZZZZZZZZZZZ)V

    move/from16 v32, v5

    move v5, v4

    move/from16 v4, v32

    goto :goto_1

    :cond_1
    move-object/from16 v31, v5

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v15, -0x1

    .line 25
    :goto_1
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    if-eqz v10, :cond_d

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v14, 0x17

    if-lt v6, v14, :cond_7

    .line 26
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 27
    invoke-virtual {v3, v13}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    .line 28
    :cond_2
    invoke-virtual {v3, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    .line 29
    :cond_3
    invoke-virtual {v3, v11}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_4

    .line 30
    :cond_4
    invoke-virtual {v3, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    .line 31
    :cond_5
    invoke-virtual {v3, v12}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_6

    .line 32
    :cond_6
    invoke-virtual {v3, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_7

    .line 33
    :cond_7
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v13, :cond_8

    :goto_2
    const/4 v9, 0x2

    goto :goto_7

    .line 34
    :cond_8
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_9

    :goto_3
    const/4 v9, 0x1

    goto :goto_7

    .line 35
    :cond_9
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/16 v3, 0x11

    if-ne v1, v3, :cond_a

    :goto_4
    const/4 v9, 0x3

    goto :goto_7

    .line 36
    :cond_a
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v7, :cond_b

    :goto_5
    const/4 v9, 0x4

    goto :goto_7

    .line 37
    :cond_b
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v8, :cond_c

    :goto_6
    const/4 v9, 0x5

    goto :goto_7

    :cond_c
    const/4 v9, 0x0

    :goto_7
    packed-switch v9, :pswitch_data_0

    const-wide v0, -0x222e3da67cb6L

    .line 38
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :pswitch_0
    const-wide v0, -0x22233da67cb6L

    .line 39
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :pswitch_1
    const-wide v0, -0x221a3da67cb6L

    .line 40
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :pswitch_2
    const-wide v0, -0x22103da67cb6L

    .line 41
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :pswitch_3
    const-wide v0, -0x220c3da67cb6L

    .line 42
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :pswitch_4
    const-wide v0, -0x22073da67cb6L

    .line 43
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :pswitch_5
    const-wide v0, -0x21fe3da67cb6L

    .line 44
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 45
    :goto_8
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    :cond_d
    move-object v9, v0

    move-object v11, v1

    move-object v10, v2

    move v7, v4

    move v12, v5

    move v8, v15

    move-object/from16 v14, v31

    goto :goto_9

    :cond_e
    move-object v9, v0

    move-object v11, v1

    move-object v10, v2

    move-object v14, v5

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v12, -0x1

    .line 47
    :goto_9
    new-instance v0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/NetworkInfoEvent;

    move-object v6, v0

    move/from16 v13, p1

    invoke-direct/range {v6 .. v14}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/NetworkInfoEvent;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/combateafraude/passivefaceliveness/controller/utils/a;)V

    return-object v0

    nop

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
