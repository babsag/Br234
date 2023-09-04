.class Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;
.super Ljava/lang/Object;
.source "I18nFormatUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field public static a:I

.field private static b:Ljava/util/Locale;

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static e:I

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, ""

    const-string v1, "number"

    const-string v2, "date"

    const-string v3, "time"

    const-string v4, "choice"

    .line 1
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->f:[Ljava/lang/String;

    const-string v1, "currency"

    const-string v2, "percent"

    const-string v3, "integer"

    .line 2
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->g:[Ljava/lang/String;

    const-string v1, "short"

    const-string v2, "medium"

    const-string v3, "long"

    const-string v4, "full"

    .line 3
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->h:[Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 13

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/StringBuilder;

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    sput v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->e:I

    const/4 v1, -0x1

    .line 3
    sput v1, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->a:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_f

    .line 5
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x7b

    const/16 v9, 0x27

    const/4 v10, 0x1

    if-nez v5, :cond_4

    if-ne v7, v9, :cond_1

    add-int/lit8 v8, v3, 0x1

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v8, v11, :cond_0

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v9, :cond_0

    .line 7
    aget-object v3, v0, v5

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v8

    goto/16 :goto_1

    :cond_0
    xor-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_1
    if-ne v7, v8, :cond_3

    if-nez v6, :cond_3

    .line 8
    aget-object v5, v0, v10

    if-nez v5, :cond_2

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v5, v0, v10

    :cond_2
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 10
    :cond_3
    aget-object v8, v0, v5

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_4
    if-eqz v6, :cond_5

    .line 11
    aget-object v8, v0, v5

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v7, v9, :cond_e

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_5
    const/16 v11, 0x20

    const/4 v12, 0x2

    if-eq v7, v11, :cond_c

    if-eq v7, v9, :cond_b

    const/16 v9, 0x2c

    const/4 v11, 0x3

    if-eq v7, v9, :cond_9

    if-eq v7, v8, :cond_8

    const/16 v8, 0x7d

    if-eq v7, v8, :cond_6

    .line 12
    aget-object v8, v0, v5

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    if-nez v4, :cond_7

    .line 13
    sget v5, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->e:I

    invoke-static {v3, v5, v0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->c(II[Ljava/lang/StringBuilder;)V

    .line 14
    sget v5, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->e:I

    add-int/2addr v5, v10

    sput v5, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->e:I

    const/4 v5, 0x0

    aput-object v5, v0, v10

    aput-object v5, v0, v12

    aput-object v5, v0, v11

    const/4 v5, 0x0

    goto :goto_1

    :cond_7
    add-int/lit8 v4, v4, -0x1

    .line 15
    aget-object v8, v0, v5

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 16
    aget-object v8, v0, v5

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    if-ge v5, v11, :cond_a

    add-int/lit8 v5, v5, 0x1

    .line 17
    aget-object v7, v0, v5

    if-nez v7, :cond_e

    .line 18
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v7, v0, v5

    goto :goto_1

    .line 19
    :cond_a
    aget-object v8, v0, v5

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 20
    :cond_b
    aget-object v6, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    goto :goto_1

    :cond_c
    if-ne v5, v12, :cond_d

    .line 21
    aget-object v8, v0, v12

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_e

    .line 22
    :cond_d
    aget-object v8, v0, v5

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e
    :goto_1
    add-int/2addr v3, v10

    goto/16 :goto_0

    :cond_f
    if-nez v4, :cond_11

    if-nez v5, :cond_10

    goto :goto_2

    .line 23
    :cond_10
    sput v1, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->a:I

    .line 24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unmatched braces in the pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_2
    return-void
.end method

.method private static final b(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 2
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    if-eq v1, p0, :cond_3

    .line 4
    :goto_1
    array-length p0, p1

    if-ge v0, p0, :cond_3

    .line 5
    aget-object p0, p1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private static c(II[Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    array-length p0, p2

    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 3
    aget-object v1, p2, v0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v1, ""

    :goto_1
    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 5
    :try_start_0
    aget-object v0, p0, p2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    if-ltz v0, :cond_a

    .line 6
    sget v1, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->a:I

    .line 7
    sput p1, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->a:I

    .line 8
    sget-object p1, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x2

    .line 9
    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    .line 10
    aget-object v0, p0, p1

    sget-object v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->f:[Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->b(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v2, 0x3

    if-eq v0, p2, :cond_6

    if-eq v0, p1, :cond_4

    if-eq v0, v2, :cond_4

    const/4 p2, 0x4

    if-ne v0, p2, :cond_3

    .line 11
    aget-object p1, p0, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    :try_start_1
    new-instance p1, Ljava/text/ChoiceFormat;

    aget-object p2, p0, v2

    invoke-direct {p1, p2}, Ljava/text/ChoiceFormat;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 13
    sget-object p0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->NUMBER:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    goto/16 :goto_4

    :catch_0
    move-exception p1

    .line 14
    sput v1, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->a:I

    .line 15
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Choice Pattern incorrect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Choice Pattern requires Subformat Pattern: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_3
    sput v1, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->a:I

    .line 18
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown format type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 19
    :cond_4
    aget-object p1, p0, v2

    sget-object p2, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->h:[Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->b(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_5

    .line 20
    array-length p2, p2

    if-ge p1, p2, :cond_5

    goto :goto_2

    .line 21
    :cond_5
    :try_start_2
    new-instance p1, Ljava/text/SimpleDateFormat;

    aget-object p0, p0, v2

    sget-object p2, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->b:Ljava/util/Locale;

    invoke-direct {p1, p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 22
    :goto_2
    sget-object p0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->DATE:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    goto :goto_4

    :catch_1
    move-exception p0

    .line 23
    sput v1, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->a:I

    .line 24
    throw p0

    .line 25
    :cond_6
    aget-object v0, p0, v2

    sget-object v3, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->g:[Ljava/lang/String;

    invoke-static {v0, v3}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->b(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    if-eq v0, p2, :cond_7

    if-eq v0, p1, :cond_7

    if-eq v0, v2, :cond_7

    .line 26
    :try_start_3
    new-instance p1, Ljava/text/DecimalFormat;

    aget-object p0, p0, v2

    sget-object p2, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->b:Ljava/util/Locale;

    .line 27
    invoke-static {p2}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 28
    sput v1, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->a:I

    .line 29
    throw p0

    .line 30
    :cond_7
    :goto_3
    sget-object p0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->NUMBER:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    goto :goto_4

    .line 31
    :cond_8
    sget-object p0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->GENERAL:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    goto :goto_4

    .line 32
    :cond_9
    sget-object p0, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->GENERAL:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 33
    :goto_4
    sget-object p1, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->c:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 34
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "negative argument number: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_3
    move-exception p1

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t parse argument number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, p2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static d(Ljava/lang/String;)[Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$a;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->c:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->d:Ljava/util/List;

    .line 3
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->b:Ljava/util/Locale;

    .line 4
    invoke-static {p0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->a(Ljava/lang/String;)V

    .line 5
    sget p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->e:I

    new-array p0, p0, [Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$a;

    const/4 v0, 0x0

    .line 6
    :goto_0
    sget v1, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->e:I

    if-ge v0, v1, :cond_0

    .line 7
    new-instance v1, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$a;

    sget-object v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$b;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$a;-><init>(ILorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;)V

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
