.class Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$a;
.super Ljava/lang/Object;
.source "I18nFormatUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;


# direct methods
.method public constructor <init>(ILorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$a;->a:I

    .line 3
    iput-object p2, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$a;->b:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$a;->b:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    invoke-virtual {v1}, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
