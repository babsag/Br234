.class public Lcom/combateafraude/documentdetector/PreviewActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PreviewActivity.java"


# instance fields
.field A:Landroid/widget/ImageView;

.field B:Landroid/widget/TextView;

.field C:Landroid/widget/TextView;

.field D:Landroid/graphics/Bitmap;

.field E:Landroid/graphics/Bitmap;

.field y:Landroid/widget/Button;

.field z:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    .line 1
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 2
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    if-gt v0, p2, :cond_0

    if-le p0, p1, :cond_1

    .line 3
    :cond_0
    div-int/lit8 v0, v0, 0x2

    .line 4
    div-int/lit8 p0, p0, 0x2

    .line 5
    :goto_0
    div-int v2, v0, v1

    if-lt v2, p2, :cond_1

    div-int v2, p0, v1

    if-lt v2, p1, :cond_1

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method private synthetic o(Landroid/content/Intent;Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p2, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->PREVIEW_REJECTED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/PreviewRejectedEvent;

    invoke-direct {v0}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/PreviewRejectedEvent;-><init>()V

    invoke-static {p2, v0}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic p(Landroid/content/Intent;Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p2, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->PREVIEW_ACCEPTED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/PreviewAcceptedEvent;

    invoke-direct {v0}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/PreviewAcceptedEvent;-><init>()V

    invoke-static {p2, v0}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    const/4 p2, -0x1

    .line 2
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic q(Lcom/combateafraude/documentdetector/PreviewActivity;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/combateafraude/documentdetector/PreviewActivity;->p(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/combateafraude/documentdetector/PreviewActivity;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/combateafraude/documentdetector/PreviewActivity;->o(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "Orientation"

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "theme"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 4
    sget v1, Lcom/combateafraude/documentdetector/R$layout;->activity_preview_document_detector:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 5
    sget v1, Lcom/combateafraude/documentdetector/R$id;->photoImageView:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/combateafraude/documentdetector/PreviewActivity;->A:Landroid/widget/ImageView;

    .line 6
    sget v1, Lcom/combateafraude/documentdetector/R$id;->tvTitle:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/combateafraude/documentdetector/PreviewActivity;->B:Landroid/widget/TextView;

    .line 7
    sget v1, Lcom/combateafraude/documentdetector/R$id;->tvSubTitle:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/combateafraude/documentdetector/PreviewActivity;->C:Landroid/widget/TextView;

    .line 8
    sget v1, Lcom/combateafraude/documentdetector/R$id;->acceptButton:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/combateafraude/documentdetector/PreviewActivity;->y:Landroid/widget/Button;

    .line 9
    sget v1, Lcom/combateafraude/documentdetector/R$id;->bTryAgain:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/combateafraude/documentdetector/PreviewActivity;->z:Landroid/widget/Button;

    const-string v1, "previewSettings"

    .line 10
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/combateafraude/documentdetector/input/PreviewSettings;

    if-eqz v1, :cond_0

    .line 11
    iget-object v3, p0, Lcom/combateafraude/documentdetector/PreviewActivity;->B:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Lcom/combateafraude/documentdetector/input/PreviewSettings;->getTitle(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v3, p0, Lcom/combateafraude/documentdetector/PreviewActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Lcom/combateafraude/documentdetector/input/PreviewSettings;->getSubtitle(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v3, p0, Lcom/combateafraude/documentdetector/PreviewActivity;->y:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Lcom/combateafraude/documentdetector/input/PreviewSettings;->getConfirmLabel(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v3, p0, Lcom/combateafraude/documentdetector/PreviewActivity;->z:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Lcom/combateafraude/documentdetector/input/PreviewSettings;->getRetryLabel(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v1, "path"

    .line 15
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    sget-object v4, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->PREVIEW_STARTED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v5, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/PreviewStartedEvent;

    invoke-direct {v5}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/PreviewStartedEvent;-><init>()V

    invoke-static {v4, v5}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 18
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 19
    :try_start_0
    new-instance v4, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v4, v1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v4, v0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    const/16 v5, 0x190

    if-nez v4, :cond_1

    .line 21
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5, v5}, Lcom/combateafraude/documentdetector/controller/utils/Utils;->decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/documentdetector/PreviewActivity;->E:Landroid/graphics/Bitmap;

    .line 22
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/documentdetector/PreviewActivity;->D:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 23
    :cond_1
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 24
    :try_start_1
    new-instance v4, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v4, v1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v4, v0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/16 v2, 0x10e

    goto :goto_0

    :cond_2
    const/16 v2, 0x5a

    goto :goto_0

    :cond_3
    const/16 v2, 0xb4

    goto :goto_0

    :catch_0
    move-exception v0

    .line 26
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    int-to-float v0, v2

    .line 27
    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 28
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5, v5}, Lcom/combateafraude/documentdetector/controller/utils/Utils;->decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/combateafraude/documentdetector/PreviewActivity;->E:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 29
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/combateafraude/documentdetector/PreviewActivity;->E:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/documentdetector/PreviewActivity;->D:Landroid/graphics/Bitmap;

    .line 30
    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/combateafraude/documentdetector/PreviewActivity;->D:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    .line 31
    invoke-virtual {v0, v1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 32
    iget-object v1, p0, Lcom/combateafraude/documentdetector/PreviewActivity;->A:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 34
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/combateafraude/documentdetector/PreviewActivity;->z:Landroid/widget/Button;

    new-instance v1, Lcom/combateafraude/documentdetector/m;

    invoke-direct {v1, p0, p1}, Lcom/combateafraude/documentdetector/m;-><init>(Lcom/combateafraude/documentdetector/PreviewActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/combateafraude/documentdetector/PreviewActivity;->y:Landroid/widget/Button;

    new-instance v1, Lcom/combateafraude/documentdetector/l;

    invoke-direct {v1, p0, p1}, Lcom/combateafraude/documentdetector/l;-><init>(Lcom/combateafraude/documentdetector/PreviewActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/PreviewActivity;->D:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/combateafraude/documentdetector/PreviewActivity;->D:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/combateafraude/documentdetector/PreviewActivity;->E:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/combateafraude/documentdetector/PreviewActivity;->E:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/PreviewActivity;->A:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    :cond_2
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method
