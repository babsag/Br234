.class public final synthetic Lcom/combateafraude/documentdetector/controller/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;


# direct methods
.method public synthetic constructor <init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/j;->a:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/j;->a:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-static {v0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c0(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)V

    return-void
.end method
