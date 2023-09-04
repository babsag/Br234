.class public Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;
.super Ljava/lang/Object;
.source "SensorHelper.java"


# instance fields
.field private a:Landroid/hardware/SensorManager;

.field private b:Z

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/combateafraude/documentdetector/controller/sensors/SensorRequest;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/combateafraude/documentdetector/controller/sensors/SensorInstance;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/Object;

.field private h:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/combateafraude/documentdetector/input/SensorLuminositySettings;Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;Lcom/combateafraude/documentdetector/input/SensorStabilitySettings;Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Lcom/combateafraude/documentdetector/input/DocumentDetector;)V
    .locals 23
    .param p2    # Lcom/combateafraude/documentdetector/input/SensorLuminositySettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/combateafraude/documentdetector/input/SensorStabilitySettings;
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

    iput-object v2, v0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->g:Ljava/lang/Object;

    .line 3
    new-instance v2, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper$a;

    invoke-direct {v2, v0}, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper$a;-><init>(Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;)V

    iput-object v2, v0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->h:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->b:Z

    .line 5
    sget v3, Lcom/combateafraude/documentdetector/R$string;->sensor_still_starting:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->d:Ljava/lang/String;

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->c:Ljava/util/ArrayList;

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->f:Ljava/util/ArrayList;

    .line 8
    sget-object v12, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;->SENSOR_STABILITY_FAILURE:Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    iput-object v12, v0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->e:Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    .line 9
    iget-object v4, v0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->c:Ljava/util/ArrayList;

    new-instance v5, Lcom/combateafraude/documentdetector/controller/sensors/SensorRequest;

    new-array v6, v3, [Lcom/combateafraude/documentdetector/controller/sensors/SensorValidator;

    new-instance v7, Lcom/combateafraude/documentdetector/controller/sensors/SensorValidator;

    sget-object v14, Lcom/combateafraude/documentdetector/controller/sensors/SensorValidatorType;->ABSOLUTE_VALUE:Lcom/combateafraude/documentdetector/controller/sensors/SensorValidatorType;

    invoke-virtual/range {p6 .. p6}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/combateafraude/documentdetector/input/MessageSettings;->getSensorLuminosityMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v15

    new-array v8, v3, [D

    invoke-virtual/range {p2 .. p2}, Lcom/combateafraude/documentdetector/input/SensorLuminositySettings;->getLuminosityThreshold()I

    move-result v9

    int-to-double v9, v9

    aput-wide v9, v8, v2

    new-array v9, v3, [D

    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    aput-wide v10, v9, v2

    new-array v10, v3, [Z

    aput-boolean v2, v10, v2

    sget-object v21, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;->SENSOR_LUMINOSITY_FAILURE:Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    const/16 v18, 0x1

    const/16 v20, 0x0

    move-object v13, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v19, v10

    invoke-direct/range {v13 .. v21}, Lcom/combateafraude/documentdetector/controller/sensors/SensorValidator;-><init>(Lcom/combateafraude/documentdetector/controller/sensors/SensorValidatorType;Ljava/lang/String;[D[DI[ZLjava/lang/Long;Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;)V

    aput-object v7, v6, v2

    const/4 v7, 0x5

    invoke-direct {v5, v7, v6}, Lcom/combateafraude/documentdetector/controller/sensors/SensorRequest;-><init>(I[Lcom/combateafraude/documentdetector/controller/sensors/SensorValidator;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-nez p3, :cond_1

    if-eqz p4, :cond_4

    .line 10
    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x3

    if-eqz p3, :cond_2

    .line 11
    new-instance v5, Lcom/combateafraude/documentdetector/controller/sensors/SensorValidator;

    sget-object v15, Lcom/combateafraude/documentdetector/controller/sensors/SensorValidatorType;->ABSOLUTE_VALUE:Lcom/combateafraude/documentdetector/controller/sensors/SensorValidatorType;

    invoke-virtual/range {p6 .. p6}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/combateafraude/documentdetector/input/MessageSettings;->geSensorOrientationMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v16

    new-array v6, v4, [D

    invoke-virtual/range {p3 .. p3}, Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;->getOrientationThreshold()D

    move-result-wide v7

    neg-double v7, v7

    aput-wide v7, v6, v2

    invoke-virtual/range {p3 .. p3}, Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;->getOrientationThreshold()D

    move-result-wide v7

    neg-double v7, v7

    aput-wide v7, v6, v3

    invoke-virtual/range {p3 .. p3}, Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;->getOrientationThreshold()D

    move-result-wide v7

    const-wide v9, 0x40239eb851eb851fL    # 9.81

    sub-double v7, v9, v7

    const/4 v11, 0x2

    aput-wide v7, v6, v11

    new-array v7, v4, [D

    invoke-virtual/range {p3 .. p3}, Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;->getOrientationThreshold()D

    move-result-wide v17

    aput-wide v17, v7, v2

    invoke-virtual/range {p3 .. p3}, Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;->getOrientationThreshold()D

    move-result-wide v17

    aput-wide v17, v7, v3

    invoke-virtual/range {p3 .. p3}, Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;->getOrientationThreshold()D

    move-result-wide v17

    add-double v17, v17, v9

    aput-wide v17, v7, v11

    new-array v8, v4, [Z

    fill-array-data v8, :array_0

    sget-object v22, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;->SENSOR_ORIENTATION_FAILURE:Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    const/16 v19, 0x3

    const/16 v21, 0x0

    move-object v14, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    invoke-direct/range {v14 .. v22}, Lcom/combateafraude/documentdetector/controller/sensors/SensorValidator;-><init>(Lcom/combateafraude/documentdetector/controller/sensors/SensorValidatorType;Ljava/lang/String;[D[DI[ZLjava/lang/Long;Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;)V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p4, :cond_3

    .line 12
    new-instance v14, Lcom/combateafraude/documentdetector/controller/sensors/SensorValidator;

    sget-object v5, Lcom/combateafraude/documentdetector/controller/sensors/SensorValidatorType;->LAST_TWO_COMPARISON:Lcom/combateafraude/documentdetector/controller/sensors/SensorValidatorType;

    invoke-virtual/range {p6 .. p6}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/combateafraude/documentdetector/input/MessageSettings;->getSensorStabilityMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [D

    const-wide/16 v8, 0x0

    aput-wide v8, v7, v2

    new-array v8, v3, [D

    invoke-virtual/range {p4 .. p4}, Lcom/combateafraude/documentdetector/input/SensorStabilitySettings;->getStabilityThreshold()D

    move-result-wide v9

    aput-wide v9, v8, v2

    new-array v10, v4, [Z

    fill-array-data v10, :array_1

    invoke-virtual/range {p4 .. p4}, Lcom/combateafraude/documentdetector/input/SensorStabilitySettings;->getStabilityStabledMillis()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v9, 0x3

    move-object v4, v14

    invoke-direct/range {v4 .. v12}, Lcom/combateafraude/documentdetector/controller/sensors/SensorValidator;-><init>(Lcom/combateafraude/documentdetector/controller/sensors/SensorValidatorType;Ljava/lang/String;[D[DI[ZLjava/lang/Long;Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_3
    iget-object v1, v0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->c:Ljava/util/ArrayList;

    new-instance v4, Lcom/combateafraude/documentdetector/controller/sensors/SensorRequest;

    new-array v2, v2, [Lcom/combateafraude/documentdetector/controller/sensors/SensorValidator;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/combateafraude/documentdetector/controller/sensors/SensorValidator;

    invoke-direct {v4, v3, v2}, Lcom/combateafraude/documentdetector/controller/sensors/SensorRequest;-><init>(I[Lcom/combateafraude/documentdetector/controller/sensors/SensorValidator;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->f:Ljava/util/ArrayList;

    const-string v1, "sensor"

    move-object/from16 v2, p1

    .line 15
    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, v0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->a:Landroid/hardware/SensorManager;

    .line 16
    invoke-direct/range {p0 .. p0}, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->e()V

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

.method static a(Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;I)Lcom/combateafraude/documentdetector/controller/sensors/SensorInstance;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/combateafraude/documentdetector/controller/sensors/SensorInstance;

    .line 2
    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/controller/sensors/SensorInstance;->getSensor()Landroid/hardware/Sensor;

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

.method static synthetic b(Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;)Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->e:Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    return-object p1
.end method

.method static synthetic c(Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->g:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->d:Ljava/lang/String;

    return-object p1
.end method

.method private e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/combateafraude/documentdetector/controller/sensors/SensorRequest;

    .line 2
    iget-object v2, p0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/controller/sensors/SensorRequest;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v3, p0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->f:Ljava/util/ArrayList;

    new-instance v4, Lcom/combateafraude/documentdetector/controller/sensors/SensorInstance;

    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/controller/sensors/SensorRequest;->b()[Lcom/combateafraude/documentdetector/controller/sensors/SensorValidator;

    move-result-object v1

    invoke-direct {v4, v2, v1}, Lcom/combateafraude/documentdetector/controller/sensors/SensorInstance;-><init>(Landroid/hardware/Sensor;[Lcom/combateafraude/documentdetector/controller/sensors/SensorValidator;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->a:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->h:Landroid/hardware/SensorEventListener;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->b:Z

    :cond_2
    return-void
.end method

.method static synthetic f(Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->b:Z

    return p1
.end method

.method static synthetic g(Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->f:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public getInvalidMessage()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->d:Ljava/lang/String;

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

.method public getValidationFailure()Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->e:Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

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

.method public isValid()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->b:Z

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->h:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method
