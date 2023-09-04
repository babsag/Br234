.class public Lbr/com/topaz/heartbeat/ocr/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/heartbeat/ocr/c;
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final a:Lcom/google/mlkit/vision/text/TextRecognizer;

.field private final b:Lbr/com/topaz/z/e;

.field private final c:Lbr/com/topaz/z/d;

.field private d:Lbr/com/topaz/u0/q;

.field private e:Lbr/com/topaz/heartbeat/ocr/c$a;

.field private f:Lbr/com/topaz/z/b;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field final k:I

.field private l:I


# direct methods
.method public constructor <init>(Lbr/com/topaz/z/e;Lbr/com/topaz/z/d;Lbr/com/topaz/u0/q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    iput v0, p0, Lbr/com/topaz/heartbeat/ocr/b;->k:I

    sget-object v0, Lcom/google/mlkit/vision/text/latin/TextRecognizerOptions;->DEFAULT_OPTIONS:Lcom/google/mlkit/vision/text/latin/TextRecognizerOptions;

    invoke-static {v0}, Lcom/google/mlkit/vision/text/TextRecognition;->getClient(Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)Lcom/google/mlkit/vision/text/TextRecognizer;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/heartbeat/ocr/b;->a:Lcom/google/mlkit/vision/text/TextRecognizer;

    iput-object p1, p0, Lbr/com/topaz/heartbeat/ocr/b;->b:Lbr/com/topaz/z/e;

    iput-object p2, p0, Lbr/com/topaz/heartbeat/ocr/b;->c:Lbr/com/topaz/z/d;

    iput-object p3, p0, Lbr/com/topaz/heartbeat/ocr/b;->d:Lbr/com/topaz/u0/q;

    const/4 p1, 0x0

    iput p1, p0, Lbr/com/topaz/heartbeat/ocr/b;->l:I

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/heartbeat/ocr/b;)Lbr/com/topaz/z/b;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/heartbeat/ocr/b;->f:Lbr/com/topaz/z/b;

    return-object p0
.end method

.method private a(Lcom/google/mlkit/vision/text/Text;)Ljava/lang/String;
    .locals 10

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text;->getTextBlocks()Ljava/util/List;

    move-result-object p1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/mlkit/vision/text/Text$TextBlock;

    const-string v6, "t"

    invoke-virtual {v5}, Lcom/google/mlkit/vision/text/Text$TextBlock;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lcom/google/mlkit/vision/text/Text$TextBlock;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v7, "b"

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "l"

    iget v8, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "u"

    iget v8, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "r"

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v5}, Lcom/google/mlkit/vision/text/Text$TextBlock;->getLines()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/mlkit/vision/text/Text$Line;

    invoke-virtual {v5}, Lcom/google/mlkit/vision/text/Text$Line;->getElements()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/mlkit/vision/text/Text$Element;

    invoke-virtual {v7}, Lcom/google/mlkit/vision/text/Text$Element;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lbr/com/topaz/heartbeat/ocr/b;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lcom/google/mlkit/vision/text/Text$Element;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v7

    invoke-direct {p0, v7}, Lbr/com/topaz/heartbeat/ocr/b;->a(Landroid/graphics/Rect;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    iget-object v7, p0, Lbr/com/topaz/heartbeat/ocr/b;->f:Lbr/com/topaz/z/b;

    invoke-virtual {v7}, Lbr/com/topaz/z/b;->c()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {v7, v9}, Lbr/com/topaz/z/b;->b(I)V

    :cond_3
    iget-object v7, p0, Lbr/com/topaz/heartbeat/ocr/b;->b:Lbr/com/topaz/z/e;

    invoke-virtual {v7}, Lbr/com/topaz/z/e;->e()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Lcom/google/mlkit/vision/text/Text$Line;->getAngle()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget-object v9, p0, Lbr/com/topaz/heartbeat/ocr/b;->b:Lbr/com/topaz/z/e;

    invoke-virtual {v9}, Lbr/com/topaz/z/e;->h()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-lez v7, :cond_4

    iget-object v7, p0, Lbr/com/topaz/heartbeat/ocr/b;->e:Lbr/com/topaz/heartbeat/ocr/c$a;

    invoke-interface {v7, v2}, Lbr/com/topaz/heartbeat/ocr/c$a;->a(Z)V

    iget-object v7, p0, Lbr/com/topaz/heartbeat/ocr/b;->f:Lbr/com/topaz/z/b;

    invoke-virtual {v7}, Lbr/com/topaz/z/b;->b()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {v7, v9}, Lbr/com/topaz/z/b;->a(I)V

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lbr/com/topaz/heartbeat/ocr/b;->e:Lbr/com/topaz/heartbeat/ocr/c$a;

    invoke-interface {v7, v8}, Lbr/com/topaz/heartbeat/ocr/c$a;->a(Z)V

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    const-string p1, "tbs"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v1, "fb"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "hb"

    const-string v1, "4.6.0.1074349"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "p"

    const-string v1, "android"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"error\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/b;->b:Lbr/com/topaz/z/e;

    invoke-virtual {v0}, Lbr/com/topaz/z/e;->b()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/b;->f:Lbr/com/topaz/z/b;

    invoke-virtual {v1}, Lbr/com/topaz/z/b;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    iput v1, p0, Lbr/com/topaz/heartbeat/ocr/b;->i:I

    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/b;->f:Lbr/com/topaz/z/b;

    invoke-virtual {v1}, Lbr/com/topaz/z/b;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v0, v1

    iput v0, p0, Lbr/com/topaz/heartbeat/ocr/b;->j:I

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/b;->f:Lbr/com/topaz/z/b;

    invoke-virtual {v0}, Lbr/com/topaz/z/b;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lbr/com/topaz/heartbeat/ocr/b;->i:I

    sub-int/2addr v0, v1

    iput v0, p0, Lbr/com/topaz/heartbeat/ocr/b;->g:I

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/b;->f:Lbr/com/topaz/z/b;

    invoke-virtual {v0}, Lbr/com/topaz/z/b;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lbr/com/topaz/heartbeat/ocr/b;->j:I

    sub-int/2addr v0, v1

    iput v0, p0, Lbr/com/topaz/heartbeat/ocr/b;->h:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    sget-object v0, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p1, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/b;->b:Lbr/com/topaz/z/e;

    invoke-virtual {v0}, Lbr/com/topaz/z/e;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbr/com/topaz/z/c;

    invoke-virtual {v1}, Lbr/com/topaz/z/c;->a()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1}, Lbr/com/topaz/z/c;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lbr/com/topaz/heartbeat/ocr/b;->b:Lbr/com/topaz/z/e;

    invoke-virtual {v5}, Lbr/com/topaz/z/e;->g()Lbr/com/topaz/z/a;

    move-result-object v5

    invoke-virtual {v5}, Lbr/com/topaz/z/a;->c()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lbr/com/topaz/heartbeat/ocr/b;->b:Lbr/com/topaz/z/e;

    invoke-virtual {v6}, Lbr/com/topaz/z/e;->g()Lbr/com/topaz/z/a;

    move-result-object v6

    invoke-virtual {v6}, Lbr/com/topaz/z/a;->b()I

    move-result v6

    if-lt v5, v6, :cond_2

    iget-object v5, p0, Lbr/com/topaz/heartbeat/ocr/b;->d:Lbr/com/topaz/u0/q;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lbr/com/topaz/u0/q;->a([C[C)I

    move-result v5

    iget-object v6, p0, Lbr/com/topaz/heartbeat/ocr/b;->b:Lbr/com/topaz/z/e;

    invoke-virtual {v6}, Lbr/com/topaz/z/e;->g()Lbr/com/topaz/z/a;

    move-result-object v6

    invoke-virtual {v6}, Lbr/com/topaz/z/a;->a()I

    move-result v6

    if-gt v5, v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lbr/com/topaz/heartbeat/ocr/b;->f:Lbr/com/topaz/z/b;

    invoke-virtual {v3}, Lbr/com/topaz/z/b;->d()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1}, Lbr/com/topaz/z/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_4
    return-void
.end method

.method private a(Landroid/graphics/Rect;)Z
    .locals 2

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lbr/com/topaz/heartbeat/ocr/b;->h:I

    if-gt v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lbr/com/topaz/heartbeat/ocr/b;->g:I

    if-gt v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lbr/com/topaz/heartbeat/ocr/b;->i:I

    if-lt v0, v1, :cond_1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lbr/com/topaz/heartbeat/ocr/b;->j:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method static synthetic b(Lbr/com/topaz/heartbeat/ocr/b;)Lbr/com/topaz/heartbeat/ocr/c$a;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/heartbeat/ocr/b;->e:Lbr/com/topaz/heartbeat/ocr/c$a;

    return-object p0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/b;->f:Lbr/com/topaz/z/b;

    invoke-virtual {v0}, Lbr/com/topaz/z/b;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/mlkit/vision/common/InputImage;->fromBitmap(Landroid/graphics/Bitmap;I)Lcom/google/mlkit/vision/common/InputImage;

    move-result-object v0

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/ocr/b;->a()V

    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/b;->a:Lcom/google/mlkit/vision/text/TextRecognizer;

    invoke-interface {v1, v0}, Lcom/google/mlkit/vision/text/TextRecognizer;->process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lbr/com/topaz/heartbeat/ocr/b$a;

    invoke-direct {v1, p0}, Lbr/com/topaz/heartbeat/ocr/b$a;-><init>(Lbr/com/topaz/heartbeat/ocr/b;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private b(Lcom/google/mlkit/vision/text/Text;)V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/b;->f:Lbr/com/topaz/z/b;

    invoke-direct {p0, p1}, Lbr/com/topaz/heartbeat/ocr/b;->a(Lcom/google/mlkit/vision/text/Text;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/z/b;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lbr/com/topaz/heartbeat/ocr/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 7

    sget-object v0, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p1, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/b;->b:Lbr/com/topaz/z/e;

    invoke-virtual {v0}, Lbr/com/topaz/z/e;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbr/com/topaz/z/c;

    invoke-virtual {v1}, Lbr/com/topaz/z/c;->a()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Lbr/com/topaz/z/c;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lbr/com/topaz/heartbeat/ocr/b;->b:Lbr/com/topaz/z/e;

    invoke-virtual {v3}, Lbr/com/topaz/z/e;->g()Lbr/com/topaz/z/a;

    move-result-object v3

    invoke-virtual {v3}, Lbr/com/topaz/z/a;->c()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v5, p0, Lbr/com/topaz/heartbeat/ocr/b;->b:Lbr/com/topaz/z/e;

    invoke-virtual {v5}, Lbr/com/topaz/z/e;->g()Lbr/com/topaz/z/a;

    move-result-object v5

    invoke-virtual {v5}, Lbr/com/topaz/z/a;->b()I

    move-result v5

    if-lt v3, v5, :cond_2

    iget-object v3, p0, Lbr/com/topaz/heartbeat/ocr/b;->d:Lbr/com/topaz/u0/q;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lbr/com/topaz/u0/q;->a([C[C)I

    move-result v3

    iget-object v5, p0, Lbr/com/topaz/heartbeat/ocr/b;->b:Lbr/com/topaz/z/e;

    invoke-virtual {v5}, Lbr/com/topaz/z/e;->g()Lbr/com/topaz/z/a;

    move-result-object v5

    invoke-virtual {v5}, Lbr/com/topaz/z/a;->a()I

    move-result v5

    if-gt v3, v5, :cond_2

    return v4

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    return v4

    :catch_0
    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/b;->f:Lbr/com/topaz/z/b;

    invoke-virtual {v0}, Lbr/com/topaz/z/b;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-static {v0, v1}, Lbr/com/topaz/u0/b;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/b;->f:Lbr/com/topaz/z/b;

    invoke-virtual {v1, v0}, Lbr/com/topaz/z/b;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public a(Lbr/com/topaz/z/b;Lbr/com/topaz/heartbeat/ocr/c$a;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/ocr/b;->f:Lbr/com/topaz/z/b;

    iput-object p2, p0, Lbr/com/topaz/heartbeat/ocr/b;->e:Lbr/com/topaz/heartbeat/ocr/c$a;

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/ocr/b;->b()V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    check-cast p1, Lcom/google/mlkit/vision/text/Text;

    invoke-direct {p0, p1}, Lbr/com/topaz/heartbeat/ocr/b;->b(Lcom/google/mlkit/vision/text/Text;)V

    iget-object p1, p0, Lbr/com/topaz/heartbeat/ocr/b;->f:Lbr/com/topaz/z/b;

    invoke-virtual {p1}, Lbr/com/topaz/z/b;->c()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lbr/com/topaz/heartbeat/ocr/b;->f:Lbr/com/topaz/z/b;

    invoke-virtual {p1}, Lbr/com/topaz/z/b;->b()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lbr/com/topaz/heartbeat/ocr/b;->c:Lbr/com/topaz/z/d;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/b;->f:Lbr/com/topaz/z/b;

    invoke-virtual {p1, v1}, Lbr/com/topaz/z/d;->a(Lbr/com/topaz/z/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbr/com/topaz/heartbeat/ocr/b;->e:Lbr/com/topaz/heartbeat/ocr/c$a;

    const/16 v1, 0xbb8

    iget-object v2, p0, Lbr/com/topaz/heartbeat/ocr/b;->f:Lbr/com/topaz/z/b;

    invoke-interface {p1, v1, v2}, Lbr/com/topaz/heartbeat/ocr/c$a;->b(ILbr/com/topaz/z/b;)V

    iput v0, p0, Lbr/com/topaz/heartbeat/ocr/b;->l:I

    return-void

    :cond_0
    iget p1, p0, Lbr/com/topaz/heartbeat/ocr/b;->l:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lbr/com/topaz/heartbeat/ocr/b;->l:I

    const/4 v1, 0x2

    if-gt p1, v1, :cond_1

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/ocr/b;->c()V

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/ocr/b;->b()V

    return-void

    :cond_1
    invoke-direct {p0}, Lbr/com/topaz/heartbeat/ocr/b;->c()V

    iput v0, p0, Lbr/com/topaz/heartbeat/ocr/b;->l:I

    iget-object p1, p0, Lbr/com/topaz/heartbeat/ocr/b;->e:Lbr/com/topaz/heartbeat/ocr/c$a;

    const/16 v1, -0x30

    iget-object v2, p0, Lbr/com/topaz/heartbeat/ocr/b;->f:Lbr/com/topaz/z/b;

    invoke-interface {p1, v1, v2}, Lbr/com/topaz/heartbeat/ocr/c$a;->a(ILbr/com/topaz/z/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput v0, p0, Lbr/com/topaz/heartbeat/ocr/b;->l:I

    iget-object p1, p0, Lbr/com/topaz/heartbeat/ocr/b;->e:Lbr/com/topaz/heartbeat/ocr/c$a;

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/b;->f:Lbr/com/topaz/z/b;

    const/16 v1, -0x33

    invoke-interface {p1, v1, v0}, Lbr/com/topaz/heartbeat/ocr/c$a;->a(ILbr/com/topaz/z/b;)V

    :goto_0
    return-void
.end method
