.class public Lcom/combateafraude/documentdetector/controller/detection/Recognition;
.super Ljava/lang/Object;
.source "Recognition.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/detection/Recognition;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/combateafraude/documentdetector/controller/detection/Recognition;->b:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public getConfidence()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/detection/Recognition;->b:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/detection/Recognition;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/detection/Recognition;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/detection/Recognition;->b:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
