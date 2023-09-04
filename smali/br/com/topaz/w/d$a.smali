.class Lbr/com/topaz/w/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/w/d;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/w/d;


# direct methods
.method constructor <init>(Lbr/com/topaz/w/d;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/w/d$a;->a:Lbr/com/topaz/w/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/w/d$a;->a:Lbr/com/topaz/w/d;

    invoke-static {v0}, Lbr/com/topaz/w/d;->a(Lbr/com/topaz/w/d;)Lbr/com/topaz/w/f;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/w/f;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lbr/com/topaz/w/d$a;->a:Lbr/com/topaz/w/d;

    invoke-static {v1}, Lbr/com/topaz/w/d;->b(Lbr/com/topaz/w/d;)Lbr/com/topaz/w/e;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/w/e;->d()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v0, Lbr/com/topaz/w/b;

    invoke-direct {v0}, Lbr/com/topaz/w/b;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/w/b;->b(J)V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/w/b;->e(D)V

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/w/b;->f(D)V

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/w/b;->b(D)V

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/w/b;->a(D)V

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/w/b;->c(D)V

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/w/b;->g(D)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/w/b;->i(D)V

    invoke-virtual {p1}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/w/b;->d(D)V

    invoke-virtual {p1}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/w/b;->h(D)V

    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/w/b;->c(J)V

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/w/b;->a(J)V

    iget-object p1, p0, Lbr/com/topaz/w/d$a;->a:Lbr/com/topaz/w/d;

    invoke-static {p1}, Lbr/com/topaz/w/d;->a(Lbr/com/topaz/w/d;)Lbr/com/topaz/w/f;

    move-result-object p1

    invoke-virtual {p1}, Lbr/com/topaz/w/f;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lbr/com/topaz/w/d$a;->a:Lbr/com/topaz/w/d;

    invoke-virtual {p1}, Lbr/com/topaz/w/d;->d()V

    :goto_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
