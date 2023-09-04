.class public Lcom/combateafraude/passivefaceliveness/PreviewActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/combateafraude/passivefaceliveness/PreviewActivity$a;
    }
.end annotation


# instance fields
.field A:Landroid/widget/ImageView;

.field B:Landroid/widget/TextView;

.field C:Landroid/widget/TextView;

.field y:Landroid/widget/Button;

.field z:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private o(Landroid/content/Intent;Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object p2, Lcaf/io/t;->l:Lcaf/io/t;

    new-instance v0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/PreviewRejectedEvent;

    invoke-direct {v0}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/PreviewRejectedEvent;-><init>()V

    .line 2
    sget-object v1, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {v1, p2, v0}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private p(Landroid/content/Intent;Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object p2, Lcaf/io/t;->k:Lcaf/io/t;

    new-instance v0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/PreviewAcceptedEvent;

    invoke-direct {v0}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/PreviewAcceptedEvent;-><init>()V

    .line 2
    sget-object v1, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {v1, p2, v0}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    const/4 p2, -0x1

    .line 3
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic q(Lcom/combateafraude/passivefaceliveness/PreviewActivity;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/combateafraude/passivefaceliveness/PreviewActivity;->o(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/combateafraude/passivefaceliveness/PreviewActivity;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/combateafraude/passivefaceliveness/PreviewActivity;->p(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/combateafraude/passivefaceliveness/PreviewActivity$a;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 4
    sget v0, Lcom/combateafraude/passivefaceliveness/R$layout;->activity_preview_passive_face_liveness:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 5
    sget v0, Lcom/combateafraude/passivefaceliveness/R$id;->photoImageView:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/PreviewActivity;->A:Landroid/widget/ImageView;

    .line 6
    sget v0, Lcom/combateafraude/passivefaceliveness/R$id;->tvTitle:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/PreviewActivity;->B:Landroid/widget/TextView;

    .line 7
    sget v0, Lcom/combateafraude/passivefaceliveness/R$id;->tvSubTitle:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/PreviewActivity;->C:Landroid/widget/TextView;

    .line 8
    sget v0, Lcom/combateafraude/passivefaceliveness/R$id;->acceptButton:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/PreviewActivity;->y:Landroid/widget/Button;

    .line 9
    sget v0, Lcom/combateafraude/passivefaceliveness/R$id;->bTryAgain:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/PreviewActivity;->z:Landroid/widget/Button;

    .line 10
    sget-object v0, Lcom/combateafraude/passivefaceliveness/PreviewActivity$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;

    if-eqz v0, :cond_0

    .line 11
    iget-object v2, p0, Lcom/combateafraude/passivefaceliveness/PreviewActivity;->B:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->getTitle(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v2, p0, Lcom/combateafraude/passivefaceliveness/PreviewActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->getSubtitle(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v2, p0, Lcom/combateafraude/passivefaceliveness/PreviewActivity;->y:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->getConfirmLabel(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v2, p0, Lcom/combateafraude/passivefaceliveness/PreviewActivity;->z:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->getRetryLabel(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :cond_0
    sget-object v0, Lcom/combateafraude/passivefaceliveness/PreviewActivity$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    sget-object v3, Lcaf/io/t;->j:Lcaf/io/t;

    new-instance v4, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/PreviewStartedEvent;

    invoke-direct {v4}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/PreviewStartedEvent;-><init>()V

    .line 18
    sget-object v5, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {v5, v3, v4}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 19
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 20
    :try_start_0
    new-instance v3, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v3, v0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-wide/32 v4, -0x3da67cb6

    .line 21
    invoke-static {v4, v5}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    .line 22
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_3

    const/16 v3, 0x10e

    .line 23
    :try_start_1
    new-instance v4, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v4, v0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-wide v5, -0xc3da67cb6L

    .line 24
    invoke-static {v5, v6}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v4, 0x6

    if-eq v0, v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0x5a

    goto :goto_0

    :cond_2
    const/16 v3, 0xb4

    goto :goto_0

    :catch_0
    move-exception v0

    .line 25
    :try_start_2
    sget-object v4, Lcaf/io/t;->D:Lcaf/io/t;

    new-instance v5, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/GenericEventOtherInfo;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/GenericEventOtherInfo;-><init>(Ljava/lang/String;)V

    .line 26
    sget-object v6, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {v6, v4, v5}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 27
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    int-to-float v0, v3

    .line 28
    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_3
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 29
    invoke-virtual {v9, v0, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 30
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 31
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 32
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 33
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 34
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 35
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v6, 0x190

    if-gt v4, v6, :cond_4

    if-le v5, v6, :cond_5

    .line 36
    :cond_4
    div-int/lit8 v4, v4, 0x2

    .line 37
    div-int/lit8 v5, v5, 0x2

    .line 38
    :goto_1
    div-int v7, v4, v3

    if-lt v7, v6, :cond_5

    div-int v7, v5, v3

    if-lt v7, v6, :cond_5

    mul-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 39
    :cond_5
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 40
    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 41
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 42
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    move-object v4, v0

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 43
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v1

    .line 44
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_6

    .line 45
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    const/high16 v0, 0x42c80000    # 100.0f

    .line 46
    invoke-virtual {v1, v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 47
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/PreviewActivity;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 48
    sget-object v1, Lcaf/io/t;->D:Lcaf/io/t;

    new-instance v2, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/GenericEventOtherInfo;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/GenericEventOtherInfo;-><init>(Ljava/lang/String;)V

    .line 49
    sget-object v3, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {v3, v1, v2}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 50
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 51
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/PreviewActivity;->z:Landroid/widget/Button;

    new-instance v1, Lcom/combateafraude/passivefaceliveness/b;

    invoke-direct {v1, p0, p1}, Lcom/combateafraude/passivefaceliveness/b;-><init>(Lcom/combateafraude/passivefaceliveness/PreviewActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/PreviewActivity;->y:Landroid/widget/Button;

    new-instance v1, Lcom/combateafraude/passivefaceliveness/c;

    invoke-direct {v1, p0, p1}, Lcom/combateafraude/passivefaceliveness/c;-><init>(Lcom/combateafraude/passivefaceliveness/PreviewActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
