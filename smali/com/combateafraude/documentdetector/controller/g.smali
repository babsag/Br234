.class public final synthetic Lcom/combateafraude/documentdetector/controller/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;


# direct methods
.method public synthetic constructor <init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/g;->a:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/g;->a:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->Z(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/Void;)V

    return-void
.end method
