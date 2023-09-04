.class public Lcaf/io/T;
.super Ljava/lang/Object;
.source "SensorHelper.java"


# instance fields
.field private final a:Landroid/hardware/SensorManager;

.field private b:Z

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcaf/io/V;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lcaf/io/g0;

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcaf/io/U;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/Object;

.field private final h:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;Lcom/combateafraude/passivefaceliveness/input/SensorLuminositySettings;Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;)V
    .locals 24
    .param p2    # Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/combateafraude/passivefaceliveness/input/SensorLuminositySettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcaf/io/T;->g:Ljava/lang/Object;

    .line 3
    new-instance v2, Lcaf/io/T$a;

    invoke-direct {v2, v0}, Lcaf/io/T$a;-><init>(Lcaf/io/T;)V

    iput-object v2, v0, Lcaf/io/T;->h:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v0, Lcaf/io/T;->b:Z

    .line 5
    sget v3, Lcom/combateafraude/passivefaceliveness/R$string;->sensor_still_starting:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcaf/io/T;->d:Ljava/lang/String;

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcaf/io/T;->c:Ljava/util/ArrayList;

    .line 7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcaf/io/T;->f:Ljava/util/ArrayList;

    .line 8
    sget-object v13, Lcaf/io/g0;->c:Lcaf/io/g0;

    iput-object v13, v0, Lcaf/io/T;->e:Lcaf/io/g0;

    const/4 v4, 0x1

    if-nez p4, :cond_0

    if-eqz p2, :cond_3

    .line 9
    :cond_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x3

    if-eqz p4, :cond_1

    .line 10
    new-instance v6, Lcaf/io/W;

    sget-object v16, Lcaf/io/X;->a:Lcaf/io/X;

    invoke-virtual/range {p6 .. p6}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->i()Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->geSensorOrientationMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v17

    new-array v7, v5, [D

    .line 11
    invoke-virtual/range {p4 .. p4}, Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;->getOrientationThreshold()D

    move-result-wide v8

    neg-double v8, v8

    aput-wide v8, v7, v2

    invoke-virtual/range {p4 .. p4}, Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;->getOrientationThreshold()D

    move-result-wide v8

    const-wide v10, 0x40237ae147ae147bL    # 9.74

    sub-double v8, v10, v8

    aput-wide v8, v7, v4

    invoke-virtual/range {p4 .. p4}, Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;->getOrientationThreshold()D

    move-result-wide v8

    neg-double v8, v8

    const/4 v12, 0x2

    aput-wide v8, v7, v12

    new-array v8, v5, [D

    .line 12
    invoke-virtual/range {p4 .. p4}, Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;->getOrientationThreshold()D

    move-result-wide v18

    aput-wide v18, v8, v2

    invoke-virtual/range {p4 .. p4}, Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;->getOrientationThreshold()D

    move-result-wide v18

    add-double v18, v18, v10

    aput-wide v18, v8, v4

    invoke-virtual/range {p4 .. p4}, Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;->getOrientationThreshold()D

    move-result-wide v9

    aput-wide v9, v8, v12

    new-array v9, v5, [Z

    fill-array-data v9, :array_0

    sget-object v23, Lcaf/io/g0;->b:Lcaf/io/g0;

    const/16 v20, 0x3

    const/16 v22, 0x0

    move-object v15, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v21, v9

    invoke-direct/range {v15 .. v23}, Lcaf/io/W;-><init>(Lcaf/io/X;Ljava/lang/String;[D[DI[ZLjava/lang/Long;Lcaf/io/g0;)V

    .line 13
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p2, :cond_2

    .line 14
    new-instance v15, Lcaf/io/W;

    sget-object v6, Lcaf/io/X;->b:Lcaf/io/X;

    invoke-virtual/range {p6 .. p6}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->i()Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->getSensorStabilityMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [D

    const-wide/16 v9, 0x0

    aput-wide v9, v8, v2

    new-array v9, v4, [D

    invoke-virtual/range {p2 .. p2}, Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;->getStabilityThreshold()D

    move-result-wide v10

    aput-wide v10, v9, v2

    new-array v11, v5, [Z

    fill-array-data v11, :array_1

    invoke-virtual/range {p2 .. p2}, Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;->getStabilityStabledMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v10, 0x3

    move-object v5, v15

    invoke-direct/range {v5 .. v13}, Lcaf/io/W;-><init>(Lcaf/io/X;Ljava/lang/String;[D[DI[ZLjava/lang/Long;Lcaf/io/g0;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_2
    new-instance v5, Lcaf/io/V;

    new-array v6, v2, [Lcaf/io/W;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcaf/io/W;

    invoke-direct {v5, v4, v6}, Lcaf/io/V;-><init>(I[Lcaf/io/W;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p3, :cond_4

    .line 16
    new-instance v5, Lcaf/io/V;

    new-array v6, v4, [Lcaf/io/W;

    new-instance v16, Lcaf/io/W;

    sget-object v8, Lcaf/io/X;->a:Lcaf/io/X;

    invoke-virtual/range {p6 .. p6}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->i()Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->getSensorLuminosityMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v4, [D

    invoke-virtual/range {p3 .. p3}, Lcom/combateafraude/passivefaceliveness/input/SensorLuminositySettings;->getLuminosityThreshold()I

    move-result v1

    int-to-double v11, v1

    aput-wide v11, v10, v2

    new-array v11, v4, [D

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    aput-wide v12, v11, v2

    new-array v13, v4, [Z

    aput-boolean v2, v13, v2

    sget-object v15, Lcaf/io/g0;->a:Lcaf/io/g0;

    const/4 v12, 0x1

    const/4 v14, 0x0

    move-object/from16 v7, v16

    invoke-direct/range {v7 .. v15}, Lcaf/io/W;-><init>(Lcaf/io/X;Ljava/lang/String;[D[DI[ZLjava/lang/Long;Lcaf/io/g0;)V

    aput-object v16, v6, v2

    const/4 v1, 0x5

    invoke-direct {v5, v1, v6}, Lcaf/io/V;-><init>(I[Lcaf/io/W;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v1, "sensor"

    move-object/from16 v2, p1

    .line 17
    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, v0, Lcaf/io/T;->a:Landroid/hardware/SensorManager;

    .line 18
    invoke-direct/range {p0 .. p0}, Lcaf/io/T;->e()V

    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method static a(Lcaf/io/T;I)Lcaf/io/U;
    .locals 2

    .line 1
    iget-object p0, p0, Lcaf/io/T;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcaf/io/U;

    .line 2
    invoke-virtual {v0}, Lcaf/io/U;->a()Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static synthetic b(Lcaf/io/T;Lcaf/io/g0;)Lcaf/io/g0;
    .locals 0

    .line 4
    iput-object p1, p0, Lcaf/io/T;->e:Lcaf/io/g0;

    return-object p1
.end method

.method static synthetic c(Lcaf/io/T;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcaf/io/T;->g:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lcaf/io/T;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcaf/io/T;->d:Ljava/lang/String;

    return-object p1
.end method

.method private e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcaf/io/T;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcaf/io/V;

    .line 2
    iget-object v2, p0, Lcaf/io/T;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v1}, Lcaf/io/V;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v3, p0, Lcaf/io/T;->f:Ljava/util/ArrayList;

    new-instance v4, Lcaf/io/U;

    invoke-virtual {v1}, Lcaf/io/V;->b()[Lcaf/io/W;

    move-result-object v1

    invoke-direct {v4, v2, v1}, Lcaf/io/U;-><init>(Landroid/hardware/Sensor;[Lcaf/io/W;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lcaf/io/T;->a:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcaf/io/T;->h:Landroid/hardware/SensorEventListener;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcaf/io/T;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcaf/io/T;->b:Z

    :cond_2
    return-void
.end method

.method static synthetic f(Lcaf/io/T;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcaf/io/T;->b:Z

    return p1
.end method

.method static synthetic g(Lcaf/io/T;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcaf/io/T;->f:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcaf/io/T;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcaf/io/T;->d:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()Lcaf/io/g0;
    .locals 2

    .line 2
    iget-object v0, p0, Lcaf/io/T;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcaf/io/T;->e:Lcaf/io/g0;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcaf/io/T;->b:Z

    return v0
.end method
