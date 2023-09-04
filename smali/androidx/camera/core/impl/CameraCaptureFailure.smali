.class public Landroidx/camera/core/impl/CameraCaptureFailure;
.super Ljava/lang/Object;
.source "CameraCaptureFailure.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/CameraCaptureFailure$Reason;
    }
.end annotation


# instance fields
.field private final a:Landroidx/camera/core/impl/CameraCaptureFailure$Reason;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraCaptureFailure$Reason;)V
    .locals 0
    .param p1    # Landroidx/camera/core/impl/CameraCaptureFailure$Reason;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/camera/core/impl/CameraCaptureFailure;->a:Landroidx/camera/core/impl/CameraCaptureFailure$Reason;

    return-void
.end method


# virtual methods
.method public getReason()Landroidx/camera/core/impl/CameraCaptureFailure$Reason;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/CameraCaptureFailure;->a:Landroidx/camera/core/impl/CameraCaptureFailure$Reason;

    return-object v0
.end method
