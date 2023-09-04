.class public Lcom/combateafraude/documentdetector/controller/sensors/SensorInstance;
.super Ljava/lang/Object;
.source "SensorInstance.java"


# instance fields
.field private a:Landroid/hardware/Sensor;

.field private b:[Lcom/combateafraude/documentdetector/controller/sensors/SensorValidator;


# direct methods
.method public constructor <init>(Landroid/hardware/Sensor;[Lcom/combateafraude/documentdetector/controller/sensors/SensorValidator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/sensors/SensorInstance;->a:Landroid/hardware/Sensor;

    .line 3
    iput-object p2, p0, Lcom/combateafraude/documentdetector/controller/sensors/SensorInstance;->b:[Lcom/combateafraude/documentdetector/controller/sensors/SensorValidator;

    return-void
.end method


# virtual methods
.method public getSensor()Landroid/hardware/Sensor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/sensors/SensorInstance;->a:Landroid/hardware/Sensor;

    return-object v0
.end method

.method public getSensorValidators()[Lcom/combateafraude/documentdetector/controller/sensors/SensorValidator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/sensors/SensorInstance;->b:[Lcom/combateafraude/documentdetector/controller/sensors/SensorValidator;

    return-object v0
.end method

.method public validate([F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/sensors/SensorInstance;->b:[Lcom/combateafraude/documentdetector/controller/sensors/SensorValidator;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3, p1}, Lcom/combateafraude/documentdetector/controller/sensors/SensorValidator;->b([F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
