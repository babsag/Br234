.class public final synthetic Lcom/combateafraude/documentdetector/controller/camera/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/camera/b;->a:Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/camera/b;->a:Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;

    invoke-static {v0, p1, p2}, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->h(Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
