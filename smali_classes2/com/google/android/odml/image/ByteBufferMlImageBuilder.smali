.class public Lcom/google/android/odml/image/ByteBufferMlImageBuilder;
.super Ljava/lang/Object;
.source "com.google.android.odml:image@@1.0.0-beta1"


# instance fields
.field private final a:Ljava/nio/ByteBuffer;

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:I

.field private f:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;III)V
    .locals 0
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/odml/image/ByteBufferMlImageBuilder;->a:Ljava/nio/ByteBuffer;

    iput p2, p0, Lcom/google/android/odml/image/ByteBufferMlImageBuilder;->b:I

    iput p3, p0, Lcom/google/android/odml/image/ByteBufferMlImageBuilder;->c:I

    iput p4, p0, Lcom/google/android/odml/image/ByteBufferMlImageBuilder;->d:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/odml/image/ByteBufferMlImageBuilder;->e:I

    new-instance p4, Landroid/graphics/Rect;

    .line 1
    invoke-direct {p4, p1, p1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p4, p0, Lcom/google/android/odml/image/ByteBufferMlImageBuilder;->f:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/odml/image/MlImage;
    .locals 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v8, Lcom/google/android/odml/image/MlImage;

    new-instance v1, Lcom/google/android/odml/image/f;

    iget-object v0, p0, Lcom/google/android/odml/image/ByteBufferMlImageBuilder;->a:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/odml/image/ByteBufferMlImageBuilder;->d:I

    .line 1
    invoke-direct {v1, v0, v2}, Lcom/google/android/odml/image/f;-><init>(Ljava/nio/ByteBuffer;I)V

    iget v2, p0, Lcom/google/android/odml/image/ByteBufferMlImageBuilder;->e:I

    iget-object v3, p0, Lcom/google/android/odml/image/ByteBufferMlImageBuilder;->f:Landroid/graphics/Rect;

    iget v6, p0, Lcom/google/android/odml/image/ByteBufferMlImageBuilder;->b:I

    iget v7, p0, Lcom/google/android/odml/image/ByteBufferMlImageBuilder;->c:I

    const-wide/16 v4, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/odml/image/MlImage;-><init>(Lcom/google/android/odml/image/g;ILandroid/graphics/Rect;JII)V

    return-object v8
.end method

.method public setRotation(I)Lcom/google/android/odml/image/ByteBufferMlImageBuilder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/odml/image/MlImage;->c(I)V

    iput p1, p0, Lcom/google/android/odml/image/ByteBufferMlImageBuilder;->e:I

    return-object p0
.end method
