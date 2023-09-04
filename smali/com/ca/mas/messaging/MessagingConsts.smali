.class public Lcom/ca/mas/messaging/MessagingConsts;
.super Lcom/ca/mas/foundation/FoundationConsts;
.source "MessagingConsts.java"


# static fields
.field public static final AT_LEAST_ONCE:I = 0x1

.field public static final AT_MOST_ONCE:I = 0x0

.field public static final DEFAULT_TEXT_PLAIN_CONTENT_TYPE:Ljava/lang/String; = "text/plain"

.field public static final EXACTLY_ONCE:I = 0x2

.field public static final MAS_CONNECTA_BROADCAST_MESSAGE_ARRIVED:Ljava/lang/String; = "com.ca.mas.connecta.MESSAGE_ARRIVED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/foundation/FoundationConsts;-><init>()V

    return-void
.end method
