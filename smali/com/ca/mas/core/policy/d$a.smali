.class Lcom/ca/mas/core/policy/d$a;
.super Ljava/lang/Object;
.source "LocationAssertion.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/core/policy/d;->f(Ljava/lang/String;JF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/core/policy/d;


# direct methods
.method constructor <init>(Lcom/ca/mas/core/policy/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/policy/d$a;->a:Lcom/ca/mas/core/policy/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/policy/d$a;->a:Lcom/ca/mas/core/policy/d;

    invoke-static {v0, p1}, Lcom/ca/mas/core/policy/d;->b(Lcom/ca/mas/core/policy/d;Landroid/location/Location;)Landroid/location/Location;

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ca/mas/core/policy/d$a;->a:Lcom/ca/mas/core/policy/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ca/mas/core/policy/d;->b(Lcom/ca/mas/core/policy/d;Landroid/location/Location;)Landroid/location/Location;

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/policy/d$a;->a:Lcom/ca/mas/core/policy/d;

    invoke-static {v0, p1}, Lcom/ca/mas/core/policy/d;->c(Lcom/ca/mas/core/policy/d;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ca/mas/core/policy/d;->b(Lcom/ca/mas/core/policy/d;Landroid/location/Location;)Landroid/location/Location;

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/policy/d$a;->a:Lcom/ca/mas/core/policy/d;

    invoke-static {v0}, Lcom/ca/mas/core/policy/d;->a(Lcom/ca/mas/core/policy/d;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 4
    new-instance v2, Lcom/ca/mas/core/policy/d$a$a;

    invoke-direct {v2, p0, p1, v1}, Lcom/ca/mas/core/policy/d$a$a;-><init>(Lcom/ca/mas/core/policy/d$a;Ljava/lang/String;Ljava/util/Timer;)V

    const-wide/16 v3, 0xbb8

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
