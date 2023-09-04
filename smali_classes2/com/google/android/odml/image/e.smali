.class final Lcom/google/android/odml/image/e;
.super Ljava/lang/Object;
.source "com.google.android.odml:image@@1.0.0-beta1"

# interfaces
.implements Lcom/google/android/odml/image/g;


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Lcom/google/android/odml/image/ImageProperties;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/odml/image/e;->a:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/google/android/odml/image/b;

    invoke-direct {v0}, Lcom/google/android/odml/image/b;-><init>()V

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    .line 2
    sget-object v1, Lcom/google/android/odml/image/d;->a:[I

    invoke-virtual {p1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 3
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/odml/image/h;->a(I)Lcom/google/android/odml/image/h;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/odml/image/h;->b(I)Lcom/google/android/odml/image/h;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/odml/image/h;->c()Lcom/google/android/odml/image/ImageProperties;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/odml/image/e;->b:Lcom/google/android/odml/image/ImageProperties;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/odml/image/e;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/odml/image/ImageProperties;
    .locals 1

    iget-object v0, p0, Lcom/google/android/odml/image/e;->b:Lcom/google/android/odml/image/ImageProperties;

    return-object v0
.end method

.method public final zzc()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/odml/image/e;->a:Landroid/graphics/Bitmap;

    .line 1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method
