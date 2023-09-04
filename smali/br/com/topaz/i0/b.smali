.class public Lbr/com/topaz/i0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private a:Lbr/com/topaz/heartbeat/sensors/d;


# direct methods
.method public constructor <init>(Lbr/com/topaz/heartbeat/sensors/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/i0/b;->a:Lbr/com/topaz/heartbeat/sensors/d;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/i0/b;->a:Lbr/com/topaz/heartbeat/sensors/d;

    invoke-virtual {v0, p1}, Lbr/com/topaz/heartbeat/sensors/d;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/i0/b;->a:Lbr/com/topaz/heartbeat/sensors/d;

    invoke-virtual {v0, p1}, Lbr/com/topaz/heartbeat/sensors/d;->a(Landroid/hardware/SensorEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
