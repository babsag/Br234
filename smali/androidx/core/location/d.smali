.class public final synthetic Landroidx/core/location/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/core/location/LocationManagerCompat$i;

.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$i;Ljava/util/concurrent/Executor;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/d;->a:Landroidx/core/location/LocationManagerCompat$i;

    iput-object p2, p0, Landroidx/core/location/d;->b:Ljava/util/concurrent/Executor;

    iput p3, p0, Landroidx/core/location/d;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/core/location/d;->a:Landroidx/core/location/LocationManagerCompat$i;

    iget-object v1, p0, Landroidx/core/location/d;->b:Ljava/util/concurrent/Executor;

    iget v2, p0, Landroidx/core/location/d;->c:I

    invoke-virtual {v0, v1, v2}, Landroidx/core/location/LocationManagerCompat$i;->f(Ljava/util/concurrent/Executor;I)V

    return-void
.end method
