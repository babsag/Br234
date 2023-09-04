.class public final synthetic Landroidx/camera/camera2/internal/t1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/j3;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;

.field public final synthetic d:Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/j3;Ljava/util/List;Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/t1;->a:Landroidx/camera/camera2/internal/j3;

    iput-object p2, p0, Landroidx/camera/camera2/internal/t1;->b:Ljava/util/List;

    iput-object p3, p0, Landroidx/camera/camera2/internal/t1;->c:Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;

    iput-object p4, p0, Landroidx/camera/camera2/internal/t1;->d:Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/internal/t1;->a:Landroidx/camera/camera2/internal/j3;

    iget-object v1, p0, Landroidx/camera/camera2/internal/t1;->b:Ljava/util/List;

    iget-object v2, p0, Landroidx/camera/camera2/internal/t1;->c:Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;

    iget-object v3, p0, Landroidx/camera/camera2/internal/t1;->d:Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;

    invoke-virtual {v0, v1, v2, v3, p1}, Landroidx/camera/camera2/internal/j3;->t(Ljava/util/List;Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
