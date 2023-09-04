.class public Lbr/com/topaz/heartbeat/OCRFile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final data:[B

.field private final fileName:Ljava/lang/String;

.field private final mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/heartbeat/OCRFile;->fileName:Ljava/lang/String;

    iput-object p2, p0, Lbr/com/topaz/heartbeat/OCRFile;->mimeType:Ljava/lang/String;

    iput-object p3, p0, Lbr/com/topaz/heartbeat/OCRFile;->data:[B

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/OCRFile;->data:[B

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/OCRFile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/OCRFile;->mimeType:Ljava/lang/String;

    return-object v0
.end method
