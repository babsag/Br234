.class Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper$a;
.super Ljava/lang/Object;
.source "SensorHelper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;


# direct methods
.method constructor <init>(Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper$a;->a:Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper$a;->a:Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;

    invoke-static {v0}, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->b(Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper$a;->a:Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->a(Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;I)Lcom/combateafraude/faceauthenticator/controller/sensors/SensorInstance;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v1, p1}, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorInstance;->validate([F)V

    .line 5
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper$a;->a:Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;

    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->f(Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorInstance;

    .line 6
    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorInstance;->getSensorValidators()[Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 7
    invoke-virtual {v5}, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->c()Z

    move-result v6

    if-nez v6, :cond_2

    .line 8
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper$a;->a:Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;

    invoke-virtual {v5}, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->c(Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper$a;->a:Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;

    invoke-static {p1, v3}, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->e(Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;Z)Z

    .line 10
    monitor-exit v0

    return-void

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper$a;->a:Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->e(Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;Z)Z

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
