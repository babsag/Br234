.class public Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;
.super Ljava/lang/Object;
.source "T4_T6_Tables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->a:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->b:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public writeBits(Lorg/apache/commons/imaging/common/itu_t4/a;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/itu_t4/a;->c(I)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1, v2}, Lorg/apache/commons/imaging/common/itu_t4/a;->c(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
