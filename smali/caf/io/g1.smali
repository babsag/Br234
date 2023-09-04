.class public final synthetic Lcaf/io/g1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcaf/io/h;

.field public final synthetic b:Landroidx/camera/core/CameraSelector;


# direct methods
.method public synthetic constructor <init>(Lcaf/io/h;Landroidx/camera/core/CameraSelector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcaf/io/g1;->a:Lcaf/io/h;

    iput-object p2, p0, Lcaf/io/g1;->b:Landroidx/camera/core/CameraSelector;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcaf/io/g1;->a:Lcaf/io/h;

    iget-object v1, p0, Lcaf/io/g1;->b:Landroidx/camera/core/CameraSelector;

    invoke-static {v0, v1}, Lcaf/io/h;->j(Lcaf/io/h;Landroidx/camera/core/CameraSelector;)V

    return-void
.end method
