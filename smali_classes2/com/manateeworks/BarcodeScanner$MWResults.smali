.class public final Lcom/manateeworks/BarcodeScanner$MWResults;
.super Ljava/lang/Object;
.source "BarcodeScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manateeworks/BarcodeScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MWResults"
.end annotation


# instance fields
.field public count:I

.field public results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/manateeworks/BarcodeScanner$MWResult;",
            ">;"
        }
    .end annotation
.end field

.field public version:I


# direct methods
.method public constructor <init>([B)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/manateeworks/BarcodeScanner$MWResults;->results:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lcom/manateeworks/BarcodeScanner$MWResults;->count:I

    .line 4
    iput v2, v0, Lcom/manateeworks/BarcodeScanner$MWResults;->version:I

    .line 5
    aget-byte v3, v1, v2

    const/16 v4, 0x4d

    if-ne v3, v4, :cond_7

    const/4 v3, 0x1

    aget-byte v4, v1, v3

    const/16 v5, 0x57

    if-ne v4, v5, :cond_7

    const/4 v4, 0x2

    aget-byte v4, v1, v4

    const/16 v5, 0x52

    if-eq v4, v5, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v4, 0x3

    .line 6
    aget-byte v4, v1, v4

    iput v4, v0, Lcom/manateeworks/BarcodeScanner$MWResults;->version:I

    const/4 v4, 0x4

    .line 7
    aget-byte v5, v1, v4

    iput v5, v0, Lcom/manateeworks/BarcodeScanner$MWResults;->count:I

    const/4 v5, 0x5

    const/4 v6, 0x0

    .line 8
    :goto_0
    iget v7, v0, Lcom/manateeworks/BarcodeScanner$MWResults;->count:I

    if-lt v6, v7, :cond_1

    return-void

    .line 9
    :cond_1
    new-instance v7, Lcom/manateeworks/BarcodeScanner$MWResult;

    invoke-direct {v7}, Lcom/manateeworks/BarcodeScanner$MWResult;-><init>()V

    .line 10
    aget-byte v8, v1, v5

    add-int/2addr v5, v3

    const/4 v9, 0x0

    :goto_1
    if-lt v9, v8, :cond_2

    .line 11
    iget-object v8, v0, Lcom/manateeworks/BarcodeScanner$MWResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 12
    :cond_2
    aget-byte v10, v1, v5

    add-int/lit8 v11, v5, 0x1

    .line 13
    aget-byte v11, v1, v11

    add-int/lit8 v12, v5, 0x3

    add-int/2addr v12, v11

    .line 14
    aget-byte v12, v1, v12

    and-int/lit16 v12, v12, 0xff

    mul-int/lit16 v12, v12, 0x100

    add-int/lit8 v13, v5, 0x2

    add-int v14, v13, v11

    .line 15
    aget-byte v14, v1, v14

    and-int/lit16 v14, v14, 0xff

    add-int/2addr v12, v14

    if-lez v11, :cond_3

    .line 16
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v1, v13, v11}, Ljava/lang/String;-><init>([BII)V

    :cond_3
    add-int v13, v5, v11

    add-int/2addr v13, v4

    const/16 v14, 0x8

    new-array v15, v14, [F

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    .line 17
    :pswitch_1
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v1, v13, v12}, Ljava/lang/String;-><init>([BII)V

    iput-object v10, v7, Lcom/manateeworks/BarcodeScanner$MWResult;->encryptedResult:Ljava/lang/String;

    goto/16 :goto_5

    .line 18
    :pswitch_2
    invoke-static {v1, v13, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v10

    sget-object v13, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    iput v10, v7, Lcom/manateeworks/BarcodeScanner$MWResult;->imageHeight:I

    goto/16 :goto_5

    .line 19
    :pswitch_3
    invoke-static {v1, v13, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v10

    sget-object v13, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    iput v10, v7, Lcom/manateeworks/BarcodeScanner$MWResult;->imageWidth:I

    goto/16 :goto_5

    :pswitch_4
    const/4 v10, 0x0

    :goto_2
    if-lt v10, v14, :cond_4

    .line 20
    new-instance v10, Lcom/manateeworks/BarcodeScanner$MWLocation;

    invoke-direct {v10, v15}, Lcom/manateeworks/BarcodeScanner$MWLocation;-><init>([F)V

    iput-object v10, v7, Lcom/manateeworks/BarcodeScanner$MWResult;->locationPoints:Lcom/manateeworks/BarcodeScanner$MWLocation;

    goto/16 :goto_5

    :cond_4
    mul-int/lit8 v16, v10, 0x4

    add-int v2, v13, v16

    .line 21
    invoke-static {v1, v2, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    .line 23
    aput v2, v15, v10

    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    const/16 v14, 0x8

    goto :goto_2

    .line 24
    :pswitch_5
    invoke-static {v1, v13, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, v7, Lcom/manateeworks/BarcodeScanner$MWResult;->isGS1:Z

    goto :goto_5

    .line 25
    :pswitch_6
    invoke-static {v1, v13, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v7, Lcom/manateeworks/BarcodeScanner$MWResult;->subtype:I

    goto :goto_5

    .line 26
    :pswitch_7
    invoke-static {v1, v13, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v7, Lcom/manateeworks/BarcodeScanner$MWResult;->type:I

    goto :goto_5

    .line 27
    :pswitch_8
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v13, v12}, Ljava/lang/String;-><init>([BII)V

    iput-object v2, v7, Lcom/manateeworks/BarcodeScanner$MWResult;->text:Ljava/lang/String;

    goto :goto_5

    .line 28
    :pswitch_9
    new-array v2, v12, [B

    iput-object v2, v7, Lcom/manateeworks/BarcodeScanner$MWResult;->bytes:[B

    .line 29
    iput v12, v7, Lcom/manateeworks/BarcodeScanner$MWResult;->bytesLength:I

    const/4 v2, 0x0

    :goto_4
    if-lt v2, v12, :cond_6

    goto :goto_5

    .line 30
    :cond_6
    iget-object v10, v7, Lcom/manateeworks/BarcodeScanner$MWResult;->bytes:[B

    add-int v14, v13, v2

    aget-byte v14, v1, v14

    aput-byte v14, v10, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :goto_5
    add-int/2addr v11, v12

    add-int/2addr v11, v4

    add-int/2addr v5, v11

    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_7
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getResult(I)Lcom/manateeworks/BarcodeScanner$MWResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manateeworks/BarcodeScanner$MWResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manateeworks/BarcodeScanner$MWResult;

    return-object p1
.end method
