.class public final synthetic Lcom/combateafraude/documentdetector/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

.field public final synthetic b:Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;


# direct methods
.method public synthetic constructor <init>(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/f;->a:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    iput-object p2, p0, Lcom/combateafraude/documentdetector/f;->b:Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/combateafraude/documentdetector/f;->a:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/f;->b:Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    invoke-static {v0, v1}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->G(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;)V

    return-void
.end method
