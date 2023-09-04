.class public Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentOcr;
.super Ljava/lang/Object;
.source "DocumentOcr.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final PARAMETER_NAME:Ljava/lang/String; = "DocumentOcr"


# instance fields
.field private a:Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentRetrievedOcr;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "retrievedOcr"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRetrievedOcr()Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentRetrievedOcr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentOcr;->a:Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentRetrievedOcr;

    return-object v0
.end method
