# ========================================
# Dockerfile for CodeGPT
# Stack: Node.js Static Server
# ========================================

# ----------------------------------------
# Production Stage
# ----------------------------------------
FROM node:18-alpine AS production

# Install dumb-init for proper signal handling
RUN apk add --no-cache dumb-init

# Create non-root user for security
RUN addgroup -g 1001 -S nodejs && \
    adduser -S nodejs -u 1001

WORKDIR /app

# Set production environment
ENV NODE_ENV=production

# Copy server file
COPY --chown=nodejs:nodejs server.js ./

# Copy static files
COPY --chown=nodejs:nodejs public ./public

# Copy package.json for reference
COPY --chown=nodejs:nodejs package.json ./

# Switch to non-root user
USER nodejs

# Expose application port
EXPOSE 3000

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=10s --retries=3 \
    CMD node -e "require('http').get('http://localhost:3000/', (r) => {process.exit(r.statusCode === 200 ? 0 : 1)})"

# Use dumb-init to handle signals properly
ENTRYPOINT ["dumb-init", "--"]

# Start application
CMD ["node", "server.js"]
