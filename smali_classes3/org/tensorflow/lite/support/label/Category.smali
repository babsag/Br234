.class public final Lorg/tensorflow/lite/support/label/Category;
.super Ljava/lang/Object;
.source "Category.java"


# annotations
.annotation build Lorg/tensorflow/lite/annotations/UsedByReflection;
    value = "TFLiteSupport/Task"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:F


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 1
    .annotation build Lorg/tensorflow/lite/annotations/UsedByReflection;
        value = "TFLiteSupport/Task"
    .end annotation

    const-string v0, ""

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lorg/tensorflow/lite/support/label/Category;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/tensorflow/lite/support/label/Category;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lorg/tensorflow/lite/support/label/Category;->b:Ljava/lang/String;

    .line 5
    iput p3, p0, Lorg/tensorflow/lite/support/label/Category;->c:F

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;F)Lorg/tensorflow/lite/support/label/Category;
    .locals 1
    .annotation build Lorg/tensorflow/lite/annotations/UsedByReflection;
        value = "TFLiteSupport/Task"
    .end annotation

    .line 1
    new-instance v0, Lorg/tensorflow/lite/support/label/Category;

    invoke-direct {v0, p0, p1, p2}, Lorg/tensorflow/lite/support/label/Category;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/tensorflow/lite/support/label/Category;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/tensorflow/lite/support/label/Category;

    .line 3
    invoke-virtual {p1}, Lorg/tensorflow/lite/support/label/Category;->getLabel()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/tensorflow/lite/support/label/Category;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lorg/tensorflow/lite/support/label/Category;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/tensorflow/lite/support/label/Category;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lorg/tensorflow/lite/support/label/Category;->getScore()F

    move-result p1

    iget v0, p0, Lorg/tensorflow/lite/support/label/Category;->c:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/label/Category;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/label/Category;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()F
    .locals 1

    .line 1
    iget v0, p0, Lorg/tensorflow/lite/support/label/Category;->c:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lorg/tensorflow/lite/support/label/Category;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/tensorflow/lite/support/label/Category;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lorg/tensorflow/lite/support/label/Category;->c:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Category \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/tensorflow/lite/support/label/Category;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" (displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/tensorflow/lite/support/label/Category;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" (score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/tensorflow/lite/support/label/Category;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
