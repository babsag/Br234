.class public final Lcom/google/zxing/client/result/ProductParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "ProductParsedResult.java"


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->PRODUCT:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 2
    iput-object p1, p0, Lcom/google/zxing/client/result/ProductParsedResult;->b:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/zxing/client/result/ProductParsedResult;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDisplayResult()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/ProductParsedResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getNormalizedProductID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/ProductParsedResult;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getProductID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/ProductParsedResult;->b:Ljava/lang/String;

    return-object v0
.end method
