.class public Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;
.super Ljava/lang/Object;
.source "SensorHelper.java"


# instance fields
.field private a:Landroid/hardware/SensorManager;

.field private b:Z

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/combateafraude/faceauthenticator/controller/sensors/SensorRequest;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/combateafraude/faceauthenticator/controller/sensors/SensorInstance;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Object;

.field private g:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/combateafraude/faceauthenticator/input/SensorStabilitySettings;Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;)V
    .locals 18
    .param p2    # Lcom/combateafraude/faceauthenticator/input/SensorStabilitySettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->f:Ljava/lang/Object;

    .line 3
    new-instance v2, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper$a;

    invoke-direct {v2, v0}, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper$a;-><init>(Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;)V

    iput-object v2, v0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->g:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->b:Z

    .line 5
    sget v3, Lcom/combateafraude/faceauthenticator/R$string;->sensor_still_starting_caf:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->d:Ljava/lang/String;

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->c:Ljava/util/ArrayList;

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->e:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    .line 8
    iget-object v3, v0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->c:Ljava/util/ArrayList;

    new-instance v4, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorRequest;

    const/4 v5, 0x1

    new-array v6, v5, [Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;

    new-instance v15, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;

    sget-object v8, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;->LAST_TWO_COMPARISON:Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;

    invoke-virtual/range {p4 .. p4}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getMessageSettings()Lcom/combateafraude/faceauthenticator/input/MessageSettings;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->getSensorStabilityMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v5, [D

    const-wide/16 v11, 0x0

    aput-wide v11, v10, v2

    new-array v11, v5, [D

    invoke-virtual/range {p2 .. p2}, Lcom/combateafraude/faceauthenticator/input/SensorStabilitySettings;->getStabilityThreshold()D

    move-result-wide v12

    aput-wide v12, v11, v2

    const/4 v1, 0x3

    new-array v13, v1, [Z

    fill-array-data v13, :array_0

    invoke-virtual/range {p2 .. p2}, Lcom/combateafraude/faceauthenticator/input/SensorStabilitySettings;->getStabilityStabledMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v12, 0x3

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;-><init>(Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;Ljava/lang/String;[D[DI[ZLjava/lang/Long;)V

    aput-object v15, v6, v2

    invoke-direct {v4, v5, v6}, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorRequest;-><init>(I[Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->e:Ljava/util/ArrayList;

    const-string v1, "sensor"

    move-object/from16 v2, p1

    .line 10
    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, v0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->a:Landroid/hardware/SensorManager;

    .line 11
    invoke-direct/range {p0 .. p0}, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->d()V

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method static a(Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;I)Lcom/combateafraude/faceauthenticator/controller/sensors/SensorInstance;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorInstance;

    .line 2
    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorInstance;->getSensor()Landroid/hardware/Sensor;

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

.method static synthetic b(Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->f:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->d:Ljava/lang/String;

    return-object p1
.end method

.method private d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorRequest;

    .line 2
    iget-object v2, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorRequest;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v3, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->e:Ljava/util/ArrayList;

    new-instance v4, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorInstance;

    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorRequest;->b()[Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;

    move-result-object v1

    invoke-direct {v4, v2, v1}, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorInstance;-><init>(Landroid/hardware/Sensor;[Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->a:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->g:Landroid/hardware/SensorEventListener;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->b:Z

    :cond_2
    return-void
.end method

.method static synthetic e(Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->b:Z

    return p1
.end method

.method static synthetic f(Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->e:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public getInvalidMessage()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->d:Ljava/lang/String;

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
    iget-boolean v0, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->b:Z

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->g:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method
