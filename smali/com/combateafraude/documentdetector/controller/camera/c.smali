.class public final synthetic Lcom/combateafraude/documentdetector/controller/camera/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/camera/c;->a:Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/camera/c;->a:Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;

    invoke-static {v0}, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->i(Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;)V

    return-void
.end method
