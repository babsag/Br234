.class public final synthetic Landroidx/core/location/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/core/location/LocationManagerCompat$i;

.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Landroidx/core/location/GnssStatusCompat;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$i;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/e;->a:Landroidx/core/location/LocationManagerCompat$i;

    iput-object p2, p0, Landroidx/core/location/e;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/core/location/e;->c:Landroidx/core/location/GnssStatusCompat;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/core/location/e;->a:Landroidx/core/location/LocationManagerCompat$i;

    iget-object v1, p0, Landroidx/core/location/e;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/core/location/e;->c:Landroidx/core/location/GnssStatusCompat;

    invoke-virtual {v0, v1, v2}, Landroidx/core/location/LocationManagerCompat$i;->h(Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat;)V

    return-void
.end method
